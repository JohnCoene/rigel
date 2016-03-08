% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/delete_adset.R
\name{deleteAdset}
\alias{deleteAdset}
\title{Delete an adset}
\usage{
deleteAdset(adset.id)
}
\arguments{
\item{adset.id}{id of object to delete}
}
\description{
Delete an adset.
}
\examples{
\dontrun{
# authenticate
orionOAuth(client.id = 0000,
           client.secret = "0x00000000x00x0x000xxx0000x0xx0")
           
# list adsets
adsets <- listAdsets()

# delete random adset
deleteAdset(adset.id = sample(adsets$id, 1))
}

}
\author{
John Coene \email{john.coene@cmcm.com}
}
\seealso{
\code{\link{orionOAuth}}, \code{\link{createAdset}}
}
