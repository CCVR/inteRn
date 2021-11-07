\name{CHADSVASc}
\alias{CHADSVASc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Calculate the CHAD-VASC score risk of stroke on patients with atrial fibrillation.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Aids physicians calculate the risk of stroke in patients with atrial fibrillation.
}
\usage{
CHADSVASc(
  CHF = "yes", 
  HTN = "yes", 
  Age = 75, 
  DM = "yes", 
  Stroke = "yes",
  Vascular = "yes", 
  sex = "female"
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{CHF}{
%%     ~~Describe \code{CHF} here~~
Accepts a string value. The value should be 'yes' if the patient has congestive heart failure or 'no' if the patient does not have congestive heart failure. Please use lower case.
}
  \item{HTN}{
%%     ~~Describe \code{HTN} here~~
Accepts a string value. The value should be 'yes' if the patient has hypertension or 'no' if the patient does not have hypertension. Please use lower case.
}
  \item{Age}{
%%     ~~Describe \code{Age} here~~
Accepts a numerical or integer value. The value should be between 1-120, but technically, any value is accepted.
}
  \item{DM}{
%%     ~~Describe \code{DM} here~~
Accepts a string value. The value should be 'yes' if the patient has diabetes or 'no' if the patient does not have diabetes. Please use lower case.
}
  \item{Stroke}{
%%     ~~Describe \code{Stroke} here~~
Accepts a string value. The value should be 'yes' if the patient has had a stroke in the past or 'no' if the patient has not had a stroke in the past. Please use lower case.
}
  \item{Vascular}{
%%     ~~Describe \code{Vascular} here~~
Accepts a string value. The value should be 'yes' if the patient has history of vascular disease or 'no' if the patient does not have vascular disease. Some examples of of vascular disease include angina, myocardial infarction, peripheral artery disease or coronary artery disease. Please use lower case.
}
  \item{sex}{
%%     ~~Describe \code{sex} here~~
Accepts a string value. The value should be 'female' if the patient was born a member of the female sex and 'male' if the patient was born of the male sex. Please use lower case.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
The output is an integer value from 0-9 that corresponds to the CHAD-VASC score. Please follow this link to understand the risk asociated with the CHAD-VASC score. 

https://www.mdcalc.com/cha2ds2-vasc-score-atrial-fibrillation-stroke-risk#evidence

%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
Ntaios, George et al. “CHADS₂, CHA₂S₂DS₂-VASc, and long-term stroke outcome in patients without atrial fibrillation.” Neurology vol. 80,11 (2013): 1009-17. doi:10.1212/WNL.0b013e318287281b
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
CHADSVASc(
  CHF = "yes", 
  HTN = "yes", 
  Age = 75, 
  DM = "yes", 
  Stroke = "yes",
  Vascular = "yes", 
  sex = "female"
)

## The function is currently defined as
function (
  CHF = "yes", 
  HTN = "yes",
  Age = 75, 
  DM = "yes",
  Stroke = "yes",
  Vascular = "yes",
  sex = "female"
) 
{
    score = 0
    if (Age >= 75) {
        score = score + 2
    }
    else if (Age >= 65 & Age < 75) {
        score = score + 1
    }
    if (sex == "female") {
        score = score + 1
    }
    if (Vascular == "yes") {
        score = score + 1
    }
    if (Stroke == "yes") {
        score = score + 2
    }
    if (DM == "yes") {
        score = score + 1
    }
    if (HTN == "yes") {
        score = score + 1
    }
    if (CHF == "yes") {
        score = score + 1
    }
    cat("The CHAD-VASc score for this patient is: ", score)
    cat("", sep = "\n")
    return(score)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
