#' Cast List from Wes Anderson Films
#'
#' A dataset of actors appearing in films directed by Wes Anderson.
#' Includes film title, actor name, release date, runtime, and worldwide box office takings.
#'
#' @format A tibble with 353 rows and 5 variables:
#' \describe{
#'   \item{film}{Film title}
#'   \item{actor}{Actor name}
#'   \item{release_date}{Date of first screening}
#'   \item{box_office_usd}{Worldwide box office takings in USD}
#'   \item{duration_period}{Duration of the film in hours and minutes}
#' }
#' @source \href{https://www.wikidata.org/wiki/Wikidata:Main_Page}{Wikidata}
#' @examples
#' dplyr::count(wes_actors, actor, sort = TRUE)
"wes_actors"
