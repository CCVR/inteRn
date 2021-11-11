\name{SIRS.Sepsis.Septic}
\alias{SIRS.Sepsis.Septic}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
SIRS, Sepsis, Septic Shock
}
\description{
Helps you decide wether your patient meets criteria for SIRS, sepsis, septic shock or multi-organ dysfunction syndrome.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
SIRS.Sepsis.Septic(
  HR = 90,
  RR = 20,
  temp = 38,
  PaCO2 = 32,
  WBC = 12000,
  percent.band.neutrofils = 10,
  source.of.infection = "present",
  lactic.acidosis = FALSE,
  sbp = 90,
  sbp.drop = 40,
  fluid.resuciation = FALSE,
  multi.organ.failure = FALSE
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{HR}{
%%     ~~Describe \code{HR} here~~
Numerical value corresponding to the number of the patient's heart beats per minute.
}
  \item{RR}{
%%     ~~Describe \code{RR} here~~
Numerical value corresponding to the patient's respirations per minute.
}
  \item{temp}{
%%     ~~Describe \code{temp} here~~
Numerical value corresponding to the patient's temperature in Celsius.
}
  \item{PaCO2}{
%%     ~~Describe \code{PaCO2} here~~
Numerical value corresponding to the patient's partial arterial pressure of CO2.
}
  \item{WBC}{
%%     ~~Describe \code{WBC} here~~
Numerical value corresponding to the number of WBC's in the patient's CBC.
}
  \item{percent.band.neutrofils}{
%%     ~~Describe \code{percent.band.neutrofils} here~~
Numerical value corresponding to the percent of band neutrophils in the patient's CBC.
}
  \item{source.of.infection}{
%%     ~~Describe \code{source.of.infection} here~~
String value. "present" if there is a source of infection, 'absent' if there is no source of infection and 'suspected' if there is suspected but unconfirmed source of infection.
}
  \item{lactic.acidosis}{
%%     ~~Describe \code{lactic.acidosis} here~~
Boolean value. TRUE if the patient has lactic acidosis.
}
  \item{sbp}{
%%     ~~Describe \code{sbp} here~~
Numerical value corresponding to the patient's systolic blood pressure.
}
  \item{sbp.drop}{
%%     ~~Describe \code{sbp.drop} here~~
Numerical value corresponding to the drop in the patient's systolic blood pressure.
}
  \item{fluid.resuciation}{
%%     ~~Describe \code{fluid.resuciation} here~~
Boolean value. TRUE if there have been attempts to resucitate blood pressure with fluid hydration.
}
  \item{multi.organ.failure}{
%%     ~~Describe \code{multi.organ.failure} here~~
Boolean value. TRUE if the patient has organ failure in 2 or more organs.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a string letting the user know which criteria his patient meets.
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
