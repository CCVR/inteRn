\name{map.calc}
\alias{map.calc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Mean arterial pressure
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Calculates the mean arterial pressure
}
\usage{
map.calc(
  sbp = 117,
  dbp = 76
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{sbp}{
%%     ~~Describe \code{sbp} here~~
Numerical or integer value corresponding to systolic blood pressure.
}
  \item{dbp}{
%%     ~~Describe \code{dbp} here~~
Numerical or integer value corresponding to diastolic blood pressure.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a numerical value corresponding to the patients estimated mean arterial pressure.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
Systolic and Diastolic Blood Pressure, Pulse Pressure, and Mean Arterial Pressure as Predictors of Cardiovascular Disease Risk in Men. Howard D. Sesso , Meir J. Stampfer , Bernard Rosner , Charles H. Hennekens , J. Michael Gaziano , JoAnn E. Manson , and Robert J. Glynn 
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
Carlos C Vera Recio
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
map.calc(
  sbp = 117,
  dbp = 76
)

## The function is currently defined as
function (sbp = 117, dbp = 76) 
{
    map = (sbp + (2 * dbp))/3
    cat("map = ", map)
    cat("", sep = "\n")
    return(map)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
