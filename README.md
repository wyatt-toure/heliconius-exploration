## Summary

This is the repository containing all the code to produce the analyses and
figures in the manuscript <span style="text-decoration:underline">‘CURRENTLY
UNTITLED’</span>.

## Website

A reader-friendly website which walks through each of the models in the
manuscript is available at
<https://wyatt-toure.github.io/heliconius-exploration/analysis.html>.

## How to reproduce the results

If you want to reproduce the results you simply need to download the entire
repository onto your system and open
[analysis.Rmd](https://github.com/wyatt-toure/heliconius-exploration/blob/main/analysis.Rmd)
in RStudio. You will then need to install the packages required for the analysis
which are listed at the bottom of this README. Then you can select the Run All
option under the Code option in the navbar. You can also run all chunks
independently as well though you should do so sequentially since variables
necessary for the analysis are created as we go.

## Directory structure

  - `data/` contains the raw data used to conduct the analyses
  - `docs/` contains the reader-friendly html write-up of the analyses, the
    GitHub pages site is built from this folder
  - `R/` contains custom R functions used in the analysis
  - `figs/` contains the individual files for the figures and residual
    diagnostic plots produced by the analysis script
  - `images/` contains relevant images and videos of the experiment

The root directory contains all the Rmd scripts used to conduct the analyses and
render the website.

The R code for the analysis can be found in
[analysis.Rmd](https://github.com/wyatt-toure/heliconius-exploration/blob/main/analysis.Rmd).

The methods page is built from the
[methods.Rmd](https://github.com/wyatt-toure/heliconius-exploration/blob/main/methods.Rmd)
file and the home page is built from the
[index.Rmd](https://github.com/wyatt-toure/heliconius-exploration/blob/main/index.Rmd)
file.

## Metadata

Data are available in the
[`data/`](https://github.com/wyatt-toure/heliconius-exploration/blob/main/data/)
directory.

Below I provide the variable descriptions for the datasets. 

### Exploration data set

Data: [heliconius-exploration-data-raw.csv](https://github.com/wyatt-toure/heliconius-exploration/blob/main/data/heliconius-exploration-data-raw.csv)

| Variable | Description                                        |
|----------|----------------------------------------------------|
| id       | The individual ID of a butterfly                   |
| choice   | The colour choice a butterfly made                 |
| combo    | The pair of colours present during an assay        |
| cage     | The identity of the cage a butterfly was tested in |

### Learning data set 

Data: [heliconiini-learning-data.csv](https://github.com/wyatt-toure/heliconius-exploration/blob/main/data/heliconiini-learning-data.csv)

| Variable                    | Description                                                                                                                   |
|-----------------------------|-------------------------------------------------------------------------------------------------------------------------------|
| id                          | The individual ID of a butterfly                                                                                              |
| sex                         | The sex of the butterfly                                                                                                      |
| cage                        | The identity of the cage the butterfly was trained and tested in                                                              |
| time.of.day                 | The time session a trial occurred, 1morning was 8AM to 10AM 2afternoon was 3PM to 5PM                                         |
| n.correct.training          | The number of correct choices made throughout all of training                                                                 |
| n.incorrect.training        | The number of incorrect choices made throughout all of training                                                               |
| session.reward.colour       | The colour that was rewarding (or would have been rewarding if the trial is unreinforced) during that time period             |
| n.morning.colour.test       | The number of choices made for the colour rewarding in the morning during the final test                                      |
| n.afternoon.colour.test     | The number of choices made for the colour rewarding in the afternoon during the final test                                    |
| final.presentation          | The order in which the final test trials were performed, normal (morning then afternoon) or reversed (afternoon then morning) |
| n.morning.colour.initial    | The number of choices made for the colour rewarding in the morning during the initial test                                    |
| n.afternoon.colour.initial  | The number of choices made for the colour rewarding in the afternoon during the initial test                                  |
| species                     | The species of the individual                                                                                                 |
| n.morning.colour.training   | The number of choices made for the colour rewarding in the morning during training                                            |
| n.afternoon.colour.training | The number of choices made for the colour rewarding in the afternoon during training                                          |
| colour.training.scheme      | The identity of the rewarding colours based on time of day                                                                    |

## Packages required 

The packages required to conduct the analyses and construct the website as well
as their versions and citations are listed below.

COMING SOON
