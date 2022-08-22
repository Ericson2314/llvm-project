set(LIBCXXABI_LIBCXX_PATH "${LIBCXXABI_SOURCE_DIR}/../libcxx" CACHE PATH
    "Specify path to libc++ source.")

option(LIBCXXABI_USE_PREBUILT_LIBCXX_HEADERS
    "Use prebuilt libc++ headers because we are not also building libcc++."
    OFF)

# TODO: Move this under the conditional. All usages should use `cxx-headers`
# instead of this, so this is us used to make the "fake" cxx-headers below and
# nothing else.
set(LIBCXXABI_LIBCXX_INCLUDES "" CACHE PATH
    "Specify path to libc++ includes.")
if (LIBCXXABI_USE_PREBUILT_LIBCXX_HEADERS)
  if (NOT IS_DIRECTORY ${LIBCXXABI_LIBCXX_INCLUDES})
    message(FATAL_ERROR
      "LIBCXXABI_LIBCXX_INCLUDES=${LIBCXXABI_LIBCXX_INCLUDES} is not a valid directory. "
      "Since we are not also building libc++, "
      "please provide the path to where the libc++ headers have been installed.")

  endif()
  add_library(cxx-headers INTERFACE)
  target_include_directories(cxx-headers INTERFACE "${LIBCXXABI_LIBCXX_INCLUDES}")
endif()

if (LIBCXXABI_INCLUDE_TESTS)
  # The libraries are just needed for the "lit tests"

  # By default, libcxx and libcxxabi share a library directory.
  set(LIBCXXABI_LIBCXX_LIBRARY_PATH "${LIBCXXABI_LIBRARY_DIR}" CACHE PATH
      "The path to libc++ library.")
endif()
