#' Cast List from Wes Anderson Films
#'
#' A dataset of actors appearing in films directed by Wes Anderson. Includes film title, actor name, release year, runtime in minutes, and worldwide box office takings.
#'
#' @format A tibble with 5 variables:
#' \describe{
#'   \item{film}{Film title}
#'   \item{actor}{Actor name}
#'   \item{release}{Date of first screening}
#'   \item{box_office_usd}{Worldwide box office takings in USD}
#'   \item{duration_period}{Duration of the film in hh:mm:ss}
#' }
#' @source Wikidata. Query via \href{https://www.wikidata.org}{Wikidata}
#'
#' @examples
#' # Show most frequent actors
#' dplyr::count(wes_actors, actor, sort = TRUE)
"wes_actors"
