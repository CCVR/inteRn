\name{sodium.correct}
\alias{sodium.correct}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Correction of sodium levels
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Corrects the sodium level reported in a BMP or CMP according to the glycemic level reported in the same metabolic panel.
}
\usage{
sodium.correct(
  measured.sodium = 140, 
  serum.glucose = 100
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{measured.sodium}{
Numerical value that corresponds to the sodium level measured in serum in a BMP or CMP.
}
  \item{serum.glucose}{
%%     ~~Describe \code{serum.glucose} here~~
Numerical value that corresponds to the glucose level measured in serum in a BMP or CMP.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a numerical value corresponding to the corrected sodium level.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
Katz, M A. “Hyperglycemia-induced hyponatremia--calculation of expected serum sodium depression.” The New England journal of medicine vol. 289,16 (1973): 843-4. doi:10.1056/NEJM197310182891607
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
sodium.correct(
  measured.sodium = 140, 
  serum.glucose = 100
)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
