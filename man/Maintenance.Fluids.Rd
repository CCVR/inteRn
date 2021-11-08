\name{Maintenance.Fluids}
\alias{Maintenance.Fluids}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Calculate maintenance fluids.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Uses the Holliday-Seager method to calculate the amount of IV fluids required by a patient given their weight.
}
\usage{
Maintenance.Fluids(
  weight = 200,
  units = "pounds"
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{weight}{
%%     ~~Describe \code{weight} here~~
Numerical value corresponding to the weight of the patient for which you want to calculate the amount of IV fluids required.
}
  \item{units}{
%%     ~~Describe \code{units} here~~
String value corresponding to the unit system used to measure the weight of the patient for which you want to calculate the amount of IV fluids required. Avaliable options are 'kg' if the patient's weight was measured in kilograms or 'pounds' if the patient's weight was measured in pounds.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a list object that includes the amount of mL per day and per hour required for maintenance of this patient.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
HOLLIDAY, M A, and W E SEGAR. “The maintenance need for water in parenteral fluid therapy.” Pediatrics vol. 19,5 (1957): 823-32. 
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
# Maintentance fluids for a 200 pound patient
Maintenance.Fluids(
  weight = 200,
  units = "pounds"
)

# Maintentance fluids for a 100 kg patient
Maintenance.Fluids(
  weight = 100,
  units = "kg"
)

# Maintentance fluids for a 20 kg patient
Maintenance.Fluids(
  weight = 20,
  units = "kg"
)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
