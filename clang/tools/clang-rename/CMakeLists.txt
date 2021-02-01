set(LLVM_LINK_COMPONENTS
  Option
  Support
  )

add_clang_executable(clang-rename ClangRename.cpp)

target_link_libraries(clang-rename
  clangBasic
  clangFrontend
  clangRewrite
  clangTooling
  clangToolingCore
  clangToolingRefactor
  )

install(TARGETS clang-rename RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})

install(PROGRAMS clang-rename.py
  DESTINATION ${CMAKE_INSTALL_DATADIR}/clang
  COMPONENT clang-rename)
install(PROGRAMS clang-rename.el
  DESTINATION ${CMAKE_INSTALL_DATADIR}/clang
  COMPONENT clang-rename)
