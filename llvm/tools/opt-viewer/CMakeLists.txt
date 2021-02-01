set (files
  "opt-diff.py"
  "opt-stats.py"
  "opt-viewer.py"
  "optpmap.py"
  "optrecord.py"
  "style.css")

foreach (file ${files})
  install(PROGRAMS ${file}
    DESTINATION ${CMAKE_INSTALL_DATADIR}/opt-viewer
    COMPONENT opt-viewer)
endforeach (file)
