\name{anion.gap}
\alias{anion.gap}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Anion Gap
}
\description{
Calculate the anion gap
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
anion.gap(chloride = 100, sodium = 140, bicarbonate = 24, albumin = 4)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{chloride}{
%%     ~~Describe \code{chloride} here~~
Numerical value. Chloride in blood.
}
  \item{sodium}{
%%     ~~Describe \code{sodium} here~~
Numerical value. Sodium in blood.
}
  \item{bicarbonate}{
%%     ~~Describe \code{bicarbonate} here~~
Numerical value. Bicarbonate in blood.
}
  \item{albumin}{
%%     ~~Describe \code{albumin} here~~
Numerical value. Albumin in blood.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a list object with the anion gap calculation results.
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
Carlos C Vera Recio
%%  ~~who you are~~
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
