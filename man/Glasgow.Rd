\name{Glasgow}
\alias{Glasgow}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Glasgow comma scale
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Calculate the Glasgow comma scale for a patient.
}
\usage{
Glasgow(
  best.eye.response = 4, 
  best.verbal.response = 5, 
  best.motor.response = 6, 
  mechanical.ventilation = FALSE, 
  ask.input = FALSE
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{best.eye.response}{
%%     ~~Describe \code{best.eye.response} here~~
Value is an integer. Score of best eye reponse from patient.
}
  \item{best.verbal.response}{
%%     ~~Describe \code{best.verbal.response} here~~
Value is an integer. Score of best verbal reponse from patient.
}
  \item{best.motor.response}{
%%     ~~Describe \code{best.motor.response} here~~
Value is an integer. Score of best motor reponse from patient.
}
  \item{mechanical.ventilation}{
%%     ~~Describe \code{mechanical.ventilation} here~~
Boolean value. TRUE if patient is on mechanical ventilation.
}
  \item{ask.input}{
%%     ~~Describe \code{ask.input} here~~
Boolean value. If TRUE, the function will ask you the input of every item in the glasgow comma scale and include a brief explanation of how each item should be scored. Default is FALSE. Use TRUE if you need help scoring each item of the Glasgow comma scale.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Output is an integer corresponding to the overall score in the Glasgow comma scale.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
Teasdale, G, and B Jennett. “Assessment of coma and impaired consciousness. A practical scale.” Lancet (London, England) vol. 2,7872 (1974): 81-4. doi:10.1016/s0140-6736(74)91639-0
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
# If on mechanical ventilation
Glasgow(
  mechanical.ventilation = TRUE, 
  ask.input = TRUE
)

# If not on mechanical ventilation
Glasgow(
  mechanical.ventilation = FALSE, 
  ask.input = FALSE
)

# If you don't need help scoring each item
Glasgow(
  best.eye.response = 4, 
  best.verbal.response = 5, 
  best.motor.response = 6
)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
