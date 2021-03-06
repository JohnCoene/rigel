#' Create an ad
#' 
#' @description Create an ad.
#' 
#' @param body Body of request that includes ad settings. See examples 
#' and details.
#' 
#' @details
#' Valid ad settings (\code{body}):
#' \itemize{
#' \item \code{adset_id} Adset id to which the ad belongs.
#' \item \code{name} Ad name, unique.
#' \item \code{icon_url} Logo image url. Must be larger than 84*84 px and have 
#' an aspect ratio of 1:1, in JPG or PNG format. File must not exceed 100KB.
#' \item \code{title} Ad headline
#' \item \code{desc} Description tells people a bit more about your Application. 
#' Make sure to clearly explain what you are promoting.
#' \item \code{button_text} Button display text, use \code{\link{buttonText}} to generate otherwise, 
#' \code{1}: Download, \code{2}: Install, \code{3}: Check, \code{4}: Free, 
#' \code{5}: Play, 
#' \code{6}: Buy, \code{7}: More.
#' \item \code{image_url} Image url. Must be larger than 600*314 px and have an 
#' aspect ratio of 1.9:1. Best is 1200*628 px, JPG or PNG format. File size 
#' must not exceed 500KB. Image should come from Orion CDN server, please 
#' upload image using \code{\link{createImage}}, see uploaded images with 
#' \code{\link{listImages}}.
#' \item \code{video_url} URL to video
#' \item \code{video_img_before_url} Image which will be show before video 
#' starts.
#' \item \code{video_img_after_url} Image which will be show after video ends.
#' }
#' 
#' @examples 
#' \dontrun{
#' # authenticate
#' orionOAuth(client.id = 0000,
#'            client.secret = "0x00000000x00x0x000xxx0000x0xx0")
#'            
#' # list adsets
#' adsets <- listAdsets()
#' 
#' # list images
#' images <- listImages()
#' 
#' # define ad settings
#' body <- list(
#'    adset_id = adsets$id[1],
#'    name = "testAd",
#'    icon_url = images$thumb[1],
#'    title = "Download oRion",
#'    desc = "Download oRion and interact with Orion from your R console",
#'    button_text = buttonText("install"),
#'    image_url = images$local_url[1])
#'    
#' # post ad
#' createAd(body = body)
#' }
#' 
#' @seealso \code{\link{orionOAuth}}, \code{\link{createAdset}}, 
#' \code{\link{createImage}}, \code{\link{helpers}}
#' 
#' @author John Coene \email{jcoenep@@gmail.com}
#' 
#' @export
createAd <- function(body){
  if (class(body) != "list"){
    stop("body must be a list. see examples", call. = FALSE)
  }
  result <- createObject(body = body, object = "ad")
  return(result)
}