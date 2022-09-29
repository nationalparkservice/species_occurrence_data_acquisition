---
title: "Species Occurrence Data Acquisition for Species Inventories"
editor_options: 
  markdown: 
    wrap: 80
---

This is Species Occurrence Data Acquisition (SODA), a repository used by the
Inventory & Monitoring Division's Species Inventory Team (NPS WASO NRSS) to
download species occurrence data from external sources for species occurrence
data requests by National Park units.

**Version:** 0.1.0

**Maintainers:** [Matthew Van Scoyoc](https://github.com/scoyoc) and [Lisa
Nelson](https://github.com/llnelson)

**Discussion:**
[github.com/nationalparkservice/species_occurrence_data_acquisition/discussions](https://github.com/nationalparkservice/species_occurrence_data_acquisition/discussions)

**Issues:**
[github.com/nationalparkservice/species_occurrence_data_acquisition/issues](https://github.com/nationalparkservice/species_occurrence_data_acquisition/issues)

**License:** [MIT
License](https://github.com/nationalparkservice/species_occurrence_data_acquisition/blob/main/LICENSE)

# About this repository

This repository provides data and R code to download and evaluate species
occurrence records form remote repositories for species occurrence data requests
by National Park units. Currently, species occurrence records are being
downloaded from the Global Biodiversity Information Facility (GBIF) using the
rgbif package (Chamberlain & Mcglinn 2022). Taxonomic names are validated
against the Integrated Taxonomic Information System (ITIS) using the taxadb
package (Kari, Chamberlain, and Boettiger 2020) and the latest [eBird
checklist](https://www.birds.cornell.edu/clementschecklist/updateindex/) from
the Cornell Lab of Ornithology. Federal listing status under the Endangered
Species Act is determined using approved NPS data set published in the NPS Data
Store (DeVivo 2021a).

# Current products

Products produced from this workflow include:

1.  a brief report on the the process and data received from GBIF (pdf),
2.  two appendices (pdf) visualizing species occurrence data,
3.  a species list (csv), and
4.  a zipped file of species occurrence data from GBIF in Darwin Core Archive
    format.

# Conceptualized workflow

For now, each park unit for which a species occurrence data request will be
conducted will have it's own sub-directory. Copies of the Rmarkdown files (Rmd)
in the main directory will be in that sub-directory and customized for that
specific park unit. See the VALL sub-directory for an example. Versions of the
Rmd's in the the main directory will be updated with new features as they are
developed.

# In the future

## External Repositories

-   Acquisition of species occurrence records from other data sources, like
    iDigBio and iNaturalist, has been identified for development.

## Taxa lists

-   The inclusion of State and NatureServe species listing status (DeVivo 2021b)
    is forthcoming.
-   The inclusion of invasive species lists has been identified as a critical
    component to develop.

## Workflow

-   We might consider forking this repository for new species occurrence data
    requests.

# References

Chamberlain S, Barve V, Mcglinn D, Oldoni D, Desmet P, Geffert L, Ram K (2022).
rgbif: Interface to the Global Biodiversity Information Facility API. R package
version 3.7.2, <https://CRAN.R-project.org/package=rgbif>.

DeVivo J. C. (2021a). Federal Listing Status of Taxa in National Park Service
Units for use in Determining Appropriate Release of Data (Approved Dataset).
Tabular Dataset. National Park Service, Fort Collins, Colorado.
<https://irma.nps.gov/DataStore/Reference/Profile/2272462>.

DeVivo J. C. (2021b). State, Territory, and NatureServe Listing Status of Taxa
in National Park Service Units for use in Determining Appropriate Release of
Data (Approved Dataset). Tabular Dataset. National Park Service, Fort Collins,
Colorado. <https://irma.nps.gov/DataStore/Reference/Profile/2272464>.

Kari E. A. Norman, Scott Chamberlain, and Carl Boettiger (2020). taxadb: A
high-performance local taxonomic database interface. Methods in Ecology and
Evolution, 11(9), 1153-1159. <doi:10.1111/2041-210X.13440>.

R Core Team (2022). R: A language and environment for statistical computing. R
Foundation for Statistical Computing, Vienna, Austria. URL
<https://www.R-project.org/>.
