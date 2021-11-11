\name{anion.gap}
\alias{anion.gap}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
anion.gap(chloride = 100, sodium = 140, bicarbonate = 24, albumin = 4)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{chloride}{
%%     ~~Describe \code{chloride} here~~
}
  \item{sodium}{
%%     ~~Describe \code{sodium} here~~
}
  \item{bicarbonate}{
%%     ~~Describe \code{bicarbonate} here~~
}
  \item{albumin}{
%%     ~~Describe \code{albumin} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
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
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (chloride = 100, sodium = 140, bicarbonate = 24, albumin = 4) 
{
    anion.gap = sodium - (chloride + bicarbonate)
    anion.gap.albumin.corrected = anion.gap + (2.5 * (4 - albumin))
    delta.gap = anion.gap - 12
    albumin.corrected.delta.gap = anion.gap.albumin.corrected - 
        12
    delta.ratio = delta.gap/(24 - bicarbonate)
    delta.ratio.albumin.corrected = albumin.corrected.delta.gap/(24 - 
        bicarbonate)
    res = list(`Anion Gap` = anion.gap, `Albumin Corrected Anion Gap` = anion.gap.albumin.corrected, 
        `Delta Gap` = delta.gap, `Albumin Corrected Delta Gap` = albumin.corrected.delta.gap, 
        `Delta Ratio` = delta.ratio, `Albumin Corrected Delta Ratio` = delta.ratio.albumin.corrected)
    return(res)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
