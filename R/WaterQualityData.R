#' Water quality data for Duke SWAMP from 1999 - 2020
#'
#'
#' @description
#'
#'Sites codes:
#'
#'AN0   =   Pierce Street drainage pipe
#'
#'AN2   =   HWY 751 culvert
#'
#'AN3   =   Phase IV at the outlet of vernal pool in front of observation deck
#'
#'AN4   =   Stream branch South of AN3
#'
#'AN5   =   Upstream of P3U across HWY 751
#'
#'BR5   =   Bio-retention Upstream across HWY 751
#'
#'C5    =   Phase III Cell 5
#'
#'C6    =   Phase III Cell 6

#'DP1   =   Duke Garden Pond at Turtle Pond
#'
#'DP2   =   Duke Garden Pond near Duck Pond
#'
#'DP3   =   Duke Garden Pond at South Lawn
#'
#'D     =   Duke Garden at Duck Pond
#'
#'DS1   =   Downstream of old dam structure
#'
#'MC1   =   Mud Creek near Cornwallis Road
#'
#'NHCD  =   New Hope Creek downstream
#'
#'NHCU  =   New Hope creek upstream
#'
#'OR    =   Oregon Street
#'
#'P3D   =   Phase III downstream
#'
#'P3U   =   Phase III upstream
#'
#'P51   =   Phase V no treatment pool right after drainage pipe
#'
#'P53   =   Phase V near outlet of the second treatment cell
#'
#'S     =   Duke Garden at South Pond
#'
#'SC1   =   Sandy Creek at Cornwallis Rd
#'
#'U     =   Duke Garden at Upper Pond
#'
#'WT1   =   Downstream of culvert at HWY 751, CONTROL SITE,
#'
#'WT2   =   Downstream of tributary after Phase III,
#'
#'WT3   =   Upstream of sewer line
#'
#'WT4   =   Upstream of main channel entering pond
#'
#'WT5   =   Upstream of old dam structure within retention basin of concrete dam
#'
#'WT6   =   Crossing between Phase III and Ariana Block B
#'
#'Note: additional water quality parameters sampled are located in the raw data
#'
#' @format A tibble with 220072 rows and 10 variables:
#' \describe{
#'   \item{Date}{Sample date when water was sampled for specified variable}
#'   \item{Site}{Sampling sites in SWAMP, map of locations in Richardson(2011) paper}
#'   \item{TN}{Total Nitrogen in ug/L}
#'   \item{NH}{Ammonium in ug/L}
#'   \item{NOX}{Nitrous Oxide in ug/L}
#'   \item{TP}{Total Phosphorus in ug/L}
#'   \item{FC}{Fecal coliform in colony counts/100 mL}
#'   \item{Temp}{Temperature in Celcius}
#'   \item{TSS}{Total Suspended Solids in ug/L}
#'   \item{pH}{pH of water}
#' }
#'
#' @source Duke Wetland Center
"WaterQualityData"
