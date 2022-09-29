# ---
#' title: "Species Pull for Valles Caldera National Preserve"
#' author:
#'   - name: "Matthew Van Scoyoc"
#'     affiliation: |
#'       | NPS Inventory Program
#'       | NPS Inventory & Monitoring Division
#'       | 1201 Oakridge, Suite 150
#'       | Fort Collins, Colorado
#' date: 31 August 2022
#' ---
#' data:
#'   - https://irma.nps.gov/DataStore/Reference/Profile/2272462
#'   - https://irma.nps.gov/DataStore/Reference/Profile/2272464
#' summary: This script reads the federal and state species lists of
#'     conservation concern into R and then saves the dataframes as an .RData
#'     file.

#' Setup ----
#'-- Packages
#' R packages used in this script
pkgLst <- c("dplyr",       # data management
            "tibble")      # data structures

#' Install packages if they aren't in your library
instPkgs <- pkgLst %in% rownames(installed.packages())
if (any(instPkgs == FALSE)) {
  install.packages(pkgLst[!instPkgs],
                   lib =  .libPaths()[1],
                   repos = "https://cloud.r-project.org",
                   type = 'source',
                   dependencies = TRUE,
                   quiet = TRUE)
}
#' Load packages into work space
invisible(lapply(pkgLst, library, character.only = TRUE))

#' Data ----
#' Read lists of species of conservation concern
#'-- Federal list
#' Status definitions
fedDefs <- read.table(
  file.path(
    "FederalConservationListTaxa_2272462-datapackage",
    "FedDefs.txt"
  ),
  sep = "|", header = TRUE) |>
  dplyr::mutate(code = trimws(code, which = "both"))

#' Data
fedList <- tibble::tibble(read.csv(
  file.path(
    "FederalConservationListTaxa_2272462-datapackage",
    "FederalConservationListTaxa_for_Data_Protection_2272462-data.csv"
    ),
    header = TRUE, as.is = TRUE
  ))

#'-- State list
stateList <- tibble::as_tibble(read.csv(
  file.path(
    "StateNSclean_2272464-datapackage",
    "StateNSclean_2272464-data.csv"
    ),
  header = TRUE, as.is = TRUE
  ))

#'-- Save data
save(fedDefs, fedList, stateList, file = "conservLists.RData")

#' Session ----
sessionInfo()
