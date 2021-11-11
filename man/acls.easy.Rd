\name{acls.easy}
\alias{acls.easy}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
ACLS
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Help guide MS4 and PGY-1 in ACLS rapid responses and codes.
}
\usage{
acls.easy(
  pulse = TRUE,
  rhythm = "normal sinus rhythm", 
  symptoms = TRUE,
  stable = TRUE
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{pulse}{
%%     ~~Describe \code{pulse} here~~
Boolean value. TRUE if patient has a pulse.
}
  \item{rhythm}{
%%     ~~Describe \code{rhythm} here~~
String value. Can be 'normal sinus rhythm', 'afib/flutter', 'vtach/vfib', 'sinus tach', 'svt'.
}
  \item{symptoms}{
%%     ~~Describe \code{symptoms} here~~
Boolean Value. TRUE if the patient is symptomatic.
}
  \item{stable}{
%%     ~~Describe \code{stable} here~~
Boolean value. TRUE if patient is stable.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a string corresponding to a suggested course of action.
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

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
