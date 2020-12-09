
library(rmatio)

## ready county shapefile with final GEOID
cnty <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_analysis/climatevar/cnty_shp1.csv", header=TRUE)
GEOID <- cnty$GEOID
GEOID <- as.data.frame(GEOID)

golf_land <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/Golf_irrigation/Golf_land_area_3.csv")
kc_turf <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/Golf_irrigation/cnty_cf_turf.csv")
gw <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/Golf_irrigation/Intermediate_data/irrigation_gw.csv")
sw <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/Golf_irrigation/Intermediate_data/irrigation_sw.csv")
conv <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/Golf_irrigation/Intermediate_data/conveyance_loss.csv")

golf_land <- merge(GEOID, golf_land, by="GEOID", all.x=TRUE)

golf_land[is.na(golf_land)] <- 0


jan <- 31
feb1 <- 28
feb2 <- 29
mar <- 31
apr <- 30
may <- 31
jun <- 30
jul <- 31
aug <- 31
sep <- 30
oct <- 31
nov <- 30
dec <- 31

kc_GEOID <- kc_turf$GEOID
GEOID <- as.data.frame(GEOID)

kc_turf_jan <- do.call("cbind", replicate(jan, kc_turf$jan, simplify = FALSE))
kc_turf_feb1 <- do.call("cbind", replicate(feb1, kc_turf$feb, simplify = FALSE))
kc_turf_feb2 <- do.call("cbind", replicate(feb2, kc_turf$feb, simplify = FALSE))
kc_turf_mar <- do.call("cbind", replicate(mar, kc_turf$mar, simplify = FALSE))
kc_turf_apr <- do.call("cbind", replicate(apr, kc_turf$apr, simplify = FALSE))
kc_turf_may <- do.call("cbind", replicate(may, kc_turf$may, simplify = FALSE))
kc_turf_jun <- do.call("cbind", replicate(jun, kc_turf$jun, simplify = FALSE))
kc_turf_jul <- do.call("cbind", replicate(jul, kc_turf$jul, simplify = FALSE))
kc_turf_aug <- do.call("cbind", replicate(aug, kc_turf$aug, simplify = FALSE))
kc_turf_sep <- do.call("cbind", replicate(sep, kc_turf$sep, simplify = FALSE))
kc_turf_oct <- do.call("cbind", replicate(oct, kc_turf$oct, simplify = FALSE))
kc_turf_nov <- do.call("cbind", replicate(nov, kc_turf$nov, simplify = FALSE))
kc_turf_dec <- do.call("cbind", replicate(dec, kc_turf$dec, simplify = FALSE))

kc_turf_norm <- cbind(kc_GEOID, kc_turf_jan, kc_turf_feb1, kc_turf_mar, kc_turf_apr, kc_turf_may, kc_turf_jun, kc_turf_jul, kc_turf_aug, kc_turf_sep, kc_turf_oct, kc_turf_nov, kc_turf_dec)
kc_turf_leap <- cbind(kc_GEOID, kc_turf_jan, kc_turf_feb2, kc_turf_mar, kc_turf_apr, kc_turf_may, kc_turf_jun, kc_turf_jul, kc_turf_aug, kc_turf_sep, kc_turf_oct, kc_turf_nov, kc_turf_dec)

kc_turf_norm <- as.data.frame(kc_turf_norm)
kc_turf_leap <- as.data.frame(kc_turf_leap)

names(kc_turf_norm)[names(kc_turf_norm) == 'kc_GEOID'] <- 'GEOID'
names(kc_turf_leap)[names(kc_turf_leap) == 'kc_GEOID'] <- 'GEOID'

