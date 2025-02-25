/*
 * Copyright (c) 2022 Intel Corporation.
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

#include <gtest/gtest.h>
#include "cider/CiderBatch.h"
#include "tests/utils/CiderTestBase.h"

class CiderMathOpTest : public CiderTestBase {
 public:
  CiderMathOpTest() {
    table_name_ = "test";
    create_ddl_ =
        R"(CREATE TABLE test(integer_col INTEGER, bigint_col BIGINT,
        float_col FLOAT, double_col DOUBLE, tinyint_col TINYINT, smallint_col SMALLINT);)";
    input_ = {std::make_shared<CiderBatch>(
        QueryDataGenerator::generateBatchByTypes(100,
                                                 {"integer_col",
                                                  "bigint_col",
                                                  "float_col",
                                                  "double_col",
                                                  "tinyint_col",
                                                  "smallint_col"},
                                                 {CREATE_SUBSTRAIT_TYPE(I32),
                                                  CREATE_SUBSTRAIT_TYPE(I64),
                                                  CREATE_SUBSTRAIT_TYPE(Fp32),
                                                  CREATE_SUBSTRAIT_TYPE(Fp64),
                                                  CREATE_SUBSTRAIT_TYPE(I8),
                                                  CREATE_SUBSTRAIT_TYPE(I16)},
                                                 {2, 2, 2, 2, 2, 2},
                                                 GeneratePattern::Random,
                                                 -10000,
                                                 10000))};
  }
};

TEST_F(CiderMathOpTest, ConstantValueMathOpTest) {
  assertQuery("SELECT 2 + 1 FROM test");
  assertQuery("SELECT 2 - 1 FROM test");
  assertQuery("SELECT 2 * 1 FROM test");
  assertQuery("SELECT 2 / 1 FROM test");
  assertQuery("SELECT 2 / 1 + 2 * 1 FROM test");
  assertQuery("SELECT 2 * 1 - 2 / 1 FROM test");
  // modify decimal_mul result type scale value of json file to pass constant_mixed_op.
  assertQuery("SELECT 4 * 1.5 - 23 / 11 FROM test", "decimal_constant_mixed_op.json");
  assertQuery("SELECT 4 * 2 + 23 / 11 FROM test");
  // TODO SQL which has % operator can't be parsed to substrait json by Isthums.
  assertQuery("SELECT 2 % 1 FROM test", "mathop_modulus_constant.json");
  // Test divide zero exception
  EXPECT_TRUE(executeIncorrectQuery("SELECT 2 / 0 FROM test"));
}

TEST_F(CiderMathOpTest, ColumnBasicMathOpTest) {
  // TINYINT Col Math op
  assertQuery("SELECT tinyint_col + 2 FROM test");
  assertQuery("SELECT tinyint_col - 2 FROM test");
  assertQuery("SELECT tinyint_col * 2 FROM test");
  assertQuery("SELECT tinyint_col / 2 FROM test");
  // TODO SQL which has % operator can't be parsed to substrait json by Isthums.
  assertQuery("SELECT tinyint_col % 2 FROM test", "mathop_modulus_i8.json");
  // SMALLINT Col Math op
  assertQuery("SELECT smallint_col + 2 FROM test");
  assertQuery("SELECT smallint_col - 2 FROM test");
  assertQuery("SELECT smallint_col * 2 FROM test");
  assertQuery("SELECT smallint_col / 2 FROM test");
  // TODO SQL which has % operator can't be parsed to substrait json by Isthums.
  assertQuery("SELECT smallint_col % 2 FROM test", "mathop_modulus_i16.json");

  // INTEGER Col Math op
  assertQuery("SELECT integer_col + 2 FROM test");
  assertQuery("SELECT integer_col - 2 FROM test");
  assertQuery("SELECT integer_col * 2 FROM test");
  assertQuery("SELECT integer_col / 2 FROM test");
  // TODO SQL which has % operator can't be parsed to substrait json by Isthums.
  // modify substrait-java generated json file by version v0.7.0 format to pass test.
  assertQuery("SELECT integer_col % 2 FROM test", "mathop_modulus_i32.json");

  // BIGINT Col Math op
  assertQuery("SELECT bigint_col + 2 FROM test");
  assertQuery("SELECT bigint_col - 2 FROM test");
  assertQuery("SELECT bigint_col * 2 FROM test");
  assertQuery("SELECT bigint_col / 2 FROM test");
  // TODO SQL which has % operator can't be parsed to substrait json by Isthums.
  assertQuery("SELECT bigint_col % 2 FROM test", "mathop_modulus_i64.json");
  assertQuery("SELECT float_col + 2 FROM test");
  assertQuery("SELECT float_col - 2 FROM test");
  assertQuery("SELECT float_col * 2 FROM test");
  assertQuery("SELECT float_col / 2 FROM test");

  // DOUBLE Col Math op
  assertQuery("SELECT double_col + 2 FROM test");
  assertQuery("SELECT double_col - 2 FROM test");
  assertQuery("SELECT double_col * 2 FROM test");
  assertQuery("SELECT double_col / 2 FROM test");

  // Test divide zero exception
  EXPECT_TRUE(executeIncorrectQuery("SELECT integer_col / 0 FROM test"));
}

TEST_F(CiderMathOpTest, ColumnMathOpBoundaryTest) {
  // Test out of boundary exception
  EXPECT_TRUE(executeIncorrectQuery("SELECT bigint_col + 9223372036854775807 FROM test"));
  EXPECT_TRUE(executeIncorrectQuery("SELECT bigint_col - 9223372036854775807 FROM test"));
  EXPECT_TRUE(executeIncorrectQuery("SELECT bigint_col * 9223372036854775807 FROM test"));
}

TEST_F(CiderMathOpTest, ColumnMathMixOpTest) {
  assertQuery("SELECT double_col + float_col,  double_col - float_col FROM test");
  assertQuery(
      "SELECT integer_col * bigint_col,  bigint_col / integer_col FROM test where "
      "integer_col <> 0");

  assertQuery(
      "SELECT bigint_col * double_col + integer_col * float_col FROM test where "
      "bigint_col * double_col > integer_col * "
      "float_col ");

  assertQuery(
      "SELECT bigint_col * double_col - integer_col * float_col FROM test where "
      "bigint_col * double_col > integer_col * "
      "float_col ");

  assertQuery(
      "SELECT (double_col - float_col) * (integer_col - bigint_col) FROM test where "
      "double_col > float_col and integer_col "
      "> bigint_col");

  assertQuery(
      "SELECT (double_col - float_col) / (integer_col - bigint_col) FROM test where "
      "double_col > float_col and integer_col "
      "> bigint_col");

  assertQuery(
      "SELECT double_col + integer_col / bigint_col FROM test where bigint_col <> 0");

  // TODO modify substrait-java generated json file by version v0.7.0 format to pass test
  // as isthmus will cast double into float, loss of precision in float op double case.
  assertQuery("SELECT float_col + double_col FROM test", "mathop_add_fp32_fp64.json");
}

TEST_F(CiderMathOpTest, ConstantMathOpTest) {
  assertQuery("SELECT double_col + 1.23e1, double_col - 1.23e1 FROM test");
  assertQuery("SELECT bigint_col * 1.23e1,  bigint_col / 1.23e1 FROM test");
  assertQuery("SELECT 3 * (1.23e1 + bigint_col) / 2 FROM test");
  assertQuery("SELECT (double_col + 1.23e1) / 2 - 2.5e1 FROM test");
}

class CiderMathOpNotNullTest : public CiderTestBase {
 public:
  CiderMathOpNotNullTest() {
    table_name_ = "test";
    create_ddl_ =
        R"(CREATE TABLE test(integer_col INTEGER, bigint_col BIGINT,
        float_col FLOAT, double_col DOUBLE, tinyint_col TINYINT, smallint_col SMALLINT);)";
    input_ = {std::make_shared<CiderBatch>(
        QueryDataGenerator::generateBatchByTypes(100,
                                                 {"integer_col",
                                                  "bigint_col",
                                                  "float_col",
                                                  "double_col",
                                                  "tinyint_col",
                                                  "smallint_col"},
                                                 {CREATE_SUBSTRAIT_TYPE(I32),
                                                  CREATE_SUBSTRAIT_TYPE(I64),
                                                  CREATE_SUBSTRAIT_TYPE(Fp32),
                                                  CREATE_SUBSTRAIT_TYPE(Fp64),
                                                  CREATE_SUBSTRAIT_TYPE(I8),
                                                  CREATE_SUBSTRAIT_TYPE(I16)},
                                                 {0, 0, 0, 0, 0, 0},
                                                 GeneratePattern::Random,
                                                 -10000,
                                                 10000))};
  }
};

TEST_F(CiderMathOpNotNullTest, DecimalMathOpTest) {
  assertQuery("SELECT integer_col + 0.123 FROM test");
  assertQuery("SELECT integer_col - 0.123 FROM test");
  // modify output decimal type scale value of generated json file to pass dec_mul case.
  assertQuery("SELECT integer_col * 0.123 FROM test",
              "decimal_mul_output_scale_fixed.json");
  // modify output decimal type scale value of generated json file to pass dec_div case.
  assertQuery("SELECT (integer_col + 0.8) / 2 FROM test",
              "decimal_div_output_scale_fixed.json");
  assertQuery("SELECT tinyint_col + 0.123 FROM test");
  assertQuery("SELECT smallint_col - 0.123 FROM test");
  assertQuery("SELECT double_col + 0.123 FROM test");
  assertQuery("SELECT double_col - 0.123 FROM test");
  assertQuery("SELECT double_col * 0.123 FROM test");
  assertQuery("SELECT double_col / 0.123 FROM test");
  // modify type of bigint cast to decimal of generated json file to pass dec_int64 case.
  assertQuery("SELECT bigint_col + 0.123 FROM test",
              "decimal_bigint_cast_scale_fixed.json");
}

int main(int argc, char** argv) {
  testing::InitGoogleTest(&argc, argv);
  int err{0};
  try {
    err = RUN_ALL_TESTS();
  } catch (const std::exception& e) {
    LOG(ERROR) << e.what();
  }
  return err;
}
