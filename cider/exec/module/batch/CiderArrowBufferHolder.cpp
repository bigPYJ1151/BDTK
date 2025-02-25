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

#include "CiderArrowBufferHolder.h"
#include "ArrowABI.h"

#include <cstdlib>

CiderArrowArrayBufferHolder::CiderArrowArrayBufferHolder(size_t buffer_num,
                                                         size_t children_num,
                                                         bool dict)
    : buffers_(buffer_num, nullptr)
    , children_ptr_(children_num, nullptr)
    , children_and_dict_(children_num + (dict ? 1 : 0))
    , has_dict_(dict) {
  for (size_t i = 0; i < children_num; ++i) {
    children_and_dict_[i].release = nullptr;
    children_ptr_[i] = &children_and_dict_[i];
  }
  if (dict) {
    children_and_dict_.back().release = nullptr;
  }
}

CiderArrowArrayBufferHolder::~CiderArrowArrayBufferHolder() {
  for (size_t i = 0; i < buffers_.size(); ++i) {
    relaseBuffer(i);
  }
}

// TODO: Replace with CiderAllocator
void CiderArrowArrayBufferHolder::allocBuffer(size_t index, size_t bytes) {
  if (buffers_[index]) {
    buffers_[index] = std::realloc(buffers_[index], bytes);
  } else {
    buffers_[index] = std::malloc(bytes);
  }
}

// TODO: Replace with CiderAllocator
void CiderArrowArrayBufferHolder::relaseBuffer(size_t index) {
  if (buffers_[index]) {
    std::free(buffers_[index]);
    buffers_[index] = nullptr;
  }
}

ArrowArray* CiderArrowArrayBufferHolder::getDictPtr() {
  return has_dict_ ? &children_and_dict_.back() : nullptr;
}

CiderArrowSchemaBufferHolder::CiderArrowSchemaBufferHolder(size_t children_num,
                                                           bool null_vector,
                                                           bool dict)
    : children_ptr_(children_num, nullptr)
    , children_and_dict_(children_num + (dict ? 1 : 0))
    , null_vector_(null_vector)
    , has_dict_(dict) {
  for (size_t i = 0; i < children_num; ++i) {
    children_ptr_[i] = &children_and_dict_[i];
    children_and_dict_[i].release = nullptr;
  }
  if (dict) {
    children_and_dict_.back().release = nullptr;
  }
}

ArrowSchema* CiderArrowSchemaBufferHolder::getDictPtr() {
  return has_dict_ ? &children_and_dict_.back() : nullptr;
}
