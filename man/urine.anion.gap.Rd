\name{urine.anion.gap}
\alias{urine.anion.gap}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Urine Anion Gap
}
\description{
Calculate the urine anion gap to help diagnose metabolic acidosis
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
urine.anion.gap(
  urine.sodium = 10,
  urine.potassium = 10, 
  urine.chloride = 20
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{urine.sodium}{
  Numerical value corresponding to the sodium measured in urine spots.
%%     ~~Describe \code{urine.sodium} here~~
}
  \item{urine.potassium}{
%%     ~~Describe \code{urine.potassium} here~~
Numerical value corresponding to the potassium measured in urine spots.
}
  \item{urine.chloride}{
%%     ~~Describe \code{urine.chloride} here~~
Numerical value corresponding to the chlorie measured in urine spots.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a list object that includes the estimated urine anion gap and an interpretation.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
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

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
