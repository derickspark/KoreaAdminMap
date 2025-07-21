#' 읍면동 경계(shp) 불러오기
#' @return sf 객체
#' @export
get_emd <- function() {
  zip_path <- system.file("extdata", "emd.zip", package = "admin_map_KR")
  tmp <- tempfile()
  unzip(zip_path, exdir = tmp)
  shp_file <- list.files(tmp, pattern = "\\.shp$", full.names = TRUE)[1]
  sf::st_read(shp_file, quiet = TRUE)
}
