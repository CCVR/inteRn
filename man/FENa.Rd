\name{FENa}
\alias{FENa}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Calculate the Fraction of Excreted Sodium
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Calculate the fraction of excreted sodium to assess the type of kidney injury.
}
\usage{
FENa(
  urine.sodium = 1,
  plasma.sodium = 1,
  urine.creatinine = 1,
  plasma.creatinine = 1
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{urine.sodium}{
%%     ~~Describe \code{urine.sodium} here~~
Numerical value. Urine sodium reported in a lab (sodium urine spots).
}
  \item{plasma.sodium}{
%%     ~~Describe \code{plasma.sodium} here~~
Numerical value. Plasma sodium reported in BMP or CMP.
}
  \item{urine.creatinine}{
%%     ~~Describe \code{urine.creatinine} here~~
Numerical value. Urine creatinine reported in a lab (creatinine urine spots).
}
  \item{plasma.creatinine}{
%%     ~~Describe \code{plasma.creatinine} here~~
Numerical value. Plasma creatinine reported in BMP or CMP.
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
Espinel, C H. “The FENa test. Use in the differential diagnosis of acute renal failure.” JAMA vol. 236,6 (1976): 579-81. doi:10.1001/jama.236.6.579
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
FENa(
  urine.sodium = 1,
  plasma.sodium = 1,
  urine.creatinine = 1,
  plasma.creatinine = 1
)

## The function is currently defined as
function (
  urine.sodium = 1, 
  plasma.sodium = 1, 
  urine.creatinine = 1,
  plasma.creatinine = 1
) 
{
    FENa = 100 * ((urine.sodium * plasma.creatinine)/(plasma.sodium * 
        urine.creatinine))
    cat("Fraction of excreted sodium = ", FENa)
    cat("", sep = "\n")
    interpretation = if (FENa > 4) {
        "Post Renal"
    }
    else if (FENa >= 1 & FENa <= 4) {
        "Intrinsic Renal"
    }
    else if (FENa < 1) {
        "Pre-Renal"
    }
    res = list(`fraction of excreted sodium` = FENa, interpretation = interpretation)
    return(res)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
