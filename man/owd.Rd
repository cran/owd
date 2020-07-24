\name{owd}
\alias{owd}
\title{Open Working Directory}
\description{
  \code{owd} opens the current working directory (or a given directory path) in your computer's file manager.
}
\usage{
owd(dir = '.')
}
\arguments{
  \item{dir}{A character string indicating a directory path. Defaults to \code{'.'}, indicating the current working directory.}
}
\value{
  \code{owd} does not return any value in \R. However, it will return an error if a directory path is passed to it that does not exist, or that \R does not have sufficient privledges to access.
}
\note{
  Tilde expansion (see \link{path.expand}) is performed on directory paths.
}
\author{
  Benjamin G. Feakins, \email{benjamin.feakins@ndph.ox.ac.uk}
}
\seealso{
  \code{\link{getwd}} for the path of the current working directory.
  
  \code{\link{list.files}} for the \emph{contents} of a directory.
}
\examples{
## Open current working directory
owd()

## Open a directory using a relative path
#ifdef unix
owd('/usr/bin')
#endif
#ifdef windows
owd('C:/Windows')
#endif

#ifdef unix
## Making use of tilde expansion to open the home directory
#endif
#ifdef windows
## Making use of tilde expansion to open My Documents
#endif
owd('~')
}
\keyword{IO}
\keyword{file}
\keyword{utilities}
\concept{file manager}
