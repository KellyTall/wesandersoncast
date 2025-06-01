
<!-- README.md is generated from README.Rmd. Please edit that file -->

# wesandersoncast

<!-- badges: start -->

[![R-CMD-check](https://github.com/KellyTall/wesandersoncast/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/KellyTall/wesandersoncast/actions/workflows/R-CMD-check.yaml)
[![License:
CC0](https://img.shields.io/badge/License-CC0%201.0-lightgrey.svg)](https://creativecommons.org/publicdomain/zero/1.0/)
![Last update](https://img.shields.io/badge/updated-May_2025-blue)
![Built with
Wikidata](https://img.shields.io/badge/Built%20with-Wikidata-informational?logo=wikidata&logoColor=white&color=brightgreen)

<!-- badges: end -->

**wesandersoncast** (v0.1.0.9001) is a lightweight R package that
provides a tidy dataset of actors appearing in films directed by **Wes
Anderson**. It includes each film’s title, release year, runtime, and
worldwide box office takings — all sourced from
[Wikidata](https://www.wikidata.org/wiki/Wikidata:Main_Page).

The dataset is ideal for demonstrations, tutorials, and exploration of
network relationships or filmography trends using the tidyverse.

## 📦 Dataset contents

The `wes_actors` dataset is a tibble with 385 rows and 5 variables:

| Column | Type | Description |
|----|----|----|
| `film` | character | Title of the film directed by Wes Anderson |
| `actor` | character | Name of the actor appearing in the film |
| `release_date` | date | First screening date of the film |
| `box_office_usd` | numeric | Worldwide box office gross (in USD, where available) |
| `duration_period` | lubridate Period | Duration of the film in hours and minutes (e.g. “1H 45M”) |

## 📝 Data Notes

- *Castello Cavalcanti*, *Cousin Ben Troop Screening with Jason
  Schwartzman*, *Hotel Chevalier*, and the short film versions of
  *Bottle Rocket* are not included.
- *The Wonderful Story of Henry Sugar*, *The Rat Catcher*, *Poison* and
  *The Swan* have no box office results as they were produced by
  Netflix.
- *The Phoenician Scheme* was released in May 2025. At the time of
  publishing to CRAN, no box office figures were available. This will be
  updated once the data is released.

If you find any errors in the data, I encourage you to correct them on
Wikidata — it’s an incredible community-driven resource.

## 📜 License

The dataset included in this package is dedicated to the public domain
under [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/).

(❤️ creative commons ❤️)

## 📥 Installation

You can install the development version of **wesandersoncast** from
GitHub with:

``` r
# install.packages("remotes") # if not already installed
remotes::install_github("KellyTall/wesandersoncast")
```

## 🔍 Example

``` r
library(wesandersoncast)
head(wes_actors)
#> # A tibble: 6 × 5
#> # Groups:   film, actor [6]
#>   film          actor                release_date box_office_usd duration_period
#>   <chr>         <chr>                <date>                <dbl> <Period>       
#> 1 Asteroid City Aaron Ziobrowski     2023-05-23         53857743 1H 45M 0S      
#> 2 Asteroid City Adrien Brody         2023-05-23         53857743 1H 45M 0S      
#> 3 Asteroid City Adrián Corpa Fernán… 2023-05-23         53857743 1H 45M 0S      
#> 4 Asteroid City Aimee Mullins        2023-05-23         53857743 1H 45M 0S      
#> 5 Asteroid City Ainhoa Aldanondo     2023-05-23         53857743 1H 45M 0S      
#> 6 Asteroid City Alejandro García Ap… 2023-05-23         53857743 1H 45M 0S
```

## 📦 Version

- Current version: **0.1.0.9001**
- Last updated: **31 May 2025**

## 📅 Data Updates

- Last updated: 31 May 2025
- Total records: 385
- Source:
  [Wikidata](%5Bhttps://www.wikidata.org)(<https://www.wikidata.org>)

## ✨ What’s new in this version

Included voice actors (P725) in addition to screen actors which means
*Isle of Dogs* and *Fantastic Mr Fox* now appear.
