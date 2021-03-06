% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_object.R
\name{createObject}
\alias{createObject}
\title{Create any object}
\usage{
createObject(object, body)
}
\arguments{
\item{object}{Object to be created, see details for valid values.}

\item{body}{Body of request that includes campaigns settings. See examples.}
}
\description{
Create any object, see details.
}
\details{
Valid values for \code{object}: 
\itemize{
\item \code{audience}, see \code{\link{createAudience}} for details.
\item \code{campaign}, see \code{\link{createCampaign}} for details.
\item \code{adset}, see \code{\link{createAdset}} for details.
\item \code{ad}, see \code{\link{createAd}} for details.
}

\code{createObject} can essentially replace any other \code{create} 
family functions. See examples.
}
\examples{
\dontrun{
# authenticate
orionOAuth(client.id = 0000,
           client.secret = "0x00000000x00x0x000xxx0000x0xx0")
           
# set body of request for campaign
camp <- list(name = "test",
             budget_type = "daily",
             budget_daily = "1000", 
             pkg_name = "test",
             objective = objective("traffic"), 
             app_type = appType("game"),
             web_type = webType("game"), 
             landing_page = "2")

# create campaign             
new_camp <- createObject(body = camp, object = "campaign")

# equivalent to
# new_camp <- createCampaign(body = camp)

showCampaign(campaign.id = new_camp$id)
}

}
\seealso{
\code{\link{orionOAuth}}, \code{\link{createAudience}}, 
\code{\link{createCampaign}}, \code{\link{createAdset}}, 
\code{\link{createAd}} and \code{\link{helpers}}
}
\author{
John Coene \email{jcoenep@gmail.com}
}
