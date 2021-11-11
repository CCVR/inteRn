\name{free.water.deficit}
\alias{free.water.deficit}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Free Water Deficit
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Calculate Free Water Deficit 
}
\usage{
free.water.deficit(
  weight = 50, 
  current.sodium = 152, 
  ideal.sodium = 140,
  sex = "male",
  age = 40
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{weight}{
  Numerical value corresponding to patient's weight in kilograms
%%     ~~Describe \code{weight} here~~
}
  \item{current.sodium}{
  Numerical value corresponding to patient's sodium level
%%     ~~Describe \code{current.sodium} here~~
}
  \item{ideal.sodium}{
  Numerical value corresponding to desired sodium level, usually 140.
%%     ~~Describe \code{ideal.sodium} here~~
}
  \item{sex}{
  String value, male or female depending on patient's sex.
%%     ~~Describe \code{sex} here~~
}
  \item{age}{
  Numerical value corresponding to patient's age.
%%     ~~Describe \code{age} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a numerical value corresponding to the free water deficit.
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
