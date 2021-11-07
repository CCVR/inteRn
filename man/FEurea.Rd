\name{FEurea}
\alias{FEurea}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Calculate the fraction of excreted urea
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Calculate the function of excreted urea to assess the etiology of kidney injury in a patient who is been administered diuretics.
}
\usage{
FEurea(
  serum.creatinine = 1,
  urine.urea = 1,
  serum.urea = 1,
  urine.creatine = 1
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{serum.creatinine}{
%%     ~~Describe \code{serum.creatinine} here~~
Numerical value. Serum creatinine reported in BMP or CMP.
}
  \item{urine.urea}{
%%     ~~Describe \code{urine.urea} here~~
Numerical value. Urine urea reported in a lab (urea urine spots).
}
  \item{serum.urea}{
%%     ~~Describe \code{serum.urea} here~~
Numerical value. Serum BUN reported in BMP or CMP.
}
  \item{urine.creatine}{
%%     ~~Describe \code{urine.creatine} here~~
Numerical value. Urine creatinine reported in a lab (creatinine urine spots).
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a percentage corresponding to the fraction of excreted sodium.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
Kaplan, A A, and O F Kohn. “Fractional excretion of urea as a guide to renal dysfunction.” American journal of nephrology vol. 12,1-2 (1992): 49-54. doi:10.1159/000168417
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
FEurea(
  serum.creatinine = 1,
  urine.urea = 1,
  serum.urea = 1,
  urine.creatine = 1
)

## The function is currently defined as
function (serum.creatinine = 1, urine.urea = 1, serum.urea = 1, 
    urine.creatine = 1) 
{
    guide = list(
      `Pre-renal` = 35,
      `Intrinsic renal` = 50
    )
    feurea = 100 * ((serum.creatinine * urine.urea)/(serum.urea * 
        urine.creatine))
    interpretation = if (feurea > 50) {
        "Intrinsic Renal"
    }
    else if (feurea <= 35) {
        "Prerenal"
    }
    else {
        "not conclusive"
    }
    res = list(
      `fraction of excreted urea` = feurea,
      interpretation = interpretation
    )
    return(res)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
