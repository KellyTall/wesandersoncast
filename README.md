
<!-- README.md is generated from README.Rmd. Please edit that file -->

# wesandersoncast

<!-- badges: start -->

[![R-CMD-check](https://github.com/KellyTall/wesandersoncast/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/KellyTall/wesandersoncast/actions/workflows/R-CMD-check.yaml)
[![License:
CC0](https://img.shields.io/badge/License-CC0%201.0-lightgrey.svg)](https://creativecommons.org/publicdomain/zero/1.0/)
<!-- badges: end -->

A lightweight R package that provides a tidy dataset of actors appearing
in films directed by **Wes Anderson**, including the year of release,
duration in minutes, and worldwide box office takings — all sourced from
[Wikidata](https://www.wikidata.org/).

The dataset is ideal for demonstrations, tutorials, and exploration of
network relationships or filmography trends using the tidyverse.

## 📦 Dataset contents

The `wes_actors` dataset is a tibble with the following columns:

The `wes_actors` dataset is a tibble with 353 rows and 5 variables:

| Column | Type | Description |
|----|----|----|
| `film` | character | Title of the film directed by Wes Anderson |
| `actor` | character | Name of the actor appearing in the film |
| `release_date` | date | Official release date of the film |
| `box_office_usd` | numeric | Worldwide box office gross (in USD, where available) |
| `duration_period` | lubridate Period | Duration of the film in hours and minutes (e.g. “1H 45M”) |

## Data Notes

*“Castello Cavalcanti”, “Cousin Ben Troop Screening with Jason
Schwartzman”, “Hotel Chevalier”, and short versions of “Bottle Rocket”
are not included.* ”The Wonderful Story of Henry Sugar”, “The Rat
Catcher”, and “The Swan” have no Box Office results as they were
produced by Netflix. \*“The Phoenician Scheme” was released in May 2025,
and at the time of publishing this to CRAN, there were no Box Office
figures available. I will update once this info is available.

If you find any errors in the data, I encourage you to correct them on
Wikidata. It’s an incredible resource that relies on input by people
like you.

## License

The dataset included in this package is dedicated to the public domain
under [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/).

## Installation

You can install the development version of wesandersoncast like so:

``` r
# If on GitHub:
# remotes::install_github("yourusername/wesandersoncast")

# Or install from local source (if not yet on CRAN):
devtools::install()
## Example
```

This is a basic example which shows you how to solve a common problem:

``` r
library(wesandersoncast)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
