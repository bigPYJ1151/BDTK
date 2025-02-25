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
#include "TestHelpers.h"
#include "cider/CiderException.h"

class CiderExceptionTest : public ::testing::Test {};

TEST_F(CiderExceptionTest, exception) {
  try {
    CIDER_THROW(CiderRuntimeException, "test CiderRuntimeException");
  } catch (const std::exception& e) {
    std::cout << e.what() << std::endl;
    std::string msg(e.what());
    std::string head = "[CiderRuntimeException]";
    std::string tail =
        "cider/tests/CiderExceptionTest.cpp:30]: test CiderRuntimeException";
    CHECK(msg.find(head) != std::string::npos);
    CHECK(msg.rfind(tail) != std::string::npos);
  }

  try {
    CIDER_THROW(CiderCompileException, "test CiderCompileException");
  } catch (const std::exception& e) {
    std::cout << e.what() << std::endl;
    std::string msg(e.what());
    std::string head = "[CiderCompileException]";
    std::string tail =
        "cider/tests/CiderExceptionTest.cpp:42]: test CiderCompileException";
    CHECK(msg.find(head) != std::string::npos);
    CHECK(msg.rfind(tail) != std::string::npos);
  }

  try {
    CIDER_THROW(CiderRuntimeException, "test CiderRuntimeException");
  } catch (const CiderException& e) {
    std::cout << e.what() << std::endl;
    std::string msg(e.what());
    std::string head = "[CiderRuntimeException]";
    std::string tail =
        "cider/tests/CiderExceptionTest.cpp:54]: test CiderRuntimeException";
    CHECK(msg.find(head) != std::string::npos);
    CHECK(msg.rfind(tail) != std::string::npos);
  }

  try {
    CIDER_THROW(CiderCompileException, "test CiderCompileException");
  } catch (const CiderException& e) {
    std::cout << e.what() << std::endl;
    std::string msg(e.what());
    std::string head = "[CiderCompileException]";
    std::string tail =
        "cider/tests/CiderExceptionTest.cpp:66]: test CiderCompileException";
    CHECK(msg.find(head) != std::string::npos);
    CHECK(msg.rfind(tail) != std::string::npos);
  }
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
