include_directories(${CMAKE_CURRENT_SOURCE_DIR}/..)

add_clang_executable(clang-include-fixer
  ClangIncludeFixer.cpp
  )

target_link_libraries(clang-include-fixer
  PRIVATE
  clangBasic
  clangFormat
  clangFrontend
  clangIncludeFixer
  clangRewrite
  clangTooling
  clangToolingCore
  findAllSymbols
  )

install(TARGETS clang-include-fixer
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})

install(PROGRAMS clang-include-fixer.el
  DESTINATION ${CMAKE_INSTALL_DATADIR}/clang
  COMPONENT clang-include-fixer)
install(PROGRAMS clang-include-fixer.py
  DESTINATION ${CMAKE_INSTALL_DATADIR}/clang
  COMPONENT clang-include-fixer)
