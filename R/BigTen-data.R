#' @title Big Ten Conference Institutional Data (1996-2023)
#'
#' @description A comprehensive dataset containing institutional characteristics, enrollment data,
#' financial information, and demographic composition for all Big Ten Conference
#' member institutions from 1996 to 2023. This dataset tracks the evolution of
#' these universities over nearly three decades, including data for institutions
#' that joined the conference at different times.
#'
#' @format A data frame with 504 rows and 38 variables:
#' \describe{
#'   \item{name}{Character. Institution name (e.g., "MSU", "Michigan", "Ohio State")}
#'   \item{Landgrant.tf}{Logical. Whether the institution is a land-grant university}
#'   \item{Public.tf}{Logical. Whether the institution is public (TRUE) or private (FALSE)}
#'   \item{AAU.tf}{Logical. Whether the institution is a member of the Association of American Universities}
#'   \item{entry_term}{Numeric. Year the data entry corresponds to (1996-2023)}
#'   \item{UGDS}{Integer. Total undergraduate enrollment}
#'   \item{ADM_RATE}{Numeric. Admission rate (proportion of applicants admitted)}
#'   \item{C150_4}{Numeric. Completion rate for first-time, full-time students (150% of expected time)}
#'   \item{PCTPELL}{Numeric. Percentage of undergraduates receiving Pell grants}
#'   \item{n.pell}{Integer. Number of undergraduates receiving Pell grants}
#'   \item{TUITIONFEE_IN}{Integer. In-state tuition and fees}
#'   \item{TUITIONFEE_OUT}{Integer. Out-of-state tuition and fees}
#'   \item{TUITFTE}{Integer. Net tuition revenue per full-time equivalent student}
#'   \item{BOOKSUPPLY}{Integer. Average cost of books and supplies}
#'   \item{ROOMBOARD_ON}{Integer. Average cost of room and board for on-campus students}
#'   \item{OTHEREXPENSE_ON}{Integer. Other expenses for on-campus students}
#'   \item{OTHEREXPENSE_FAM}{Integer. Other expenses for students living with family}
#'   \item{CoA.inState}{Integer. Total cost of attendance for in-state students}
#'   \item{CoA.outState}{Integer. Total cost of attendance for out-of-state students}
#'   \item{otherCosts.tot}{Integer. Total other costs}
#'   \item{fte.tot}{Integer. Total full-time equivalent tuition plus other costs}
#'   \item{fte.in.rat}{Numeric. Ratio of full-time equivalent tuition plus other costs to in-state to total costs}
#'   \item{UGDS_WHITE}{Numeric. Proportion of white undergraduate students}
#'   \item{UGDS_BLACK}{Numeric. Proportion of Black undergraduate students}
#'   \item{UGDS_HISP}{Numeric. Proportion of Hispanic undergraduate students}
#'   \item{UGDS_ASIAN}{Numeric. Proportion of Asian undergraduate students}
#'   \item{UGDS_AIAN}{Numeric. Proportion of American Indian/Alaska Native undergraduate students}
#'   \item{UGDS_NHPI}{Numeric. Proportion of Native Hawaiian/Pacific Islander undergraduate students}
#'   \item{UGDS_2MOR}{Numeric. Proportion of students of two or more races}
#'   \item{UGDS_NRA}{Numeric. Proportion of non-resident alien undergraduate students}
#'   \item{UGDS_UNKN}{Numeric. Proportion of students with unknown race/ethnicity}
#'   \item{UGDS_WHITENH}{Numeric. Proportion of white non-Hispanic undergraduate students}
#'   \item{UGDS_BLACKNH}{Numeric. Proportion of Black non-Hispanic undergraduate students}
#'   \item{UGDS_API}{Numeric. Proportion of Asian/Pacific Islander undergraduate students}
#'   \item{UGDS_AIANOLD}{Numeric. Proportion of American Indian/Alaska Native students (legacy coding)}
#'   \item{UGDS_HISPOLD}{Numeric. Proportion of Hispanic students (legacy coding)}
#'   \item{UGDS_MEN}{Numeric. Proportion of male undergraduate students}
#'   \item{UGDS_WOMEN}{Numeric. Proportion of female undergraduate students}
#' }
#'
#' @details
#' The dataset includes all 18 current Big Ten Conference members:
#' \itemize{
#'   \item Original members: Illinois, Indiana, Iowa, Michigan, Minnesota, Northwestern, Ohio State, Purdue, Wisconsin
#'   \item 1990 addition: MSU (Michigan State University)
#'   \item 1993 addition: Penn State
#'   \item 2011 addition: Nebraska
#'   \item 2014 additions: Maryland, Rutgers
#'   \item 2024 additions: UCLA, USoCal (USC), Oregon, Washington
#' }
#'
#' Data availability varies by year and institution. Earlier years (especially 1996-2000)
#' may have limited data for some variables. Financial data and demographic breakdowns
#' became more standardized and complete in later years.
#'
#' The dataset is particularly useful for:
#' \itemize{
#'   \item Longitudinal analysis of Big Ten institutions
#'   \item Comparative studies across public vs. private institutions
#'   \item Analysis of conference expansion impacts
#'   \item Demographic trend analysis in higher education
#'   \item Cost and accessibility studies
#' }
#'
#' @source
#' Compiled from multiple institutional and federal data sources including
#' the Integrated Postsecondary Education Data System (IPEDS) and institutional
#' reports. Data spans 1996-2023. The dataset is a subset of the College Scorecard
#' dataset (https://collegescorecard.ed.gov/data/), focusing on Big Ten institutions.
#'
#' @seealso
#' \code{\link{bigten_colors_primary}}, \code{\link{bigten_colors_secondary}}
#' for Big Ten institutional color palettes that correspond to the institutions
#' in this dataset.
#'
#' @examples
#' # Load the dataset
#' data(BigTen)
#'
#' # View structure
#' str(BigTen)
#'
#' # Check institutions included
#' unique(BigTen$name)
#'
#' # Examine enrollment trends over time
#' if (require(ggplot2)) {
#'   library(ggplot2)
#'   BigTen_recent <- subset(BigTen, entry_term >= 2010 & !is.na(UGDS))
#'   ggplot(BigTen_recent, aes(x = entry_term, y = UGDS, color = name)) +
#'     geom_line() +
#'     scale_color_bigten_d(palette = "primary") +
#'     theme_MSU() +
#'     labs(title = "Big Ten Undergraduate Enrollment Trends",
#'          x = "Year", y = "Undergraduate Enrollment")
#' }
#'
#' # Compare public vs private institutions
#' table(unique(BigTen[c("name", "Public.tf")])$Public.tf)
#'
#' @keywords datasets
"BigTen"