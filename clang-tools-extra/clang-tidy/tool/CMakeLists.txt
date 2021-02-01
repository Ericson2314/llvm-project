set(LLVM_LINK_COMPONENTS
  support
  )

add_clang_tool(clang-tidy
  ClangTidyMain.cpp
  )
add_dependencies(clang-tidy
  clang-headers
  )
target_link_libraries(clang-tidy
  clangAST
  clangASTMatchers
  clangBasic
  clangTidy
  clangTidyAndroidModule
  clangTidyBoostModule
  clangTidyBugproneModule
  clangTidyCERTModule
  clangTidyCppCoreGuidelinesModule
  clangTidyGoogleModule
  clangTidyHICPPModule
  clangTidyLLVMModule
  clangTidyMiscModule
  clangTidyModernizeModule
  clangTidyMPIModule
  clangTidyPerformanceModule
  clangTidyReadabilityModule
  clangTooling
  clangToolingCore
  )

install(TARGETS clang-tidy
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})

install(PROGRAMS clang-tidy-diff.py DESTINATION ${CMAKE_INSTALL_DATADIR}/clang)
install(PROGRAMS run-clang-tidy.py DESTINATION ${CMAKE_INSTALL_DATADIR}/clang)
