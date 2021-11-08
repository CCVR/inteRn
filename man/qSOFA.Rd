\name{qSOFA}
\alias{qSOFA}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Quick SOFA score for sepsis
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Identifies high-risk patients for in-hospital mortality with suspected infection outside the ICU.
}
\usage{
qSOFA(
  altered.mental.status = "no", 
  respiratory.rate = 16, 
  systolic.blood.pressure = 120
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{altered.mental.status}{
%%     ~~Describe \code{altered.mental.status} here~~
String value. Input "yes" if patient has altered mental status. Input 'no' if the patient does not have altered mental status. Please use lower case.
}
  \item{respiratory.rate}{
%%     ~~Describe \code{respiratory.rate} here~~
Numerical or integer value corresponding to number of breaths per minute of the patient.
}
  \item{systolic.blood.pressure}{
%%     ~~Describe \code{systolic.blood.pressure} here~~
Numerical or integer value corresponding to the patient's systolic blood pressure.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Integer value corresponding to the qSOFA score.

Risk group

Patient's with scores 0-1 are not high risk for in-hospital mortality. Patient's with scores 2-3 are at High risk for in-hospital mortality (3 to 14-fold increase).

%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
Seymour CW, Liu VX, Iwashyna TJ, et al. Assessment of Clinical Criteria for Sepsis: For the Third International Consensus Definitions for Sepsis and Septic Shock (Sepsis-3). JAMA. 2016;315(8):762–774. doi:10.1001/jama.2016.0288
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
# Patient with altered mental status and tachypnea
qSOFA(
  altered.mental.status = "yes", 
  respiratory.rate = 21, 
  systolic.blood.pressure = 120
)

# Patient without altered mental status but with tachypnea and droping blood pressures.
qSOFA(
  altered.mental.status = "no", 
  respiratory.rate = 21, 
  systolic.blood.pressure = 95
)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
