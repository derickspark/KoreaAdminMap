# admin_map_KR

**한국 행정경계(GPKG) 데이터 패키지**

`admin_map_KR`는 대한민국의 시도, 시군구, 읍면동 행정경계 데이터를  
GeoPackage(gpkg) 파일로 포함하고,  
install_github 설치 후 바로 함수 한 줄로 각 레이어를 불러올 수 있는 R 패키지입니다.

---

## 📦 설치

```r
# remotes 패키지가 없으면 먼저 설치
install.packages("remotes")
# github에서 패키지 설치
remotes::install_github("derickspark/admin_map_KR")
