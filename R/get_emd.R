#' 읍면동(GPKG) 불러오기
#' @return sf 객체
#' @export
get_emd <- function() {
  gpkg_path <- system.file("extdata", "emd.gpkg", package = "admin_map_KR")
  sf::st_read(gpkg_path, layer = "emd", quiet = TRUE)
}
