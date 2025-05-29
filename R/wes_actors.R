#' Cast List from Wes Anderson Films
#'
#' A dataset of actors appearing in films directed by Wes Anderson. Includes film title, actor name, release year, runtime in minutes, and worldwide box office takings.
#'
#' @format A tibble with 5 variables:
#' \describe{
#'   \item{film_label}{Film title}
#'   \item{actor_label}{Actor name}
#'   \item{release_date}{Date of first screening}
#'   \item{duration}{Duration of the film in hh:mm:ss}
#'   \item{box_office_usd}{Worldwide box office takings in USD}
#' }
#' @source Wikidata. Query via \href{https://www.wikidata.org}{Wikidata}
#'
#' @examples
#' # Show most frequent actors
#' dplyr::count(wes_actors, actor_label, sort = TRUE)
"wes_actors"
