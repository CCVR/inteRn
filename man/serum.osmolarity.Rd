\name{serum.osmolarity}
\alias{serum.osmolarity}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Serum osmolarity
}
\description{
Calculate the serum osmolarity from the measurements in a basic or comprehensive metabolic panel.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
serum.osmolarity(
  serum.sodium = 140, 
  BUN = 24, 
  glucose = 95,
  ethanol = 0
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{serum.sodium}{
  Numerical value corresponding to sodium reported in BMP/CMP.
%%     ~~Describe \code{serum.sodium} here~~
}
  \item{BUN}{
%%     ~~Describe \code{BUN} here~~
Numerical value corresponding to BUN reported in BMP/CMP.
}
  \item{glucose}{
%%     ~~Describe \code{glucose} here~~
Numerical value corresponding to glucose reported in BMP/CMP.
}
  \item{ethanol}{
%%     ~~Describe \code{ethanol} here~~
Numerical value corresponding to ethanol level in blood.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a numerical value corresponding to the serum osmolarity.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
Roy A. Purssell, Morris Pudek, Jeffrey Brubacher, Riyad B. Abu-Laban,
Derivation and validation of a formula to calculate the contribution of ethanol to the osmolal gap,
Annals of Emergency Medicine,
Volume 38, Issue 6,
2001,
Pages 653-659,
ISSN 0196-0644,
https://doi.org/10.1067/mem.2001.119455.
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
serum.osmolarity(
  serum.sodium = 140, 
  BUN = 24, 
  glucose = 95,
  ethanol = 0
)
}