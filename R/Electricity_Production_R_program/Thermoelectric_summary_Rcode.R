
library(reshape)
library(doBy)

## ready county shapefile with final GEOID
cnty <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_analysis/climatevar/cnty_shp1.csv", header=TRUE)
GEOID <- cnty$GEOID
GEOID <- as.data.frame(GEOID)

# read files
cc_max <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/imports/cc_max_mgy_new.csv", header=TRUE)
cc <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/imports/cc_mgy_new.csv", header=TRUE)
cc_min <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/imports/cc_min_mgy_new.csv", header=TRUE)
cw_max <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/imports/cw_max_mgy_new.csv", header=TRUE)
cw <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/imports/cw_mgy_new.csv", header=TRUE)
cw_min <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/imports/cw_min_mgy_new.csv", header=TRUE)



cc_max_1950 <- summaryBy(X1950 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1951 <- summaryBy(X1951 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1952 <- summaryBy(X1952 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1953 <- summaryBy(X1953 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1954 <- summaryBy(X1954 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1955 <- summaryBy(X1955 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1956 <- summaryBy(X1956 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1957 <- summaryBy(X1957 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1958 <- summaryBy(X1958 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1959 <- summaryBy(X1959 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1960 <- summaryBy(X1960 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1961 <- summaryBy(X1961 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1962 <- summaryBy(X1962 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1963 <- summaryBy(X1963 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1964 <- summaryBy(X1964 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1965 <- summaryBy(X1965 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1966 <- summaryBy(X1966 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1967 <- summaryBy(X1967 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1968 <- summaryBy(X1968 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1969 <- summaryBy(X1969 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1970 <- summaryBy(X1970 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1971 <- summaryBy(X1971 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1972 <- summaryBy(X1972 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1973 <- summaryBy(X1973 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1974 <- summaryBy(X1974 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1975 <- summaryBy(X1975 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1976 <- summaryBy(X1976 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1977 <- summaryBy(X1977 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1978 <- summaryBy(X1978 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1979 <- summaryBy(X1979 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1980 <- summaryBy(X1980 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1981 <- summaryBy(X1981 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1982 <- summaryBy(X1982 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1983 <- summaryBy(X1983 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1984 <- summaryBy(X1984 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1985 <- summaryBy(X1985 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1986 <- summaryBy(X1986 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1987 <- summaryBy(X1987 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1988 <- summaryBy(X1988 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1989 <- summaryBy(X1989 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1990 <- summaryBy(X1990 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1991 <- summaryBy(X1991 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1992 <- summaryBy(X1992 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1993 <- summaryBy(X1993 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1994 <- summaryBy(X1994 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1995 <- summaryBy(X1995 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1996 <- summaryBy(X1996 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1997 <- summaryBy(X1997 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1998 <- summaryBy(X1998 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_1999 <- summaryBy(X1999 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_2000 <- summaryBy(X2000 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_2001 <- summaryBy(X2001 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_2002 <- summaryBy(X2002 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_2003 <- summaryBy(X2003 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_2004 <- summaryBy(X2004 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_2005 <- summaryBy(X2005 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_2006 <- summaryBy(X2006 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_2007 <- summaryBy(X2007 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_2008 <- summaryBy(X2008 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_2009 <- summaryBy(X2009 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_2010 <- summaryBy(X2010 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_2011 <- summaryBy(X2011 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_2012 <- summaryBy(X2012 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_2013 <- summaryBy(X2013 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_2014 <- summaryBy(X2014 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_2015 <- summaryBy(X2015 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)
cc_max_2016 <- summaryBy(X2016 ~ FIPS + WaterSource, data=cc_max, FUN=c(sum), na.rm=TRUE)

cc_max_new <- cbind(cc_max_1950,	cc_max_1951,	cc_max_1952,	cc_max_1953,	cc_max_1954,	cc_max_1955,	cc_max_1956, 
                    cc_max_1957,	cc_max_1958,	cc_max_1959,	cc_max_1960,	cc_max_1961,	cc_max_1962,	cc_max_1963,	
                    cc_max_1964,	cc_max_1965,	cc_max_1966,	cc_max_1967,	cc_max_1968,	cc_max_1969,	cc_max_1970,	
                    cc_max_1971,	cc_max_1972,	cc_max_1973,	cc_max_1974,	cc_max_1975,	cc_max_1976,	cc_max_1977,	
                    cc_max_1978,	cc_max_1979,	cc_max_1980,	cc_max_1981,	cc_max_1982,	cc_max_1983,	cc_max_1984,	
                    cc_max_1985,	cc_max_1986,	cc_max_1987,	cc_max_1988,	cc_max_1989,	cc_max_1990,	cc_max_1991,	
                    cc_max_1992,	cc_max_1993,	cc_max_1994,	cc_max_1995,	cc_max_1996,	cc_max_1997,	cc_max_1998,	
                    cc_max_1999,	cc_max_2000,	cc_max_2001,	cc_max_2002,	cc_max_2003,	cc_max_2004,	cc_max_2005,	
                    cc_max_2006,	cc_max_2007,	cc_max_2008,	cc_max_2009,	cc_max_2010,	cc_max_2011,	cc_max_2012,	
                    cc_max_2013,	cc_max_2014,	cc_max_2015,	cc_max_2016)


cc_1950 <- summaryBy(X1950 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1951 <- summaryBy(X1951 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1952 <- summaryBy(X1952 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1953 <- summaryBy(X1953 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1954 <- summaryBy(X1954 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1955 <- summaryBy(X1955 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1956 <- summaryBy(X1956 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1957 <- summaryBy(X1957 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1958 <- summaryBy(X1958 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1959 <- summaryBy(X1959 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1960 <- summaryBy(X1960 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1961 <- summaryBy(X1961 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1962 <- summaryBy(X1962 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1963 <- summaryBy(X1963 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1964 <- summaryBy(X1964 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1965 <- summaryBy(X1965 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1966 <- summaryBy(X1966 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1967 <- summaryBy(X1967 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1968 <- summaryBy(X1968 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1969 <- summaryBy(X1969 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1970 <- summaryBy(X1970 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1971 <- summaryBy(X1971 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1972 <- summaryBy(X1972 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1973 <- summaryBy(X1973 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1974 <- summaryBy(X1974 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1975 <- summaryBy(X1975 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1976 <- summaryBy(X1976 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1977 <- summaryBy(X1977 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1978 <- summaryBy(X1978 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1979 <- summaryBy(X1979 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1980 <- summaryBy(X1980 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1981 <- summaryBy(X1981 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1982 <- summaryBy(X1982 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1983 <- summaryBy(X1983 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1984 <- summaryBy(X1984 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1985 <- summaryBy(X1985 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1986 <- summaryBy(X1986 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1987 <- summaryBy(X1987 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1988 <- summaryBy(X1988 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1989 <- summaryBy(X1989 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1990 <- summaryBy(X1990 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1991 <- summaryBy(X1991 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1992 <- summaryBy(X1992 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1993 <- summaryBy(X1993 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1994 <- summaryBy(X1994 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1995 <- summaryBy(X1995 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1996 <- summaryBy(X1996 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1997 <- summaryBy(X1997 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1998 <- summaryBy(X1998 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_1999 <- summaryBy(X1999 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_2000 <- summaryBy(X2000 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_2001 <- summaryBy(X2001 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_2002 <- summaryBy(X2002 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_2003 <- summaryBy(X2003 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_2004 <- summaryBy(X2004 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_2005 <- summaryBy(X2005 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_2006 <- summaryBy(X2006 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_2007 <- summaryBy(X2007 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_2008 <- summaryBy(X2008 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_2009 <- summaryBy(X2009 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_2010 <- summaryBy(X2010 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_2011 <- summaryBy(X2011 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_2012 <- summaryBy(X2012 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_2013 <- summaryBy(X2013 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_2014 <- summaryBy(X2014 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_2015 <- summaryBy(X2015 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)
cc_2016 <- summaryBy(X2016 ~ FIPS + WaterSource, data=cc, FUN=c(sum), na.rm=TRUE)


cc_new <- cbind(	cc_1950,	cc_1951,	cc_1952,	cc_1953,	cc_1954,	cc_1955,	cc_1956,	cc_1957,	cc_1958,	cc_1959,	
                 cc_1960,	cc_1961,	cc_1962,	cc_1963,	cc_1964,	cc_1965,	cc_1966,	cc_1967,	cc_1968,	cc_1969,	cc_1970,	
                 cc_1971,	cc_1972,	cc_1973,	cc_1974,	cc_1975,	cc_1976,	cc_1977,	cc_1978,	cc_1979,	cc_1980,	cc_1981,	
                 cc_1982,	cc_1983,	cc_1984,	cc_1985,	cc_1986,	cc_1987,	cc_1988,	cc_1989,	cc_1990,	cc_1991,	cc_1992,
                 cc_1993,	cc_1994,	cc_1995,	cc_1996,	cc_1997,	cc_1998,	cc_1999,	cc_2000,	cc_2001,	cc_2002,	cc_2003,
                 cc_2004,	cc_2005,	cc_2006,	cc_2007,	cc_2008,	cc_2009,	cc_2010,	cc_2011,	cc_2012,	cc_2013,	cc_2014,
                 cc_2015,	cc_2016)




cc_min_1950 <- summaryBy(X1950 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1951 <- summaryBy(X1951 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1952 <- summaryBy(X1952 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1953 <- summaryBy(X1953 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1954 <- summaryBy(X1954 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1955 <- summaryBy(X1955 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1956 <- summaryBy(X1956 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1957 <- summaryBy(X1957 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1958 <- summaryBy(X1958 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1959 <- summaryBy(X1959 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1960 <- summaryBy(X1960 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1961 <- summaryBy(X1961 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1962 <- summaryBy(X1962 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1963 <- summaryBy(X1963 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1964 <- summaryBy(X1964 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1965 <- summaryBy(X1965 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1966 <- summaryBy(X1966 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1967 <- summaryBy(X1967 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1968 <- summaryBy(X1968 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1969 <- summaryBy(X1969 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1970 <- summaryBy(X1970 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1971 <- summaryBy(X1971 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1972 <- summaryBy(X1972 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1973 <- summaryBy(X1973 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1974 <- summaryBy(X1974 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1975 <- summaryBy(X1975 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1976 <- summaryBy(X1976 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1977 <- summaryBy(X1977 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1978 <- summaryBy(X1978 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1979 <- summaryBy(X1979 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1980 <- summaryBy(X1980 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1981 <- summaryBy(X1981 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1982 <- summaryBy(X1982 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1983 <- summaryBy(X1983 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1984 <- summaryBy(X1984 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1985 <- summaryBy(X1985 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1986 <- summaryBy(X1986 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1987 <- summaryBy(X1987 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1988 <- summaryBy(X1988 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1989 <- summaryBy(X1989 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1990 <- summaryBy(X1990 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1991 <- summaryBy(X1991 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1992 <- summaryBy(X1992 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1993 <- summaryBy(X1993 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1994 <- summaryBy(X1994 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1995 <- summaryBy(X1995 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1996 <- summaryBy(X1996 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1997 <- summaryBy(X1997 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1998 <- summaryBy(X1998 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_1999 <- summaryBy(X1999 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_2000 <- summaryBy(X2000 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_2001 <- summaryBy(X2001 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_2002 <- summaryBy(X2002 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_2003 <- summaryBy(X2003 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_2004 <- summaryBy(X2004 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_2005 <- summaryBy(X2005 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_2006 <- summaryBy(X2006 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_2007 <- summaryBy(X2007 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_2008 <- summaryBy(X2008 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_2009 <- summaryBy(X2009 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_2010 <- summaryBy(X2010 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_2011 <- summaryBy(X2011 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_2012 <- summaryBy(X2012 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_2013 <- summaryBy(X2013 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_2014 <- summaryBy(X2014 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_2015 <- summaryBy(X2015 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)
cc_min_2016 <- summaryBy(X2016 ~ FIPS + WaterSource, data=cc_min, FUN=c(sum), na.rm=TRUE)


cc_min_new <- cbind(cc_min_1950,	cc_min_1951,	cc_min_1952,	cc_min_1953,	cc_min_1954,	cc_min_1955,	cc_min_1956,	
                cc_min_1957,	cc_min_1958,	cc_min_1959,	cc_min_1960,	cc_min_1961,	cc_min_1962,	cc_min_1963,	
                cc_min_1964,	cc_min_1965,	cc_min_1966,	cc_min_1967,	cc_min_1968,	cc_min_1969,	cc_min_1970,	
                cc_min_1971,	cc_min_1972,	cc_min_1973,	cc_min_1974,	cc_min_1975,	cc_min_1976,	cc_min_1977,	
                cc_min_1978,	cc_min_1979,	cc_min_1980,	cc_min_1981,	cc_min_1982,	cc_min_1983,	cc_min_1984,	
                cc_min_1985,	cc_min_1986,	cc_min_1987,	cc_min_1988,	cc_min_1989,	cc_min_1990,	cc_min_1991,	
                cc_min_1992,	cc_min_1993,	cc_min_1994,	cc_min_1995,	cc_min_1996,	cc_min_1997,	cc_min_1998,	
                cc_min_1999,	cc_min_2000,	cc_min_2001,	cc_min_2002,	cc_min_2003,	cc_min_2004,	cc_min_2005,	
                cc_min_2006,	cc_min_2007,	cc_min_2008,	cc_min_2009,	cc_min_2010,	cc_min_2011,	cc_min_2012,	
                cc_min_2013,	cc_min_2014,	cc_min_2015,	cc_min_2016)



cw_max_1950 <- summaryBy(X1950 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1951 <- summaryBy(X1951 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1952 <- summaryBy(X1952 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1953 <- summaryBy(X1953 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1954 <- summaryBy(X1954 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1955 <- summaryBy(X1955 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1956 <- summaryBy(X1956 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1957 <- summaryBy(X1957 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1958 <- summaryBy(X1958 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1959 <- summaryBy(X1959 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1960 <- summaryBy(X1960 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1961 <- summaryBy(X1961 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1962 <- summaryBy(X1962 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1963 <- summaryBy(X1963 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1964 <- summaryBy(X1964 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1965 <- summaryBy(X1965 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1966 <- summaryBy(X1966 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1967 <- summaryBy(X1967 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1968 <- summaryBy(X1968 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1969 <- summaryBy(X1969 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1970 <- summaryBy(X1970 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1971 <- summaryBy(X1971 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1972 <- summaryBy(X1972 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1973 <- summaryBy(X1973 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1974 <- summaryBy(X1974 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1975 <- summaryBy(X1975 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1976 <- summaryBy(X1976 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1977 <- summaryBy(X1977 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1978 <- summaryBy(X1978 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1979 <- summaryBy(X1979 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1980 <- summaryBy(X1980 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1981 <- summaryBy(X1981 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1982 <- summaryBy(X1982 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1983 <- summaryBy(X1983 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1984 <- summaryBy(X1984 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1985 <- summaryBy(X1985 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1986 <- summaryBy(X1986 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1987 <- summaryBy(X1987 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1988 <- summaryBy(X1988 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1989 <- summaryBy(X1989 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1990 <- summaryBy(X1990 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1991 <- summaryBy(X1991 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1992 <- summaryBy(X1992 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1993 <- summaryBy(X1993 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1994 <- summaryBy(X1994 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1995 <- summaryBy(X1995 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1996 <- summaryBy(X1996 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1997 <- summaryBy(X1997 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1998 <- summaryBy(X1998 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_1999 <- summaryBy(X1999 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_2000 <- summaryBy(X2000 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_2001 <- summaryBy(X2001 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_2002 <- summaryBy(X2002 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_2003 <- summaryBy(X2003 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_2004 <- summaryBy(X2004 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_2005 <- summaryBy(X2005 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_2006 <- summaryBy(X2006 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_2007 <- summaryBy(X2007 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_2008 <- summaryBy(X2008 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_2009 <- summaryBy(X2009 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_2010 <- summaryBy(X2010 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_2011 <- summaryBy(X2011 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_2012 <- summaryBy(X2012 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_2013 <- summaryBy(X2013 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_2014 <- summaryBy(X2014 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_2015 <- summaryBy(X2015 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)
cw_max_2016 <- summaryBy(X2016 ~ FIPS + WaterSource, data=cw_max, FUN=c(sum), na.rm=TRUE)


cw_max_new <- cbind(	cw_max_1950,	cw_max_1951,	cw_max_1952,	cw_max_1953,	cw_max_1954,	cw_max_1955,
                     cw_max_1956,	cw_max_1957,	cw_max_1958,	cw_max_1959,	cw_max_1960,	cw_max_1961,
                     cw_max_1962,	cw_max_1963,	cw_max_1964,	cw_max_1965,	cw_max_1966,	cw_max_1967,	
                     cw_max_1968,	cw_max_1969,	cw_max_1970,	cw_max_1971,	cw_max_1972,	cw_max_1973,	
                     cw_max_1974,	cw_max_1975,	cw_max_1976,	cw_max_1977,	cw_max_1978,	cw_max_1979,	
                     cw_max_1980,	cw_max_1981,	cw_max_1982,	cw_max_1983,	cw_max_1984,	cw_max_1985,	
                     cw_max_1986,	cw_max_1987,	cw_max_1988,	cw_max_1989,	cw_max_1990,	cw_max_1991,	
                     cw_max_1992,	cw_max_1993,	cw_max_1994,	cw_max_1995,	cw_max_1996,	cw_max_1997,	
                     cw_max_1998,	cw_max_1999,	cw_max_2000,	cw_max_2001,	cw_max_2002,	cw_max_2003,	
                     cw_max_2004,	cw_max_2005,	cw_max_2006,	cw_max_2007,	cw_max_2008,	cw_max_2009,	
                     cw_max_2010,	cw_max_2011,	cw_max_2012,	cw_max_2013,	cw_max_2014,	cw_max_2015,	
                     cw_max_2016)



cw_1950 <- summaryBy(X1950 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1951 <- summaryBy(X1951 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1952 <- summaryBy(X1952 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1953 <- summaryBy(X1953 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1954 <- summaryBy(X1954 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1955 <- summaryBy(X1955 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1956 <- summaryBy(X1956 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1957 <- summaryBy(X1957 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1958 <- summaryBy(X1958 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1959 <- summaryBy(X1959 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1960 <- summaryBy(X1960 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1961 <- summaryBy(X1961 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1962 <- summaryBy(X1962 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1963 <- summaryBy(X1963 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1964 <- summaryBy(X1964 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1965 <- summaryBy(X1965 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1966 <- summaryBy(X1966 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1967 <- summaryBy(X1967 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1968 <- summaryBy(X1968 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1969 <- summaryBy(X1969 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1970 <- summaryBy(X1970 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1971 <- summaryBy(X1971 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1972 <- summaryBy(X1972 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1973 <- summaryBy(X1973 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1974 <- summaryBy(X1974 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1975 <- summaryBy(X1975 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1976 <- summaryBy(X1976 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1977 <- summaryBy(X1977 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1978 <- summaryBy(X1978 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1979 <- summaryBy(X1979 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1980 <- summaryBy(X1980 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1981 <- summaryBy(X1981 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1982 <- summaryBy(X1982 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1983 <- summaryBy(X1983 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1984 <- summaryBy(X1984 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1985 <- summaryBy(X1985 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1986 <- summaryBy(X1986 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1987 <- summaryBy(X1987 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1988 <- summaryBy(X1988 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1989 <- summaryBy(X1989 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1990 <- summaryBy(X1990 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1991 <- summaryBy(X1991 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1992 <- summaryBy(X1992 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1993 <- summaryBy(X1993 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1994 <- summaryBy(X1994 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1995 <- summaryBy(X1995 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1996 <- summaryBy(X1996 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1997 <- summaryBy(X1997 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1998 <- summaryBy(X1998 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_1999 <- summaryBy(X1999 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_2000 <- summaryBy(X2000 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_2001 <- summaryBy(X2001 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_2002 <- summaryBy(X2002 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_2003 <- summaryBy(X2003 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_2004 <- summaryBy(X2004 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_2005 <- summaryBy(X2005 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_2006 <- summaryBy(X2006 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_2007 <- summaryBy(X2007 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_2008 <- summaryBy(X2008 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_2009 <- summaryBy(X2009 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_2010 <- summaryBy(X2010 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_2011 <- summaryBy(X2011 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_2012 <- summaryBy(X2012 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_2013 <- summaryBy(X2013 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_2014 <- summaryBy(X2014 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_2015 <- summaryBy(X2015 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)
cw_2016 <- summaryBy(X2016 ~ FIPS + WaterSource, data=cw, FUN=c(sum), na.rm=TRUE)



cw_new <- cbind(cw_1950,	cw_1951,	cw_1952,	cw_1953,	cw_1954,	cw_1955,	cw_1956,	cw_1957,	cw_1958,	
                cw_1959,	cw_1960,	cw_1961,	cw_1962,	cw_1963,	cw_1964,	cw_1965,	cw_1966,	cw_1967,	
                cw_1968,	cw_1969,	cw_1970,	cw_1971,	cw_1972,	cw_1973,	cw_1974,	cw_1975,	cw_1976,	
                cw_1977,	cw_1978,	cw_1979,	cw_1980,	cw_1981,	cw_1982,	cw_1983,	cw_1984,	cw_1985,	
                cw_1986,	cw_1987,	cw_1988,	cw_1989,	cw_1990,	cw_1991,	cw_1992,	cw_1993,	cw_1994,	
                cw_1995,	cw_1996,	cw_1997,	cw_1998,	cw_1999,	cw_2000,	cw_2001,	cw_2002,	cw_2003,	
                cw_2004,	cw_2005,	cw_2006,	cw_2007,	cw_2008,	cw_2009,	cw_2010,	cw_2011,	cw_2012,	
                cw_2013,	cw_2014,	cw_2015,	cw_2016)




cw_min_1950 <- summaryBy(X1950 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1951 <- summaryBy(X1951 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1952 <- summaryBy(X1952 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1953 <- summaryBy(X1953 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1954 <- summaryBy(X1954 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1955 <- summaryBy(X1955 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1956 <- summaryBy(X1956 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1957 <- summaryBy(X1957 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1958 <- summaryBy(X1958 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1959 <- summaryBy(X1959 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1960 <- summaryBy(X1960 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1961 <- summaryBy(X1961 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1962 <- summaryBy(X1962 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1963 <- summaryBy(X1963 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1964 <- summaryBy(X1964 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1965 <- summaryBy(X1965 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1966 <- summaryBy(X1966 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1967 <- summaryBy(X1967 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1968 <- summaryBy(X1968 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1969 <- summaryBy(X1969 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1970 <- summaryBy(X1970 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1971 <- summaryBy(X1971 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1972 <- summaryBy(X1972 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1973 <- summaryBy(X1973 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1974 <- summaryBy(X1974 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1975 <- summaryBy(X1975 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1976 <- summaryBy(X1976 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1977 <- summaryBy(X1977 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1978 <- summaryBy(X1978 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1979 <- summaryBy(X1979 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1980 <- summaryBy(X1980 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1981 <- summaryBy(X1981 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1982 <- summaryBy(X1982 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1983 <- summaryBy(X1983 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1984 <- summaryBy(X1984 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1985 <- summaryBy(X1985 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1986 <- summaryBy(X1986 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1987 <- summaryBy(X1987 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1988 <- summaryBy(X1988 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1989 <- summaryBy(X1989 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1990 <- summaryBy(X1990 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1991 <- summaryBy(X1991 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1992 <- summaryBy(X1992 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1993 <- summaryBy(X1993 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1994 <- summaryBy(X1994 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1995 <- summaryBy(X1995 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1996 <- summaryBy(X1996 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1997 <- summaryBy(X1997 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1998 <- summaryBy(X1998 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_1999 <- summaryBy(X1999 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_2000 <- summaryBy(X2000 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_2001 <- summaryBy(X2001 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_2002 <- summaryBy(X2002 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_2003 <- summaryBy(X2003 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_2004 <- summaryBy(X2004 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_2005 <- summaryBy(X2005 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_2006 <- summaryBy(X2006 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_2007 <- summaryBy(X2007 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_2008 <- summaryBy(X2008 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_2009 <- summaryBy(X2009 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_2010 <- summaryBy(X2010 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_2011 <- summaryBy(X2011 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_2012 <- summaryBy(X2012 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_2013 <- summaryBy(X2013 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_2014 <- summaryBy(X2014 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_2015 <- summaryBy(X2015 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)
cw_min_2016 <- summaryBy(X2016 ~ FIPS + WaterSource, data=cw_min, FUN=c(sum), na.rm=TRUE)


cw_min_new <- cbind(cw_min_1950,	cw_min_1951,	cw_min_1952,	cw_min_1953,	cw_min_1954,	cw_min_1955,	
                     cw_min_1956,	cw_min_1957,	cw_min_1958,	cw_min_1959,	cw_min_1960,	cw_min_1961,	
                     cw_min_1962,	cw_min_1963,	cw_min_1964,	cw_min_1965,	cw_min_1966,	cw_min_1967,	
                     cw_min_1968,	cw_min_1969,	cw_min_1970,	cw_min_1971,	cw_min_1972,	cw_min_1973,	
                     cw_min_1974,	cw_min_1975,	cw_min_1976,	cw_min_1977,	cw_min_1978,	cw_min_1979,	
                     cw_min_1980,	cw_min_1981,	cw_min_1982,	cw_min_1983,	cw_min_1984,	cw_min_1985,	
                     cw_min_1986,	cw_min_1987,	cw_min_1988,	cw_min_1989,	cw_min_1990,	cw_min_1991,	
                     cw_min_1992,	cw_min_1993,	cw_min_1994,	cw_min_1995,	cw_min_1996,	cw_min_1997,	
                     cw_min_1998,	cw_min_1999,	cw_min_2000,	cw_min_2001,	cw_min_2002,	cw_min_2003,	
                     cw_min_2004,	cw_min_2005,	cw_min_2006,	cw_min_2007,	cw_min_2008,	cw_min_2009,	
                     cw_min_2010,	cw_min_2011,	cw_min_2012,	cw_min_2013,	cw_min_2014,	cw_min_2015,	
                     cw_min_2016)

write.csv(cc_max_new, file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/summary_files_by_source/cc_max.csv")
write.csv(cc_new, file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/summary_files_by_source/cc.csv")
write.csv(cc_min_new, file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/summary_files_by_source/cc_min.csv")
write.csv(cw_max_new, file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/summary_files_by_source/cw_max.csv")
write.csv(cw_new, file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/summary_files_by_source/cw.csv")
write.csv(cw_min_new, file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/summary_files_by_source/cw_min.csv")


cc_max <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/summary_files_by_source/cc_max.csv", header=TRUE)
cc <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/summary_files_by_source/cc.csv", header=TRUE)
cc_min <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/summary_files_by_source/cc_min.csv", header=TRUE)
cw_max <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/summary_files_by_source/cw_max.csv", header=TRUE)
cw <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/summary_files_by_source/cw.csv", header=TRUE)
cw_min <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/summary_files_by_source/cw_min.csv", header=TRUE)


ptwgwfr_prop <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/Final_wateruse_estimates/proportions/ind_files/ptwgwfr_prop2.csv", header=TRUE)
ptwgwsa_prop <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/Final_wateruse_estimates/proportions/ind_files/ptwgwsa_prop2.csv", header=TRUE)
ptwswfr_prop <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/Final_wateruse_estimates/proportions/ind_files/ptwswfr_prop2.csv", header=TRUE)
ptwswsa_prop <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/Final_wateruse_estimates/proportions/ind_files/ptwswsa_prop2.csv", header=TRUE)



cc_max_NA <- cc_max[is.na(cc_max$WaterSource),]
cc_NA <- cc[is.na(cc$WaterSource),]
cc_min_NA <- cc_min[is.na(cc_min$WaterSource),]
cw_max_NA <- cw_max[is.na(cw_max$WaterSource),]
cw_NA <- cw[is.na(cw$WaterSource),]
cw_min_NA <- cw_min[is.na(cw_min$WaterSource),]


colnames(GEOID) <- c("FIPS")

cc_max_NA <- merge(GEOID, cc_max_NA, by="FIPS", all.x=TRUE)
cc_NA <- merge(GEOID, cc_NA, by="FIPS", all.x=TRUE)
cc_min_NA <- merge(GEOID, cc_min_NA, by="FIPS", all.x=TRUE)
cw_max_NA <- merge(GEOID, cw_max_NA, by="FIPS", all.x=TRUE)
cw_NA <- merge(GEOID, cw_NA, by="FIPS", all.x=TRUE)
cw_min_NA <- merge(GEOID, cc_min_NA, by="FIPS", all.x=TRUE)


ptwgwfr_prop <- merge(GEOID, ptwgwfr_prop, by="FIPS", all.x=TRUE)
ptwgwsa_prop <- merge(GEOID, ptwgwsa_prop, by="FIPS", all.x=TRUE)
ptwswfr_prop <- merge(GEOID, ptwswfr_prop, by="FIPS", all.x=TRUE)
ptwswsa_prop <- merge(GEOID, ptwswsa_prop, by="FIPS", all.x=TRUE)


cc_max_NA <- subset(cc_max_NA, select=c(-FIPS, -WaterSource))
cc_NA <- subset(cc_NA, select=c(-FIPS, -WaterSource))
cc_min_NA <- subset(cc_min_NA, select=c(-FIPS, -WaterSource))
cw_max_NA <- subset(cw_max_NA, select=c(-FIPS, -WaterSource))
cw_NA <- subset(cw_NA, select=c(-FIPS, -WaterSource))
cw_min_NA <- subset(cw_min_NA, select=c(-FIPS, -WaterSource))


ptwgwfr_prop <- subset(ptwgwfr_prop, select=c(-FIPS))
ptwgwsa_prop <- subset(ptwgwsa_prop, select=c(-FIPS))
ptwswfr_prop <- subset(ptwswfr_prop, select=c(-FIPS))
ptwswsa_prop <- subset(ptwswsa_prop, select=c(-FIPS))

##
cc_max_gwfr <- cc_max_NA*ptwgwfr_prop
cc_gwfr <- cc_NA*ptwgwfr_prop
cc_min_gwfr <- cc_min_NA*ptwgwfr_prop

cc_max_gwsa <- cc_max_NA*ptwgwsa_prop
cc_gwsa <- cc_NA*ptwgwsa_prop
cc_min_gwsa <- cc_min_NA*ptwgwsa_prop

cc_max_swfr <- cc_max_NA*ptwswfr_prop
cc_swfr <- cc_NA*ptwswfr_prop
cc_min_swfr <- cc_min_NA*ptwswfr_prop

cc_max_swsa <- cc_max_NA*ptwswsa_prop
cc_swsa <- cc_NA*ptwswsa_prop
cc_min_swsa <- cc_min_NA*ptwswsa_prop


cw_max_gwfr <- cw_max_NA*ptwgwfr_prop
cw_gwfr <- cw_NA*ptwgwfr_prop
cw_min_gwfr <- cw_min_NA*ptwgwfr_prop

cw_max_gwsa <- cw_max_NA*ptwgwsa_prop
cw_gwsa <- cw_NA*ptwgwsa_prop
cw_min_gwsa <- cw_min_NA*ptwgwsa_prop

cw_max_swfr <- cw_max_NA*ptwswfr_prop
cw_swfr <- cw_NA*ptwswfr_prop
cw_min_swfr <- cw_min_NA*ptwswfr_prop

cw_max_swsa <- cw_max_NA*ptwswsa_prop
cw_swsa <- cw_NA*ptwswsa_prop
cw_min_swsa <- cw_min_NA*ptwswsa_prop


###

cc_max_gwfr <- cbind(GEOID, cc_max_gwfr)
cc_gwfr <- cbind(GEOID, cc_gwfr) 
cc_min_gwfr <- cbind(GEOID, cc_min_gwfr)
cc_max_gwsa <- cbind(GEOID, cc_max_gwsa)
cc_gwsa <- cbind(GEOID, cc_gwsa)
cc_min_gwsa <- cbind(GEOID, cc_min_gwsa) 
cc_max_swfr <- cbind(GEOID, cc_max_swfr)
cc_swfr <- cbind(GEOID, cc_swfr)
cc_min_swfr <- cbind(GEOID, cc_min_swfr)
cc_max_swsa <- cbind(GEOID, cc_max_swsa)
cc_swsa <- cbind(GEOID, cc_swsa)
cc_min_swsa <- cbind(GEOID, cc_min_swsa)

cw_max_gwfr <- cbind(GEOID, cw_max_gwfr)
cw_gwfr <- cbind(GEOID, cw_gwfr)
cw_min_gwfr <- cbind(GEOID, cw_min_gwfr)
cw_max_gwsa <- cbind(GEOID, cw_max_gwsa)
cw_gwsa <- cbind(GEOID, cw_gwsa)
cw_min_gwsa <- cbind(GEOID, cw_min_gwsa) 
cw_max_swfr <- cbind(GEOID, cw_max_swfr)
cw_swfr <- cbind(GEOID, cw_swfr)
cw_min_swfr <- cbind(GEOID, cw_min_swfr)
cw_max_swsa <- cbind(GEOID, cw_max_swsa)
cw_swsa <- cbind(GEOID, cw_swsa)
cw_min_swsa <- cbind(GEOID, cw_min_swsa)

###melt data

cc_max_gwfr <- melt(cc_max_gwfr, id=c("FIPS"), na.rm=FALSE)
cc_gwfr <- melt(cc_gwfr, id=c("FIPS"), na.rm=FALSE)
cc_min_gwfr <- melt(cc_min_gwfr, id=c("FIPS"), na.rm=FALSE)
cc_max_gwsa <- melt(cc_max_gwsa, id=c("FIPS"), na.rm=FALSE)
cc_gwsa <- melt(cc_gwsa, id=c("FIPS"), na.rm=FALSE)
cc_min_gwsa <- melt(cc_min_gwsa, id=c("FIPS"), na.rm=FALSE)
cc_max_swfr <- melt(cc_max_swfr, id=c("FIPS"), na.rm=FALSE)
cc_swfr <- melt(cc_swfr, id=c("FIPS"), na.rm=FALSE)
cc_min_swfr <- melt(cc_min_swfr, id=c("FIPS"), na.rm=FALSE)
cc_max_swsa <- melt(cc_max_swsa, id=c("FIPS"), na.rm=FALSE)
cc_swsa <- melt(cc_swsa, id=c("FIPS"), na.rm=FALSE)
cc_min_swsa <- melt(cc_min_swsa, id=c("FIPS"), na.rm=FALSE)

cw_max_gwfr <- melt(cw_max_gwfr, id=c("FIPS"), na.rm=FALSE)
cw_gwfr <- melt(cw_gwfr, id=c("FIPS"), na.rm=FALSE)
cw_min_gwfr <- melt(cw_min_gwfr, id=c("FIPS"), na.rm=FALSE)
cw_max_gwsa <- melt(cw_max_gwsa, id=c("FIPS"), na.rm=FALSE)
cw_gwsa <- melt(cw_gwsa, id=c("FIPS"), na.rm=FALSE)
cw_min_gwsa <- melt(cw_min_gwsa, id=c("FIPS"), na.rm=FALSE)
cw_max_swfr <- melt(cw_max_swfr, id=c("FIPS"), na.rm=FALSE)
cw_swfr <- melt(cw_swfr, id=c("FIPS"), na.rm=FALSE)
cw_min_swfr <- melt(cw_min_swfr, id=c("FIPS"), na.rm=FALSE)
cw_max_swsa <- melt(cw_max_swsa, id=c("FIPS"), na.rm=FALSE)
cw_swsa <- melt(cw_swsa, id=c("FIPS"), na.rm=FALSE)
cw_min_swsa <- melt(cw_min_swsa, id=c("FIPS"), na.rm=FALSE)


thermo_NA <- cbind(	cc_max_gwfr,	cc_gwfr,	cc_min_gwfr,	cc_max_gwsa,	cc_gwsa,	cc_min_gwsa,	cc_max_swfr,	cc_swfr,	cc_min_swfr,	cc_max_swsa,	cc_swsa,	cc_min_swsa,	cw_max_gwfr,	cw_gwfr,	cw_min_gwfr,	cw_max_gwsa,	cw_gwsa,	cw_min_gwsa,	cw_max_swfr,	cw_swfr,	cw_min_swfr,	cw_max_swsa,	cw_swsa,	cw_min_swsa)

thermo_NA2 <- cbind(	cc_min_gwfr,	cc_min_gwsa,	cc_min_swfr,	cc_min_swsa)



write.csv(thermo_NA, file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/summary_files_by_source/thermo_estimated_sources.csv")

write.csv(thermo_NA2, file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/summary_files_by_source/thermo_estimated_sources2.csv")



cc_max <- merge(GEOID, cc_max, by="FIPS", all.x=TRUE)
cc <- merge(GEOID, cc, by="FIPS", all.x=TRUE)
cc_min <- merge(GEOID, cc_min, by="FIPS", all.x=TRUE)
cw_max <- merge(GEOID, cw_max, by="FIPS", all.x=TRUE)
cw <- merge(GEOID, cw, by="FIPS", all.x=TRUE)
cw_min <- merge(GEOID, cw_min, by="FIPS", all.x=TRUE)

cc_max <- melt(cc_max, id=c("FIPS", "WaterSource"), FUN=c(mean))
cc <- melt(cc, id=c("FIPS", "WaterSource"), FUN=c(mean))
cc_min <- melt(cc_min, id=c("FIPS", "WaterSource"), FUN=c(mean))
cw_max <- melt(cw_max, id=c("FIPS", "WaterSource"), FUN=c(mean))
cw <- melt(cw, id=c("FIPS", "WaterSource"), FUN=c(mean))
cw_min <- melt(cw_min, id=c("FIPS", "WaterSource"), FUN=c(mean))


thermo_source <- cbind(cc_max, cc, cc_min, cw_max, cw, cw_min)
write.csv(thermo_source, file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/summary_files_by_source/thermo_known_sources2.csv")


thermo_source <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/summary_files_by_source/thermo_known_sources.csv", header=TRUE)
thermo_est_source <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/new_files_by_source/summary_files_by_source/thermo_estimated_sources.csv", header=TRUE)
fips_year <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/csv_imports/Template_melted.csv", header=TRUE)


thermo_source <- merge(fips_year, thermo_source, by="FIPS_Year", all.x=TRUE)
thermo_est_source <- merge(fips_year, thermo_est_source, by="FIPS_Year", all.x=TRUE)

thermo_source_gwfr <- thermo_source[which(thermo_source$WaterSource=="Fresh_Ground"),]
thermo_source_gwsa <- thermo_source[which(thermo_source$WaterSource=="Saline_Ground"),]
thermo_source_swfr <- thermo_source[which(thermo_source$WaterSource=="Fresh_surface"),]
thermo_source_swsa <- thermo_source[which(thermo_source$WaterSource=="Saline_Surface"),]
thermo_source_disc <- thermo_source[which(thermo_source$WaterSource=="Reclaimed_Discharge"),]
thermo_source_othr <- thermo_source[which(thermo_source$WaterSource=="Other"),]
thermo_source_mix <- thermo_source[which(thermo_source$WaterSource=="Mixed"),]

thermo_source_gwfr <- merge(fips_year, thermo_source_gwfr, by="FIPS_Year", all.x=TRUE)
thermo_source_gwsa <- merge(fips_year, thermo_source_gwsa, by="FIPS_Year", all.x=TRUE)
thermo_source_swfr <- merge(fips_year, thermo_source_swfr, by="FIPS_Year", all.x=TRUE)
thermo_source_swsa <- merge(fips_year, thermo_source_swsa, by="FIPS_Year", all.x=TRUE)
thermo_source_disc <- merge(fips_year, thermo_source_disc, by="FIPS_Year", all.x=TRUE)
thermo_source_othr <- merge(fips_year, thermo_source_othr, by="FIPS_Year", all.x=TRUE)
thermo_source_mix <- merge(fips_year, thermo_source_mix, by="FIPS_Year", all.x=TRUE)

thermo_all <- cbind(thermo_est_source, thermo_source_gwfr,thermo_source_gwsa,thermo_source_swfr,thermo_source_swsa,thermo_source_disc,thermo_source_othr, thermo_source_mix)

write.csv(thermo_all, file="E://EWN_KDF/Data/Thermoelectric_Analysis/Final_wateruse_estimates/version2_estimates/pt_melt_mgy_all2.csv")


##########
#####

##### where I left off 3/11/20 at 6:00PM

pt_co <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/Final_wateruse_estimates/version2_estimates/pt_melt_mgd_all_totals.csv", header=TRUE)
pt_st <- read.csv(file="E://EWN_KDF/Data/Thermoelectric_Analysis/Final_wateruse_estimates/version2_estimates/pt_melt_mgd_all_totals_state.csv", header=TRUE)


pt_usgs_co <- read.csv(file="E://EWN_KDF/Data/USGS_Data/usgs_co_thermo.csv", header=TRUE)
pt_usgs_st <- read.csv(file="E://EWN_KDF/Data/USGS_Data/usgs_st_thermo.csv", header=TRUE)

pt_co_merge <- merge(pt_co, pt_usgs_co, by="FIPS_Year", all.x=TRUE)
pt_st_merge <- merge(pt_st, pt_usgs_st, by="state_year", all.x=TRUE)


write.csv(pt_co_merge, file="E://EWN_KDF/Data/Thermoelectric_Analysis/Final_wateruse_estimates/version2_estimates/pt_melt_mgd_usgs_county.csv")
write.csv(pt_st_merge, file="E://EWN_KDF/Data/Thermoelectric_Analysis/Final_wateruse_estimates/version2_estimates/pt_melt_mgd_usgs_state.csv")

