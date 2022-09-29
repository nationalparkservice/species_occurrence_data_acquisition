# Species Occurrence Data Acquisition for Species Inventories

Welcome to Species Occurrence Data Acquisition (SODA), a repository used by the Inventory & Monitoring Division's Species Inventory Team (NPS WASO NRSS) to download species occurrence data from external sources for species occurrence data requests by National Park units.

**Version:** 0.1.0

**Maintainers:** [Matthew Van Scoyoc](https://github.com/scoyoc) and [Lisa Nelson](https://github.com/llnelson)

**Discussion:** [github.com/nationalparkservice/species_occurrence_data_acquisition/discussions](https://github.com/nationalparkservice/species_occurrence_data_acquisition/discussions)

**Issues:** [github.com/nationalparkservice/species_occurrence_data_acquisition/issues](https://github.com/nationalparkservice/species_occurrence_data_acquisition/issues)

**License:** [MIT License](https://github.com/nationalparkservice/species_occurrence_data_acquisition/blob/main/LICENSE)

# About this repository

This repository provides data and R code to download and evaluate species occurrence records form remote repositories for species occurrence data requests by National Park units. Currently, species occurrence records are downloaded from the Global Biodiversity Information Facility (GBIF) using the rgbif package (Chamberlain & Mcglinn 2022). Taxonomic names are validated against the Integrated Taxonomic Information System (ITIS) using the taxadb package (Kari, Chamberlain, and Boettiger 2020) and the latest [eBird checklist](https://www.birds.cornell.edu/clementschecklist/updateindex/) from the Cornell Lab of Ornithology. Federal listing status under the Endangered Species Act (ESA) is determined using the approved NPS data set published in the NPS Data Store (DeVivo 2021a).

Please note that the ESA and state listing status data are not included in this repository due to the large file sizes. For those using this repository, download local copies from the NPS Data Store.

# Current products

Products produced from this workflow include:

1.  a report that documents the data acquisition and brief summaries of the data (pdf),
2.  two appendices visualizing species occurrence data (pdf),
3.  a species list (csv), and
4.  a zipped file of species occurrence data from GBIF in Darwin Core Archive format.

# Conceptualized workflow

For now, each park unit for which a species occurrence data request will be conducted will have it's own sub-directory. Copies of the Rmarkdown files (Rmd) in the main directory will be in that sub-directory and customized for that specific park unit. These sub-directories will not be pushed to this repository due to the large file sizes involved in these projects. Versions of the Rmd's in the the main directory will be updated with new features as they are developed.

## Intended directory structure

\<Main directory\>

\|- Conservation Lists (sub-directory)    
--\> \|- FederalConservationListTaxa_2272462-datapackage (sub-directory)    
------ \|- FederalConservationListTaxa_for_Data_Protection_2272462-data.csv    
------ \|- FederalConservationListTaxa_for_Data_Protection_2272462-manifest.txt    
------ \|- FederalConservationListTaxa_for_Data_Protection_2272462-metadata.xml    
--\> \|- StateNSclean_2272464-datapackage (sub-directory)    
------ \|- StateNSclean_2272464-data.csv    
------ \|- StateNSclean_2272464-manifest.txt    
------ \|- StateNSclean_2272464-metadata.xml    
--- \|- conservationLists.html    
--- \|- conservationLists.R    
--- \|- conservLists.RData    

\|- Taxa Lists (sub-directory)    
--- \|- duckdb (database from taxadb)    
--- \|- eBird-Clements-v2021-integrated-checklist-August-2021.csv    

\|- PARK (sub-directory)    
--- \|- AppendixA Bird Phenology.Rmd    
--- \|- AppendixB Species Heatmaps.Rmd    
--- \|- PARK_sppPull.Rmd    

# In the future

## External Repositories

-   Acquisition of species occurrence records from other data sources, like iDigBio and iNaturalist, has been identified for development.

## Taxa lists

-   The inclusion of State and NatureServe species listing status (DeVivo 2021b) is forthcoming.
-   The inclusion of invasive species lists has been identified as a critical component to develop.

## Workflow

-   We might consider forking this repository for new species occurrence data requests.

# References

Chamberlain S, Barve V, Mcglinn D, Oldoni D, Desmet P, Geffert L, Ram K (2022). rgbif: Interface to the Global Biodiversity Information Facility API. R package version 3.7.2, <https://CRAN.R-project.org/package=rgbif>.

DeVivo J. C. (2021a). Federal Listing Status of Taxa in National Park Service Units for use in Determining Appropriate Release of Data (Approved Dataset). Tabular Dataset. National Park Service, Fort Collins, Colorado. <https://irma.nps.gov/DataStore/Reference/Profile/2272462>.

DeVivo J. C. (2021b). State, Territory, and NatureServe Listing Status of Taxa in National Park Service Units for use in Determining Appropriate Release of Data (Approved Dataset). Tabular Dataset. National Park Service, Fort Collins, Colorado. <https://irma.nps.gov/DataStore/Reference/Profile/2272464>.

Kari E. A. Norman, Scott Chamberlain, and Carl Boettiger (2020). taxadb: A high-performance local taxonomic database interface. Methods in Ecology and Evolution, 11(9), 1153-1159. <doi:10.1111/2041-210X.13440>.

R Core Team (2022). R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. URL <https://www.R-project.org/>.
