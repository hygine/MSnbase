.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
      paste("\nThis is MSnbase version", packageVersion("MSnbase"), "\n",
            " Read '?MSnbase' and references therein for information\n",
            " about the package and how to get started.\n"))

  if (interactive() && .Platform$OS.type == "windows" &&
      .Platform$GUI == "Rgui") {
      Biobase::addVigs2WinMenu("MSnbase")
  }
}

.onLoad <- function(libname, pkgname) {
    ## Add MSnbase options.
    msOps <- list(PARALLEL_THRESH = 1000,
                  verbose = TRUE)
    options(MSnbase = msOps)
}
