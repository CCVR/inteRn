\name{TIMI}
\alias{TIMI}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
TIMI risk scores for nSTEMI, STEMI and ACS
}
\description{
Estimates mortality for patients with unstable angina, non-ST elevation MI, ST elevation MI or acute coronary syndrome
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
TIMI(
  age = 65,
  Number.of.CAD.risk.factors = 4, 
  known.CAD = "yes",
  aspirin.in.last.7.days = "yes",
  number.of.angina.episodes.in.24.hours = 2,
  ekg.st.changes.over.0.5 = "yes", 
  positive.cardiac.markers = "yes", 
  HR = 100, 
  sbp = 120, 
  which.timi = "nSTEMI", 
  DHA = TRUE, 
  JVD = TRUE, 
  Pulmonary.Edema = TRUE, 
  weight.kg = 67, 
  Anterior.STE = TRUE,
  LBBB = TRUE, 
  time.to.treat = 4
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{age}{
Numerical value corresponding to the age of the patient in years.
}
  \item{Number.of.CAD.risk.factors}{
%%     ~~Describe \code{Number.of.CAD.risk.factors} here~~
Integer value corresponding to the number of risk factors for coronary artery disease.
}
  \item{known.CAD}{
%%     ~~Describe \code{known.CAD} here~~
String value. 'yes' if the patient is known to have coronary artery disease, 'no' otherwise. Use lower case.
}
  \item{aspirin.in.last.7.days}{
%%     ~~Describe \code{aspirin.in.last.7.days} here~~
String value. 'yes' if the patient is known to have aspirin in the last 7 days, 'no' otherwise. Use lower case.
}
  \item{number.of.angina.episodes.in.24.hours}{
%%     ~~Describe \code{number.of.angina.episodes.in.24.hours} here~~
Integer value corresponding to the number of episodes of angina in the last 24 hours.
}
  \item{ekg.st.changes.over.0.5}{
%%     ~~Describe \code{ekg.st.changes.over.0.5} here~~
String value. 'yes' if the patient had ST segment changes with an amplitude larger than 0.5 'no' otherwise. Use lower case.
}
  \item{positive.cardiac.markers}{
%%     ~~Describe \code{positive.cardiac.markers} here~~
String value. 'yes' if the patient had positive cardiac markers (troponins) 'no' otherwise. Use lower case.
}
  \item{HR}{
%%     ~~Describe \code{HR} here~~
Integer value corresponding to the patient's heart rate (beats per minute).
}
  \item{sbp}{
%%     ~~Describe \code{sbp} here~~
Integer value corresponding to the patient's systolic blood pressure.
}
  \item{which.timi}{
%%     ~~Describe \code{which.timi} here~~
String value corresponding to the TIMI score you want to calculate. It can be 'nSTEMI' for unstable angina or non-ST segment elevation MI, 'STEMI' for ST segment elevation MI or 'ACS' for acute coronary syndrome.
}
  \item{DHA}{
%%     ~~Describe \code{DHA} here~~
Boolean value. TRUE if the patient has diabetes or hypertension or angina.
}
  \item{JVD}{
%%     ~~Describe \code{JVD} here~~
Boolean value. TRUE if the patient has jugular venous distension.
}
  \item{Pulmonary.Edema}{
%%     ~~Describe \code{Pulmonary.Edema} here~~
Boolean value. TRUE if the patient has pulmonary edema.
}
  \item{weight.kg}{
%%     ~~Describe \code{weight.kg} here~~
Numerical value corresponding to the patient's weight in kg.
}
  \item{Anterior.STE}{
%%     ~~Describe \code{Anterior.STE} here~~
Boolean value. TRUE if the patient has ST elevation of the anterior leads in the EKG.
}
  \item{LBBB}{
%%     ~~Describe \code{LBBB} here~~
Boolean value. TRUE if the patient has a new onset Left Bundle Branch Block in the EKG.
}
  \item{time.to.treat}{
%%     ~~Describe \code{time.to.treat} here~~
Numerical value corresponding to time from the MI episode began to time of initiating treatment.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a list with the TIMI score calculated for this patient and a short string with a small interpretation of the score when possible.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
-Antman, E M et al. “The TIMI risk score for unstable angina/non-ST elevation MI: A method for prognostication and therapeutic decision making.” JAMA vol. 284,7 (2000): 835-42. doi:10.1001/jama.284.7.835
-Morrow, D A et al. “TIMI risk score for ST-elevation myocardial infarction: A convenient, bedside, clinical score for risk assessment at presentation: An intravenous nPA for treatment of infarcting myocardium early II trial substudy.” Circulation vol. 102,17 (2000): 2031-7. 
-Wiviott, Stephen D et al. “Application of the Thrombolysis in Myocardial Infarction risk index in non-ST-segment elevation myocardial infarction: evaluation of patients in the National Registry of Myocardial Infarction.” Journal of the American College of Cardiology vol. 47,8 (2006): 1553-8. doi:10.1016/j.jacc.2005.11.075
}
\author{
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
# For unstable angina or nSTEMI
TIMI(
  age = 65,
  Number.of.CAD.risk.factors = 4, 
  known.CAD = "yes",
  aspirin.in.last.7.days = "yes",
  number.of.angina.episodes.in.24.hours = 2,
  ekg.st.changes.over.0.5 = "yes", 
  positive.cardiac.markers = "yes", 
  HR = 100, 
  sbp = 120, 
  which.timi = "nSTEMI", 
  DHA = TRUE, 
  JVD = TRUE, 
  Pulmonary.Edema = TRUE, 
  weight.kg = 67, 
  Anterior.STE = TRUE,
  LBBB = TRUE, 
  time.to.treat = 4
)

# for STEMI
TIMI(
  age = 65,
  Number.of.CAD.risk.factors = 4, 
  known.CAD = "yes",
  aspirin.in.last.7.days = "yes",
  number.of.angina.episodes.in.24.hours = 2,
  ekg.st.changes.over.0.5 = "yes", 
  positive.cardiac.markers = "yes", 
  HR = 100, 
  sbp = 120, 
  which.timi = "STEMI", 
  DHA = TRUE, 
  JVD = TRUE, 
  Pulmonary.Edema = TRUE, 
  weight.kg = 67, 
  Anterior.STE = TRUE,
  LBBB = TRUE, 
  time.to.treat = 4
)

# for ACS
TIMI(
  age = 65,
  Number.of.CAD.risk.factors = 4, 
  known.CAD = "yes",
  aspirin.in.last.7.days = "yes",
  number.of.angina.episodes.in.24.hours = 2,
  ekg.st.changes.over.0.5 = "yes", 
  positive.cardiac.markers = "yes", 
  HR = 100, 
  sbp = 120, 
  which.timi = "ACS", 
  DHA = TRUE, 
  JVD = TRUE, 
  Pulmonary.Edema = TRUE, 
  weight.kg = 67, 
  Anterior.STE = TRUE,
  LBBB = TRUE, 
  time.to.treat = 4
)

}