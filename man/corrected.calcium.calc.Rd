\name{corrected.calcium.calc}
\alias{corrected.calcium.calc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Correct the calcium level according to the albumin level.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Corrects the calcium level reported in the basic or comprehensive metabolic panel according to the albumin level reported on the same test.
}
\usage{
corrected.calcium.calc(
  measured.calcium = 8,
  albumin = 2.4,
  unit = "SI"
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{measured.calcium}{
%%     ~~Describe \code{measured.calcium} here~~
Accepts a numerical value. The calcium level reported in the BMP or CMP that you want to correct.
}
  \item{albumin}{
%%     ~~Describe \code{albumin} here~~
Accepts a numerical value. The albumin level reported in the BMP or CMP that contains the calcium value you want to correct.
}
  \item{unit}{
%%     ~~Describe \code{unit} here~~
Accepts a string value. Can be either 'SI' if your lab values are reported in the International System or 'Eng' if your lab values are reported in the English system. Both albumin and calcium need to come from the same sample and lab test. Both have to be in the same unit system. Default is 'SI'.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a numerical value corresponding to the corrected calcium levels. The output will be on the same unit system as the input.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
Payne, R B et al. “Interpretation of serum calcium in patients with abnormal serum proteins.” British medical journal vol. 4,5893 (1973): 643-6. doi:10.1136/bmj.4.5893.643
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
corrected.calcium.calc(
  measured.calcium = 8,
  albumin = 2.4,
  unit = "SI"
)

## The function is currently defined as
function (measured.calcium = 8, albumin = 2.4, unit = "SI") 
{
    if (unit == "SI") {
        corrected.calcium = measured.calcium + 0.02 * (40 - albumin)
    }
    else if (unit == "Eng") {
        corrected.calcium = measured.calcium + 0.02 * (40 - albumin)
    }
    cat("Corrected calcium= ", corrected.calcium, " in units ", 
        unit)
    cat("", sep = "\n")
    return(corrected.calcium)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
