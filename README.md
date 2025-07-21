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

```


## 포함 데이터 : 모두 GeoPackage 포맷(gpkg, 한 파일=한 레이어)
- 시도 (sd.gpkg)
- 시군구 (sgg.gpkg)
- 읍면동 (emd.gpkg)


## 사용법 
```r
library(admin_map_KR)
# 시도 경계 불러오기
sd <- get_sd()

# 시군구 경계 불러오기
sgg <- get_sgg()

# 읍면동 경계 불러오기
emd <- get_emd()
```

## 예시1: 지도 그리기 
```r
library(admin_map_KR)
library(sf)

sd <- get_sd()
plot(st_geometry(sd), main = "대한민국 시도 경계")

sgg <- get_sgg()
plot(st_geometry(sgg), main = "대한민국 시군구 경계")

emd <- get_emd()
plot(st_geometry(emd), main = "대한민국 읍면동 경계")
```
## 데이터 속성 및 좌표계
파일 포맷: GeoPackage (.gpkg)
좌표계: GRS80(EPSG:5186) → QGIS, ArcGIS, R(sf), leaflet 등에서 바로 활용 가능
속성 정보: 각 레이어의 속성 테이블 참고 (시도/시군구/읍면동 코드, 이름 등)

## 오류/문제해결 
sf 패키지가 없다면 설치가 필요합니다 
```r
install.packages("sf")
```

## 참고/문의
- 행정경계 데이터 출처: (국토교통부 Vworld : https://www.vworld.kr/dtmk/dtmk_ntads_s001.do)
- 데이터 및 패키지 문의/이슈는 이슈 등록 또는 derickspark@gmail.com 으로 연락 주세요.
- 본 패키지는 대한민국 공간분석, 시각화, 지도제작, 연구 등 다양한 목적으로 자유롭게 사용 가능합니다.
- 라이선스: MIT (자유로운 이용, 수정, 재배포 가능)


