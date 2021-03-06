% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dict_city.R
\name{dictCity}
\alias{dictCity}
\title{List valid cities}
\usage{
dictCity(state.code)
}
\arguments{
\item{state.code}{Code of country as returned by \code{\link{dictState}}, 
see examples.}
}
\description{
Fetch list of cities.
}
\examples{
\dontrun{
# authenticate
orionOAuth(client.id = 0000,
           client.secret = "0x00000000x00x0x000xxx0000x0xx0")

# dict states of random country
states <- dictState(country.code = "US")

# dict cities
cities <- dictCity(state.code = sample(states$code, 1))
}

}
\author{
John Coene \email{jcoenep@gmail.com}
}
