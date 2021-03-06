% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/list_object.R
\name{listObjects}
\alias{listObjects}
\title{List any object}
\usage{
listObjects(object, n = 50)
}
\arguments{
\item{object}{Nodes to target. See details}

\item{n}{Number of objects to retrieve, defaults to \code{50}}
}
\description{
List any objects from the API, see details for valid 
values.
}
\details{
Valid values for \code{objects}:
\itemize{
\item \code{image}, see \code{\link{listImages}} for details.
\item \code{audience}, see \code{\link{listAudiences}} for details.
\item \code{campaign}, see \code{\link{listCampaigns}} for details.
\item \code{adset}, see \code{\link{listAdsets}} for details.
\item \code{ad}, see \code{\link{listAds}} for details.
}

\code{listObject} can essentially replace any other \code{list} 
family functions. See examples.
}
\examples{
\dontrun{
# authenticate
orionOAuth(client.id = 0000,
           client.secret = "0x00000000x00x0x000xxx0000x0xx0")
           
# list campaigns with listCampaigns
camps <- listCampaigns()

# list campaigns with listObjects
obj <- listObjects(object = "campaign")

# identical results
identical(camps, obj)
}

}
\seealso{
\code{\link{orionOAuth}}, \code{\link{listImages}}, 
\code{\link{listAudiences}}, \code{\link{listCampaigns}}, 
\code{\link{listAdsets}} and \code{\link{listAds}}
}
\author{
John Coene \email{jcoenep@gmail.com}
}