write.csv(kc_turf_norm, file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/kc_turf_norm.csv")
write.csv(kc_turf_leap, file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/kc_turf_leap.csv")

kc_turf_norm <-merge(GEOID, kc_turf_norm, by="GEOID")
kc_turf_leap <-merge(GEOID, kc_turf_leap, by="GEOID")

kc_turf_norm <-subset(kc_turf_norm, select=-c(GEOID))
kc_turf_leap <-subset(kc_turf_leap, select=-c(GEOID))

ET0_1950 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1950.mat")
ET0_1951 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1951.mat")
ET0_1952 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1952.mat")
ET0_1953 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1953.mat")
ET0_1954 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1954.mat")
ET0_1955 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1955.mat")
ET0_1956 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1956.mat")
ET0_1957 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1957.mat")
ET0_1958 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1958.mat")
ET0_1959 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1959.mat")
ET0_1960 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1960.mat")
ET0_1961 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1961.mat")
ET0_1962 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1962.mat")
ET0_1963 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1963.mat")
ET0_1964 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1964.mat")
ET0_1965 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1965.mat")
ET0_1966 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1966.mat")
ET0_1967 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1967.mat")
ET0_1968 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1968.mat")
ET0_1969 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1969.mat")
ET0_1970 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1970.mat")
ET0_1971 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1971.mat")
ET0_1972 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1972.mat")
ET0_1973 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1973.mat")
ET0_1974 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1974.mat")
ET0_1975 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1975.mat")
ET0_1976 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1976.mat")
ET0_1977 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1977.mat")
ET0_1978 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1978.mat")
ET0_1979 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1979.mat")
ET0_1980 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1980.mat")
ET0_1981 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1981.mat")
ET0_1982 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1982.mat")
ET0_1983 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1983.mat")
ET0_1984 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1984.mat")
ET0_1985 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1985.mat")
ET0_1986 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1986.mat")
ET0_1987 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1987.mat")
ET0_1988 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1988.mat")
ET0_1989 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1989.mat")
ET0_1990 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1990.mat")
ET0_1991 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1991.mat")
ET0_1992 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1992.mat")
ET0_1993 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1993.mat")
ET0_1994 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1994.mat")
ET0_1995 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1995.mat")
ET0_1996 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1996.mat")
ET0_1997 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1997.mat")
ET0_1998 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1998.mat")
ET0_1999 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1999.mat")
ET0_2000 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2000.mat")
ET0_2001 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2001.mat")
ET0_2002 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2002.mat")
ET0_2003 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2003.mat")
ET0_2004 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2004.mat")
ET0_2005 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2005.mat")
ET0_2006 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2006.mat")
ET0_2007 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2007.mat")
ET0_2008 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2008.mat")
ET0_2009 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2009.mat")
ET0_2010 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2010.mat")
ET0_2011 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2011.mat")
ET0_2012 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2012.mat")
ET0_2013 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2013.mat")


ET0_GEOID <- as.data.frame(ET0_1950$Counties_GEOID)
colnames(ET0_GEOID) <- c("GEOID")

ET0_1950 <- as.data.frame(ET0_1950$ET0_Livneh_County_dy)
ET0_1951 <- as.data.frame(ET0_1951$ET0_Livneh_County_dy)
ET0_1952 <- as.data.frame(ET0_1952$ET0_Livneh_County_dy)
ET0_1953 <- as.data.frame(ET0_1953$ET0_Livneh_County_dy)
ET0_1954 <- as.data.frame(ET0_1954$ET0_Livneh_County_dy)
ET0_1955 <- as.data.frame(ET0_1955$ET0_Livneh_County_dy)
ET0_1956 <- as.data.frame(ET0_1956$ET0_Livneh_County_dy)
ET0_1957 <- as.data.frame(ET0_1957$ET0_Livneh_County_dy)
ET0_1958 <- as.data.frame(ET0_1958$ET0_Livneh_County_dy)
ET0_1959 <- as.data.frame(ET0_1959$ET0_Livneh_County_dy)
ET0_1960 <- as.data.frame(ET0_1960$ET0_Livneh_County_dy)
ET0_1961 <- as.data.frame(ET0_1961$ET0_Livneh_County_dy)
ET0_1962 <- as.data.frame(ET0_1962$ET0_Livneh_County_dy)
ET0_1963 <- as.data.frame(ET0_1963$ET0_Livneh_County_dy)
ET0_1964 <- as.data.frame(ET0_1964$ET0_Livneh_County_dy)
ET0_1965 <- as.data.frame(ET0_1965$ET0_Livneh_County_dy)
ET0_1966 <- as.data.frame(ET0_1966$ET0_Livneh_County_dy)
ET0_1967 <- as.data.frame(ET0_1967$ET0_Livneh_County_dy)
ET0_1968 <- as.data.frame(ET0_1968$ET0_Livneh_County_dy)
ET0_1969 <- as.data.frame(ET0_1969$ET0_Livneh_County_dy)
ET0_1970 <- as.data.frame(ET0_1970$ET0_Livneh_County_dy)
ET0_1971 <- as.data.frame(ET0_1971$ET0_Livneh_County_dy)
ET0_1972 <- as.data.frame(ET0_1972$ET0_Livneh_County_dy)
ET0_1973 <- as.data.frame(ET0_1973$ET0_Livneh_County_dy)
ET0_1974 <- as.data.frame(ET0_1974$ET0_Livneh_County_dy)
ET0_1975 <- as.data.frame(ET0_1975$ET0_Livneh_County_dy)
ET0_1976 <- as.data.frame(ET0_1976$ET0_Livneh_County_dy)
ET0_1977 <- as.data.frame(ET0_1977$ET0_Livneh_County_dy)
ET0_1978 <- as.data.frame(ET0_1978$ET0_Livneh_County_dy)
ET0_1979 <- as.data.frame(ET0_1979$ET0_Livneh_County_dy)
ET0_1980 <- as.data.frame(ET0_1980$ET0_Livneh_County_dy)
ET0_1981 <- as.data.frame(ET0_1981$ET0_Livneh_County_dy)
ET0_1982 <- as.data.frame(ET0_1982$ET0_Livneh_County_dy)
ET0_1983 <- as.data.frame(ET0_1983$ET0_Livneh_County_dy)
ET0_1984 <- as.data.frame(ET0_1984$ET0_Livneh_County_dy)
ET0_1985 <- as.data.frame(ET0_1985$ET0_Livneh_County_dy)
ET0_1986 <- as.data.frame(ET0_1986$ET0_Livneh_County_dy)
ET0_1987 <- as.data.frame(ET0_1987$ET0_Livneh_County_dy)
ET0_1988 <- as.data.frame(ET0_1988$ET0_Livneh_County_dy)
ET0_1989 <- as.data.frame(ET0_1989$ET0_Livneh_County_dy)
ET0_1990 <- as.data.frame(ET0_1990$ET0_Livneh_County_dy)
ET0_1991 <- as.data.frame(ET0_1991$ET0_Livneh_County_dy)
ET0_1992 <- as.data.frame(ET0_1992$ET0_Livneh_County_dy)
ET0_1993 <- as.data.frame(ET0_1993$ET0_Livneh_County_dy)
ET0_1994 <- as.data.frame(ET0_1994$ET0_Livneh_County_dy)
ET0_1995 <- as.data.frame(ET0_1995$ET0_Livneh_County_dy)
ET0_1996 <- as.data.frame(ET0_1996$ET0_Livneh_County_dy)
ET0_1997 <- as.data.frame(ET0_1997$ET0_Livneh_County_dy)
ET0_1998 <- as.data.frame(ET0_1998$ET0_Livneh_County_dy)
ET0_1999 <- as.data.frame(ET0_1999$ET0_Livneh_County_dy)
ET0_2000 <- as.data.frame(ET0_2000$ET0_Livneh_County_dy)
ET0_2001 <- as.data.frame(ET0_2001$ET0_Livneh_County_dy)
ET0_2002 <- as.data.frame(ET0_2002$ET0_Livneh_County_dy)
ET0_2003 <- as.data.frame(ET0_2003$ET0_Livneh_County_dy)
ET0_2004 <- as.data.frame(ET0_2004$ET0_Livneh_County_dy)
ET0_2005 <- as.data.frame(ET0_2005$ET0_Livneh_County_dy)
ET0_2006 <- as.data.frame(ET0_2006$ET0_Livneh_County_dy)
ET0_2007 <- as.data.frame(ET0_2007$ET0_Livneh_County_dy)
ET0_2008 <- as.data.frame(ET0_2008$ET0_Livneh_County_dy)
ET0_2009 <- as.data.frame(ET0_2009$ET0_Livneh_County_dy)
ET0_2010 <- as.data.frame(ET0_2010$ET0_Livneh_County_dy)
ET0_2011 <- as.data.frame(ET0_2011$ET0_Livneh_County_dy)
ET0_2012 <- as.data.frame(ET0_2012$ET0_Livneh_County_dy)
ET0_2013 <- as.data.frame(ET0_2013$ET0_Livneh_County_dy)


ET0_1950 <- cbind(ET0_GEOID, ET0_1950)
ET0_1951 <- cbind(ET0_GEOID, ET0_1951)
ET0_1952 <- cbind(ET0_GEOID, ET0_1952)
ET0_1953 <- cbind(ET0_GEOID, ET0_1953)
ET0_1954 <- cbind(ET0_GEOID, ET0_1954)
ET0_1955 <- cbind(ET0_GEOID, ET0_1955)
ET0_1956 <- cbind(ET0_GEOID, ET0_1956)
ET0_1957 <- cbind(ET0_GEOID, ET0_1957)
ET0_1958 <- cbind(ET0_GEOID, ET0_1958)
ET0_1959 <- cbind(ET0_GEOID, ET0_1959)
ET0_1960 <- cbind(ET0_GEOID, ET0_1960)
ET0_1961 <- cbind(ET0_GEOID, ET0_1961)
ET0_1962 <- cbind(ET0_GEOID, ET0_1962)
ET0_1963 <- cbind(ET0_GEOID, ET0_1963)
ET0_1964 <- cbind(ET0_GEOID, ET0_1964)
ET0_1965 <- cbind(ET0_GEOID, ET0_1965)
ET0_1966 <- cbind(ET0_GEOID, ET0_1966)
ET0_1967 <- cbind(ET0_GEOID, ET0_1967)
ET0_1968 <- cbind(ET0_GEOID, ET0_1968)
ET0_1969 <- cbind(ET0_GEOID, ET0_1969)
ET0_1970 <- cbind(ET0_GEOID, ET0_1970)
ET0_1971 <- cbind(ET0_GEOID, ET0_1971)
ET0_1972 <- cbind(ET0_GEOID, ET0_1972)
ET0_1973 <- cbind(ET0_GEOID, ET0_1973)
ET0_1974 <- cbind(ET0_GEOID, ET0_1974)
ET0_1975 <- cbind(ET0_GEOID, ET0_1975)
ET0_1976 <- cbind(ET0_GEOID, ET0_1976)
ET0_1977 <- cbind(ET0_GEOID, ET0_1977)
ET0_1978 <- cbind(ET0_GEOID, ET0_1978)
ET0_1979 <- cbind(ET0_GEOID, ET0_1979)
ET0_1980 <- cbind(ET0_GEOID, ET0_1980)
ET0_1981 <- cbind(ET0_GEOID, ET0_1981)
ET0_1982 <- cbind(ET0_GEOID, ET0_1982)
ET0_1983 <- cbind(ET0_GEOID, ET0_1983)
ET0_1984 <- cbind(ET0_GEOID, ET0_1984)
ET0_1985 <- cbind(ET0_GEOID, ET0_1985)
ET0_1986 <- cbind(ET0_GEOID, ET0_1986)
ET0_1987 <- cbind(ET0_GEOID, ET0_1987)
ET0_1988 <- cbind(ET0_GEOID, ET0_1988)
ET0_1989 <- cbind(ET0_GEOID, ET0_1989)
ET0_1990 <- cbind(ET0_GEOID, ET0_1990)
ET0_1991 <- cbind(ET0_GEOID, ET0_1991)
ET0_1992 <- cbind(ET0_GEOID, ET0_1992)
ET0_1993 <- cbind(ET0_GEOID, ET0_1993)
ET0_1994 <- cbind(ET0_GEOID, ET0_1994)
ET0_1995 <- cbind(ET0_GEOID, ET0_1995)
ET0_1996 <- cbind(ET0_GEOID, ET0_1996)
ET0_1997 <- cbind(ET0_GEOID, ET0_1997)
ET0_1998 <- cbind(ET0_GEOID, ET0_1998)
ET0_1999 <- cbind(ET0_GEOID, ET0_1999)
ET0_2000 <- cbind(ET0_GEOID, ET0_2000)
ET0_2001 <- cbind(ET0_GEOID, ET0_2001)
ET0_2002 <- cbind(ET0_GEOID, ET0_2002)
ET0_2003 <- cbind(ET0_GEOID, ET0_2003)
ET0_2004 <- cbind(ET0_GEOID, ET0_2004)
ET0_2005 <- cbind(ET0_GEOID, ET0_2005)
ET0_2006 <- cbind(ET0_GEOID, ET0_2006)
ET0_2007 <- cbind(ET0_GEOID, ET0_2007)
ET0_2008 <- cbind(ET0_GEOID, ET0_2008)
ET0_2009 <- cbind(ET0_GEOID, ET0_2009)
ET0_2010 <- cbind(ET0_GEOID, ET0_2010)
ET0_2011 <- cbind(ET0_GEOID, ET0_2011)
ET0_2012 <- cbind(ET0_GEOID, ET0_2012)
ET0_2013 <- cbind(ET0_GEOID, ET0_2013)


ET0_1950 <- merge(GEOID,ET0_1950, by="GEOID")
ET0_1951 <- merge(GEOID,ET0_1951, by="GEOID")
ET0_1952 <- merge(GEOID,ET0_1952, by="GEOID")
ET0_1953 <- merge(GEOID,ET0_1953, by="GEOID")
ET0_1954 <- merge(GEOID,ET0_1954, by="GEOID")
ET0_1955 <- merge(GEOID,ET0_1955, by="GEOID")
ET0_1956 <- merge(GEOID,ET0_1956, by="GEOID")
ET0_1957 <- merge(GEOID,ET0_1957, by="GEOID")
ET0_1958 <- merge(GEOID,ET0_1958, by="GEOID")
ET0_1959 <- merge(GEOID,ET0_1959, by="GEOID")
ET0_1960 <- merge(GEOID,ET0_1960, by="GEOID")
ET0_1961 <- merge(GEOID,ET0_1961, by="GEOID")
ET0_1962 <- merge(GEOID,ET0_1962, by="GEOID")
ET0_1963 <- merge(GEOID,ET0_1963, by="GEOID")
ET0_1964 <- merge(GEOID,ET0_1964, by="GEOID")
ET0_1965 <- merge(GEOID,ET0_1965, by="GEOID")
ET0_1966 <- merge(GEOID,ET0_1966, by="GEOID")
ET0_1967 <- merge(GEOID,ET0_1967, by="GEOID")
ET0_1968 <- merge(GEOID,ET0_1968, by="GEOID")
ET0_1969 <- merge(GEOID,ET0_1969, by="GEOID")
ET0_1970 <- merge(GEOID,ET0_1970, by="GEOID")
ET0_1971 <- merge(GEOID,ET0_1971, by="GEOID")
ET0_1972 <- merge(GEOID,ET0_1972, by="GEOID")
ET0_1973 <- merge(GEOID,ET0_1973, by="GEOID")
ET0_1974 <- merge(GEOID,ET0_1974, by="GEOID")
ET0_1975 <- merge(GEOID,ET0_1975, by="GEOID")
ET0_1976 <- merge(GEOID,ET0_1976, by="GEOID")
ET0_1977 <- merge(GEOID,ET0_1977, by="GEOID")
ET0_1978 <- merge(GEOID,ET0_1978, by="GEOID")
ET0_1979 <- merge(GEOID,ET0_1979, by="GEOID")
ET0_1980 <- merge(GEOID,ET0_1980, by="GEOID")
ET0_1981 <- merge(GEOID,ET0_1981, by="GEOID")
ET0_1982 <- merge(GEOID,ET0_1982, by="GEOID")
ET0_1983 <- merge(GEOID,ET0_1983, by="GEOID")
ET0_1984 <- merge(GEOID,ET0_1984, by="GEOID")
ET0_1985 <- merge(GEOID,ET0_1985, by="GEOID")
ET0_1986 <- merge(GEOID,ET0_1986, by="GEOID")
ET0_1987 <- merge(GEOID,ET0_1987, by="GEOID")
ET0_1988 <- merge(GEOID,ET0_1988, by="GEOID")
ET0_1989 <- merge(GEOID,ET0_1989, by="GEOID")
ET0_1990 <- merge(GEOID,ET0_1990, by="GEOID")
ET0_1991 <- merge(GEOID,ET0_1991, by="GEOID")
ET0_1992 <- merge(GEOID,ET0_1992, by="GEOID")
ET0_1993 <- merge(GEOID,ET0_1993, by="GEOID")
ET0_1994 <- merge(GEOID,ET0_1994, by="GEOID")
ET0_1995 <- merge(GEOID,ET0_1995, by="GEOID")
ET0_1996 <- merge(GEOID,ET0_1996, by="GEOID")
ET0_1997 <- merge(GEOID,ET0_1997, by="GEOID")
ET0_1998 <- merge(GEOID,ET0_1998, by="GEOID")
ET0_1999 <- merge(GEOID,ET0_1999, by="GEOID")
ET0_2000 <- merge(GEOID,ET0_2000, by="GEOID")
ET0_2001 <- merge(GEOID,ET0_2001, by="GEOID")
ET0_2002 <- merge(GEOID,ET0_2002, by="GEOID")
ET0_2003 <- merge(GEOID,ET0_2003, by="GEOID")
ET0_2004 <- merge(GEOID,ET0_2004, by="GEOID")
ET0_2005 <- merge(GEOID,ET0_2005, by="GEOID")
ET0_2006 <- merge(GEOID,ET0_2006, by="GEOID")
ET0_2007 <- merge(GEOID,ET0_2007, by="GEOID")
ET0_2008 <- merge(GEOID,ET0_2008, by="GEOID")
ET0_2009 <- merge(GEOID,ET0_2009, by="GEOID")
ET0_2010 <- merge(GEOID,ET0_2010, by="GEOID")
ET0_2011 <- merge(GEOID,ET0_2011, by="GEOID")
ET0_2012 <- merge(GEOID,ET0_2012, by="GEOID")
ET0_2013 <- merge(GEOID,ET0_2013, by="GEOID")


ET0_1950 <-subset(ET0_1950, select=-c(GEOID))
ET0_1951 <-subset(ET0_1951, select=-c(GEOID))
ET0_1952 <-subset(ET0_1952, select=-c(GEOID))
ET0_1953 <-subset(ET0_1953, select=-c(GEOID))
ET0_1954 <-subset(ET0_1954, select=-c(GEOID))
ET0_1955 <-subset(ET0_1955, select=-c(GEOID))
ET0_1956 <-subset(ET0_1956, select=-c(GEOID))
ET0_1957 <-subset(ET0_1957, select=-c(GEOID))
ET0_1958 <-subset(ET0_1958, select=-c(GEOID))
ET0_1959 <-subset(ET0_1959, select=-c(GEOID))
ET0_1960 <-subset(ET0_1960, select=-c(GEOID))
ET0_1961 <-subset(ET0_1961, select=-c(GEOID))
ET0_1962 <-subset(ET0_1962, select=-c(GEOID))
ET0_1963 <-subset(ET0_1963, select=-c(GEOID))
ET0_1964 <-subset(ET0_1964, select=-c(GEOID))
ET0_1965 <-subset(ET0_1965, select=-c(GEOID))
ET0_1966 <-subset(ET0_1966, select=-c(GEOID))
ET0_1967 <-subset(ET0_1967, select=-c(GEOID))
ET0_1968 <-subset(ET0_1968, select=-c(GEOID))
ET0_1969 <-subset(ET0_1969, select=-c(GEOID))
ET0_1970 <-subset(ET0_1970, select=-c(GEOID))
ET0_1971 <-subset(ET0_1971, select=-c(GEOID))
ET0_1972 <-subset(ET0_1972, select=-c(GEOID))
ET0_1973 <-subset(ET0_1973, select=-c(GEOID))
ET0_1974 <-subset(ET0_1974, select=-c(GEOID))
ET0_1975 <-subset(ET0_1975, select=-c(GEOID))
ET0_1976 <-subset(ET0_1976, select=-c(GEOID))
ET0_1977 <-subset(ET0_1977, select=-c(GEOID))
ET0_1978 <-subset(ET0_1978, select=-c(GEOID))
ET0_1979 <-subset(ET0_1979, select=-c(GEOID))
ET0_1980 <-subset(ET0_1980, select=-c(GEOID))
ET0_1981 <-subset(ET0_1981, select=-c(GEOID))
ET0_1982 <-subset(ET0_1982, select=-c(GEOID))
ET0_1983 <-subset(ET0_1983, select=-c(GEOID))
ET0_1984 <-subset(ET0_1984, select=-c(GEOID))
ET0_1985 <-subset(ET0_1985, select=-c(GEOID))
ET0_1986 <-subset(ET0_1986, select=-c(GEOID))
ET0_1987 <-subset(ET0_1987, select=-c(GEOID))
ET0_1988 <-subset(ET0_1988, select=-c(GEOID))
ET0_1989 <-subset(ET0_1989, select=-c(GEOID))
ET0_1990 <-subset(ET0_1990, select=-c(GEOID))
ET0_1991 <-subset(ET0_1991, select=-c(GEOID))
ET0_1992 <-subset(ET0_1992, select=-c(GEOID))
ET0_1993 <-subset(ET0_1993, select=-c(GEOID))
ET0_1994 <-subset(ET0_1994, select=-c(GEOID))
ET0_1995 <-subset(ET0_1995, select=-c(GEOID))
ET0_1996 <-subset(ET0_1996, select=-c(GEOID))
ET0_1997 <-subset(ET0_1997, select=-c(GEOID))
ET0_1998 <-subset(ET0_1998, select=-c(GEOID))
ET0_1999 <-subset(ET0_1999, select=-c(GEOID))
ET0_2000 <-subset(ET0_2000, select=-c(GEOID))
ET0_2001 <-subset(ET0_2001, select=-c(GEOID))
ET0_2002 <-subset(ET0_2002, select=-c(GEOID))
ET0_2003 <-subset(ET0_2003, select=-c(GEOID))
ET0_2004 <-subset(ET0_2004, select=-c(GEOID))
ET0_2005 <-subset(ET0_2005, select=-c(GEOID))
ET0_2006 <-subset(ET0_2006, select=-c(GEOID))
ET0_2007 <-subset(ET0_2007, select=-c(GEOID))
ET0_2008 <-subset(ET0_2008, select=-c(GEOID))
ET0_2009 <-subset(ET0_2009, select=-c(GEOID))
ET0_2010 <-subset(ET0_2010, select=-c(GEOID))
ET0_2011 <-subset(ET0_2011, select=-c(GEOID))
ET0_2012 <-subset(ET0_2012, select=-c(GEOID))
ET0_2013 <-subset(ET0_2013, select=-c(GEOID))

ETc_golf_1950 <- ET0_1950*kc_turf_norm
ETc_golf_1951 <- ET0_1951*kc_turf_norm
ETc_golf_1952 <- ET0_1952*kc_turf_leap
ETc_golf_1953 <- ET0_1953*kc_turf_norm
ETc_golf_1954 <- ET0_1954*kc_turf_norm
ETc_golf_1955 <- ET0_1955*kc_turf_norm
ETc_golf_1956 <- ET0_1956*kc_turf_leap
ETc_golf_1957 <- ET0_1957*kc_turf_norm
ETc_golf_1958 <- ET0_1958*kc_turf_norm
ETc_golf_1959 <- ET0_1959*kc_turf_norm
ETc_golf_1960 <- ET0_1960*kc_turf_leap
ETc_golf_1961 <- ET0_1961*kc_turf_norm
ETc_golf_1962 <- ET0_1962*kc_turf_norm
ETc_golf_1963 <- ET0_1963*kc_turf_norm
ETc_golf_1964 <- ET0_1964*kc_turf_leap
ETc_golf_1965 <- ET0_1965*kc_turf_norm
ETc_golf_1966 <- ET0_1966*kc_turf_norm
ETc_golf_1967 <- ET0_1967*kc_turf_norm
ETc_golf_1968 <- ET0_1968*kc_turf_leap
ETc_golf_1969 <- ET0_1969*kc_turf_norm
ETc_golf_1970 <- ET0_1970*kc_turf_norm
ETc_golf_1971 <- ET0_1971*kc_turf_norm
ETc_golf_1972 <- ET0_1972*kc_turf_leap
ETc_golf_1973 <- ET0_1973*kc_turf_norm
ETc_golf_1974 <- ET0_1974*kc_turf_norm
ETc_golf_1975 <- ET0_1975*kc_turf_norm
ETc_golf_1976 <- ET0_1976*kc_turf_leap
ETc_golf_1977 <- ET0_1977*kc_turf_norm
ETc_golf_1978 <- ET0_1978*kc_turf_norm
ETc_golf_1979 <- ET0_1979*kc_turf_norm
ETc_golf_1980 <- ET0_1980*kc_turf_leap
ETc_golf_1981 <- ET0_1981*kc_turf_norm
ETc_golf_1982 <- ET0_1982*kc_turf_norm
ETc_golf_1983 <- ET0_1983*kc_turf_norm
ETc_golf_1984 <- ET0_1984*kc_turf_leap
ETc_golf_1985 <- ET0_1985*kc_turf_norm
ETc_golf_1986 <- ET0_1986*kc_turf_norm
ETc_golf_1987 <- ET0_1987*kc_turf_norm
ETc_golf_1988 <- ET0_1988*kc_turf_leap
ETc_golf_1989 <- ET0_1989*kc_turf_norm
ETc_golf_1990 <- ET0_1990*kc_turf_norm
ETc_golf_1991 <- ET0_1991*kc_turf_norm
ETc_golf_1992 <- ET0_1992*kc_turf_leap
ETc_golf_1993 <- ET0_1993*kc_turf_norm
ETc_golf_1994 <- ET0_1994*kc_turf_norm
ETc_golf_1995 <- ET0_1995*kc_turf_norm
ETc_golf_1996 <- ET0_1996*kc_turf_leap
ETc_golf_1997 <- ET0_1997*kc_turf_norm
ETc_golf_1998 <- ET0_1998*kc_turf_norm
ETc_golf_1999 <- ET0_1999*kc_turf_norm
ETc_golf_2000 <- ET0_2000*kc_turf_leap
ETc_golf_2001 <- ET0_2001*kc_turf_norm
ETc_golf_2002 <- ET0_2002*kc_turf_norm
ETc_golf_2003 <- ET0_2003*kc_turf_norm
ETc_golf_2004 <- ET0_2004*kc_turf_leap
ETc_golf_2005 <- ET0_2005*kc_turf_norm
ETc_golf_2006 <- ET0_2006*kc_turf_norm
ETc_golf_2007 <- ET0_2007*kc_turf_norm
ETc_golf_2008 <- ET0_2008*kc_turf_leap
ETc_golf_2009 <- ET0_2009*kc_turf_norm
ETc_golf_2010 <- ET0_2010*kc_turf_norm
ETc_golf_2011 <- ET0_2011*kc_turf_norm
ETc_golf_2012 <- ET0_2012*kc_turf_leap
ETc_golf_2013 <- ET0_2013*kc_turf_norm

write.csv(cbind(GEOID,ETc_golf_1950),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1950.csv")
write.csv(cbind(GEOID,ETc_golf_1951),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1951.csv")
write.csv(cbind(GEOID,ETc_golf_1952),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1952.csv")
write.csv(cbind(GEOID,ETc_golf_1953),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1953.csv")
write.csv(cbind(GEOID,ETc_golf_1954),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1954.csv")
write.csv(cbind(GEOID,ETc_golf_1955),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1955.csv")
write.csv(cbind(GEOID,ETc_golf_1956),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1956.csv")
write.csv(cbind(GEOID,ETc_golf_1957),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1957.csv")
write.csv(cbind(GEOID,ETc_golf_1958),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1958.csv")
write.csv(cbind(GEOID,ETc_golf_1959),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1959.csv")
write.csv(cbind(GEOID,ETc_golf_1960),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1960.csv")
write.csv(cbind(GEOID,ETc_golf_1961),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1961.csv")
write.csv(cbind(GEOID,ETc_golf_1962),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1962.csv")
write.csv(cbind(GEOID,ETc_golf_1963),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1963.csv")
write.csv(cbind(GEOID,ETc_golf_1964),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1964.csv")
write.csv(cbind(GEOID,ETc_golf_1965),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1965.csv")
write.csv(cbind(GEOID,ETc_golf_1966),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1966.csv")
write.csv(cbind(GEOID,ETc_golf_1967),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1967.csv")
write.csv(cbind(GEOID,ETc_golf_1968),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1968.csv")
write.csv(cbind(GEOID,ETc_golf_1969),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1969.csv")
write.csv(cbind(GEOID,ETc_golf_1970),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1970.csv")
write.csv(cbind(GEOID,ETc_golf_1971),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1971.csv")
write.csv(cbind(GEOID,ETc_golf_1972),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1972.csv")
write.csv(cbind(GEOID,ETc_golf_1973),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1973.csv")
write.csv(cbind(GEOID,ETc_golf_1974),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1974.csv")
write.csv(cbind(GEOID,ETc_golf_1975),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1975.csv")
write.csv(cbind(GEOID,ETc_golf_1976),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1976.csv")
write.csv(cbind(GEOID,ETc_golf_1977),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1977.csv")
write.csv(cbind(GEOID,ETc_golf_1978),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1978.csv")
write.csv(cbind(GEOID,ETc_golf_1979),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1979.csv")
write.csv(cbind(GEOID,ETc_golf_1980),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1980.csv")
write.csv(cbind(GEOID,ETc_golf_1981),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1981.csv")
write.csv(cbind(GEOID,ETc_golf_1982),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1982.csv")
write.csv(cbind(GEOID,ETc_golf_1983),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1983.csv")
write.csv(cbind(GEOID,ETc_golf_1984),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1984.csv")
write.csv(cbind(GEOID,ETc_golf_1985),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1985.csv")
write.csv(cbind(GEOID,ETc_golf_1986),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1986.csv")
write.csv(cbind(GEOID,ETc_golf_1987),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1987.csv")
write.csv(cbind(GEOID,ETc_golf_1988),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1988.csv")
write.csv(cbind(GEOID,ETc_golf_1989),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1989.csv")
write.csv(cbind(GEOID,ETc_golf_1990),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1990.csv")
write.csv(cbind(GEOID,ETc_golf_1991),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1991.csv")
write.csv(cbind(GEOID,ETc_golf_1992),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1992.csv")
write.csv(cbind(GEOID,ETc_golf_1993),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1993.csv")
write.csv(cbind(GEOID,ETc_golf_1994),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1994.csv")
write.csv(cbind(GEOID,ETc_golf_1995),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1995.csv")
write.csv(cbind(GEOID,ETc_golf_1996),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1996.csv")
write.csv(cbind(GEOID,ETc_golf_1997),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1997.csv")
write.csv(cbind(GEOID,ETc_golf_1998),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1998.csv")
write.csv(cbind(GEOID,ETc_golf_1999),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_1999.csv")
write.csv(cbind(GEOID,ETc_golf_2000),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_2000.csv")
write.csv(cbind(GEOID,ETc_golf_2001),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_2001.csv")
write.csv(cbind(GEOID,ETc_golf_2002),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_2002.csv")
write.csv(cbind(GEOID,ETc_golf_2003),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_2003.csv")
write.csv(cbind(GEOID,ETc_golf_2004),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_2004.csv")
write.csv(cbind(GEOID,ETc_golf_2005),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_2005.csv")
write.csv(cbind(GEOID,ETc_golf_2006),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_2006.csv")
write.csv(cbind(GEOID,ETc_golf_2007),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_2007.csv")
write.csv(cbind(GEOID,ETc_golf_2008),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_2008.csv")
write.csv(cbind(GEOID,ETc_golf_2009),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_2009.csv")
write.csv(cbind(GEOID,ETc_golf_2010),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_2010.csv")
write.csv(cbind(GEOID,ETc_golf_2011),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_2011.csv")
write.csv(cbind(GEOID,ETc_golf_2012),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_2012.csv")
write.csv(cbind(GEOID,ETc_golf_2013),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/Etc/ETc_golf_2013.csv")


golf_1950_w1=(golf_land$X1950*0.00328084*ETc_golf_1950)/conv$X1950
golf_1951_w1=(golf_land$X1951*0.00328084*ETc_golf_1951)/conv$X1951
golf_1952_w1=(golf_land$X1952*0.00328084*ETc_golf_1952)/conv$X1952
golf_1953_w1=(golf_land$X1953*0.00328084*ETc_golf_1953)/conv$X1953
golf_1954_w1=(golf_land$X1954*0.00328084*ETc_golf_1954)/conv$X1954
golf_1955_w1=(golf_land$X1955*0.00328084*ETc_golf_1955)/conv$X1955
golf_1956_w1=(golf_land$X1956*0.00328084*ETc_golf_1956)/conv$X1956
golf_1957_w1=(golf_land$X1957*0.00328084*ETc_golf_1957)/conv$X1957
golf_1958_w1=(golf_land$X1958*0.00328084*ETc_golf_1958)/conv$X1958
golf_1959_w1=(golf_land$X1959*0.00328084*ETc_golf_1959)/conv$X1959
golf_1960_w1=(golf_land$X1960*0.00328084*ETc_golf_1960)/conv$X1960
golf_1961_w1=(golf_land$X1961*0.00328084*ETc_golf_1961)/conv$X1961
golf_1962_w1=(golf_land$X1962*0.00328084*ETc_golf_1962)/conv$X1962
golf_1963_w1=(golf_land$X1963*0.00328084*ETc_golf_1963)/conv$X1963
golf_1964_w1=(golf_land$X1964*0.00328084*ETc_golf_1964)/conv$X1964
golf_1965_w1=(golf_land$X1965*0.00328084*ETc_golf_1965)/conv$X1965
golf_1966_w1=(golf_land$X1966*0.00328084*ETc_golf_1966)/conv$X1966
golf_1967_w1=(golf_land$X1967*0.00328084*ETc_golf_1967)/conv$X1967
golf_1968_w1=(golf_land$X1968*0.00328084*ETc_golf_1968)/conv$X1968
golf_1969_w1=(golf_land$X1969*0.00328084*ETc_golf_1969)/conv$X1969
golf_1970_w1=(golf_land$X1970*0.00328084*ETc_golf_1970)/conv$X1970
golf_1971_w1=(golf_land$X1971*0.00328084*ETc_golf_1971)/conv$X1971
golf_1972_w1=(golf_land$X1972*0.00328084*ETc_golf_1972)/conv$X1972
golf_1973_w1=(golf_land$X1973*0.00328084*ETc_golf_1973)/conv$X1973
golf_1974_w1=(golf_land$X1974*0.00328084*ETc_golf_1974)/conv$X1974
golf_1975_w1=(golf_land$X1975*0.00328084*ETc_golf_1975)/conv$X1975
golf_1976_w1=(golf_land$X1976*0.00328084*ETc_golf_1976)/conv$X1976
golf_1977_w1=(golf_land$X1977*0.00328084*ETc_golf_1977)/conv$X1977
golf_1978_w1=(golf_land$X1978*0.00328084*ETc_golf_1978)/conv$X1978
golf_1979_w1=(golf_land$X1979*0.00328084*ETc_golf_1979)/conv$X1979
golf_1980_w1=(golf_land$X1980*0.00328084*ETc_golf_1980)/conv$X1980
golf_1981_w1=(golf_land$X1981*0.00328084*ETc_golf_1981)/conv$X1981
golf_1982_w1=(golf_land$X1982*0.00328084*ETc_golf_1982)/conv$X1982
golf_1983_w1=(golf_land$X1983*0.00328084*ETc_golf_1983)/conv$X1983
golf_1984_w1=(golf_land$X1984*0.00328084*ETc_golf_1984)/conv$X1984
golf_1985_w1=(golf_land$X1985*0.00328084*ETc_golf_1985)/conv$X1985
golf_1986_w1=(golf_land$X1986*0.00328084*ETc_golf_1986)/conv$X1986
golf_1987_w1=(golf_land$X1987*0.00328084*ETc_golf_1987)/conv$X1987
golf_1988_w1=(golf_land$X1988*0.00328084*ETc_golf_1988)/conv$X1988
golf_1989_w1=(golf_land$X1989*0.00328084*ETc_golf_1989)/conv$X1989
golf_1990_w1=(golf_land$X1990*0.00328084*ETc_golf_1990)/conv$X1990
golf_1991_w1=(golf_land$X1991*0.00328084*ETc_golf_1991)/conv$X1991
golf_1992_w1=(golf_land$X1992*0.00328084*ETc_golf_1992)/conv$X1992
golf_1993_w1=(golf_land$X1993*0.00328084*ETc_golf_1993)/conv$X1993
golf_1994_w1=(golf_land$X1994*0.00328084*ETc_golf_1994)/conv$X1994
golf_1995_w1=(golf_land$X1995*0.00328084*ETc_golf_1995)/conv$X1995
golf_1996_w1=(golf_land$X1996*0.00328084*ETc_golf_1996)/conv$X1996
golf_1997_w1=(golf_land$X1997*0.00328084*ETc_golf_1997)/conv$X1997
golf_1998_w1=(golf_land$X1998*0.00328084*ETc_golf_1998)/conv$X1998
golf_1999_w1=(golf_land$X1999*0.00328084*ETc_golf_1999)/conv$X1999
golf_2000_w1=(golf_land$X2000*0.00328084*ETc_golf_2000)/conv$X2000
golf_2001_w1=(golf_land$X2001*0.00328084*ETc_golf_2001)/conv$X2001
golf_2002_w1=(golf_land$X2002*0.00328084*ETc_golf_2002)/conv$X2002
golf_2003_w1=(golf_land$X2003*0.00328084*ETc_golf_2003)/conv$X2003
golf_2004_w1=(golf_land$X2004*0.00328084*ETc_golf_2004)/conv$X2004
golf_2005_w1=(golf_land$X2005*0.00328084*ETc_golf_2005)/conv$X2005
golf_2006_w1=(golf_land$X2006*0.00328084*ETc_golf_2006)/conv$X2006
golf_2007_w1=(golf_land$X2007*0.00328084*ETc_golf_2007)/conv$X2007
golf_2008_w1=(golf_land$X2008*0.00328084*ETc_golf_2008)/conv$X2008
golf_2009_w1=(golf_land$X2009*0.00328084*ETc_golf_2009)/conv$X2009
golf_2010_w1=(golf_land$X2010*0.00328084*ETc_golf_2010)/conv$X2010
golf_2011_w1=(golf_land$X2011*0.00328084*ETc_golf_2011)/conv$X2011
golf_2012_w1=(golf_land$X2012*0.00328084*ETc_golf_2012)/conv$X2012
golf_2013_w1=(golf_land$X2013*0.00328084*ETc_golf_2013)/conv$X2013




write.csv(cbind(GEOID,golf_1950_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1950_w1.csv")
write.csv(cbind(GEOID,golf_1951_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1951_w1.csv")
write.csv(cbind(GEOID,golf_1952_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1952_w1.csv")
write.csv(cbind(GEOID,golf_1953_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1953_w1.csv")
write.csv(cbind(GEOID,golf_1954_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1954_w1.csv")
write.csv(cbind(GEOID,golf_1955_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1955_w1.csv")
write.csv(cbind(GEOID,golf_1956_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1956_w1.csv")
write.csv(cbind(GEOID,golf_1957_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1957_w1.csv")
write.csv(cbind(GEOID,golf_1958_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1958_w1.csv")
write.csv(cbind(GEOID,golf_1959_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1959_w1.csv")
write.csv(cbind(GEOID,golf_1960_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1960_w1.csv")
write.csv(cbind(GEOID,golf_1961_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1961_w1.csv")
write.csv(cbind(GEOID,golf_1962_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1962_w1.csv")
write.csv(cbind(GEOID,golf_1963_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1963_w1.csv")
write.csv(cbind(GEOID,golf_1964_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1964_w1.csv")
write.csv(cbind(GEOID,golf_1965_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1965_w1.csv")
write.csv(cbind(GEOID,golf_1966_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1966_w1.csv")
write.csv(cbind(GEOID,golf_1967_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1967_w1.csv")
write.csv(cbind(GEOID,golf_1968_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1968_w1.csv")
write.csv(cbind(GEOID,golf_1969_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1969_w1.csv")
write.csv(cbind(GEOID,golf_1970_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1970_w1.csv")
write.csv(cbind(GEOID,golf_1971_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1971_w1.csv")
write.csv(cbind(GEOID,golf_1972_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1972_w1.csv")
write.csv(cbind(GEOID,golf_1973_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1973_w1.csv")
write.csv(cbind(GEOID,golf_1974_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1974_w1.csv")
write.csv(cbind(GEOID,golf_1975_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1975_w1.csv")
write.csv(cbind(GEOID,golf_1976_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1976_w1.csv")
write.csv(cbind(GEOID,golf_1977_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1977_w1.csv")
write.csv(cbind(GEOID,golf_1978_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1978_w1.csv")
write.csv(cbind(GEOID,golf_1979_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1979_w1.csv")
write.csv(cbind(GEOID,golf_1980_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1980_w1.csv")
write.csv(cbind(GEOID,golf_1981_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1981_w1.csv")
write.csv(cbind(GEOID,golf_1982_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1982_w1.csv")
write.csv(cbind(GEOID,golf_1983_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1983_w1.csv")
write.csv(cbind(GEOID,golf_1984_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1984_w1.csv")
write.csv(cbind(GEOID,golf_1985_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1985_w1.csv")
write.csv(cbind(GEOID,golf_1986_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1986_w1.csv")
write.csv(cbind(GEOID,golf_1987_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1987_w1.csv")
write.csv(cbind(GEOID,golf_1988_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1988_w1.csv")
write.csv(cbind(GEOID,golf_1989_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1989_w1.csv")
write.csv(cbind(GEOID,golf_1990_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1990_w1.csv")
write.csv(cbind(GEOID,golf_1991_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1991_w1.csv")
write.csv(cbind(GEOID,golf_1992_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1992_w1.csv")
write.csv(cbind(GEOID,golf_1993_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1993_w1.csv")
write.csv(cbind(GEOID,golf_1994_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1994_w1.csv")
write.csv(cbind(GEOID,golf_1995_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1995_w1.csv")
write.csv(cbind(GEOID,golf_1996_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1996_w1.csv")
write.csv(cbind(GEOID,golf_1997_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1997_w1.csv")
write.csv(cbind(GEOID,golf_1998_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1998_w1.csv")
write.csv(cbind(GEOID,golf_1999_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_1999_w1.csv")
write.csv(cbind(GEOID,golf_2000_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_2000_w1.csv")
write.csv(cbind(GEOID,golf_2001_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_2001_w1.csv")
write.csv(cbind(GEOID,golf_2002_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_2002_w1.csv")
write.csv(cbind(GEOID,golf_2003_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_2003_w1.csv")
write.csv(cbind(GEOID,golf_2004_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_2004_w1.csv")
write.csv(cbind(GEOID,golf_2005_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_2005_w1.csv")
write.csv(cbind(GEOID,golf_2006_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_2006_w1.csv")
write.csv(cbind(GEOID,golf_2007_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_2007_w1.csv")
write.csv(cbind(GEOID,golf_2008_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_2008_w1.csv")
write.csv(cbind(GEOID,golf_2009_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_2009_w1.csv")
write.csv(cbind(GEOID,golf_2010_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_2010_w1.csv")
write.csv(cbind(GEOID,golf_2011_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_2011_w1.csv")
write.csv(cbind(GEOID,golf_2012_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_2012_w1.csv")
write.csv(cbind(GEOID,golf_2013_w1),file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/s1/golf_2013_w1.csv")

##Liveneh Data files

pcp_1950 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1950.mat")
pcp_GEOID <- as.data.frame(pcp_1950$Counties_GEOID)
pcp_1950 <- as.data.frame(pcp_1950$prcp_Livneh_County_dy)
colnames(pcp_GEOID) <- c("GEOID")


pcp_1950<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1950.mat")
pcp_1951<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1951.mat")
pcp_1952<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1952.mat")
pcp_1953<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1953.mat")
pcp_1954<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1954.mat")
pcp_1955<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1955.mat")
pcp_1956<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1956.mat")
pcp_1957<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1957.mat")
pcp_1958<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1958.mat")
pcp_1959<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1959.mat")
pcp_1960<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1960.mat")
pcp_1961<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1961.mat")
pcp_1962<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1962.mat")
pcp_1963<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1963.mat")
pcp_1964<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1964.mat")
pcp_1965<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1965.mat")
pcp_1966<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1966.mat")
pcp_1967<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1967.mat")
pcp_1968<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1968.mat")
pcp_1969<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1969.mat")
pcp_1970<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1970.mat")
pcp_1971<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1971.mat")
pcp_1972<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1972.mat")
pcp_1973<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1973.mat")
pcp_1974<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1974.mat")
pcp_1975<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1975.mat")
pcp_1976<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1976.mat")
pcp_1977<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1977.mat")
pcp_1978<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1978.mat")
pcp_1979<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1979.mat")
pcp_1980<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1980.mat")
pcp_1981<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1981.mat")
pcp_1982<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1982.mat")
pcp_1983<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1983.mat")
pcp_1984<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1984.mat")
pcp_1985<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1985.mat")
pcp_1986<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1986.mat")
pcp_1987<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1987.mat")
pcp_1988<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1988.mat")
pcp_1989<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1989.mat")
pcp_1990<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1990.mat")
pcp_1991<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1991.mat")
pcp_1992<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1992.mat")
pcp_1993<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1993.mat")
pcp_1994<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1994.mat")
pcp_1995<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1995.mat")
pcp_1996<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1996.mat")
pcp_1997<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1997.mat")
pcp_1998<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1998.mat")
pcp_1999<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_1999.mat")
pcp_2000<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_2000.mat")
pcp_2001<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_2001.mat")
pcp_2002<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_2002.mat")
pcp_2003<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_2003.mat")
pcp_2004<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_2004.mat")
pcp_2005<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_2005.mat")
pcp_2006<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_2006.mat")
pcp_2007<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_2007.mat")
pcp_2008<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_2008.mat")
pcp_2009<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_2009.mat")
pcp_2010<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_2010.mat")
pcp_2011<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_2011.mat")
pcp_2012<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_2012.mat")
pcp_2013<- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_prcp (1)/Livneh_County_prcp_2013.mat")

pcp_1950 <- as.data.frame(pcp_1950$prcp_Livneh_County_dy)
pcp_1951 <- as.data.frame(pcp_1951$prcp_Livneh_County_dy)
pcp_1952 <- as.data.frame(pcp_1952$prcp_Livneh_County_dy)
pcp_1953 <- as.data.frame(pcp_1953$prcp_Livneh_County_dy)
pcp_1954 <- as.data.frame(pcp_1954$prcp_Livneh_County_dy)
pcp_1955 <- as.data.frame(pcp_1955$prcp_Livneh_County_dy)
pcp_1956 <- as.data.frame(pcp_1956$prcp_Livneh_County_dy)
pcp_1957 <- as.data.frame(pcp_1957$prcp_Livneh_County_dy)
pcp_1958 <- as.data.frame(pcp_1958$prcp_Livneh_County_dy)
pcp_1959 <- as.data.frame(pcp_1959$prcp_Livneh_County_dy)
pcp_1960 <- as.data.frame(pcp_1960$prcp_Livneh_County_dy)
pcp_1961 <- as.data.frame(pcp_1961$prcp_Livneh_County_dy)
pcp_1962 <- as.data.frame(pcp_1962$prcp_Livneh_County_dy)
pcp_1963 <- as.data.frame(pcp_1963$prcp_Livneh_County_dy)
pcp_1964 <- as.data.frame(pcp_1964$prcp_Livneh_County_dy)
pcp_1965 <- as.data.frame(pcp_1965$prcp_Livneh_County_dy)
pcp_1966 <- as.data.frame(pcp_1966$prcp_Livneh_County_dy)
pcp_1967 <- as.data.frame(pcp_1967$prcp_Livneh_County_dy)
pcp_1968 <- as.data.frame(pcp_1968$prcp_Livneh_County_dy)
pcp_1969 <- as.data.frame(pcp_1969$prcp_Livneh_County_dy)
pcp_1970 <- as.data.frame(pcp_1970$prcp_Livneh_County_dy)
pcp_1971 <- as.data.frame(pcp_1971$prcp_Livneh_County_dy)
pcp_1972 <- as.data.frame(pcp_1972$prcp_Livneh_County_dy)
pcp_1973 <- as.data.frame(pcp_1973$prcp_Livneh_County_dy)
pcp_1974 <- as.data.frame(pcp_1974$prcp_Livneh_County_dy)
pcp_1975 <- as.data.frame(pcp_1975$prcp_Livneh_County_dy)
pcp_1976 <- as.data.frame(pcp_1976$prcp_Livneh_County_dy)
pcp_1977 <- as.data.frame(pcp_1977$prcp_Livneh_County_dy)
pcp_1978 <- as.data.frame(pcp_1978$prcp_Livneh_County_dy)
pcp_1979 <- as.data.frame(pcp_1979$prcp_Livneh_County_dy)
pcp_1980 <- as.data.frame(pcp_1980$prcp_Livneh_County_dy)
pcp_1981 <- as.data.frame(pcp_1981$prcp_Livneh_County_dy)
pcp_1982 <- as.data.frame(pcp_1982$prcp_Livneh_County_dy)
pcp_1983 <- as.data.frame(pcp_1983$prcp_Livneh_County_dy)
pcp_1984 <- as.data.frame(pcp_1984$prcp_Livneh_County_dy)
pcp_1985 <- as.data.frame(pcp_1985$prcp_Livneh_County_dy)
pcp_1986 <- as.data.frame(pcp_1986$prcp_Livneh_County_dy)
pcp_1987 <- as.data.frame(pcp_1987$prcp_Livneh_County_dy)
pcp_1988 <- as.data.frame(pcp_1988$prcp_Livneh_County_dy)
pcp_1989 <- as.data.frame(pcp_1989$prcp_Livneh_County_dy)
pcp_1990 <- as.data.frame(pcp_1990$prcp_Livneh_County_dy)
pcp_1991 <- as.data.frame(pcp_1991$prcp_Livneh_County_dy)
pcp_1992 <- as.data.frame(pcp_1992$prcp_Livneh_County_dy)
pcp_1993 <- as.data.frame(pcp_1993$prcp_Livneh_County_dy)
pcp_1994 <- as.data.frame(pcp_1994$prcp_Livneh_County_dy)
pcp_1995 <- as.data.frame(pcp_1995$prcp_Livneh_County_dy)
pcp_1996 <- as.data.frame(pcp_1996$prcp_Livneh_County_dy)
pcp_1997 <- as.data.frame(pcp_1997$prcp_Livneh_County_dy)
pcp_1998 <- as.data.frame(pcp_1998$prcp_Livneh_County_dy)
pcp_1999 <- as.data.frame(pcp_1999$prcp_Livneh_County_dy)
pcp_2000 <- as.data.frame(pcp_2000$prcp_Livneh_County_dy)
pcp_2001 <- as.data.frame(pcp_2001$prcp_Livneh_County_dy)
pcp_2002 <- as.data.frame(pcp_2002$prcp_Livneh_County_dy)
pcp_2003 <- as.data.frame(pcp_2003$prcp_Livneh_County_dy)
pcp_2004 <- as.data.frame(pcp_2004$prcp_Livneh_County_dy)
pcp_2005 <- as.data.frame(pcp_2005$prcp_Livneh_County_dy)
pcp_2006 <- as.data.frame(pcp_2006$prcp_Livneh_County_dy)
pcp_2007 <- as.data.frame(pcp_2007$prcp_Livneh_County_dy)
pcp_2008 <- as.data.frame(pcp_2008$prcp_Livneh_County_dy)
pcp_2009 <- as.data.frame(pcp_2009$prcp_Livneh_County_dy)
pcp_2010 <- as.data.frame(pcp_2010$prcp_Livneh_County_dy)
pcp_2011 <- as.data.frame(pcp_2011$prcp_Livneh_County_dy)
pcp_2012 <- as.data.frame(pcp_2012$prcp_Livneh_County_dy)
pcp_2013 <- as.data.frame(pcp_2013$prcp_Livneh_County_dy)


pcp_1950 <- cbind(pcp_GEOID, pcp_1950)
pcp_1951 <- cbind(pcp_GEOID, pcp_1951)
pcp_1952 <- cbind(pcp_GEOID, pcp_1952)
pcp_1953 <- cbind(pcp_GEOID, pcp_1953)
pcp_1954 <- cbind(pcp_GEOID, pcp_1954)
pcp_1955 <- cbind(pcp_GEOID, pcp_1955)
pcp_1956 <- cbind(pcp_GEOID, pcp_1956)
pcp_1957 <- cbind(pcp_GEOID, pcp_1957)
pcp_1958 <- cbind(pcp_GEOID, pcp_1958)
pcp_1959 <- cbind(pcp_GEOID, pcp_1959)
pcp_1960 <- cbind(pcp_GEOID, pcp_1960)
pcp_1961 <- cbind(pcp_GEOID, pcp_1961)
pcp_1962 <- cbind(pcp_GEOID, pcp_1962)
pcp_1963 <- cbind(pcp_GEOID, pcp_1963)
pcp_1964 <- cbind(pcp_GEOID, pcp_1964)
pcp_1965 <- cbind(pcp_GEOID, pcp_1965)
pcp_1966 <- cbind(pcp_GEOID, pcp_1966)
pcp_1967 <- cbind(pcp_GEOID, pcp_1967)
pcp_1968 <- cbind(pcp_GEOID, pcp_1968)
pcp_1969 <- cbind(pcp_GEOID, pcp_1969)
pcp_1970 <- cbind(pcp_GEOID, pcp_1970)
pcp_1971 <- cbind(pcp_GEOID, pcp_1971)
pcp_1972 <- cbind(pcp_GEOID, pcp_1972)
pcp_1973 <- cbind(pcp_GEOID, pcp_1973)
pcp_1974 <- cbind(pcp_GEOID, pcp_1974)
pcp_1975 <- cbind(pcp_GEOID, pcp_1975)
pcp_1976 <- cbind(pcp_GEOID, pcp_1976)
pcp_1977 <- cbind(pcp_GEOID, pcp_1977)
pcp_1978 <- cbind(pcp_GEOID, pcp_1978)
pcp_1979 <- cbind(pcp_GEOID, pcp_1979)
pcp_1980 <- cbind(pcp_GEOID, pcp_1980)
pcp_1981 <- cbind(pcp_GEOID, pcp_1981)
pcp_1982 <- cbind(pcp_GEOID, pcp_1982)
pcp_1983 <- cbind(pcp_GEOID, pcp_1983)
pcp_1984 <- cbind(pcp_GEOID, pcp_1984)
pcp_1985 <- cbind(pcp_GEOID, pcp_1985)
pcp_1986 <- cbind(pcp_GEOID, pcp_1986)
pcp_1987 <- cbind(pcp_GEOID, pcp_1987)
pcp_1988 <- cbind(pcp_GEOID, pcp_1988)
pcp_1989 <- cbind(pcp_GEOID, pcp_1989)
pcp_1990 <- cbind(pcp_GEOID, pcp_1990)
pcp_1991 <- cbind(pcp_GEOID, pcp_1991)
pcp_1992 <- cbind(pcp_GEOID, pcp_1992)
pcp_1993 <- cbind(pcp_GEOID, pcp_1993)
pcp_1994 <- cbind(pcp_GEOID, pcp_1994)
pcp_1995 <- cbind(pcp_GEOID, pcp_1995)
pcp_1996 <- cbind(pcp_GEOID, pcp_1996)
pcp_1997 <- cbind(pcp_GEOID, pcp_1997)
pcp_1998 <- cbind(pcp_GEOID, pcp_1998)
pcp_1999 <- cbind(pcp_GEOID, pcp_1999)
pcp_2000 <- cbind(pcp_GEOID, pcp_2000)
pcp_2001 <- cbind(pcp_GEOID, pcp_2001)
pcp_2002 <- cbind(pcp_GEOID, pcp_2002)
pcp_2003 <- cbind(pcp_GEOID, pcp_2003)
pcp_2004 <- cbind(pcp_GEOID, pcp_2004)
pcp_2005 <- cbind(pcp_GEOID, pcp_2005)
pcp_2006 <- cbind(pcp_GEOID, pcp_2006)
pcp_2007 <- cbind(pcp_GEOID, pcp_2007)
pcp_2008 <- cbind(pcp_GEOID, pcp_2008)
pcp_2009 <- cbind(pcp_GEOID, pcp_2009)
pcp_2010 <- cbind(pcp_GEOID, pcp_2010)
pcp_2011 <- cbind(pcp_GEOID, pcp_2011)
pcp_2012 <- cbind(pcp_GEOID, pcp_2012)
pcp_2013 <- cbind(pcp_GEOID, pcp_2013)

pcp_1950 <- merge(GEOID, pcp_1950,by="GEOID")
pcp_1951 <- merge(GEOID, pcp_1951,by="GEOID")
pcp_1952 <- merge(GEOID, pcp_1952,by="GEOID")
pcp_1953 <- merge(GEOID, pcp_1953,by="GEOID")
pcp_1954 <- merge(GEOID, pcp_1954,by="GEOID")
pcp_1955 <- merge(GEOID, pcp_1955,by="GEOID")
pcp_1956 <- merge(GEOID, pcp_1956,by="GEOID")
pcp_1957 <- merge(GEOID, pcp_1957,by="GEOID")
pcp_1958 <- merge(GEOID, pcp_1958,by="GEOID")
pcp_1959 <- merge(GEOID, pcp_1959,by="GEOID")
pcp_1960 <- merge(GEOID, pcp_1960,by="GEOID")
pcp_1961 <- merge(GEOID, pcp_1961,by="GEOID")
pcp_1962 <- merge(GEOID, pcp_1962,by="GEOID")
pcp_1963 <- merge(GEOID, pcp_1963,by="GEOID")
pcp_1964 <- merge(GEOID, pcp_1964,by="GEOID")
pcp_1965 <- merge(GEOID, pcp_1965,by="GEOID")
pcp_1966 <- merge(GEOID, pcp_1966,by="GEOID")
pcp_1967 <- merge(GEOID, pcp_1967,by="GEOID")
pcp_1968 <- merge(GEOID, pcp_1968,by="GEOID")
pcp_1969 <- merge(GEOID, pcp_1969,by="GEOID")
pcp_1970 <- merge(GEOID, pcp_1970,by="GEOID")
pcp_1971 <- merge(GEOID, pcp_1971,by="GEOID")
pcp_1972 <- merge(GEOID, pcp_1972,by="GEOID")
pcp_1973 <- merge(GEOID, pcp_1973,by="GEOID")
pcp_1974 <- merge(GEOID, pcp_1974,by="GEOID")
pcp_1975 <- merge(GEOID, pcp_1975,by="GEOID")
pcp_1976 <- merge(GEOID, pcp_1976,by="GEOID")
pcp_1977 <- merge(GEOID, pcp_1977,by="GEOID")
pcp_1978 <- merge(GEOID, pcp_1978,by="GEOID")
pcp_1979 <- merge(GEOID, pcp_1979,by="GEOID")
pcp_1980 <- merge(GEOID, pcp_1980,by="GEOID")
pcp_1981 <- merge(GEOID, pcp_1981,by="GEOID")
pcp_1982 <- merge(GEOID, pcp_1982,by="GEOID")
pcp_1983 <- merge(GEOID, pcp_1983,by="GEOID")
pcp_1984 <- merge(GEOID, pcp_1984,by="GEOID")
pcp_1985 <- merge(GEOID, pcp_1985,by="GEOID")
pcp_1986 <- merge(GEOID, pcp_1986,by="GEOID")
pcp_1987 <- merge(GEOID, pcp_1987,by="GEOID")
pcp_1988 <- merge(GEOID, pcp_1988,by="GEOID")
pcp_1989 <- merge(GEOID, pcp_1989,by="GEOID")
pcp_1990 <- merge(GEOID, pcp_1990,by="GEOID")
pcp_1991 <- merge(GEOID, pcp_1991,by="GEOID")
pcp_1992 <- merge(GEOID, pcp_1992,by="GEOID")
pcp_1993 <- merge(GEOID, pcp_1993,by="GEOID")
pcp_1994 <- merge(GEOID, pcp_1994,by="GEOID")
pcp_1995 <- merge(GEOID, pcp_1995,by="GEOID")
pcp_1996 <- merge(GEOID, pcp_1996,by="GEOID")
pcp_1997 <- merge(GEOID, pcp_1997,by="GEOID")
pcp_1998 <- merge(GEOID, pcp_1998,by="GEOID")
pcp_1999 <- merge(GEOID, pcp_1999,by="GEOID")
pcp_2000 <- merge(GEOID, pcp_2000,by="GEOID")
pcp_2001 <- merge(GEOID, pcp_2001,by="GEOID")
pcp_2002 <- merge(GEOID, pcp_2002,by="GEOID")
pcp_2003 <- merge(GEOID, pcp_2003,by="GEOID")
pcp_2004 <- merge(GEOID, pcp_2004,by="GEOID")
pcp_2005 <- merge(GEOID, pcp_2005,by="GEOID")
pcp_2006 <- merge(GEOID, pcp_2006,by="GEOID")
pcp_2007 <- merge(GEOID, pcp_2007,by="GEOID")
pcp_2008 <- merge(GEOID, pcp_2008,by="GEOID")
pcp_2009 <- merge(GEOID, pcp_2009,by="GEOID")
pcp_2010 <- merge(GEOID, pcp_2010,by="GEOID")
pcp_2011 <- merge(GEOID, pcp_2011,by="GEOID")
pcp_2012 <- merge(GEOID, pcp_2012,by="GEOID")
pcp_2013 <- merge(GEOID, pcp_2013,by="GEOID")

pcp_1950 <- pcp_1950[c(2:366)]
pcp_1951 <- pcp_1951[c(2:366)]
pcp_1952 <- pcp_1952[c(2:367)]
pcp_1953 <- pcp_1953[c(2:366)]
pcp_1954 <- pcp_1954[c(2:366)]
pcp_1955 <- pcp_1955[c(2:366)]
pcp_1956 <- pcp_1956[c(2:367)]
pcp_1957 <- pcp_1957[c(2:366)]
pcp_1958 <- pcp_1958[c(2:366)]
pcp_1959 <- pcp_1959[c(2:366)]
pcp_1960 <- pcp_1960[c(2:367)]
pcp_1961 <- pcp_1961[c(2:366)]
pcp_1962 <- pcp_1962[c(2:366)]
pcp_1963 <- pcp_1963[c(2:366)]
pcp_1964 <- pcp_1964[c(2:367)]
pcp_1965 <- pcp_1965[c(2:366)]
pcp_1966 <- pcp_1966[c(2:366)]
pcp_1967 <- pcp_1967[c(2:366)]
pcp_1968 <- pcp_1968[c(2:367)]
pcp_1969 <- pcp_1969[c(2:366)]
pcp_1970 <- pcp_1970[c(2:366)]
pcp_1971 <- pcp_1971[c(2:366)]
pcp_1972 <- pcp_1972[c(2:367)]
pcp_1973 <- pcp_1973[c(2:366)]
pcp_1974 <- pcp_1974[c(2:366)]
pcp_1975 <- pcp_1975[c(2:366)]
pcp_1976 <- pcp_1976[c(2:367)]
pcp_1977 <- pcp_1977[c(2:366)]
pcp_1978 <- pcp_1978[c(2:366)]
pcp_1979 <- pcp_1979[c(2:366)]
pcp_1980 <- pcp_1980[c(2:367)]
pcp_1981 <- pcp_1981[c(2:366)]
pcp_1982 <- pcp_1982[c(2:366)]
pcp_1983 <- pcp_1983[c(2:366)]
pcp_1984 <- pcp_1984[c(2:367)]
pcp_1985 <- pcp_1985[c(2:366)]
pcp_1986 <- pcp_1986[c(2:366)]
pcp_1987 <- pcp_1987[c(2:366)]
pcp_1988 <- pcp_1988[c(2:367)]
pcp_1989 <- pcp_1989[c(2:366)]
pcp_1990 <- pcp_1990[c(2:366)]
pcp_1991 <- pcp_1991[c(2:366)]
pcp_1992 <- pcp_1992[c(2:367)]
pcp_1993 <- pcp_1993[c(2:366)]
pcp_1994 <- pcp_1994[c(2:366)]
pcp_1995 <- pcp_1995[c(2:366)]
pcp_1996 <- pcp_1996[c(2:367)]
pcp_1997 <- pcp_1997[c(2:366)]
pcp_1998 <- pcp_1998[c(2:366)]
pcp_1999 <- pcp_1999[c(2:366)]
pcp_2000 <- pcp_2000[c(2:367)]
pcp_2001 <- pcp_2001[c(2:366)]
pcp_2002 <- pcp_2002[c(2:366)]
pcp_2003 <- pcp_2003[c(2:366)]
pcp_2004 <- pcp_2004[c(2:367)]
pcp_2005 <- pcp_2005[c(2:366)]
pcp_2006 <- pcp_2006[c(2:366)]
pcp_2007 <- pcp_2007[c(2:366)]
pcp_2008 <- pcp_2008[c(2:367)]
pcp_2009 <- pcp_2009[c(2:366)]
pcp_2010 <- pcp_2010[c(2:366)]
pcp_2011 <- pcp_2011[c(2:366)]
pcp_2012 <- pcp_2012[c(2:367)]
pcp_2013 <- pcp_2013[c(2:366)]


dsoil_1950 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1950.mat")
dsoil_1951 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1951.mat")
dsoil_1952 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1952.mat")
dsoil_1953 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1953.mat")
dsoil_1954 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1954.mat")
dsoil_1955 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1955.mat")
dsoil_1956 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1956.mat")
dsoil_1957 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1957.mat")
dsoil_1958 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1958.mat")
dsoil_1959 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1959.mat")
dsoil_1960 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1960.mat")
dsoil_1961 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1961.mat")
dsoil_1962 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1962.mat")
dsoil_1963 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1963.mat")
dsoil_1964 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1964.mat")
dsoil_1965 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1965.mat")
dsoil_1966 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1966.mat")
dsoil_1967 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1967.mat")
dsoil_1968 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1968.mat")
dsoil_1969 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1969.mat")
dsoil_1970 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1970.mat")
dsoil_1971 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1971.mat")
dsoil_1972 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1972.mat")
dsoil_1973 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1973.mat")
dsoil_1974 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1974.mat")
dsoil_1975 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1975.mat")
dsoil_1976 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1976.mat")
dsoil_1977 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1977.mat")
dsoil_1978 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1978.mat")
dsoil_1979 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1979.mat")
dsoil_1980 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1980.mat")
dsoil_1981 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1981.mat")
dsoil_1982 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1982.mat")
dsoil_1983 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1983.mat")
dsoil_1984 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1984.mat")
dsoil_1985 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1985.mat")
dsoil_1986 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1986.mat")
dsoil_1987 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1987.mat")
dsoil_1988 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1988.mat")
dsoil_1989 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1989.mat")
dsoil_1990 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1990.mat")
dsoil_1991 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1991.mat")
dsoil_1992 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1992.mat")
dsoil_1993 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1993.mat")
dsoil_1994 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1994.mat")
dsoil_1995 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1995.mat")
dsoil_1996 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1996.mat")
dsoil_1997 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1997.mat")
dsoil_1998 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1998.mat")
dsoil_1999 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_1999.mat")
dsoil_2000 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_2000.mat")
dsoil_2001 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_2001.mat")
dsoil_2002 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_2002.mat")
dsoil_2003 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_2003.mat")
dsoil_2004 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_2004.mat")
dsoil_2005 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_2005.mat")
dsoil_2006 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_2006.mat")
dsoil_2007 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_2007.mat")
dsoil_2008 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_2008.mat")
dsoil_2009 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_2009.mat")
dsoil_2010 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_2010.mat")
dsoil_2011 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_2011.mat")
dsoil_2012 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_2012.mat")
dsoil_2013 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_dSoilMoist/Livneh_County_dSoilMoist_2013.mat")


dsoil_1950 <- as.data.frame(dsoil_1950$dSoilMoist_Livneh_County_dy)
dsoil_1951 <- as.data.frame(dsoil_1951$dSoilMoist_Livneh_County_dy)
dsoil_1952 <- as.data.frame(dsoil_1952$dSoilMoist_Livneh_County_dy)
dsoil_1953 <- as.data.frame(dsoil_1953$dSoilMoist_Livneh_County_dy)
dsoil_1954 <- as.data.frame(dsoil_1954$dSoilMoist_Livneh_County_dy)
dsoil_1955 <- as.data.frame(dsoil_1955$dSoilMoist_Livneh_County_dy)
dsoil_1956 <- as.data.frame(dsoil_1956$dSoilMoist_Livneh_County_dy)
dsoil_1957 <- as.data.frame(dsoil_1957$dSoilMoist_Livneh_County_dy)
dsoil_1958 <- as.data.frame(dsoil_1958$dSoilMoist_Livneh_County_dy)
dsoil_1959 <- as.data.frame(dsoil_1959$dSoilMoist_Livneh_County_dy)
dsoil_1960 <- as.data.frame(dsoil_1960$dSoilMoist_Livneh_County_dy)
dsoil_1961 <- as.data.frame(dsoil_1961$dSoilMoist_Livneh_County_dy)
dsoil_1962 <- as.data.frame(dsoil_1962$dSoilMoist_Livneh_County_dy)
dsoil_1963 <- as.data.frame(dsoil_1963$dSoilMoist_Livneh_County_dy)
dsoil_1964 <- as.data.frame(dsoil_1964$dSoilMoist_Livneh_County_dy)
dsoil_1965 <- as.data.frame(dsoil_1965$dSoilMoist_Livneh_County_dy)
dsoil_1966 <- as.data.frame(dsoil_1966$dSoilMoist_Livneh_County_dy)
dsoil_1967 <- as.data.frame(dsoil_1967$dSoilMoist_Livneh_County_dy)
dsoil_1968 <- as.data.frame(dsoil_1968$dSoilMoist_Livneh_County_dy)
dsoil_1969 <- as.data.frame(dsoil_1969$dSoilMoist_Livneh_County_dy)
dsoil_1970 <- as.data.frame(dsoil_1970$dSoilMoist_Livneh_County_dy)
dsoil_1971 <- as.data.frame(dsoil_1971$dSoilMoist_Livneh_County_dy)
dsoil_1972 <- as.data.frame(dsoil_1972$dSoilMoist_Livneh_County_dy)
dsoil_1973 <- as.data.frame(dsoil_1973$dSoilMoist_Livneh_County_dy)
dsoil_1974 <- as.data.frame(dsoil_1974$dSoilMoist_Livneh_County_dy)
dsoil_1975 <- as.data.frame(dsoil_1975$dSoilMoist_Livneh_County_dy)
dsoil_1976 <- as.data.frame(dsoil_1976$dSoilMoist_Livneh_County_dy)
dsoil_1977 <- as.data.frame(dsoil_1977$dSoilMoist_Livneh_County_dy)
dsoil_1978 <- as.data.frame(dsoil_1978$dSoilMoist_Livneh_County_dy)
dsoil_1979 <- as.data.frame(dsoil_1979$dSoilMoist_Livneh_County_dy)
dsoil_1980 <- as.data.frame(dsoil_1980$dSoilMoist_Livneh_County_dy)
dsoil_1981 <- as.data.frame(dsoil_1981$dSoilMoist_Livneh_County_dy)
dsoil_1982 <- as.data.frame(dsoil_1982$dSoilMoist_Livneh_County_dy)
dsoil_1983 <- as.data.frame(dsoil_1983$dSoilMoist_Livneh_County_dy)
dsoil_1984 <- as.data.frame(dsoil_1984$dSoilMoist_Livneh_County_dy)
dsoil_1985 <- as.data.frame(dsoil_1985$dSoilMoist_Livneh_County_dy)
dsoil_1986 <- as.data.frame(dsoil_1986$dSoilMoist_Livneh_County_dy)
dsoil_1987 <- as.data.frame(dsoil_1987$dSoilMoist_Livneh_County_dy)
dsoil_1988 <- as.data.frame(dsoil_1988$dSoilMoist_Livneh_County_dy)
dsoil_1989 <- as.data.frame(dsoil_1989$dSoilMoist_Livneh_County_dy)
dsoil_1990 <- as.data.frame(dsoil_1990$dSoilMoist_Livneh_County_dy)
dsoil_1991 <- as.data.frame(dsoil_1991$dSoilMoist_Livneh_County_dy)
dsoil_1992 <- as.data.frame(dsoil_1992$dSoilMoist_Livneh_County_dy)
dsoil_1993 <- as.data.frame(dsoil_1993$dSoilMoist_Livneh_County_dy)
dsoil_1994 <- as.data.frame(dsoil_1994$dSoilMoist_Livneh_County_dy)
dsoil_1995 <- as.data.frame(dsoil_1995$dSoilMoist_Livneh_County_dy)
dsoil_1996 <- as.data.frame(dsoil_1996$dSoilMoist_Livneh_County_dy)
dsoil_1997 <- as.data.frame(dsoil_1997$dSoilMoist_Livneh_County_dy)
dsoil_1998 <- as.data.frame(dsoil_1998$dSoilMoist_Livneh_County_dy)
dsoil_1999 <- as.data.frame(dsoil_1999$dSoilMoist_Livneh_County_dy)
dsoil_2000 <- as.data.frame(dsoil_2000$dSoilMoist_Livneh_County_dy)
dsoil_2001 <- as.data.frame(dsoil_2001$dSoilMoist_Livneh_County_dy)
dsoil_2002 <- as.data.frame(dsoil_2002$dSoilMoist_Livneh_County_dy)
dsoil_2003 <- as.data.frame(dsoil_2003$dSoilMoist_Livneh_County_dy)
dsoil_2004 <- as.data.frame(dsoil_2004$dSoilMoist_Livneh_County_dy)
dsoil_2005 <- as.data.frame(dsoil_2005$dSoilMoist_Livneh_County_dy)
dsoil_2006 <- as.data.frame(dsoil_2006$dSoilMoist_Livneh_County_dy)
dsoil_2007 <- as.data.frame(dsoil_2007$dSoilMoist_Livneh_County_dy)
dsoil_2008 <- as.data.frame(dsoil_2008$dSoilMoist_Livneh_County_dy)
dsoil_2009 <- as.data.frame(dsoil_2009$dSoilMoist_Livneh_County_dy)
dsoil_2010 <- as.data.frame(dsoil_2010$dSoilMoist_Livneh_County_dy)
dsoil_2011 <- as.data.frame(dsoil_2011$dSoilMoist_Livneh_County_dy)
dsoil_2012 <- as.data.frame(dsoil_2012$dSoilMoist_Livneh_County_dy)
dsoil_2013 <- as.data.frame(dsoil_2013$dSoilMoist_Livneh_County_dy)


dsoil_1950 <- cbind(pcp_GEOID, dsoil_1950)
dsoil_1951 <- cbind(pcp_GEOID, dsoil_1951)
dsoil_1952 <- cbind(pcp_GEOID, dsoil_1952)
dsoil_1953 <- cbind(pcp_GEOID, dsoil_1953)
dsoil_1954 <- cbind(pcp_GEOID, dsoil_1954)
dsoil_1955 <- cbind(pcp_GEOID, dsoil_1955)
dsoil_1956 <- cbind(pcp_GEOID, dsoil_1956)
dsoil_1957 <- cbind(pcp_GEOID, dsoil_1957)
dsoil_1958 <- cbind(pcp_GEOID, dsoil_1958)
dsoil_1959 <- cbind(pcp_GEOID, dsoil_1959)
dsoil_1960 <- cbind(pcp_GEOID, dsoil_1960)
dsoil_1961 <- cbind(pcp_GEOID, dsoil_1961)
dsoil_1962 <- cbind(pcp_GEOID, dsoil_1962)
dsoil_1963 <- cbind(pcp_GEOID, dsoil_1963)
dsoil_1964 <- cbind(pcp_GEOID, dsoil_1964)
dsoil_1965 <- cbind(pcp_GEOID, dsoil_1965)
dsoil_1966 <- cbind(pcp_GEOID, dsoil_1966)
dsoil_1967 <- cbind(pcp_GEOID, dsoil_1967)
dsoil_1968 <- cbind(pcp_GEOID, dsoil_1968)
dsoil_1969 <- cbind(pcp_GEOID, dsoil_1969)
dsoil_1970 <- cbind(pcp_GEOID, dsoil_1970)
dsoil_1971 <- cbind(pcp_GEOID, dsoil_1971)
dsoil_1972 <- cbind(pcp_GEOID, dsoil_1972)
dsoil_1973 <- cbind(pcp_GEOID, dsoil_1973)
dsoil_1974 <- cbind(pcp_GEOID, dsoil_1974)
dsoil_1975 <- cbind(pcp_GEOID, dsoil_1975)
dsoil_1976 <- cbind(pcp_GEOID, dsoil_1976)
dsoil_1977 <- cbind(pcp_GEOID, dsoil_1977)
dsoil_1978 <- cbind(pcp_GEOID, dsoil_1978)
dsoil_1979 <- cbind(pcp_GEOID, dsoil_1979)
dsoil_1980 <- cbind(pcp_GEOID, dsoil_1980)
dsoil_1981 <- cbind(pcp_GEOID, dsoil_1981)
dsoil_1982 <- cbind(pcp_GEOID, dsoil_1982)
dsoil_1983 <- cbind(pcp_GEOID, dsoil_1983)
dsoil_1984 <- cbind(pcp_GEOID, dsoil_1984)
dsoil_1985 <- cbind(pcp_GEOID, dsoil_1985)
dsoil_1986 <- cbind(pcp_GEOID, dsoil_1986)
dsoil_1987 <- cbind(pcp_GEOID, dsoil_1987)
dsoil_1988 <- cbind(pcp_GEOID, dsoil_1988)
dsoil_1989 <- cbind(pcp_GEOID, dsoil_1989)
dsoil_1990 <- cbind(pcp_GEOID, dsoil_1990)
dsoil_1991 <- cbind(pcp_GEOID, dsoil_1991)
dsoil_1992 <- cbind(pcp_GEOID, dsoil_1992)
dsoil_1993 <- cbind(pcp_GEOID, dsoil_1993)
dsoil_1994 <- cbind(pcp_GEOID, dsoil_1994)
dsoil_1995 <- cbind(pcp_GEOID, dsoil_1995)
dsoil_1996 <- cbind(pcp_GEOID, dsoil_1996)
dsoil_1997 <- cbind(pcp_GEOID, dsoil_1997)
dsoil_1998 <- cbind(pcp_GEOID, dsoil_1998)
dsoil_1999 <- cbind(pcp_GEOID, dsoil_1999)
dsoil_2000 <- cbind(pcp_GEOID, dsoil_2000)
dsoil_2001 <- cbind(pcp_GEOID, dsoil_2001)
dsoil_2002 <- cbind(pcp_GEOID, dsoil_2002)
dsoil_2003 <- cbind(pcp_GEOID, dsoil_2003)
dsoil_2004 <- cbind(pcp_GEOID, dsoil_2004)
dsoil_2005 <- cbind(pcp_GEOID, dsoil_2005)
dsoil_2006 <- cbind(pcp_GEOID, dsoil_2006)
dsoil_2007 <- cbind(pcp_GEOID, dsoil_2007)
dsoil_2008 <- cbind(pcp_GEOID, dsoil_2008)
dsoil_2009 <- cbind(pcp_GEOID, dsoil_2009)
dsoil_2010 <- cbind(pcp_GEOID, dsoil_2010)
dsoil_2011 <- cbind(pcp_GEOID, dsoil_2011)
dsoil_2012 <- cbind(pcp_GEOID, dsoil_2012)
dsoil_2013 <- cbind(pcp_GEOID, dsoil_2013)



dsoil_1950 <- merge(GEOID, dsoil_1950,by="GEOID")
dsoil_1951 <- merge(GEOID, dsoil_1951,by="GEOID")
dsoil_1952 <- merge(GEOID, dsoil_1952,by="GEOID")
dsoil_1953 <- merge(GEOID, dsoil_1953,by="GEOID")
dsoil_1954 <- merge(GEOID, dsoil_1954,by="GEOID")
dsoil_1955 <- merge(GEOID, dsoil_1955,by="GEOID")
dsoil_1956 <- merge(GEOID, dsoil_1956,by="GEOID")
dsoil_1957 <- merge(GEOID, dsoil_1957,by="GEOID")
dsoil_1958 <- merge(GEOID, dsoil_1958,by="GEOID")
dsoil_1959 <- merge(GEOID, dsoil_1959,by="GEOID")
dsoil_1960 <- merge(GEOID, dsoil_1960,by="GEOID")
dsoil_1961 <- merge(GEOID, dsoil_1961,by="GEOID")
dsoil_1962 <- merge(GEOID, dsoil_1962,by="GEOID")
dsoil_1963 <- merge(GEOID, dsoil_1963,by="GEOID")
dsoil_1964 <- merge(GEOID, dsoil_1964,by="GEOID")
dsoil_1965 <- merge(GEOID, dsoil_1965,by="GEOID")
dsoil_1966 <- merge(GEOID, dsoil_1966,by="GEOID")
dsoil_1967 <- merge(GEOID, dsoil_1967,by="GEOID")
dsoil_1968 <- merge(GEOID, dsoil_1968,by="GEOID")
dsoil_1969 <- merge(GEOID, dsoil_1969,by="GEOID")
dsoil_1970 <- merge(GEOID, dsoil_1970,by="GEOID")
dsoil_1971 <- merge(GEOID, dsoil_1971,by="GEOID")
dsoil_1972 <- merge(GEOID, dsoil_1972,by="GEOID")
dsoil_1973 <- merge(GEOID, dsoil_1973,by="GEOID")
dsoil_1974 <- merge(GEOID, dsoil_1974,by="GEOID")
dsoil_1975 <- merge(GEOID, dsoil_1975,by="GEOID")
dsoil_1976 <- merge(GEOID, dsoil_1976,by="GEOID")
dsoil_1977 <- merge(GEOID, dsoil_1977,by="GEOID")
dsoil_1978 <- merge(GEOID, dsoil_1978,by="GEOID")
dsoil_1979 <- merge(GEOID, dsoil_1979,by="GEOID")
dsoil_1980 <- merge(GEOID, dsoil_1980,by="GEOID")
dsoil_1981 <- merge(GEOID, dsoil_1981,by="GEOID")
dsoil_1982 <- merge(GEOID, dsoil_1982,by="GEOID")
dsoil_1983 <- merge(GEOID, dsoil_1983,by="GEOID")
dsoil_1984 <- merge(GEOID, dsoil_1984,by="GEOID")
dsoil_1985 <- merge(GEOID, dsoil_1985,by="GEOID")
dsoil_1986 <- merge(GEOID, dsoil_1986,by="GEOID")
dsoil_1987 <- merge(GEOID, dsoil_1987,by="GEOID")
dsoil_1988 <- merge(GEOID, dsoil_1988,by="GEOID")
dsoil_1989 <- merge(GEOID, dsoil_1989,by="GEOID")
dsoil_1990 <- merge(GEOID, dsoil_1990,by="GEOID")
dsoil_1991 <- merge(GEOID, dsoil_1991,by="GEOID")
dsoil_1992 <- merge(GEOID, dsoil_1992,by="GEOID")
dsoil_1993 <- merge(GEOID, dsoil_1993,by="GEOID")
dsoil_1994 <- merge(GEOID, dsoil_1994,by="GEOID")
dsoil_1995 <- merge(GEOID, dsoil_1995,by="GEOID")
dsoil_1996 <- merge(GEOID, dsoil_1996,by="GEOID")
dsoil_1997 <- merge(GEOID, dsoil_1997,by="GEOID")
dsoil_1998 <- merge(GEOID, dsoil_1998,by="GEOID")
dsoil_1999 <- merge(GEOID, dsoil_1999,by="GEOID")
dsoil_2000 <- merge(GEOID, dsoil_2000,by="GEOID")
dsoil_2001 <- merge(GEOID, dsoil_2001,by="GEOID")
dsoil_2002 <- merge(GEOID, dsoil_2002,by="GEOID")
dsoil_2003 <- merge(GEOID, dsoil_2003,by="GEOID")
dsoil_2004 <- merge(GEOID, dsoil_2004,by="GEOID")
dsoil_2005 <- merge(GEOID, dsoil_2005,by="GEOID")
dsoil_2006 <- merge(GEOID, dsoil_2006,by="GEOID")
dsoil_2007 <- merge(GEOID, dsoil_2007,by="GEOID")
dsoil_2008 <- merge(GEOID, dsoil_2008,by="GEOID")
dsoil_2009 <- merge(GEOID, dsoil_2009,by="GEOID")
dsoil_2010 <- merge(GEOID, dsoil_2010,by="GEOID")
dsoil_2011 <- merge(GEOID, dsoil_2011,by="GEOID")
dsoil_2012 <- merge(GEOID, dsoil_2012,by="GEOID")
dsoil_2013 <- merge(GEOID, dsoil_2013,by="GEOID")


dsoil_1950 <- dsoil_1950[c(2:366)]
dsoil_1951 <- dsoil_1951[c(2:366)]
dsoil_1952 <- dsoil_1952[c(2:367)]
dsoil_1953 <- dsoil_1953[c(2:366)]
dsoil_1954 <- dsoil_1954[c(2:366)]
dsoil_1955 <- dsoil_1955[c(2:366)]
dsoil_1956 <- dsoil_1956[c(2:367)]
dsoil_1957 <- dsoil_1957[c(2:366)]
dsoil_1958 <- dsoil_1958[c(2:366)]
dsoil_1959 <- dsoil_1959[c(2:366)]
dsoil_1960 <- dsoil_1960[c(2:367)]
dsoil_1961 <- dsoil_1961[c(2:366)]
dsoil_1962 <- dsoil_1962[c(2:366)]
dsoil_1963 <- dsoil_1963[c(2:366)]
dsoil_1964 <- dsoil_1964[c(2:367)]
dsoil_1965 <- dsoil_1965[c(2:366)]
dsoil_1966 <- dsoil_1966[c(2:366)]
dsoil_1967 <- dsoil_1967[c(2:366)]
dsoil_1968 <- dsoil_1968[c(2:367)]
dsoil_1969 <- dsoil_1969[c(2:366)]
dsoil_1970 <- dsoil_1970[c(2:366)]
dsoil_1971 <- dsoil_1971[c(2:366)]
dsoil_1972 <- dsoil_1972[c(2:367)]
dsoil_1973 <- dsoil_1973[c(2:366)]
dsoil_1974 <- dsoil_1974[c(2:366)]
dsoil_1975 <- dsoil_1975[c(2:366)]
dsoil_1976 <- dsoil_1976[c(2:367)]
dsoil_1977 <- dsoil_1977[c(2:366)]
dsoil_1978 <- dsoil_1978[c(2:366)]
dsoil_1979 <- dsoil_1979[c(2:366)]
dsoil_1980 <- dsoil_1980[c(2:367)]
dsoil_1981 <- dsoil_1981[c(2:366)]
dsoil_1982 <- dsoil_1982[c(2:366)]
dsoil_1983 <- dsoil_1983[c(2:366)]
dsoil_1984 <- dsoil_1984[c(2:367)]
dsoil_1985 <- dsoil_1985[c(2:366)]
dsoil_1986 <- dsoil_1986[c(2:366)]
dsoil_1987 <- dsoil_1987[c(2:366)]
dsoil_1988 <- dsoil_1988[c(2:367)]
dsoil_1989 <- dsoil_1989[c(2:366)]
dsoil_1990 <- dsoil_1990[c(2:366)]
dsoil_1991 <- dsoil_1991[c(2:366)]
dsoil_1992 <- dsoil_1992[c(2:367)]
dsoil_1993 <- dsoil_1993[c(2:366)]
dsoil_1994 <- dsoil_1994[c(2:366)]
dsoil_1995 <- dsoil_1995[c(2:366)]
dsoil_1996 <- dsoil_1996[c(2:367)]
dsoil_1997 <- dsoil_1997[c(2:366)]
dsoil_1998 <- dsoil_1998[c(2:366)]
dsoil_1999 <- dsoil_1999[c(2:366)]
dsoil_2000 <- dsoil_2000[c(2:367)]
dsoil_2001 <- dsoil_2001[c(2:366)]
dsoil_2002 <- dsoil_2002[c(2:366)]
dsoil_2003 <- dsoil_2003[c(2:366)]
dsoil_2004 <- dsoil_2004[c(2:367)]
dsoil_2005 <- dsoil_2005[c(2:366)]
dsoil_2006 <- dsoil_2006[c(2:366)]
dsoil_2007 <- dsoil_2007[c(2:366)]
dsoil_2008 <- dsoil_2008[c(2:367)]
dsoil_2009 <- dsoil_2009[c(2:366)]
dsoil_2010 <- dsoil_2010[c(2:366)]
dsoil_2011 <- dsoil_2011[c(2:366)]
dsoil_2012 <- dsoil_2012[c(2:367)]
dsoil_2013 <- dsoil_2013[c(2:366)]


Q_1950 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1950.mat")
Q_1951 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1951.mat")
Q_1952 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1952.mat")
Q_1953 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1953.mat")
Q_1954 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1954.mat")
Q_1955 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1955.mat")
Q_1956 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1956.mat")
Q_1957 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1957.mat")
Q_1958 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1958.mat")
Q_1959 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1959.mat")
Q_1960 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1960.mat")
Q_1961 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1961.mat")
Q_1962 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1962.mat")
Q_1963 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1963.mat")
Q_1964 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1964.mat")
Q_1965 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1965.mat")
Q_1966 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1966.mat")
Q_1967 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1967.mat")
Q_1968 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1968.mat")
Q_1969 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1969.mat")
Q_1970 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1970.mat")
Q_1971 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1971.mat")
Q_1972 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1972.mat")
Q_1973 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1973.mat")
Q_1974 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1974.mat")
Q_1975 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1975.mat")
Q_1976 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1976.mat")
Q_1977 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1977.mat")
Q_1978 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1978.mat")
Q_1979 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1979.mat")
Q_1980 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1980.mat")
Q_1981 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1981.mat")
Q_1982 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1982.mat")
Q_1983 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1983.mat")
Q_1984 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1984.mat")
Q_1985 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1985.mat")
Q_1986 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1986.mat")
Q_1987 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1987.mat")
Q_1988 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1988.mat")
Q_1989 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1989.mat")
Q_1990 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1990.mat")
Q_1991 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1991.mat")
Q_1992 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1992.mat")
Q_1993 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1993.mat")
Q_1994 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1994.mat")
Q_1995 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1995.mat")
Q_1996 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1996.mat")
Q_1997 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1997.mat")
Q_1998 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1998.mat")
Q_1999 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_1999.mat")
Q_2000 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_2000.mat")
Q_2001 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_2001.mat")
Q_2002 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_2002.mat")
Q_2003 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_2003.mat")
Q_2004 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_2004.mat")
Q_2005 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_2005.mat")
Q_2006 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_2006.mat")
Q_2007 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_2007.mat")
Q_2008 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_2008.mat")
Q_2009 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_2009.mat")
Q_2010 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_2010.mat")
Q_2011 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_2011.mat")
Q_2012 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_2012.mat")
Q_2013 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_1950_2013/Livneh_County_Q (1)/Livneh_County_Q_2013.mat")


Q_1950 <- as.data.frame(Q_1950$Q_Livneh_County_dy)
Q_1951 <- as.data.frame(Q_1951$Q_Livneh_County_dy)
Q_1952 <- as.data.frame(Q_1952$Q_Livneh_County_dy)
Q_1953 <- as.data.frame(Q_1953$Q_Livneh_County_dy)
Q_1954 <- as.data.frame(Q_1954$Q_Livneh_County_dy)
Q_1955 <- as.data.frame(Q_1955$Q_Livneh_County_dy)
Q_1956 <- as.data.frame(Q_1956$Q_Livneh_County_dy)
Q_1957 <- as.data.frame(Q_1957$Q_Livneh_County_dy)
Q_1958 <- as.data.frame(Q_1958$Q_Livneh_County_dy)
Q_1959 <- as.data.frame(Q_1959$Q_Livneh_County_dy)
Q_1960 <- as.data.frame(Q_1960$Q_Livneh_County_dy)
Q_1961 <- as.data.frame(Q_1961$Q_Livneh_County_dy)
Q_1962 <- as.data.frame(Q_1962$Q_Livneh_County_dy)
Q_1963 <- as.data.frame(Q_1963$Q_Livneh_County_dy)
Q_1964 <- as.data.frame(Q_1964$Q_Livneh_County_dy)
Q_1965 <- as.data.frame(Q_1965$Q_Livneh_County_dy)
Q_1966 <- as.data.frame(Q_1966$Q_Livneh_County_dy)
Q_1967 <- as.data.frame(Q_1967$Q_Livneh_County_dy)
Q_1968 <- as.data.frame(Q_1968$Q_Livneh_County_dy)
Q_1969 <- as.data.frame(Q_1969$Q_Livneh_County_dy)
Q_1970 <- as.data.frame(Q_1970$Q_Livneh_County_dy)
Q_1971 <- as.data.frame(Q_1971$Q_Livneh_County_dy)
Q_1972 <- as.data.frame(Q_1972$Q_Livneh_County_dy)
Q_1973 <- as.data.frame(Q_1973$Q_Livneh_County_dy)
Q_1974 <- as.data.frame(Q_1974$Q_Livneh_County_dy)
Q_1975 <- as.data.frame(Q_1975$Q_Livneh_County_dy)
Q_1976 <- as.data.frame(Q_1976$Q_Livneh_County_dy)
Q_1977 <- as.data.frame(Q_1977$Q_Livneh_County_dy)
Q_1978 <- as.data.frame(Q_1978$Q_Livneh_County_dy)
Q_1979 <- as.data.frame(Q_1979$Q_Livneh_County_dy)
Q_1980 <- as.data.frame(Q_1980$Q_Livneh_County_dy)
Q_1981 <- as.data.frame(Q_1981$Q_Livneh_County_dy)
Q_1982 <- as.data.frame(Q_1982$Q_Livneh_County_dy)
Q_1983 <- as.data.frame(Q_1983$Q_Livneh_County_dy)
Q_1984 <- as.data.frame(Q_1984$Q_Livneh_County_dy)
Q_1985 <- as.data.frame(Q_1985$Q_Livneh_County_dy)
Q_1986 <- as.data.frame(Q_1986$Q_Livneh_County_dy)
Q_1987 <- as.data.frame(Q_1987$Q_Livneh_County_dy)
Q_1988 <- as.data.frame(Q_1988$Q_Livneh_County_dy)
Q_1989 <- as.data.frame(Q_1989$Q_Livneh_County_dy)
Q_1990 <- as.data.frame(Q_1990$Q_Livneh_County_dy)
Q_1991 <- as.data.frame(Q_1991$Q_Livneh_County_dy)
Q_1992 <- as.data.frame(Q_1992$Q_Livneh_County_dy)
Q_1993 <- as.data.frame(Q_1993$Q_Livneh_County_dy)
Q_1994 <- as.data.frame(Q_1994$Q_Livneh_County_dy)
Q_1995 <- as.data.frame(Q_1995$Q_Livneh_County_dy)
Q_1996 <- as.data.frame(Q_1996$Q_Livneh_County_dy)
Q_1997 <- as.data.frame(Q_1997$Q_Livneh_County_dy)
Q_1998 <- as.data.frame(Q_1998$Q_Livneh_County_dy)
Q_1999 <- as.data.frame(Q_1999$Q_Livneh_County_dy)
Q_2000 <- as.data.frame(Q_2000$Q_Livneh_County_dy)
Q_2001 <- as.data.frame(Q_2001$Q_Livneh_County_dy)
Q_2002 <- as.data.frame(Q_2002$Q_Livneh_County_dy)
Q_2003 <- as.data.frame(Q_2003$Q_Livneh_County_dy)
Q_2004 <- as.data.frame(Q_2004$Q_Livneh_County_dy)
Q_2005 <- as.data.frame(Q_2005$Q_Livneh_County_dy)
Q_2006 <- as.data.frame(Q_2006$Q_Livneh_County_dy)
Q_2007 <- as.data.frame(Q_2007$Q_Livneh_County_dy)
Q_2008 <- as.data.frame(Q_2008$Q_Livneh_County_dy)
Q_2009 <- as.data.frame(Q_2009$Q_Livneh_County_dy)
Q_2010 <- as.data.frame(Q_2010$Q_Livneh_County_dy)
Q_2011 <- as.data.frame(Q_2011$Q_Livneh_County_dy)
Q_2012 <- as.data.frame(Q_2012$Q_Livneh_County_dy)
Q_2013 <- as.data.frame(Q_2013$Q_Livneh_County_dy)


Q_1950 <- cbind(pcp_GEOID, Q_1950)
Q_1951 <- cbind(pcp_GEOID, Q_1951)
Q_1952 <- cbind(pcp_GEOID, Q_1952)
Q_1953 <- cbind(pcp_GEOID, Q_1953)
Q_1954 <- cbind(pcp_GEOID, Q_1954)
Q_1955 <- cbind(pcp_GEOID, Q_1955)
Q_1956 <- cbind(pcp_GEOID, Q_1956)
Q_1957 <- cbind(pcp_GEOID, Q_1957)
Q_1958 <- cbind(pcp_GEOID, Q_1958)
Q_1959 <- cbind(pcp_GEOID, Q_1959)
Q_1960 <- cbind(pcp_GEOID, Q_1960)
Q_1961 <- cbind(pcp_GEOID, Q_1961)
Q_1962 <- cbind(pcp_GEOID, Q_1962)
Q_1963 <- cbind(pcp_GEOID, Q_1963)
Q_1964 <- cbind(pcp_GEOID, Q_1964)
Q_1965 <- cbind(pcp_GEOID, Q_1965)
Q_1966 <- cbind(pcp_GEOID, Q_1966)
Q_1967 <- cbind(pcp_GEOID, Q_1967)
Q_1968 <- cbind(pcp_GEOID, Q_1968)
Q_1969 <- cbind(pcp_GEOID, Q_1969)
Q_1970 <- cbind(pcp_GEOID, Q_1970)
Q_1971 <- cbind(pcp_GEOID, Q_1971)
Q_1972 <- cbind(pcp_GEOID, Q_1972)
Q_1973 <- cbind(pcp_GEOID, Q_1973)
Q_1974 <- cbind(pcp_GEOID, Q_1974)
Q_1975 <- cbind(pcp_GEOID, Q_1975)
Q_1976 <- cbind(pcp_GEOID, Q_1976)
Q_1977 <- cbind(pcp_GEOID, Q_1977)
Q_1978 <- cbind(pcp_GEOID, Q_1978)
Q_1979 <- cbind(pcp_GEOID, Q_1979)
Q_1980 <- cbind(pcp_GEOID, Q_1980)
Q_1981 <- cbind(pcp_GEOID, Q_1981)
Q_1982 <- cbind(pcp_GEOID, Q_1982)
Q_1983 <- cbind(pcp_GEOID, Q_1983)
Q_1984 <- cbind(pcp_GEOID, Q_1984)
Q_1985 <- cbind(pcp_GEOID, Q_1985)
Q_1986 <- cbind(pcp_GEOID, Q_1986)
Q_1987 <- cbind(pcp_GEOID, Q_1987)
Q_1988 <- cbind(pcp_GEOID, Q_1988)
Q_1989 <- cbind(pcp_GEOID, Q_1989)
Q_1990 <- cbind(pcp_GEOID, Q_1990)
Q_1991 <- cbind(pcp_GEOID, Q_1991)
Q_1992 <- cbind(pcp_GEOID, Q_1992)
Q_1993 <- cbind(pcp_GEOID, Q_1993)
Q_1994 <- cbind(pcp_GEOID, Q_1994)
Q_1995 <- cbind(pcp_GEOID, Q_1995)
Q_1996 <- cbind(pcp_GEOID, Q_1996)
Q_1997 <- cbind(pcp_GEOID, Q_1997)
Q_1998 <- cbind(pcp_GEOID, Q_1998)
Q_1999 <- cbind(pcp_GEOID, Q_1999)
Q_2000 <- cbind(pcp_GEOID, Q_2000)
Q_2001 <- cbind(pcp_GEOID, Q_2001)
Q_2002 <- cbind(pcp_GEOID, Q_2002)
Q_2003 <- cbind(pcp_GEOID, Q_2003)
Q_2004 <- cbind(pcp_GEOID, Q_2004)
Q_2005 <- cbind(pcp_GEOID, Q_2005)
Q_2006 <- cbind(pcp_GEOID, Q_2006)
Q_2007 <- cbind(pcp_GEOID, Q_2007)
Q_2008 <- cbind(pcp_GEOID, Q_2008)
Q_2009 <- cbind(pcp_GEOID, Q_2009)
Q_2010 <- cbind(pcp_GEOID, Q_2010)
Q_2011 <- cbind(pcp_GEOID, Q_2011)
Q_2012 <- cbind(pcp_GEOID, Q_2012)
Q_2013 <- cbind(pcp_GEOID, Q_2013)


Q_1950 <- merge(GEOID, Q_1950,by="GEOID")
Q_1951 <- merge(GEOID, Q_1951,by="GEOID")
Q_1952 <- merge(GEOID, Q_1952,by="GEOID")
Q_1953 <- merge(GEOID, Q_1953,by="GEOID")
Q_1954 <- merge(GEOID, Q_1954,by="GEOID")
Q_1955 <- merge(GEOID, Q_1955,by="GEOID")
Q_1956 <- merge(GEOID, Q_1956,by="GEOID")
Q_1957 <- merge(GEOID, Q_1957,by="GEOID")
Q_1958 <- merge(GEOID, Q_1958,by="GEOID")
Q_1959 <- merge(GEOID, Q_1959,by="GEOID")
Q_1960 <- merge(GEOID, Q_1960,by="GEOID")
Q_1961 <- merge(GEOID, Q_1961,by="GEOID")
Q_1962 <- merge(GEOID, Q_1962,by="GEOID")
Q_1963 <- merge(GEOID, Q_1963,by="GEOID")
Q_1964 <- merge(GEOID, Q_1964,by="GEOID")
Q_1965 <- merge(GEOID, Q_1965,by="GEOID")
Q_1966 <- merge(GEOID, Q_1966,by="GEOID")
Q_1967 <- merge(GEOID, Q_1967,by="GEOID")
Q_1968 <- merge(GEOID, Q_1968,by="GEOID")
Q_1969 <- merge(GEOID, Q_1969,by="GEOID")
Q_1970 <- merge(GEOID, Q_1970,by="GEOID")
Q_1971 <- merge(GEOID, Q_1971,by="GEOID")
Q_1972 <- merge(GEOID, Q_1972,by="GEOID")
Q_1973 <- merge(GEOID, Q_1973,by="GEOID")
Q_1974 <- merge(GEOID, Q_1974,by="GEOID")
Q_1975 <- merge(GEOID, Q_1975,by="GEOID")
Q_1976 <- merge(GEOID, Q_1976,by="GEOID")
Q_1977 <- merge(GEOID, Q_1977,by="GEOID")
Q_1978 <- merge(GEOID, Q_1978,by="GEOID")
Q_1979 <- merge(GEOID, Q_1979,by="GEOID")
Q_1980 <- merge(GEOID, Q_1980,by="GEOID")
Q_1981 <- merge(GEOID, Q_1981,by="GEOID")
Q_1982 <- merge(GEOID, Q_1982,by="GEOID")
Q_1983 <- merge(GEOID, Q_1983,by="GEOID")
Q_1984 <- merge(GEOID, Q_1984,by="GEOID")
Q_1985 <- merge(GEOID, Q_1985,by="GEOID")
Q_1986 <- merge(GEOID, Q_1986,by="GEOID")
Q_1987 <- merge(GEOID, Q_1987,by="GEOID")
Q_1988 <- merge(GEOID, Q_1988,by="GEOID")
Q_1989 <- merge(GEOID, Q_1989,by="GEOID")
Q_1990 <- merge(GEOID, Q_1990,by="GEOID")
Q_1991 <- merge(GEOID, Q_1991,by="GEOID")
Q_1992 <- merge(GEOID, Q_1992,by="GEOID")
Q_1993 <- merge(GEOID, Q_1993,by="GEOID")
Q_1994 <- merge(GEOID, Q_1994,by="GEOID")
Q_1995 <- merge(GEOID, Q_1995,by="GEOID")
Q_1996 <- merge(GEOID, Q_1996,by="GEOID")
Q_1997 <- merge(GEOID, Q_1997,by="GEOID")
Q_1998 <- merge(GEOID, Q_1998,by="GEOID")
Q_1999 <- merge(GEOID, Q_1999,by="GEOID")
Q_2000 <- merge(GEOID, Q_2000,by="GEOID")
Q_2001 <- merge(GEOID, Q_2001,by="GEOID")
Q_2002 <- merge(GEOID, Q_2002,by="GEOID")
Q_2003 <- merge(GEOID, Q_2003,by="GEOID")
Q_2004 <- merge(GEOID, Q_2004,by="GEOID")
Q_2005 <- merge(GEOID, Q_2005,by="GEOID")
Q_2006 <- merge(GEOID, Q_2006,by="GEOID")
Q_2007 <- merge(GEOID, Q_2007,by="GEOID")
Q_2008 <- merge(GEOID, Q_2008,by="GEOID")
Q_2009 <- merge(GEOID, Q_2009,by="GEOID")
Q_2010 <- merge(GEOID, Q_2010,by="GEOID")
Q_2011 <- merge(GEOID, Q_2011,by="GEOID")
Q_2012 <- merge(GEOID, Q_2012,by="GEOID")
Q_2013 <- merge(GEOID, Q_2013,by="GEOID")


Q_1950 <- Q_1950[c(2:366)]
Q_1951 <- Q_1951[c(2:366)]
Q_1952 <- Q_1952[c(2:367)]
Q_1953 <- Q_1953[c(2:366)]
Q_1954 <- Q_1954[c(2:366)]
Q_1955 <- Q_1955[c(2:366)]
Q_1956 <- Q_1956[c(2:367)]
Q_1957 <- Q_1957[c(2:366)]
Q_1958 <- Q_1958[c(2:366)]
Q_1959 <- Q_1959[c(2:366)]
Q_1960 <- Q_1960[c(2:367)]
Q_1961 <- Q_1961[c(2:366)]
Q_1962 <- Q_1962[c(2:366)]
Q_1963 <- Q_1963[c(2:366)]
Q_1964 <- Q_1964[c(2:367)]
Q_1965 <- Q_1965[c(2:366)]
Q_1966 <- Q_1966[c(2:366)]
Q_1967 <- Q_1967[c(2:366)]
Q_1968 <- Q_1968[c(2:367)]
Q_1969 <- Q_1969[c(2:366)]
Q_1970 <- Q_1970[c(2:366)]
Q_1971 <- Q_1971[c(2:366)]
Q_1972 <- Q_1972[c(2:367)]
Q_1973 <- Q_1973[c(2:366)]
Q_1974 <- Q_1974[c(2:366)]
Q_1975 <- Q_1975[c(2:366)]
Q_1976 <- Q_1976[c(2:367)]
Q_1977 <- Q_1977[c(2:366)]
Q_1978 <- Q_1978[c(2:366)]
Q_1979 <- Q_1979[c(2:366)]
Q_1980 <- Q_1980[c(2:367)]
Q_1981 <- Q_1981[c(2:366)]
Q_1982 <- Q_1982[c(2:366)]
Q_1983 <- Q_1983[c(2:366)]
Q_1984 <- Q_1984[c(2:367)]
Q_1985 <- Q_1985[c(2:366)]
Q_1986 <- Q_1986[c(2:366)]
Q_1987 <- Q_1987[c(2:366)]
Q_1988 <- Q_1988[c(2:367)]
Q_1989 <- Q_1989[c(2:366)]
Q_1990 <- Q_1990[c(2:366)]
Q_1991 <- Q_1991[c(2:366)]
Q_1992 <- Q_1992[c(2:367)]
Q_1993 <- Q_1993[c(2:366)]
Q_1994 <- Q_1994[c(2:366)]
Q_1995 <- Q_1995[c(2:366)]
Q_1996 <- Q_1996[c(2:367)]
Q_1997 <- Q_1997[c(2:366)]
Q_1998 <- Q_1998[c(2:366)]
Q_1999 <- Q_1999[c(2:366)]
Q_2000 <- Q_2000[c(2:367)]
Q_2001 <- Q_2001[c(2:366)]
Q_2002 <- Q_2002[c(2:366)]
Q_2003 <- Q_2003[c(2:366)]
Q_2004 <- Q_2004[c(2:367)]
Q_2005 <- Q_2005[c(2:366)]
Q_2006 <- Q_2006[c(2:366)]
Q_2007 <- Q_2007[c(2:366)]
Q_2008 <- Q_2008[c(2:367)]
Q_2009 <- Q_2009[c(2:366)]
Q_2010 <- Q_2010[c(2:366)]
Q_2011 <- Q_2011[c(2:366)]
Q_2012 <- Q_2012[c(2:367)]
Q_2013 <- Q_2013[c(2:366)]

ICU_golf_1950= ETc_golf_1950-(pcp_1950-Q_1950)-dsoil_1950
ICU_golf_1951= ETc_golf_1951-(pcp_1951-Q_1951)-dsoil_1951
ICU_golf_1952= ETc_golf_1952-(pcp_1952-Q_1952)-dsoil_1952
ICU_golf_1953= ETc_golf_1953-(pcp_1953-Q_1953)-dsoil_1953
ICU_golf_1954= ETc_golf_1954-(pcp_1954-Q_1954)-dsoil_1954
ICU_golf_1955= ETc_golf_1955-(pcp_1955-Q_1955)-dsoil_1955
ICU_golf_1956= ETc_golf_1956-(pcp_1956-Q_1956)-dsoil_1956
ICU_golf_1957= ETc_golf_1957-(pcp_1957-Q_1957)-dsoil_1957
ICU_golf_1958= ETc_golf_1958-(pcp_1958-Q_1958)-dsoil_1958
ICU_golf_1959= ETc_golf_1959-(pcp_1959-Q_1959)-dsoil_1959
ICU_golf_1960= ETc_golf_1960-(pcp_1960-Q_1960)-dsoil_1960
ICU_golf_1961= ETc_golf_1961-(pcp_1961-Q_1961)-dsoil_1961
ICU_golf_1962= ETc_golf_1962-(pcp_1962-Q_1962)-dsoil_1962
ICU_golf_1963= ETc_golf_1963-(pcp_1963-Q_1963)-dsoil_1963
ICU_golf_1964= ETc_golf_1964-(pcp_1964-Q_1964)-dsoil_1964
ICU_golf_1965= ETc_golf_1965-(pcp_1965-Q_1965)-dsoil_1965
ICU_golf_1966= ETc_golf_1966-(pcp_1966-Q_1966)-dsoil_1966
ICU_golf_1967= ETc_golf_1967-(pcp_1967-Q_1967)-dsoil_1967
ICU_golf_1968= ETc_golf_1968-(pcp_1968-Q_1968)-dsoil_1968
ICU_golf_1969= ETc_golf_1969-(pcp_1969-Q_1969)-dsoil_1969
ICU_golf_1970= ETc_golf_1970-(pcp_1970-Q_1970)-dsoil_1970
ICU_golf_1971= ETc_golf_1971-(pcp_1971-Q_1971)-dsoil_1971
ICU_golf_1972= ETc_golf_1972-(pcp_1972-Q_1972)-dsoil_1972
ICU_golf_1973= ETc_golf_1973-(pcp_1973-Q_1973)-dsoil_1973
ICU_golf_1974= ETc_golf_1974-(pcp_1974-Q_1974)-dsoil_1974
ICU_golf_1975= ETc_golf_1975-(pcp_1975-Q_1975)-dsoil_1975
ICU_golf_1976= ETc_golf_1976-(pcp_1976-Q_1976)-dsoil_1976
ICU_golf_1977= ETc_golf_1977-(pcp_1977-Q_1977)-dsoil_1977
ICU_golf_1978= ETc_golf_1978-(pcp_1978-Q_1978)-dsoil_1978
ICU_golf_1979= ETc_golf_1979-(pcp_1979-Q_1979)-dsoil_1979
ICU_golf_1980= ETc_golf_1980-(pcp_1980-Q_1980)-dsoil_1980
ICU_golf_1981= ETc_golf_1981-(pcp_1981-Q_1981)-dsoil_1981
ICU_golf_1982= ETc_golf_1982-(pcp_1982-Q_1982)-dsoil_1982
ICU_golf_1983= ETc_golf_1983-(pcp_1983-Q_1983)-dsoil_1983
ICU_golf_1984= ETc_golf_1984-(pcp_1984-Q_1984)-dsoil_1984
ICU_golf_1985= ETc_golf_1985-(pcp_1985-Q_1985)-dsoil_1985
ICU_golf_1986= ETc_golf_1986-(pcp_1986-Q_1986)-dsoil_1986
ICU_golf_1987= ETc_golf_1987-(pcp_1987-Q_1987)-dsoil_1987
ICU_golf_1988= ETc_golf_1988-(pcp_1988-Q_1988)-dsoil_1988
ICU_golf_1989= ETc_golf_1989-(pcp_1989-Q_1989)-dsoil_1989
ICU_golf_1990= ETc_golf_1990-(pcp_1990-Q_1990)-dsoil_1990
ICU_golf_1991= ETc_golf_1991-(pcp_1991-Q_1991)-dsoil_1991
ICU_golf_1992= ETc_golf_1992-(pcp_1992-Q_1992)-dsoil_1992
ICU_golf_1993= ETc_golf_1993-(pcp_1993-Q_1993)-dsoil_1993
ICU_golf_1994= ETc_golf_1994-(pcp_1994-Q_1994)-dsoil_1994
ICU_golf_1995= ETc_golf_1995-(pcp_1995-Q_1995)-dsoil_1995
ICU_golf_1996= ETc_golf_1996-(pcp_1996-Q_1996)-dsoil_1996
ICU_golf_1997= ETc_golf_1997-(pcp_1997-Q_1997)-dsoil_1997
ICU_golf_1998= ETc_golf_1998-(pcp_1998-Q_1998)-dsoil_1998
ICU_golf_1999= ETc_golf_1999-(pcp_1999-Q_1999)-dsoil_1999
ICU_golf_2000= ETc_golf_2000-(pcp_2000-Q_2000)-dsoil_2000
ICU_golf_2001= ETc_golf_2001-(pcp_2001-Q_2001)-dsoil_2001
ICU_golf_2002= ETc_golf_2002-(pcp_2002-Q_2002)-dsoil_2002
ICU_golf_2003= ETc_golf_2003-(pcp_2003-Q_2003)-dsoil_2003
ICU_golf_2004= ETc_golf_2004-(pcp_2004-Q_2004)-dsoil_2004
ICU_golf_2005= ETc_golf_2005-(pcp_2005-Q_2005)-dsoil_2005
ICU_golf_2006= ETc_golf_2006-(pcp_2006-Q_2006)-dsoil_2006
ICU_golf_2007= ETc_golf_2007-(pcp_2007-Q_2007)-dsoil_2007
ICU_golf_2008= ETc_golf_2008-(pcp_2008-Q_2008)-dsoil_2008
ICU_golf_2009= ETc_golf_2009-(pcp_2009-Q_2009)-dsoil_2009
ICU_golf_2010= ETc_golf_2010-(pcp_2010-Q_2010)-dsoil_2010
ICU_golf_2011= ETc_golf_2011-(pcp_2011-Q_2011)-dsoil_2011
ICU_golf_2012= ETc_golf_2012-(pcp_2012-Q_2012)-dsoil_2012
ICU_golf_2013= ETc_golf_2013-(pcp_2013-Q_2013)-dsoil_2013



ICU_golf_1950[ICU_golf_1950< 0] <- 0
ICU_golf_1951[ICU_golf_1951< 0] <- 0
ICU_golf_1952[ICU_golf_1952< 0] <- 0
ICU_golf_1953[ICU_golf_1953< 0] <- 0
ICU_golf_1954[ICU_golf_1954< 0] <- 0
ICU_golf_1955[ICU_golf_1955< 0] <- 0
ICU_golf_1956[ICU_golf_1956< 0] <- 0
ICU_golf_1957[ICU_golf_1957< 0] <- 0
ICU_golf_1958[ICU_golf_1958< 0] <- 0
ICU_golf_1959[ICU_golf_1959< 0] <- 0
ICU_golf_1960[ICU_golf_1960< 0] <- 0
ICU_golf_1961[ICU_golf_1961< 0] <- 0
ICU_golf_1962[ICU_golf_1962< 0] <- 0
ICU_golf_1963[ICU_golf_1963< 0] <- 0
ICU_golf_1964[ICU_golf_1964< 0] <- 0
ICU_golf_1965[ICU_golf_1965< 0] <- 0
ICU_golf_1966[ICU_golf_1966< 0] <- 0
ICU_golf_1967[ICU_golf_1967< 0] <- 0
ICU_golf_1968[ICU_golf_1968< 0] <- 0
ICU_golf_1969[ICU_golf_1969< 0] <- 0
ICU_golf_1970[ICU_golf_1970< 0] <- 0
ICU_golf_1971[ICU_golf_1971< 0] <- 0
ICU_golf_1972[ICU_golf_1972< 0] <- 0
ICU_golf_1973[ICU_golf_1973< 0] <- 0
ICU_golf_1974[ICU_golf_1974< 0] <- 0
ICU_golf_1975[ICU_golf_1975< 0] <- 0
ICU_golf_1976[ICU_golf_1976< 0] <- 0
ICU_golf_1977[ICU_golf_1977< 0] <- 0
ICU_golf_1978[ICU_golf_1978< 0] <- 0
ICU_golf_1979[ICU_golf_1979< 0] <- 0
ICU_golf_1980[ICU_golf_1980< 0] <- 0
ICU_golf_1981[ICU_golf_1981< 0] <- 0
ICU_golf_1982[ICU_golf_1982< 0] <- 0
ICU_golf_1983[ICU_golf_1983< 0] <- 0
ICU_golf_1984[ICU_golf_1984< 0] <- 0
ICU_golf_1985[ICU_golf_1985< 0] <- 0
ICU_golf_1986[ICU_golf_1986< 0] <- 0
ICU_golf_1987[ICU_golf_1987< 0] <- 0
ICU_golf_1988[ICU_golf_1988< 0] <- 0
ICU_golf_1989[ICU_golf_1989< 0] <- 0
ICU_golf_1990[ICU_golf_1990< 0] <- 0
ICU_golf_1991[ICU_golf_1991< 0] <- 0
ICU_golf_1992[ICU_golf_1992< 0] <- 0
ICU_golf_1993[ICU_golf_1993< 0] <- 0
ICU_golf_1994[ICU_golf_1994< 0] <- 0
ICU_golf_1995[ICU_golf_1995< 0] <- 0
ICU_golf_1996[ICU_golf_1996< 0] <- 0
ICU_golf_1997[ICU_golf_1997< 0] <- 0
ICU_golf_1998[ICU_golf_1998< 0] <- 0
ICU_golf_1999[ICU_golf_1999< 0] <- 0
ICU_golf_2000[ICU_golf_2000< 0] <- 0
ICU_golf_2001[ICU_golf_2001< 0] <- 0
ICU_golf_2002[ICU_golf_2002< 0] <- 0
ICU_golf_2003[ICU_golf_2003< 0] <- 0
ICU_golf_2004[ICU_golf_2004< 0] <- 0
ICU_golf_2005[ICU_golf_2005< 0] <- 0
ICU_golf_2006[ICU_golf_2006< 0] <- 0
ICU_golf_2007[ICU_golf_2007< 0] <- 0
ICU_golf_2008[ICU_golf_2008< 0] <- 0
ICU_golf_2009[ICU_golf_2009< 0] <- 0
ICU_golf_2010[ICU_golf_2010< 0] <- 0
ICU_golf_2011[ICU_golf_2011< 0] <- 0
ICU_golf_2012[ICU_golf_2012< 0] <- 0
ICU_golf_2013[ICU_golf_2013< 0] <- 0



write.csv(cbind(GEOID,ICU_golf_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1950.csv")
write.csv(cbind(GEOID,ICU_golf_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1951.csv")
write.csv(cbind(GEOID,ICU_golf_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1952.csv")
write.csv(cbind(GEOID,ICU_golf_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1953.csv")
write.csv(cbind(GEOID,ICU_golf_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1954.csv")
write.csv(cbind(GEOID,ICU_golf_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1955.csv")
write.csv(cbind(GEOID,ICU_golf_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1956.csv")
write.csv(cbind(GEOID,ICU_golf_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1957.csv")
write.csv(cbind(GEOID,ICU_golf_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1958.csv")
write.csv(cbind(GEOID,ICU_golf_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1959.csv")
write.csv(cbind(GEOID,ICU_golf_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1960.csv")
write.csv(cbind(GEOID,ICU_golf_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1961.csv")
write.csv(cbind(GEOID,ICU_golf_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1962.csv")
write.csv(cbind(GEOID,ICU_golf_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1963.csv")
write.csv(cbind(GEOID,ICU_golf_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1964.csv")
write.csv(cbind(GEOID,ICU_golf_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1965.csv")
write.csv(cbind(GEOID,ICU_golf_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1966.csv")
write.csv(cbind(GEOID,ICU_golf_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1967.csv")
write.csv(cbind(GEOID,ICU_golf_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1968.csv")
write.csv(cbind(GEOID,ICU_golf_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1969.csv")
write.csv(cbind(GEOID,ICU_golf_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1970.csv")
write.csv(cbind(GEOID,ICU_golf_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1971.csv")
write.csv(cbind(GEOID,ICU_golf_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1972.csv")
write.csv(cbind(GEOID,ICU_golf_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1973.csv")
write.csv(cbind(GEOID,ICU_golf_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1974.csv")
write.csv(cbind(GEOID,ICU_golf_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1975.csv")
write.csv(cbind(GEOID,ICU_golf_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1976.csv")
write.csv(cbind(GEOID,ICU_golf_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1977.csv")
write.csv(cbind(GEOID,ICU_golf_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1978.csv")
write.csv(cbind(GEOID,ICU_golf_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1979.csv")
write.csv(cbind(GEOID,ICU_golf_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1980.csv")
write.csv(cbind(GEOID,ICU_golf_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1981.csv")
write.csv(cbind(GEOID,ICU_golf_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1982.csv")
write.csv(cbind(GEOID,ICU_golf_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1983.csv")
write.csv(cbind(GEOID,ICU_golf_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1984.csv")
write.csv(cbind(GEOID,ICU_golf_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1985.csv")
write.csv(cbind(GEOID,ICU_golf_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1986.csv")
write.csv(cbind(GEOID,ICU_golf_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1987.csv")
write.csv(cbind(GEOID,ICU_golf_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1988.csv")
write.csv(cbind(GEOID,ICU_golf_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1989.csv")
write.csv(cbind(GEOID,ICU_golf_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1990.csv")
write.csv(cbind(GEOID,ICU_golf_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1991.csv")
write.csv(cbind(GEOID,ICU_golf_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1992.csv")
write.csv(cbind(GEOID,ICU_golf_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1993.csv")
write.csv(cbind(GEOID,ICU_golf_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1994.csv")
write.csv(cbind(GEOID,ICU_golf_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1995.csv")
write.csv(cbind(GEOID,ICU_golf_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1996.csv")
write.csv(cbind(GEOID,ICU_golf_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1997.csv")
write.csv(cbind(GEOID,ICU_golf_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1998.csv")
write.csv(cbind(GEOID,ICU_golf_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_1999.csv")
write.csv(cbind(GEOID,ICU_golf_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_2000.csv")
write.csv(cbind(GEOID,ICU_golf_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_2001.csv")
write.csv(cbind(GEOID,ICU_golf_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_2002.csv")
write.csv(cbind(GEOID,ICU_golf_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_2003.csv")
write.csv(cbind(GEOID,ICU_golf_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_2004.csv")
write.csv(cbind(GEOID,ICU_golf_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_2005.csv")
write.csv(cbind(GEOID,ICU_golf_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_2006.csv")
write.csv(cbind(GEOID,ICU_golf_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_2007.csv")
write.csv(cbind(GEOID,ICU_golf_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_2008.csv")
write.csv(cbind(GEOID,ICU_golf_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_2009.csv")
write.csv(cbind(GEOID,ICU_golf_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_2010.csv")
write.csv(cbind(GEOID,ICU_golf_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_2011.csv")
write.csv(cbind(GEOID,ICU_golf_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_2012.csv")
write.csv(cbind(GEOID,ICU_golf_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/ICU/ICU_golf_2013.csv")



golf_1950_w1p =golf_land$X1950*0.00328084*ICU_golf_1950/conv$X1950
golf_1951_w1p =golf_land$X1951*0.00328084*ICU_golf_1951/conv$X1951
golf_1952_w1p =golf_land$X1952*0.00328084*ICU_golf_1952/conv$X1952
golf_1953_w1p =golf_land$X1953*0.00328084*ICU_golf_1953/conv$X1953
golf_1954_w1p =golf_land$X1954*0.00328084*ICU_golf_1954/conv$X1954
golf_1955_w1p =golf_land$X1955*0.00328084*ICU_golf_1955/conv$X1955
golf_1956_w1p =golf_land$X1956*0.00328084*ICU_golf_1956/conv$X1956
golf_1957_w1p =golf_land$X1957*0.00328084*ICU_golf_1957/conv$X1957
golf_1958_w1p =golf_land$X1958*0.00328084*ICU_golf_1958/conv$X1958
golf_1959_w1p =golf_land$X1959*0.00328084*ICU_golf_1959/conv$X1959
golf_1960_w1p =golf_land$X1960*0.00328084*ICU_golf_1960/conv$X1960
golf_1961_w1p =golf_land$X1961*0.00328084*ICU_golf_1961/conv$X1961
golf_1962_w1p =golf_land$X1962*0.00328084*ICU_golf_1962/conv$X1962
golf_1963_w1p =golf_land$X1963*0.00328084*ICU_golf_1963/conv$X1963
golf_1964_w1p =golf_land$X1964*0.00328084*ICU_golf_1964/conv$X1964
golf_1965_w1p =golf_land$X1965*0.00328084*ICU_golf_1965/conv$X1965
golf_1966_w1p =golf_land$X1966*0.00328084*ICU_golf_1966/conv$X1966
golf_1967_w1p =golf_land$X1967*0.00328084*ICU_golf_1967/conv$X1967
golf_1968_w1p =golf_land$X1968*0.00328084*ICU_golf_1968/conv$X1968
golf_1969_w1p =golf_land$X1969*0.00328084*ICU_golf_1969/conv$X1969
golf_1970_w1p =golf_land$X1970*0.00328084*ICU_golf_1970/conv$X1970
golf_1971_w1p =golf_land$X1971*0.00328084*ICU_golf_1971/conv$X1971
golf_1972_w1p =golf_land$X1972*0.00328084*ICU_golf_1972/conv$X1972
golf_1973_w1p =golf_land$X1973*0.00328084*ICU_golf_1973/conv$X1973
golf_1974_w1p =golf_land$X1974*0.00328084*ICU_golf_1974/conv$X1974
golf_1975_w1p =golf_land$X1975*0.00328084*ICU_golf_1975/conv$X1975
golf_1976_w1p =golf_land$X1976*0.00328084*ICU_golf_1976/conv$X1976
golf_1977_w1p =golf_land$X1977*0.00328084*ICU_golf_1977/conv$X1977
golf_1978_w1p =golf_land$X1978*0.00328084*ICU_golf_1978/conv$X1978
golf_1979_w1p =golf_land$X1979*0.00328084*ICU_golf_1979/conv$X1979
golf_1980_w1p =golf_land$X1980*0.00328084*ICU_golf_1980/conv$X1980
golf_1981_w1p =golf_land$X1981*0.00328084*ICU_golf_1981/conv$X1981
golf_1982_w1p =golf_land$X1982*0.00328084*ICU_golf_1982/conv$X1982
golf_1983_w1p =golf_land$X1983*0.00328084*ICU_golf_1983/conv$X1983
golf_1984_w1p =golf_land$X1984*0.00328084*ICU_golf_1984/conv$X1984
golf_1985_w1p =golf_land$X1985*0.00328084*ICU_golf_1985/conv$X1985
golf_1986_w1p =golf_land$X1986*0.00328084*ICU_golf_1986/conv$X1986
golf_1987_w1p =golf_land$X1987*0.00328084*ICU_golf_1987/conv$X1987
golf_1988_w1p =golf_land$X1988*0.00328084*ICU_golf_1988/conv$X1988
golf_1989_w1p =golf_land$X1989*0.00328084*ICU_golf_1989/conv$X1989
golf_1990_w1p =golf_land$X1990*0.00328084*ICU_golf_1990/conv$X1990
golf_1991_w1p =golf_land$X1991*0.00328084*ICU_golf_1991/conv$X1991
golf_1992_w1p =golf_land$X1992*0.00328084*ICU_golf_1992/conv$X1992
golf_1993_w1p =golf_land$X1993*0.00328084*ICU_golf_1993/conv$X1993
golf_1994_w1p =golf_land$X1994*0.00328084*ICU_golf_1994/conv$X1994
golf_1995_w1p =golf_land$X1995*0.00328084*ICU_golf_1995/conv$X1995
golf_1996_w1p =golf_land$X1996*0.00328084*ICU_golf_1996/conv$X1996
golf_1997_w1p =golf_land$X1997*0.00328084*ICU_golf_1997/conv$X1997
golf_1998_w1p =golf_land$X1998*0.00328084*ICU_golf_1998/conv$X1998
golf_1999_w1p =golf_land$X1999*0.00328084*ICU_golf_1999/conv$X1999
golf_2000_w1p =golf_land$X2000*0.00328084*ICU_golf_2000/conv$X2000
golf_2001_w1p =golf_land$X2001*0.00328084*ICU_golf_2001/conv$X2001
golf_2002_w1p =golf_land$X2002*0.00328084*ICU_golf_2002/conv$X2002
golf_2003_w1p =golf_land$X2003*0.00328084*ICU_golf_2003/conv$X2003
golf_2004_w1p =golf_land$X2004*0.00328084*ICU_golf_2004/conv$X2004
golf_2005_w1p =golf_land$X2005*0.00328084*ICU_golf_2005/conv$X2005
golf_2006_w1p =golf_land$X2006*0.00328084*ICU_golf_2006/conv$X2006
golf_2007_w1p =golf_land$X2007*0.00328084*ICU_golf_2007/conv$X2007
golf_2008_w1p =golf_land$X2008*0.00328084*ICU_golf_2008/conv$X2008
golf_2009_w1p =golf_land$X2009*0.00328084*ICU_golf_2009/conv$X2009
golf_2010_w1p =golf_land$X2010*0.00328084*ICU_golf_2010/conv$X2010
golf_2011_w1p =golf_land$X2011*0.00328084*ICU_golf_2011/conv$X2011
golf_2012_w1p =golf_land$X2012*0.00328084*ICU_golf_2012/conv$X2012
golf_2013_w1p =golf_land$X2013*0.00328084*ICU_golf_2013/conv$X2013

write.csv(cbind(GEOID,golf_1950_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1950_w1p.csv")
write.csv(cbind(GEOID,golf_1951_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1951_w1p.csv")
write.csv(cbind(GEOID,golf_1952_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1952_w1p.csv")
write.csv(cbind(GEOID,golf_1953_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1953_w1p.csv")
write.csv(cbind(GEOID,golf_1954_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1954_w1p.csv")
write.csv(cbind(GEOID,golf_1955_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1955_w1p.csv")
write.csv(cbind(GEOID,golf_1956_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1956_w1p.csv")
write.csv(cbind(GEOID,golf_1957_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1957_w1p.csv")
write.csv(cbind(GEOID,golf_1958_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1958_w1p.csv")
write.csv(cbind(GEOID,golf_1959_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1959_w1p.csv")
write.csv(cbind(GEOID,golf_1960_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1960_w1p.csv")
write.csv(cbind(GEOID,golf_1961_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1961_w1p.csv")
write.csv(cbind(GEOID,golf_1962_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1962_w1p.csv")
write.csv(cbind(GEOID,golf_1963_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1963_w1p.csv")
write.csv(cbind(GEOID,golf_1964_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1964_w1p.csv")
write.csv(cbind(GEOID,golf_1965_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1965_w1p.csv")
write.csv(cbind(GEOID,golf_1966_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1966_w1p.csv")
write.csv(cbind(GEOID,golf_1967_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1967_w1p.csv")
write.csv(cbind(GEOID,golf_1968_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1968_w1p.csv")
write.csv(cbind(GEOID,golf_1969_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1969_w1p.csv")
write.csv(cbind(GEOID,golf_1970_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1970_w1p.csv")
write.csv(cbind(GEOID,golf_1971_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1971_w1p.csv")
write.csv(cbind(GEOID,golf_1972_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1972_w1p.csv")
write.csv(cbind(GEOID,golf_1973_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1973_w1p.csv")
write.csv(cbind(GEOID,golf_1974_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1974_w1p.csv")
write.csv(cbind(GEOID,golf_1975_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1975_w1p.csv")
write.csv(cbind(GEOID,golf_1976_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1976_w1p.csv")
write.csv(cbind(GEOID,golf_1977_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1977_w1p.csv")
write.csv(cbind(GEOID,golf_1978_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1978_w1p.csv")
write.csv(cbind(GEOID,golf_1979_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1979_w1p.csv")
write.csv(cbind(GEOID,golf_1980_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1980_w1p.csv")
write.csv(cbind(GEOID,golf_1981_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1981_w1p.csv")
write.csv(cbind(GEOID,golf_1982_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1982_w1p.csv")
write.csv(cbind(GEOID,golf_1983_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1983_w1p.csv")
write.csv(cbind(GEOID,golf_1984_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1984_w1p.csv")
write.csv(cbind(GEOID,golf_1985_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1985_w1p.csv")
write.csv(cbind(GEOID,golf_1986_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1986_w1p.csv")
write.csv(cbind(GEOID,golf_1987_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1987_w1p.csv")
write.csv(cbind(GEOID,golf_1988_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1988_w1p.csv")
write.csv(cbind(GEOID,golf_1989_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1989_w1p.csv")
write.csv(cbind(GEOID,golf_1990_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1990_w1p.csv")
write.csv(cbind(GEOID,golf_1991_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1991_w1p.csv")
write.csv(cbind(GEOID,golf_1992_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1992_w1p.csv")
write.csv(cbind(GEOID,golf_1993_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1993_w1p.csv")
write.csv(cbind(GEOID,golf_1994_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1994_w1p.csv")
write.csv(cbind(GEOID,golf_1995_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1995_w1p.csv")
write.csv(cbind(GEOID,golf_1996_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1996_w1p.csv")
write.csv(cbind(GEOID,golf_1997_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1997_w1p.csv")
write.csv(cbind(GEOID,golf_1998_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1998_w1p.csv")
write.csv(cbind(GEOID,golf_1999_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_1999_w1p.csv")
write.csv(cbind(GEOID,golf_2000_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_2000_w1p.csv")
write.csv(cbind(GEOID,golf_2001_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_2001_w1p.csv")
write.csv(cbind(GEOID,golf_2002_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_2002_w1p.csv")
write.csv(cbind(GEOID,golf_2003_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_2003_w1p.csv")
write.csv(cbind(GEOID,golf_2004_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_2004_w1p.csv")
write.csv(cbind(GEOID,golf_2005_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_2005_w1p.csv")
write.csv(cbind(GEOID,golf_2006_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_2006_w1p.csv")
write.csv(cbind(GEOID,golf_2007_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_2007_w1p.csv")
write.csv(cbind(GEOID,golf_2008_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_2008_w1p.csv")
write.csv(cbind(GEOID,golf_2009_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_2009_w1p.csv")
write.csv(cbind(GEOID,golf_2010_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_2010_w1p.csv")
write.csv(cbind(GEOID,golf_2011_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_2011_w1p.csv")
write.csv(cbind(GEOID,golf_2012_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_2012_w1p.csv")
write.csv(cbind(GEOID,golf_2013_w1p), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/sp1/golf_2013_w1p.csv")



golf_1950_w1  <- rowSums(golf_1950_w1, na.rm=TRUE)
golf_1951_w1  <- rowSums(golf_1951_w1, na.rm=TRUE)
golf_1952_w1  <- rowSums(golf_1952_w1, na.rm=TRUE)
golf_1953_w1  <- rowSums(golf_1953_w1, na.rm=TRUE)
golf_1954_w1  <- rowSums(golf_1954_w1, na.rm=TRUE)
golf_1955_w1  <- rowSums(golf_1955_w1, na.rm=TRUE)
golf_1956_w1  <- rowSums(golf_1956_w1, na.rm=TRUE)
golf_1957_w1  <- rowSums(golf_1957_w1, na.rm=TRUE)
golf_1958_w1  <- rowSums(golf_1958_w1, na.rm=TRUE)
golf_1959_w1  <- rowSums(golf_1959_w1, na.rm=TRUE)
golf_1960_w1  <- rowSums(golf_1960_w1, na.rm=TRUE)
golf_1961_w1  <- rowSums(golf_1961_w1, na.rm=TRUE)
golf_1962_w1  <- rowSums(golf_1962_w1, na.rm=TRUE)
golf_1963_w1  <- rowSums(golf_1963_w1, na.rm=TRUE)
golf_1964_w1  <- rowSums(golf_1964_w1, na.rm=TRUE)
golf_1965_w1  <- rowSums(golf_1965_w1, na.rm=TRUE)
golf_1966_w1  <- rowSums(golf_1966_w1, na.rm=TRUE)
golf_1967_w1  <- rowSums(golf_1967_w1, na.rm=TRUE)
golf_1968_w1  <- rowSums(golf_1968_w1, na.rm=TRUE)
golf_1969_w1  <- rowSums(golf_1969_w1, na.rm=TRUE)
golf_1970_w1  <- rowSums(golf_1970_w1, na.rm=TRUE)
golf_1971_w1  <- rowSums(golf_1971_w1, na.rm=TRUE)
golf_1972_w1  <- rowSums(golf_1972_w1, na.rm=TRUE)
golf_1973_w1  <- rowSums(golf_1973_w1, na.rm=TRUE)
golf_1974_w1  <- rowSums(golf_1974_w1, na.rm=TRUE)
golf_1975_w1  <- rowSums(golf_1975_w1, na.rm=TRUE)
golf_1976_w1  <- rowSums(golf_1976_w1, na.rm=TRUE)
golf_1977_w1  <- rowSums(golf_1977_w1, na.rm=TRUE)
golf_1978_w1  <- rowSums(golf_1978_w1, na.rm=TRUE)
golf_1979_w1  <- rowSums(golf_1979_w1, na.rm=TRUE)
golf_1980_w1  <- rowSums(golf_1980_w1, na.rm=TRUE)
golf_1981_w1  <- rowSums(golf_1981_w1, na.rm=TRUE)
golf_1982_w1  <- rowSums(golf_1982_w1, na.rm=TRUE)
golf_1983_w1  <- rowSums(golf_1983_w1, na.rm=TRUE)
golf_1984_w1  <- rowSums(golf_1984_w1, na.rm=TRUE)
golf_1985_w1  <- rowSums(golf_1985_w1, na.rm=TRUE)
golf_1986_w1  <- rowSums(golf_1986_w1, na.rm=TRUE)
golf_1987_w1  <- rowSums(golf_1987_w1, na.rm=TRUE)
golf_1988_w1  <- rowSums(golf_1988_w1, na.rm=TRUE)
golf_1989_w1  <- rowSums(golf_1989_w1, na.rm=TRUE)
golf_1990_w1  <- rowSums(golf_1990_w1, na.rm=TRUE)
golf_1991_w1  <- rowSums(golf_1991_w1, na.rm=TRUE)
golf_1992_w1  <- rowSums(golf_1992_w1, na.rm=TRUE)
golf_1993_w1  <- rowSums(golf_1993_w1, na.rm=TRUE)
golf_1994_w1  <- rowSums(golf_1994_w1, na.rm=TRUE)
golf_1995_w1  <- rowSums(golf_1995_w1, na.rm=TRUE)
golf_1996_w1  <- rowSums(golf_1996_w1, na.rm=TRUE)
golf_1997_w1  <- rowSums(golf_1997_w1, na.rm=TRUE)
golf_1998_w1  <- rowSums(golf_1998_w1, na.rm=TRUE)
golf_1999_w1  <- rowSums(golf_1999_w1, na.rm=TRUE)
golf_2000_w1  <- rowSums(golf_2000_w1, na.rm=TRUE)
golf_2001_w1  <- rowSums(golf_2001_w1, na.rm=TRUE)
golf_2002_w1  <- rowSums(golf_2002_w1, na.rm=TRUE)
golf_2003_w1  <- rowSums(golf_2003_w1, na.rm=TRUE)
golf_2004_w1  <- rowSums(golf_2004_w1, na.rm=TRUE)
golf_2005_w1  <- rowSums(golf_2005_w1, na.rm=TRUE)
golf_2006_w1  <- rowSums(golf_2006_w1, na.rm=TRUE)
golf_2007_w1  <- rowSums(golf_2007_w1, na.rm=TRUE)
golf_2008_w1  <- rowSums(golf_2008_w1, na.rm=TRUE)
golf_2009_w1  <- rowSums(golf_2009_w1, na.rm=TRUE)
golf_2010_w1  <- rowSums(golf_2010_w1, na.rm=TRUE)
golf_2011_w1  <- rowSums(golf_2011_w1, na.rm=TRUE)
golf_2012_w1  <- rowSums(golf_2012_w1, na.rm=TRUE)
golf_2013_w1  <- rowSums(golf_2013_w1, na.rm=TRUE)



golf_1950_w1p  <- rowSums(golf_1950_w1p, na.rm=TRUE)
golf_1951_w1p  <- rowSums(golf_1951_w1p, na.rm=TRUE)
golf_1952_w1p  <- rowSums(golf_1952_w1p, na.rm=TRUE)
golf_1953_w1p  <- rowSums(golf_1953_w1p, na.rm=TRUE)
golf_1954_w1p  <- rowSums(golf_1954_w1p, na.rm=TRUE)
golf_1955_w1p  <- rowSums(golf_1955_w1p, na.rm=TRUE)
golf_1956_w1p  <- rowSums(golf_1956_w1p, na.rm=TRUE)
golf_1957_w1p  <- rowSums(golf_1957_w1p, na.rm=TRUE)
golf_1958_w1p  <- rowSums(golf_1958_w1p, na.rm=TRUE)
golf_1959_w1p  <- rowSums(golf_1959_w1p, na.rm=TRUE)
golf_1960_w1p  <- rowSums(golf_1960_w1p, na.rm=TRUE)
golf_1961_w1p  <- rowSums(golf_1961_w1p, na.rm=TRUE)
golf_1962_w1p  <- rowSums(golf_1962_w1p, na.rm=TRUE)
golf_1963_w1p  <- rowSums(golf_1963_w1p, na.rm=TRUE)
golf_1964_w1p  <- rowSums(golf_1964_w1p, na.rm=TRUE)
golf_1965_w1p  <- rowSums(golf_1965_w1p, na.rm=TRUE)
golf_1966_w1p  <- rowSums(golf_1966_w1p, na.rm=TRUE)
golf_1967_w1p  <- rowSums(golf_1967_w1p, na.rm=TRUE)
golf_1968_w1p  <- rowSums(golf_1968_w1p, na.rm=TRUE)
golf_1969_w1p  <- rowSums(golf_1969_w1p, na.rm=TRUE)
golf_1970_w1p  <- rowSums(golf_1970_w1p, na.rm=TRUE)
golf_1971_w1p  <- rowSums(golf_1971_w1p, na.rm=TRUE)
golf_1972_w1p  <- rowSums(golf_1972_w1p, na.rm=TRUE)
golf_1973_w1p  <- rowSums(golf_1973_w1p, na.rm=TRUE)
golf_1974_w1p  <- rowSums(golf_1974_w1p, na.rm=TRUE)
golf_1975_w1p  <- rowSums(golf_1975_w1p, na.rm=TRUE)
golf_1976_w1p  <- rowSums(golf_1976_w1p, na.rm=TRUE)
golf_1977_w1p  <- rowSums(golf_1977_w1p, na.rm=TRUE)
golf_1978_w1p  <- rowSums(golf_1978_w1p, na.rm=TRUE)
golf_1979_w1p  <- rowSums(golf_1979_w1p, na.rm=TRUE)
golf_1980_w1p  <- rowSums(golf_1980_w1p, na.rm=TRUE)
golf_1981_w1p  <- rowSums(golf_1981_w1p, na.rm=TRUE)
golf_1982_w1p  <- rowSums(golf_1982_w1p, na.rm=TRUE)
golf_1983_w1p  <- rowSums(golf_1983_w1p, na.rm=TRUE)
golf_1984_w1p  <- rowSums(golf_1984_w1p, na.rm=TRUE)
golf_1985_w1p  <- rowSums(golf_1985_w1p, na.rm=TRUE)
golf_1986_w1p  <- rowSums(golf_1986_w1p, na.rm=TRUE)
golf_1987_w1p  <- rowSums(golf_1987_w1p, na.rm=TRUE)
golf_1988_w1p  <- rowSums(golf_1988_w1p, na.rm=TRUE)
golf_1989_w1p  <- rowSums(golf_1989_w1p, na.rm=TRUE)
golf_1990_w1p  <- rowSums(golf_1990_w1p, na.rm=TRUE)
golf_1991_w1p  <- rowSums(golf_1991_w1p, na.rm=TRUE)
golf_1992_w1p  <- rowSums(golf_1992_w1p, na.rm=TRUE)
golf_1993_w1p  <- rowSums(golf_1993_w1p, na.rm=TRUE)
golf_1994_w1p  <- rowSums(golf_1994_w1p, na.rm=TRUE)
golf_1995_w1p  <- rowSums(golf_1995_w1p, na.rm=TRUE)
golf_1996_w1p  <- rowSums(golf_1996_w1p, na.rm=TRUE)
golf_1997_w1p  <- rowSums(golf_1997_w1p, na.rm=TRUE)
golf_1998_w1p  <- rowSums(golf_1998_w1p, na.rm=TRUE)
golf_1999_w1p  <- rowSums(golf_1999_w1p, na.rm=TRUE)
golf_2000_w1p  <- rowSums(golf_2000_w1p, na.rm=TRUE)
golf_2001_w1p  <- rowSums(golf_2001_w1p, na.rm=TRUE)
golf_2002_w1p  <- rowSums(golf_2002_w1p, na.rm=TRUE)
golf_2003_w1p  <- rowSums(golf_2003_w1p, na.rm=TRUE)
golf_2004_w1p  <- rowSums(golf_2004_w1p, na.rm=TRUE)
golf_2005_w1p  <- rowSums(golf_2005_w1p, na.rm=TRUE)
golf_2006_w1p  <- rowSums(golf_2006_w1p, na.rm=TRUE)
golf_2007_w1p  <- rowSums(golf_2007_w1p, na.rm=TRUE)
golf_2008_w1p  <- rowSums(golf_2008_w1p, na.rm=TRUE)
golf_2009_w1p  <- rowSums(golf_2009_w1p, na.rm=TRUE)
golf_2010_w1p  <- rowSums(golf_2010_w1p, na.rm=TRUE)
golf_2011_w1p  <- rowSums(golf_2011_w1p, na.rm=TRUE)
golf_2012_w1p  <- rowSums(golf_2012_w1p, na.rm=TRUE)
golf_2013_w1p  <- rowSums(golf_2013_w1p, na.rm=TRUE)


golf_w1 <- 	cbind(GEOID,	golf_1950_w1,	golf_1951_w1,	golf_1952_w1,	golf_1953_w1,	golf_1954_w1,	golf_1955_w1,	golf_1956_w1,	golf_1957_w1,	golf_1958_w1,	golf_1959_w1,	golf_1960_w1,	golf_1961_w1,	golf_1962_w1,	golf_1963_w1,	golf_1964_w1,	golf_1965_w1,	golf_1966_w1,	golf_1967_w1,	golf_1968_w1,	golf_1969_w1,	golf_1970_w1,	golf_1971_w1,	golf_1972_w1,	golf_1973_w1,	golf_1974_w1,	golf_1975_w1,	golf_1976_w1,	golf_1977_w1,	golf_1978_w1,	golf_1979_w1,	golf_1980_w1,	golf_1981_w1,	golf_1982_w1,	golf_1983_w1,	golf_1984_w1,	golf_1985_w1,	golf_1986_w1,	golf_1987_w1,	golf_1988_w1,	golf_1989_w1,	golf_1990_w1,	golf_1991_w1,	golf_1992_w1,	golf_1993_w1,	golf_1994_w1,	golf_1995_w1,	golf_1996_w1,	golf_1997_w1,	golf_1998_w1,	golf_1999_w1,	golf_2000_w1,	golf_2001_w1,	golf_2002_w1,	golf_2003_w1,	golf_2004_w1,	golf_2005_w1,	golf_2006_w1,	golf_2007_w1,	golf_2008_w1,	golf_2009_w1,	golf_2010_w1,	golf_2011_w1,	golf_2012_w1,	golf_2013_w1)
write.csv(golf_w1, file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/annual_use/golf_w1.csv")

golf_w1p <- 	cbind(	GEOID,	golf_1950_w1p,	golf_1951_w1p,	golf_1952_w1p,	golf_1953_w1p,	golf_1954_w1p,	golf_1955_w1p,	golf_1956_w1p,	golf_1957_w1p,	golf_1958_w1p,	golf_1959_w1p,	golf_1960_w1p,	golf_1961_w1p,	golf_1962_w1p,	golf_1963_w1p,	golf_1964_w1p,	golf_1965_w1p,	golf_1966_w1p,	golf_1967_w1p,	golf_1968_w1p,	golf_1969_w1p,	golf_1970_w1p,	golf_1971_w1p,	golf_1972_w1p,	golf_1973_w1p,	golf_1974_w1p,	golf_1975_w1p,	golf_1976_w1p,	golf_1977_w1p,	golf_1978_w1p,	golf_1979_w1p,	golf_1980_w1p,	golf_1981_w1p,	golf_1982_w1p,	golf_1983_w1p,	golf_1984_w1p,	golf_1985_w1p,	golf_1986_w1p,	golf_1987_w1p,	golf_1988_w1p,	golf_1989_w1p,	golf_1990_w1p,	golf_1991_w1p,	golf_1992_w1p,	golf_1993_w1p,	golf_1994_w1p,	golf_1995_w1p,	golf_1996_w1p,	golf_1997_w1p,	golf_1998_w1p,	golf_1999_w1p,	golf_2000_w1p,	golf_2001_w1p,	golf_2002_w1p,	golf_2003_w1p,	golf_2004_w1p,	golf_2005_w1p,	golf_2006_w1p,	golf_2007_w1p,	golf_2008_w1p,	golf_2009_w1p,	golf_2010_w1p,	golf_2011_w1p,	golf_2012_w1p,	golf_2013_w1p)
write.csv(golf_w1p, file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/annual_use/golf_w1p.csv") 


golf_w1 <-subset(golf_w1, select=-c(GEOID))
golf_w1p <-subset(golf_w1p, select=-c(GEOID))

gw <-subset(gw, select=-c(X, GEOID))
sw <-subset(sw, select=-c(X, GEOID))

gw <-subset(gw, select=-c(X2014,X2015,X2016))
sw <-subset(sw, select=-c(X2014,X2015,X2016))


golf_w1_gw <- golf_w1*gw
golf_w1_sw <- golf_w1*sw

golf_w1p_gw <- golf_w1p*gw
golf_w1p_sw <- golf_w1p*sw

write.csv(cbind(GEOID,golf_w1_gw), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/annual_use/golf_w1_gw.csv")
write.csv(cbind(GEOID,golf_w1_sw), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/annual_use/golf_w1_sw.csv")
write.csv(cbind(GEOID,golf_w1p_gw), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/annual_use/golf_w1p_gw.csv")
write.csv(cbind(GEOID,golf_w1p_sw), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/annual_use/golf_w1p_sw.csv")




