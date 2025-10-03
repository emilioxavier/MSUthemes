library(tidyverse)


## move into the data-raw directory ----
setwd("./data-raw/")


## load College Scorecard data ----
## data pulled using ~OneDrive/projects/PAG/PAG_historical_MSU-comparisons/01_MSU-BigTen-historical_dataPreprocess_sep2025.R
load(file="BigTen_historical_1996-2023.RData")


## remove some colums ----
BigTen <- select(BigTen.DATA,
                 -starts_with("colour."),
                 -starts_with("MIresident."),
                 -Landgrant.label,
                 -MIinsts.tf,
                 -otherResident.tot,
                 -otherState.TuitionFee,
                 -peer.type, -peer.class) |>
  select(name.short:C150_4, PCTPELL, n.pell,
        TUITIONFEE_IN:TUITFTE, BOOKSUPPLY:OTHEREXPENSE_FAM, everything()) |>
  rename(name=name.short,
         CoA.inState=in.state.tot,
         CoA.outState=out.state.tot) |>
  mutate(.by=name,
         UGDS_WOMEN=case_when(is.na(UGDS_WOMEN)~(lag(UGDS_WOMEN, 1)+lead(UGDS_WOMEN, 1))/2,
                              .default=as.numeric(UGDS_WOMEN)),
         UGDS_MEN=case_when(is.na(UGDS_MEN)~(lag(UGDS_MEN, 1)+lead(UGDS_MEN, 1))/2,
                            .default=as.numeric(UGDS_MEN)),
         UGDS=case_when(is.na(UGDS)~(lag(UGDS, 1)+lead(UGDS, 1))/2,
                            .default=as.numeric(UGDS)))


## save as package dataset ----
usethis::use_data(BigTen,
                  internal=FALSE, overwrite=TRUE)


## move into the main/base directory ----
setwd("..")
