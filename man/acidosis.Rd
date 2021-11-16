\name{acidosis}
\alias{acidosis}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Dynamed Acidosis Algorithm 
}
\description{
Algorithm in DynaMed to help diagnose acidosis
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
acidosis(
  serum.pH = 7.4,
  ABG.pCO2 = 40,
  serum.sodium = 140,
  serum.chloride = 100, 
  serum.bicarb = 24,
  serum.BUN = 8, 
  serum.glucose = 100,
  serum.ethanol = 0, 
  urine.sodium = 1,
  urine.potassium = 1,
  urine.chloride = 1,
  urine.pH = 5,
  measured.urine.osm = 1, 
  serum.albumin = 1,
  poison.concern = FALSE
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{serum.pH}{
%%     ~~Describe \code{serum.pH} here~~
Numerical value corresponding to pH in serum.
}
  \item{ABG.pCO2}{
%%     ~~Describe \code{ABG.pCO2} here~~
Numerical value corresponding to pCO2 in arterial blood gases.
}
  \item{serum.sodium}{
%%     ~~Describe \code{serum.sodium} here~~
Numerical value corresponding to sodium in serum.
}
  \item{serum.chloride}{
%%     ~~Describe \code{serum.chloride} here~~
Numerical value corresponding to chloride in serum.
}
  \item{serum.bicarb}{
%%     ~~Describe \code{serum.bicarb} here~~
Numerical value corresponding to bicarb in serum.
}
  \item{serum.BUN}{
%%     ~~Describe \code{serum.BUN} here~~
Numerical value corresponding to BUN in serum.
}
  \item{serum.glucose}{
%%     ~~Describe \code{serum.glucose} here~~
Numerical value corresponding to glucose in serum.
}
  \item{serum.ethanol}{
%%     ~~Describe \code{serum.ethanol} here~~
Numerical value corresponding to ethanol in serum.
}
  \item{urine.sodium}{
%%     ~~Describe \code{urine.sodium} here~~
Numerical value corresponding to sodium in urine.
}
  \item{urine.potassium}{
%%     ~~Describe \code{urine.potassium} here~~
Numerical value corresponding to potassium in urine.
}
  \item{urine.chloride}{
%%     ~~Describe \code{urine.chloride} here~~
Numerical value corresponding to chloride in urine.
}
  \item{urine.pH}{
%%     ~~Describe \code{urine.pH} here~~
Numerical value corresponding to pH in urine.
}
  \item{measured.urine.osm}{
%%     ~~Describe \code{measured.urine.osm} here~~
Numerical value corresponding to osmolarity measured in urine.
}
  \item{serum.albumin}{
%%     ~~Describe \code{serum.albumin} here~~
Numerical value corresponding to albumin in serum.
}
  \item{poison.concern}{
%%     ~~Describe \code{poison.concern} here~~
Boolean value that is TRUE if there is concer for some kind of poison consumption causing the acidosis.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a list object with diagnostic information.
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
Carlos C Vera Recio
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

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
