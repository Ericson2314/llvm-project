include_directories(${CMAKE_CURRENT_SOURCE_DIR}/..)

add_clang_executable(find-all-symbols
  FindAllSymbolsMain.cpp
  )

target_link_libraries(find-all-symbols
  PRIVATE
  clangAST
  clangASTMatchers
  clangBasic
  clangFrontend
  clangLex
  clangSerialization
  clangTooling
  findAllSymbols
  )

install(TARGETS find-all-symbols
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})

install(PROGRAMS run-find-all-symbols.py
  DESTINATION ${CMAKE_INSTALL_DATADIR}/clang
  COMPONENT find-all-symbols)
