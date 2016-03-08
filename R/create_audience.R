#' Create an audience targeting template
#' 
#' @description Create an audience targeting template.
#' 
#' @param body body of request that includes audience targeting template 
#' settings. See examples and details.
#' 
#' @examples 
#' \dontrun{
#' # authenticate
#' orionOAuth(client.id = 0000,
#'            client.secret = "0x00000000x00x0x000xxx0000x0xx0")
#' 
#' # create audience                         
#' createAudience(body = list(
#'    audience_template_name = "test",
#'    audience_template_desc = "test",
#'    country = "CN|BE|IN", 
#'    language = "fr",
#'    net_type = 1))
#'    
#' # retrieve audience
#' aud <- listAudiences(n = 100)
#' }
#' 
#' @details Valid audience target template settings (\code{body}): 
#' \itemize{
#' \item \code{audience_template_name} Audience targeting template name 
#' (unique). 
#' \item \code{audience_template_desc} Description for the audience targeting 
#' template. 
#' \item \code{country} Audience country code. Narrow your potential audience 
#' to the people in those countries. Using '|' separated if more than one country. 
#' i.e.: \code{US|ID|CN}
#' \item \code{language} Audience language code, i.e.: \code{en}
#' \item \code{gender} \code{0}: All, \code{1}: Male, \code{2} Female
#' \item \code{age} Audience age. \code{1}: 18-24, \code{2}: 25-30, 
#' \code{3}: 32-40, \code{4}: 41+.
#' \item \code{interest} Audience interest. Reach users based on their specific 
#' interests.
#' \item \code{behavior} Audience behavior. Reach users based on app usage and 
#' other behaviors.
#' \item \code{device_brand} Audience device brand.
#' \item \code{min_device_os} Min OS version of audience used, blank for 
#' unrestricted.
#' \item \code{max_device_os} Max OS version of audience used, blank for 
#' unrestricted.
#' \item \code{net_type} \code{0}: All, \code{1}: Wifi, \code{2}: 2G/3G/4G
#' \item \code{dsp_url} Bid request url of DSP when this pre-targeting 
#' condition meets.
#' }
#' 
#' @seealso \code{\link{orionOAuth}}
#' 
#' @author John Coene \email{john.coene@@cmcm.com}
#' 
#' @export
createAudience <- function(body){
  
  if(class(body) != "list"){
    stop("body must be a list. see examples", call. = FALSE)
  }
  
  cred <- orionToken()
  
  result <- createObject(body = body, object = "audience")
  
  return(result)
  
}