#' Get NVE production data
#'
#'Henter info, herunder produksjonsdata, for alle vannkraftverk i Norge fra NVE
# fra NVE'
#' @return
#' @export
#'
#' @examples
get_energy_data <- function(){

url <- "https://www.nve.no/umbraco/api/Powerplant/GetHydroPowerPlantsInOperation"
df <- as.data.frame(jsonlite::fromJSON(url))
df
}

#' Get production of power plant
#'
#' @param powerplant Vannkraftverket vi ønsker å vite produksjon for
#' @param .df Datainput-fil, hentes/oppdateres ved get_energy_data
#'
#' @return Returnerer gjennomsnittlig årlig kraftproduksjon mellom 1981 og 2010 i Gwh for kraftverket
#' @export
#'
#' @examples
get_production <- function(.df = df, powerplant = "Aall-Ulefoss"){

pp_df <- .df %>%
            dplyr::filter(Navn == {{powerplant}}) %>%
            dplyr::select(MidProd_81_10)

return(as.numeric(pp_df$MidProd_81_10))
}







