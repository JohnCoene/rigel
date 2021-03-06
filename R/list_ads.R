#' List ads
#' 
#' @description List ads under the authenticated account.
#' 
#' @param n Number of ads to retrieve, defaults to \code{50}
#' 
#' @examples 
#' \dontrun{
#' # authenticate
#' orionOAuth(client.id = 0000,
#'            client.secret = "0x00000000x00x0x000xxx0000x0xx0")
#' 
#' (ads <- listAds(n = 100))
#' }
#' 
#' @seealso \code{\link{orionOAuth}}
#' 
#' @author John Coene \email{jcoenep@@gmail.com}
#' 
#' @export
listAds <- function(n = 50){
  res <- listObjects(object = "ad", n = n)
  return(res)
}