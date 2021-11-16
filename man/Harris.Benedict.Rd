\name{Harris.Benedict}
\alias{Harris.Benedict}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Harris Benedict Equation
}
\description{
Estimate the Basal Metabolic Rate according to the Harris Benedict equation
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Harris.Benedict(
  height = 62,
  age = 28, 
  weight = 154, 
  weight.goal = 140, 
  dia = c(1, 2, 3, 4, 5),
  calorias = c(805, 720, 1210, 1000, 759), 
  Make.Plot = TRUE, 
  sex = "female"
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{height}{
%%     ~~Describe \code{height} here~~
Numerical value corresponding to the height measured in inches.
}
  \item{age}{
%%     ~~Describe \code{age} here~~
Numerical value corresponding to the age measured in years.
}
  \item{weight}{
%%     ~~Describe \code{weight} here~~
Numerical value corresponding to the weight measured in pounds.
}
  \item{weight.goal}{
%%     ~~Describe \code{weight.goal} here~~
Numerical value corresponding to the desired weight measured in pounds.
}
  \item{dia}{
%%     ~~Describe \code{dia} here~~
Vector of numerical values corresponding to index of days you kept tract of calories.
}
  \item{calorias}{
%%     ~~Describe \code{calorias} here~~
Vector of numerical values corresponding to the calories consumed on 'dia'.
}
  \item{Make.Plot}{
%%     ~~Describe \code{Make.Plot} here~~
Boolean value where if TRUE a plot of the calories per day is made. Only should be true if 'dia' and 'calorias' are provided.
}
  \item{sex}{
  String value corresponding to sex of patient. Should be 'male' or 'female'. Please use lower case.
%%     ~~Describe \code{sex} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns an object list with BMRs and plot if Make.Plot is TRUE.
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
