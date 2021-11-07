\name{creatinine.clearance}
\alias{creatinine.clearance}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Calculate the creatinine clearance
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Calculate the creatinine clearance to adjust medication doses according to renal function.
}
\usage{
creatinine.clearance(
  sex = "male",
  age = 78,
  weight = 100,
  s.cre = 1.58
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{sex}{
%%     ~~Describe \code{sex} here~~
Accepts a string value. The value should be 'female' if the patient was born a member of the female sex and 'male' if the patient was born of the male sex. Please use lower case.
}
  \item{age}{
%%     ~~Describe \code{age} here~~
Accepts a numerical or integer value. The value should be between 1-120, but technically, any value is accepted.
}
  \item{weight}{
%%     ~~Describe \code{weight} here~~
Accepts a numerical or integer value. The value should be the weight of the patient in pounds.
}
  \item{s.cre}{
%%     ~~Describe \code{s.cre} here~~
Accepts a numerical or integer value. The value should be the measured serum creatinine in mg/dL.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~

Cockcroft, D W, and M H Gault. “Prediction of creatinine clearance from serum creatinine.” Nephron vol. 16,1 (1976): 31-41. doi:10.1159/000180580
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
creatinine.clearance(
  sex = "male",
  age = 78,
  weight = 100,
  s.cre = 1.58
)

## The function is currently defined as
function (sex = "male", age = 78, weight = 100, s.cre = 1.58) 
{
    cat("Please input age in years, weight in pounds and serum creatinine in mg/dL")
    cat("", sep = "\n")
    if (sex == "male") {
        CCr = (((140 - age) * (weight/2.2))/(72 * s.cre))
    }
    else if (sex == "female") {
        CCr = (((140 - age) * (weight/2.2))/(72 * s.cre)) * 0.85
    }
    cat("Creatinine clearance", CCr)
    cat("", sep = "\n")
    return(CCr)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
