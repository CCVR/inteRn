\name{curb65}
\alias{curb65}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
CURB 65 criteria for severity of community acquired pneumonia
}
\description{
Estimates mortality of community-acquired pneumonia to help determine inpatient vs. outpatient treatment.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
curb65(
  confusion = "no",
  BUN = 17,
  systolic.blood.pressure = 120,
  diastolic.blood.pressure = 80,
  respiratory.rate = 16
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{confusion}{
%%     ~~Describe \code{confusion} here~~
Accepts a string value. The value should be 'yes' if the patient has altered mental status and 'no' if the patient does not have altered mental status. Please use the clinical criteria of altered mental status. Please use lower case for the input.
}
  \item{BUN}{
%%     ~~Describe \code{BUN} here~~
Accepts a numerical or integer value. The value should be the measured serum BUN reported in a lab test such as a BMP or CMP.
}
  \item{systolic.blood.pressure}{
%%     ~~Describe \code{systolic.blood.pressure} here~~
Integer or numerical value corresponding to the patient's systolic blood pressure.
}
  \item{diastolic.blood.pressure}{
%%     ~~Describe \code{diastolic.blood.pressure} here~~
Integer or numerical value corresponding to the patient's diastolic blood pressure.
}
  \item{respiratory.rate}{
%%     ~~Describe \code{respiratory.rate} here~~
Integer or numerical value corresponding to the patient's breaths per minute.
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
Lim, W S et al. “Defining community acquired pneumonia severity on presentation to hospital: an international derivation and validation study.” Thorax vol. 58,5 (2003): 377-82. doi:10.1136/thorax.58.5.377
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
curb65(
  confusion = "no",
  BUN = 17,
  systolic.blood.pressure = 120,
  diastolic.blood.pressure = 80,
  respiratory.rate = 16
)

## The function is currently defined as
function (confusion = "no", BUN = 17, systolic.blood.pressure = 120, 
    diastolic.blood.pressure = 80, respiratory.rate = 16) 
{
    guide = list(`high risk, 27.8\% 30-day mortality` = 4, `Severe risk group: 14.0\% 30-day mortality.` = 3, 
        `Moderate risk group: 6.8\% 30-day mortality.` = 2, `Low risk group: 2.7\% 30-day mortality.` = 1, 
        `Low risk group: 0.6\% 30-day mortality.` = 0)
    curb.score = 0
    if (confusion == "yes") {
        curb.score = curb.score + 1
    }
    if (BUN > 17) {
        curb.score = curb.score + 1
    }
    if (respiratory.rate > 29) {
        curb.score = curb.score + 1
    }
    if (systolic.blood.pressure < 90 | diastolic.blood.pressure < 
        61) {
        curb.score = curb.score + 1
    }
    res = list(`curb score` = curb.score, interpretation = names(guide[guide == 
        curb.score]))
    return(res)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
