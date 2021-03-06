/**
 ******************************************************************************
 * Xenia : Xbox 360 Emulator Research Project                                 *
 ******************************************************************************
 * Copyright 2013 Ben Vanik. All rights reserved.                             *
 * Released under the BSD license - see LICENSE in the root for more details. *
 ******************************************************************************
 */

#ifndef XENIA_BACKEND_X64_X64_ASSEMBLER_H_
#define XENIA_BACKEND_X64_X64_ASSEMBLER_H_

#include <memory>

#include "xenia/base/string_buffer.h"
#include "xenia/cpu/backend/assembler.h"

namespace xe {
namespace cpu {
namespace backend {
namespace x64 {

class X64Backend;
class X64Emitter;
class XbyakAllocator;

class X64Assembler : public Assembler {
 public:
  X64Assembler(X64Backend* backend);
  ~X64Assembler() override;

  bool Initialize() override;

  void Reset() override;

  bool Assemble(FunctionInfo* symbol_info, hir::HIRBuilder* builder,
                uint32_t debug_info_flags,
                std::unique_ptr<DebugInfo> debug_info,
                Function** out_function) override;

 private:
  void DumpMachineCode(DebugInfo* debug_info, void* machine_code,
                       size_t code_size, StringBuffer* str);

 private:
  X64Backend* x64_backend_;
  std::unique_ptr<X64Emitter> emitter_;
  std::unique_ptr<XbyakAllocator> allocator_;

  StringBuffer string_buffer_;
};

}  // namespace x64
}  // namespace backend
}  // namespace cpu
}  // namespace xe

#endif  // XENIA_BACKEND_X64_X64_ASSEMBLER_H_
