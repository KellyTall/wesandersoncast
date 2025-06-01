## code to prepare `wes_actors` dataset goes here

# install.packages(c("WikidataQueryServiceR", "tidyverse", "jsonlite"))
library(WikidataQueryServiceR)
library(tidyverse)
library(janitor)




query <- '
SELECT ?filmLabel ?actorLabel ?releaseDate ?duration ?boxOffice WHERE {
  ?film wdt:P57 wd:Q223687.  # Directed by Wes Anderson

  VALUES ?actorProp { wdt:P161 wdt:P725 }  # Actor or voice actor
  ?film ?actorProp ?actor.

  OPTIONAL { ?film wdt:P577 ?releaseDate. }
  OPTIONAL { ?film wdt:P2047 ?duration. }

  OPTIONAL {
    ?film p:P2142 ?boxOfficeStatement.
    ?boxOfficeStatement ps:P2142 ?boxOffice;
                        pq:P3005 wd:Q13780930.  # Worldwide gross
  }

  SERVICE wikibase:label { bd:serviceParam wikibase:language "[AUTO_LANGUAGE],en". }
}
'

results <- query_wikidata(query)


wes_actors <- results |>
  clean_names() |>
  filter(!film_label %in% c("Castello Cavalcanti", "Cousin Ben Troop Screening with Jason Schwartzman", "Hotel Chevalier")) |> ##removing shorts / promos
  filter(!film_label == "Bottle Rocket" | duration != "13") |>
  mutate(release_date = lubridate::ymd(release_date)) |>
  mutate(actor_label = case_when(actor_label == "Q1333118" ~ "Richard Ayoade",
                                 TRUE ~ actor_label)) |>
  group_by(film_label, actor_label) |>
  arrange(release_date) |>
  slice_min(release_date) |>
  mutate(duration_seconds = as.numeric(duration) * 60,
         duration_period = seconds_to_period(duration_seconds)
  ) |>
  select(-duration, -duration_seconds) |>
  rename(film = film_label,
         actor=actor_label,
         box_office_usd = box_office)
View(wes_actors)

usethis::use_data(wes_actors, overwrite = TRUE)



