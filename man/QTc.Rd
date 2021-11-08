\name{QTc}
\alias{QTc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Correct the QT interval
}
\description{
Use the Bazett, Fridericia, Framingham, or Hodges formulas to correct the QT interval for heart rate extremes.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
QTc(
  QT.length = 10,
  HR = 60, 
  paper.speed = 25,
  units = "small box"
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{QT.length}{
%%     ~~Describe \code{QT.length} here~~
Integer or numerical value that corresponds to the length of the QT interval in an EKG.
}
  \item{HR}{
%%     ~~Describe \code{HR} here~~
Integer or numerical value that corresponds to the patient's heart rate in beats per minute.
}
  \item{paper.speed}{
%%     ~~Describe \code{paper.speed} here~~
Integer or numerical value that corresponds to the speed of EKG paper (default set to 25).
}
  \item{units}{
%%     ~~Describe \code{units} here~~
String value that corresponds to the unit's used to measure the EKG paper. This function accepts one of two values. Please input "small box" if the QT length is measured using the small boxes in the EKG paper; Please input "msec" if the QT interval is measured in miliseconds.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a numerical value that corresponds to the corrected QT interval.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
-Bazett HC. An analysis of the time-relations of electrocardiograms. Heart 1920; (7): 353–37.
-Sagie, A et al. “An improved method for adjusting the QT interval for heart rate (the Framingham Heart Study).” The American journal of cardiology vol. 70,7 (1992): 797-801. doi:10.1016/0002-9149(92)90562-d
-Hodges, M. "Bazett's QT correction reviewed: evidence that a linear QT correction for heart rate is better." J Am Coll Cardiol 1 (1983): 694.
-Fridericia, L S. “The duration of systole in an electrocardiogram in normal humans and in patients with heart disease. 1920.” Annals of noninvasive electrocardiology : the official journal of the International Society for Holter and Noninvasive Electrocardiology, Inc vol. 8,4 (2003): 343-51. 
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
# QT interval measured using the boxes in the EKG
QTc(
  QT.length = 10,
  HR = 60, 
  paper.speed = 25,
  units = "small box"
)

# QT interval measured using tmiliseconds
QTc(
  QT.length = 10,
  HR = 60, 
  paper.speed = 25,
  units = "msec"
)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
