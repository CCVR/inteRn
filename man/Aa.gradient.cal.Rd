\name{Aa.gradient.cal}
\alias{Aa.gradient.cal}
%- Also NEED an '\alias' for EACH other topic documented here
\title{
Calculates the alveolar-arterial gradient.
}
\description{
Calculates the difference in partial pressure of oxygen between the alveolus and arteries.
}
\usage{
Aa.gradient.cal(
  age = 81,
  FiO2 = 0.4,
  PaO2 = 146.3,
  PaCO2 = 33.2,
  Patm = 760,
  R = 0.8, 
  PH2O = 47
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{age}{
%%     ~~Describe \code{age} here~~
Accepts an integer value (numerical value also accepted). The patient's age, in years. The function will accept any integer value, but the values should be between 1-120.
}
  \item{FiO2}{
%%     ~~Describe \code{FiO2} here~~
Accepts a numerical value. The fraction of inspired oxygen. The function will accept any numerical value, but the result will be nonsense if its not between 0-1. The FiO2 is 0.21 in room air. If the patient is on mechanical ventilation, please use the FiO2 parameter on the ventilator. Similarly, if the patient is on v-mask or nasal canula, please use the fraction of oxygen provided. For example, if the patient is on 70 percent oxygen via v-mask, please use 0.70.
}
  \item{PaO2}{
%%     ~~Describe \code{PaO2} here~~
Accepts a numerical value. The partial pressure of oxygen in arterial gas. Please use the reported PaO2 on arterial blood gases.
}
  \item{PaCO2}{
%%     ~~Describe \code{PaCO2} here~~
Accepts a numerical value. The partial pressure of CO2 in arterial gas. Please use the reported PaCO2 on arterial blood gases.
}
  \item{Patm}{
%%     ~~Describe \code{Patm} here~~
Accepts a numerical value. The atmospheric pressure in mmHg. The default is 760 (at sea level).
}
  \item{R}{
%%     ~~Describe \code{R} here~~
Accepts a numerical value. The respiratory quotient. Generally a constant variable. Shouldn't be changed unless you understand what you are doing.
}
  \item{PH2O}{
%%     ~~Describe \code{PH2O} here~~
Accepts a numerical value. Partial pressure of water vapor. Default is 47.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a numerical value. The value corresponds to the alveolar-arterial gradient.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
Helmholz HF Jr. The abbreviated alveolar air equation. Chest. 1979 Jun;75(6):748
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
Aa.gradient.cal(
  age = 81,
  FiO2 = 0.4,
  PaO2 = 146.3,
  PaCO2 = 33.2,
  Patm = 760,
  R = 0.8, 
  PH2O = 47
)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ A-a gradient }% use one of  RShowDoc("KEYWORDS")
\keyword{ Arterial Blood Gases }% __ONLY ONE__ keyword per line
