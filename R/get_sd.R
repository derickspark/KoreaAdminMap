#' 시도(GPKG) 불러오기
#' @return sf 객체
#' @export
get_sd <- function() {
  gpkg_path <- system.file("extdata", "sd.gpkg", package = "adminmapKR")
  sf::st_read(gpkg_path, layer = "sd", quiet = TRUE)
}
