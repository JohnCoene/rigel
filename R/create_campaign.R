#' Create a campaign.
#' 
#' @description Create a campaign
#' 
#' @param body Body of request that includes campaigns settings. See examples 
#' and details.
#' 
#' @examples 
#' \dontrun{
#' # authenticate
#' orionOAuth(client.id = 0000,
#'            client.secret = "0x00000000x00x0x000xxx0000x0xx0")
#'            
#' # set body of request
#' camp <- list(name = "test",
#'              budget_type = "daily",
#'              budget_daily = "1000", 
#'              pkg_name = "someting.test.com",
#'              objective = objective("installs"), 
#'              app_type = "2",
#'              web_type = "1", 
#'              landing_page = landingPage("googlePlay"))
#' 
#' # create campaign            
#' createCampaign(body = camp)
#' }
#' 
#' @details Valid campaign settings (\code{body}): 
#' \itemize{
#' \item \code{name} Campaign name should be unique under the same user account.
#' \item \code{budget_type} can take either \code{daily} or \code{lifetime}, 
#' see \code{\link{budgetType}}.
#' \item \code{budget_daily} Required when \code{budget_type} equals to \code{daily}
#' \item \code{budget_lifetime} Required when \code{budget_type} equals to \code{lifetime}
#' \item \code{pkg_name} App package name or website domain
#' \item \code{objective} Use \code{\link{objective}} to generate, otherwise, 
#' \code{1}: Drive App Installs, \code{2}: Drive Mobile Site Traffic, 
#' \code{3}: Build Brand Awareness, \code{4}: Get App Re-engagement, \code{5}: Get Video Views
#' \item \code{app_type} Use \code{\link{appType}} to generate, otherwise, 
#' \code{1}: Game, \code{2}: App
#' \item \code{web_type} Use \code{\link{webType}} to generate, otherwise, 
#' if objective == \code{2}. \code{0}: None, \code{1}: Ordinary Website, 
#' \code{2}: E-commerce Website, \code{3}: Game Website
#' \item \code{landing_page} Use \code{\link{landingPage}} to generate, otherwise,
#'  if objective == \code{3}. \code{1}: Redirect to Google Play, 
#' \code{2}: Website
#' }
#' 
#' @seealso \code{\link{orionOAuth}}, \code{\link{helpers}}
#' 
#' @author John Coene \email{jcoenep@@gmail.com}
#' 
#' @export
createCampaign <- function(body){
  if (class(body) != "list"){
    stop("body must be a list. see examples", call. = FALSE)
  }
  result <- createObject(body = body, object = "campaign")
  return(result)
}