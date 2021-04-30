if (!require(pacman)) install.packages("pacman")
pacman::p_load(usethis, readxl, dplyr, here, tidyr)

#' Make Date column from `Day`, `Month`, `Year`
makeDate <- function(data) {
  mutate(data, Date = as.Date(paste(Year, Month, Day,sep="-"),"%Y-%m-%d"))
}

# Read-in separate sheets
Nitrogen <- read_excel(here("data-raw/Nitrogen.xlsx"), range=cell_cols("A:I")) %>%
  makeDate %>%
  select(Date, Site, TN = "Total N (ug/L)", NH = "NH4-N (ug/L)", NOX)

Phosphorus <- read_excel(here("data-raw/Phosphorus.xlsx"), range=cell_cols("A:F")) %>%
  makeDate %>%
  select(Date, Site, UTP)

TotalSuspendedSolids <- read_excel(here("data-raw/TotalSuspendedSolids.xlsx")) %>%
  makeDate %>%
  select(Date, Site, TSS = "TSS (mg/L)")

YSI <- read_excel(here("data-raw/YSI.xlsx")) %>%
  makeDate %>%
  select(Date, Site, Temp = "Temp C", pH) %>%
  mutate(Temp = as.numeric(Temp), pH = as.numeric(pH)) %>%
  mutate(Temp = ifelse(Temp > 100, NA, Temp))

FecalColiform <- read_excel(here("data-raw/FecalColiform.xlsx")) %>%
  makeDate %>%
  select(Date, Site, FC)

WaterQualityData = Nitrogen %>%
  full_join(Phosphorus, by=c("Date", "Site")) %>%
  full_join(TotalSuspendedSolids, by=c("Date", "Site")) %>%
  full_join(YSI, by=c("Date", "Site")) %>%
  full_join(FecalColiform, by=c("Date", "Site"))

usethis::use_data(WaterQualityData, overwrite=TRUE)

