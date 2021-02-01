set(LLVM_LINK_COMPONENTS
  AllTargetsAsmParsers
  AllTargetsDescs
  AllTargetsInfos
  support
  )

add_clang_tool(clang-tidy
  ClangTidyMain.cpp
  )
add_dependencies(clang-tidy
  clang-headers
  )
target_link_libraries(clang-tidy
  PRIVATE
  clangAST
  clangASTMatchers
  clangBasic
  clangTidy
  clangTidyAndroidModule
  clangTidyBoostModule
  clangTidyBugproneModule
  clangTidyCERTModule
  clangTidyCppCoreGuidelinesModule
  clangTidyFuchsiaModule
  clangTidyGoogleModule
  clangTidyHICPPModule
  clangTidyLLVMModule
  clangTidyMiscModule
  clangTidyModernizeModule
  clangTidyMPIModule
  clangTidyObjCModule
  clangTidyPerformanceModule
  clangTidyReadabilityModule
  clangTooling
  clangToolingCore
  )

install(PROGRAMS clang-tidy-diff.py
  DESTINATION ${CMAKE_INSTALL_DATADIR}/clang
  COMPONENT clang-tidy)
install(PROGRAMS run-clang-tidy.py
  DESTINATION ${CMAKE_INSTALL_DATADIR}/clang
  COMPONENT clang-tidy)
