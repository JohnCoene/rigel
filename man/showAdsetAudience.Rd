% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/show_adset_audience.R
\name{showAdsetAudience}
\alias{showAdsetAudience}
\title{Show an adset audience targeting template}
\usage{
showAdsetAudience(adset.id)
}
\arguments{
\item{adset.id}{id of adset's template to retrieve}
}
\description{
Retrieve the audience templates under a specific adset.
}
\examples{
\dontrun{
# authenticate
orionOAuth(client.id = 0000,
           client.secret = "0x00000000x00x0x000xxx0000x0xx0")
           
# list 50 adsets
adsets <- listAdsets(n = 50)

# show audience template of random adset
audience <- showAdsetAudience(adset.id = sample(adsets$id, 1))
}

}
\seealso{
\code{\link{orionOAuth}}, \code{\link{showAdset}}, 
\code{\link{showAudience}}, \code{\link{listAdsets}}, 
\code{\link{listAudiences}}
}
\author{
John Coene \email{jcoenep@gmail.com}
}
