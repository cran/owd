\name{NEWS}
\title{NEWS file for the owd package}
\section{Changes in version 1.0.4}{
  \itemize{
    \item Altered examples to allow for the fact that the '~/Documents' directory may not be present on all Unix systems.
  }
}
\section{Changes in version 1.0.3}{
  \itemize{
    \item Altered the examples to make them executable.
  }
}
\section{Changes in version 1.0.2}{
  \itemize{
    \item Modified the capitalisation in the package citation.
  }
}
\section{Changes in version 1.0.1}{
  \itemize{
    \item Added \R >= 2.13 as a requirement for installing the package. Before this version of \R, the \code{\link{normalizePath}} function was located in the \emph{utils} package.
  }
}
\section{Changes in version 1.0.0}{
  \itemize{
    \item Made use of \code{xdg-open} for non-macOS Unix-like systems to provide a simplified and more universal solution to finding the preferred file manager.
    \item Added the ability to specify a directory path to the \code{\link{owd}}. Sanity checks for the input path have also been added.
  }
}
\section{Changes in version 0.0.0.9000}{
  \itemize{
    \item Initial creation of a working version of the \emph{owd} package.
  }
}
