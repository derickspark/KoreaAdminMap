#' 시군구(GPKG) 불러오기
#' @return sf 객체
#' @export
get_sgg <- function() {
  gpkg_path <- system.file("extdata", "sgg.gpkg", package = "admin_map_KR")
  sf::st_read(gpkg_path, layer = "sgg", quiet = TRUE)
}
