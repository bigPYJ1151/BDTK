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

#pragma once

#include "PlanBranches.h"
#include "PlanPattern.h"
#include "PlanRewriter.h"

namespace facebook::velox::plugin::plantransformer {
class PatternRewriter {
 public:
  PatternRewriter(std::shared_ptr<PlanPattern> pattern,
                  std::shared_ptr<PlanRewriter> rewriter)
      : pattern_(pattern), rewriter_(rewriter) {}

  std::pair<bool, VeloxNodeAddrPlanSection> matchFromSrc(
      BranchSrcToTargetIterator branchIte) const {
    return pattern_->match(branchIte);
  }

  VeloxPlanNodePtr rewrite(VeloxNodeAddrPlanSection& planSection,
                           VeloxPlanNodeAddr& source) const {
    return rewriter_->rewrite(planSection, source);
  }

  VeloxPlanNodePtr rewriteWithMultiSrc(VeloxNodeAddrPlanSection& planSection,
                                       VeloxPlanNodeAddrList& srcList) const {
    return rewriter_->rewriteWithMultiSrc(planSection, srcList);
  }

 private:
  std::shared_ptr<PlanPattern> pattern_;
  std::shared_ptr<PlanRewriter> rewriter_;
};
}  // namespace facebook::velox::plugin::plantransformer
