\name{ich.score}
\alias{ich.score}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Intracerebral hemorrage score
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Estimates mortality of patients with intracerebral hemorrage based on age and CT findings.
}
\usage{
ich.score(
  glasgow.score = 15,
  age = 80,
  ich.volume = 30,
  intraventricular = "no",
  infratentorial = "no"
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{glasgow.score}{
%%     ~~Describe \code{glasgow.score} here~~
Integer value corresponding to the Glasgow comma scale.
}
  \item{age}{
%%     ~~Describe \code{age} here~~
Integer value corresponding to the patient's age.
}
  \item{ich.volume}{
%%     ~~Describe \code{ich.volume} here~~
Numerical value corresponding to the volume of the intracerebral hemorrage.
}
  \item{intraventricular}{
%%     ~~Describe \code{intraventricular} here~~
String value. "yes" if hemorrage is intraventricular. Please use lower case.

}
  \item{infratentorial}{
%%     ~~Describe \code{infratentorial} here~~
String value. "yes" if hemorrage is infratentorial. Please use lower case.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Integer value reporting the ICH score.Score of 0 corresponds to 0 percent mortality. Score of 1 corresponds to 13 percent mortality. Score of 2 corresponds to 26 percent mortality. Score of 3 corresponds to 72 percent mortality. Score of 4 corresponds to 94 percent mortality. Score of 5 corresponds to 100 percent mortality. Score of 6* corresponds to 100 percent mortality.

%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
Hemphill, J C 3rd et al. “The ICH score: a simple, reliable grading scale for intracerebral hemorrhage.” Stroke vol. 32,4 (2001): 891-7. doi:10.1161/01.str.32.4.891
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
# Infratentorial hemorrage
ich.score(
  glasgow.score = 15,
  age = 80,
  ich.volume = 30,
  intraventricular = "no",
  infratentorial = "yes"
)

# Supratentorial & intraventricular hemorrage
ich.score(
  glasgow.score = 15,
  age = 80,
  ich.volume = 30,
  intraventricular = "yes",
  infratentorial = "no"
)

## The function is currently defined as
function (glasgow.score = 15, age = 80, ich.volume = 30, intraventricular = "no", 
    infratentorial = "no") 
{
    score = 0
    if (age > 79) {
        score = score + 1
    }
    if (ich.volume >= 30) {
        score = score + 1
    }
    if (glasgow.score > 11) {
        score = score + 0
    }
    else if (glasgow.score > 4 & glasgow.score < 12) {
        score = score + 1
    }
    else if (glasgow.score < 5) {
        score = score + 2
    }
    if (intraventricular == "yes") {
        score = score + 1
    }
    if (infratentorial == "yes") {
        score = score + 1
    }
    cat("ich score is: ", score)
    cat("", sep = "\n")
    return(score)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
