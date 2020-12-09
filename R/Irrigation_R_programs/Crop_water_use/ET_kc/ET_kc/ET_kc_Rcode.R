
install.packages("rmatio")
library(rmatio)

ET_1950 <- read.mat(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/Livneh_County_ET0/Livneh_County_ET0_1950.mat")


GEOID <- as.data.frame(ET_1950$Counties_GEOID)
ET_1950_2 <- as.data.frame(ET_1950$ET0_Livneh_County_dy)

names(GEOID) <- c("FIPS")

FIPS <- alfalfa_kc$FIPS
FIPS <- as.data.frame(FIPS)



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

alfalfa_kc <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_analysis/crop_factor_kc/original_crops/cnty_cf_alfalfa.csv", header=TRUE)


alfalfa_kc_jan <- do.call("cbind", replicate(jan, alfalfa_kc$jan, simplify = FALSE))
alfalfa_kc_feb1 <- do.call("cbind", replicate(feb1, alfalfa_kc$feb, simplify = FALSE))
alfalfa_kc_feb2 <- do.call("cbind", replicate(feb2, alfalfa_kc$feb, simplify = FALSE))
alfalfa_kc_mar <- do.call("cbind", replicate(mar, alfalfa_kc$mar, simplify = FALSE))
alfalfa_kc_apr <- do.call("cbind", replicate(apr, alfalfa_kc$apr, simplify = FALSE))
alfalfa_kc_may <- do.call("cbind", replicate(may, alfalfa_kc$may, simplify = FALSE))
alfalfa_kc_jun <- do.call("cbind", replicate(jun, alfalfa_kc$jun, simplify = FALSE))
alfalfa_kc_jul <- do.call("cbind", replicate(jul, alfalfa_kc$jul, simplify = FALSE))
alfalfa_kc_aug <- do.call("cbind", replicate(aug, alfalfa_kc$aug, simplify = FALSE))
alfalfa_kc_sep <- do.call("cbind", replicate(sep, alfalfa_kc$sep, simplify = FALSE))
alfalfa_kc_oct <- do.call("cbind", replicate(oct, alfalfa_kc$oct, simplify = FALSE))
alfalfa_kc_nov <- do.call("cbind", replicate(nov, alfalfa_kc$nov, simplify = FALSE))
alfalfa_kc_dec <- do.call("cbind", replicate(dec, alfalfa_kc$dec, simplify = FALSE))

alfalfa_kc_norm <- cbind(FIPS, alfalfa_kc_jan, alfalfa_kc_feb1, alfalfa_kc_mar, alfalfa_kc_apr, alfalfa_kc_may, alfalfa_kc_jun, alfalfa_kc_jul, alfalfa_kc_aug, alfalfa_kc_sep, alfalfa_kc_oct, alfalfa_kc_nov, alfalfa_kc_dec)
alfalfa_kc_leap <- cbind(FIPS, alfalfa_kc_jan, alfalfa_kc_feb2, alfalfa_kc_mar, alfalfa_kc_apr, alfalfa_kc_may, alfalfa_kc_jun, alfalfa_kc_jul, alfalfa_kc_aug, alfalfa_kc_sep, alfalfa_kc_oct, alfalfa_kc_nov, alfalfa_kc_dec)

alfalfa_kc_norm <- as.data.frame(alfalfa_kc_norm)
alfalfa_kc_leap <- as.data.frame(alfalfa_kc_leap)

alfalfa_kc_norm <- alfalfa_kc_norm[order(alfalfa_kc_norm$FIPS),]
alfalfa_kc_leap <- alfalfa_kc_leap[order(alfalfa_kc_leap$FIPS),]


alfalfa_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_alfalfa.csv", header=TRUE)
barley_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_barley.csv", header=TRUE)
cantaloup_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_cantaloup.csv", header=TRUE)
corn_grain_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_corn_grain.csv", header=TRUE)
corn_silage_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_corn_silage.csv", header=TRUE)
cotton_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_cotton.csv", header=TRUE)
cucumber_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_cucumber.csv", header=TRUE)
oats_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_oats.csv", header=TRUE)
peanuts_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_peanuts.csv", header=TRUE)
potatoes_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_potatoes.csv", header=TRUE)
rye_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_rye.csv", header=TRUE)
snapbeans_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_snapbeans.csv", header=TRUE)
sorghum_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_sorghum.csv", header=TRUE)
sorghum_silage_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_sorghum_silage.csv", header=TRUE)
soybean_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_soybean.csv", header=TRUE)
strawberries_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_strawberries.csv", header=TRUE)
sweet_potato_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_sweet_potato.csv", header=TRUE)
tomatoes_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_tomatoes.csv", header=TRUE)
watermelon_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_watermelon.csv", header=TRUE)
wheat_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/original_crops/cnty_cf_wheat.csv", header=TRUE)

apples_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_apples.csv", header=TRUE)
apricots_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_apricots.csv", header=TRUE)
avocadoes_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_avocadoes.csv", header=TRUE)
berries_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_berries.csv", header=TRUE)
blueberries_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_blueberries.csv", header=TRUE)
buckwheat_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_buckwheat.csv", header=TRUE)
cherries_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_cherries.csv", header=TRUE)
citrus_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_citrus.csv", header=TRUE)
grape_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_grape.csv", header=TRUE)
hay_all_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_hay_all.csv", header=TRUE)
hotpeppers_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_hotpeppers.csv", header=TRUE)
lettuce_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_lettuce.csv", header=TRUE)
nuts_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_nuts.csv", header=TRUE)
peaches_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_peaches.csv", header=TRUE)
pears_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_pears.csv", header=TRUE)
plums_prunes_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_plums_prunes.csv", header=TRUE)
raspberries_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_raspberries.csv", header=TRUE)
rice_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_rice.csv", header=TRUE)
spinach_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_spinach.csv", header=TRUE)
sugarbeet_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_sugarbeet.csv", header=TRUE)
sweetpeppers_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_sweetpeppers.csv", header=TRUE)
tobacco_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_tobacco.csv", header=TRUE)
vegetable_all_kc <- read.csv(file="D://EWN_KDF/crop_factor_kc/new_crops/cnty_cf_vegetable_all.csv", header=TRUE)


### create daily observations of kc values

barley_kc_jan <- do.call("cbind", replicate(jan, barley_kc$jan, simplify = FALSE))
barley_kc_feb1 <- do.call("cbind", replicate(feb1, barley_kc$feb, simplify = FALSE))
barley_kc_feb2 <- do.call("cbind", replicate(feb2, barley_kc$feb, simplify = FALSE))
barley_kc_mar <- do.call("cbind", replicate(mar, barley_kc$mar, simplify = FALSE))
barley_kc_apr <- do.call("cbind", replicate(apr, barley_kc$apr, simplify = FALSE))
barley_kc_may <- do.call("cbind", replicate(may, barley_kc$may, simplify = FALSE))
barley_kc_jun <- do.call("cbind", replicate(jun, barley_kc$jun, simplify = FALSE))
barley_kc_jul <- do.call("cbind", replicate(jul, barley_kc$jul, simplify = FALSE))
barley_kc_aug <- do.call("cbind", replicate(aug, barley_kc$aug, simplify = FALSE))
barley_kc_sep <- do.call("cbind", replicate(sep, barley_kc$sep, simplify = FALSE))
barley_kc_oct <- do.call("cbind", replicate(oct, barley_kc$oct, simplify = FALSE))
barley_kc_nov <- do.call("cbind", replicate(nov, barley_kc$nov, simplify = FALSE))
barley_kc_dec <- do.call("cbind", replicate(dec, barley_kc$dec, simplify = FALSE))


cantaloup_kc_jan <- do.call("cbind", replicate(jan, cantaloup_kc$jan, simplify = FALSE))
cantaloup_kc_feb1 <- do.call("cbind", replicate(feb1, cantaloup_kc$feb, simplify = FALSE))
cantaloup_kc_feb2 <- do.call("cbind", replicate(feb2, cantaloup_kc$feb, simplify = FALSE))
cantaloup_kc_mar <- do.call("cbind", replicate(mar, cantaloup_kc$mar, simplify = FALSE))
cantaloup_kc_apr <- do.call("cbind", replicate(apr, cantaloup_kc$apr, simplify = FALSE))
cantaloup_kc_may <- do.call("cbind", replicate(may, cantaloup_kc$may, simplify = FALSE))
cantaloup_kc_jun <- do.call("cbind", replicate(jun, cantaloup_kc$jun, simplify = FALSE))
cantaloup_kc_jul <- do.call("cbind", replicate(jul, cantaloup_kc$jul, simplify = FALSE))
cantaloup_kc_aug <- do.call("cbind", replicate(aug, cantaloup_kc$aug, simplify = FALSE))
cantaloup_kc_sep <- do.call("cbind", replicate(sep, cantaloup_kc$sep, simplify = FALSE))
cantaloup_kc_oct <- do.call("cbind", replicate(oct, cantaloup_kc$oct, simplify = FALSE))
cantaloup_kc_nov <- do.call("cbind", replicate(nov, cantaloup_kc$nov, simplify = FALSE))
cantaloup_kc_dec <- do.call("cbind", replicate(dec, cantaloup_kc$dec, simplify = FALSE))


corn_grain_kc_jan <- do.call("cbind", replicate(jan, corn_grain_kc$jan, simplify = FALSE))
corn_grain_kc_feb1 <- do.call("cbind", replicate(feb1, corn_grain_kc$feb, simplify = FALSE))
corn_grain_kc_feb2 <- do.call("cbind", replicate(feb2, corn_grain_kc$feb, simplify = FALSE))
corn_grain_kc_mar <- do.call("cbind", replicate(mar, corn_grain_kc$mar, simplify = FALSE))
corn_grain_kc_apr <- do.call("cbind", replicate(apr, corn_grain_kc$apr, simplify = FALSE))
corn_grain_kc_may <- do.call("cbind", replicate(may, corn_grain_kc$may, simplify = FALSE))
corn_grain_kc_jun <- do.call("cbind", replicate(jun, corn_grain_kc$jun, simplify = FALSE))
corn_grain_kc_jul <- do.call("cbind", replicate(jul, corn_grain_kc$jul, simplify = FALSE))
corn_grain_kc_aug <- do.call("cbind", replicate(aug, corn_grain_kc$aug, simplify = FALSE))
corn_grain_kc_sep <- do.call("cbind", replicate(sep, corn_grain_kc$sep, simplify = FALSE))
corn_grain_kc_oct <- do.call("cbind", replicate(oct, corn_grain_kc$oct, simplify = FALSE))
corn_grain_kc_nov <- do.call("cbind", replicate(nov, corn_grain_kc$nov, simplify = FALSE))
corn_grain_kc_dec <- do.call("cbind", replicate(dec, corn_grain_kc$dec, simplify = FALSE))


corn_silage_kc_jan <- do.call("cbind", replicate(jan, corn_silage_kc$jan, simplify = FALSE))
corn_silage_kc_feb1 <- do.call("cbind", replicate(feb1, corn_silage_kc$feb, simplify = FALSE))
corn_silage_kc_feb2 <- do.call("cbind", replicate(feb2, corn_silage_kc$feb, simplify = FALSE))
corn_silage_kc_mar <- do.call("cbind", replicate(mar, corn_silage_kc$mar, simplify = FALSE))
corn_silage_kc_apr <- do.call("cbind", replicate(apr, corn_silage_kc$apr, simplify = FALSE))
corn_silage_kc_may <- do.call("cbind", replicate(may, corn_silage_kc$may, simplify = FALSE))
corn_silage_kc_jun <- do.call("cbind", replicate(jun, corn_silage_kc$jun, simplify = FALSE))
corn_silage_kc_jul <- do.call("cbind", replicate(jul, corn_silage_kc$jul, simplify = FALSE))
corn_silage_kc_aug <- do.call("cbind", replicate(aug, corn_silage_kc$aug, simplify = FALSE))
corn_silage_kc_sep <- do.call("cbind", replicate(sep, corn_silage_kc$sep, simplify = FALSE))
corn_silage_kc_oct <- do.call("cbind", replicate(oct, corn_silage_kc$oct, simplify = FALSE))
corn_silage_kc_nov <- do.call("cbind", replicate(nov, corn_silage_kc$nov, simplify = FALSE))
corn_silage_kc_dec <- do.call("cbind", replicate(dec, corn_silage_kc$dec, simplify = FALSE))


cotton_kc_jan <- do.call("cbind", replicate(jan, cotton_kc$jan, simplify = FALSE))
cotton_kc_feb1 <- do.call("cbind", replicate(feb1, cotton_kc$feb, simplify = FALSE))
cotton_kc_feb2 <- do.call("cbind", replicate(feb2, cotton_kc$feb, simplify = FALSE))
cotton_kc_mar <- do.call("cbind", replicate(mar, cotton_kc$mar, simplify = FALSE))
cotton_kc_apr <- do.call("cbind", replicate(apr, cotton_kc$apr, simplify = FALSE))
cotton_kc_may <- do.call("cbind", replicate(may, cotton_kc$may, simplify = FALSE))
cotton_kc_jun <- do.call("cbind", replicate(jun, cotton_kc$jun, simplify = FALSE))
cotton_kc_jul <- do.call("cbind", replicate(jul, cotton_kc$jul, simplify = FALSE))
cotton_kc_aug <- do.call("cbind", replicate(aug, cotton_kc$aug, simplify = FALSE))
cotton_kc_sep <- do.call("cbind", replicate(sep, cotton_kc$sep, simplify = FALSE))
cotton_kc_oct <- do.call("cbind", replicate(oct, cotton_kc$oct, simplify = FALSE))
cotton_kc_nov <- do.call("cbind", replicate(nov, cotton_kc$nov, simplify = FALSE))
cotton_kc_dec <- do.call("cbind", replicate(dec, cotton_kc$dec, simplify = FALSE))

cucumber_kc_jan <- do.call("cbind", replicate(jan, cucumber_kc$jan, simplify = FALSE))
cucumber_kc_feb1 <- do.call("cbind", replicate(feb1, cucumber_kc$feb, simplify = FALSE))
cucumber_kc_feb2 <- do.call("cbind", replicate(feb2, cucumber_kc$feb, simplify = FALSE))
cucumber_kc_mar <- do.call("cbind", replicate(mar, cucumber_kc$mar, simplify = FALSE))
cucumber_kc_apr <- do.call("cbind", replicate(apr, cucumber_kc$apr, simplify = FALSE))
cucumber_kc_may <- do.call("cbind", replicate(may, cucumber_kc$may, simplify = FALSE))
cucumber_kc_jun <- do.call("cbind", replicate(jun, cucumber_kc$jun, simplify = FALSE))
cucumber_kc_jul <- do.call("cbind", replicate(jul, cucumber_kc$jul, simplify = FALSE))
cucumber_kc_aug <- do.call("cbind", replicate(aug, cucumber_kc$aug, simplify = FALSE))
cucumber_kc_sep <- do.call("cbind", replicate(sep, cucumber_kc$sep, simplify = FALSE))
cucumber_kc_oct <- do.call("cbind", replicate(oct, cucumber_kc$oct, simplify = FALSE))
cucumber_kc_nov <- do.call("cbind", replicate(nov, cucumber_kc$nov, simplify = FALSE))
cucumber_kc_dec <- do.call("cbind", replicate(dec, cucumber_kc$dec, simplify = FALSE))


oats_kc_jan <- do.call("cbind", replicate(jan, oats_kc$jan, simplify = FALSE))
oats_kc_feb1 <- do.call("cbind", replicate(feb1, oats_kc$feb, simplify = FALSE))
oats_kc_feb2 <- do.call("cbind", replicate(feb2, oats_kc$feb, simplify = FALSE))
oats_kc_mar <- do.call("cbind", replicate(mar, oats_kc$mar, simplify = FALSE))
oats_kc_apr <- do.call("cbind", replicate(apr, oats_kc$apr, simplify = FALSE))
oats_kc_may <- do.call("cbind", replicate(may, oats_kc$may, simplify = FALSE))
oats_kc_jun <- do.call("cbind", replicate(jun, oats_kc$jun, simplify = FALSE))
oats_kc_jul <- do.call("cbind", replicate(jul, oats_kc$jul, simplify = FALSE))
oats_kc_aug <- do.call("cbind", replicate(aug, oats_kc$aug, simplify = FALSE))
oats_kc_sep <- do.call("cbind", replicate(sep, oats_kc$sep, simplify = FALSE))
oats_kc_oct <- do.call("cbind", replicate(oct, oats_kc$oct, simplify = FALSE))
oats_kc_nov <- do.call("cbind", replicate(nov, oats_kc$nov, simplify = FALSE))
oats_kc_dec <- do.call("cbind", replicate(dec, oats_kc$dec, simplify = FALSE))


peanuts_kc_jan <- do.call("cbind", replicate(jan, peanuts_kc$jan, simplify = FALSE))
peanuts_kc_feb1 <- do.call("cbind", replicate(feb1, peanuts_kc$feb, simplify = FALSE))
peanuts_kc_feb2 <- do.call("cbind", replicate(feb2, peanuts_kc$feb, simplify = FALSE))
peanuts_kc_mar <- do.call("cbind", replicate(mar, peanuts_kc$mar, simplify = FALSE))
peanuts_kc_apr <- do.call("cbind", replicate(apr, peanuts_kc$apr, simplify = FALSE))
peanuts_kc_may <- do.call("cbind", replicate(may, peanuts_kc$may, simplify = FALSE))
peanuts_kc_jun <- do.call("cbind", replicate(jun, peanuts_kc$jun, simplify = FALSE))
peanuts_kc_jul <- do.call("cbind", replicate(jul, peanuts_kc$jul, simplify = FALSE))
peanuts_kc_aug <- do.call("cbind", replicate(aug, peanuts_kc$aug, simplify = FALSE))
peanuts_kc_sep <- do.call("cbind", replicate(sep, peanuts_kc$sep, simplify = FALSE))
peanuts_kc_oct <- do.call("cbind", replicate(oct, peanuts_kc$oct, simplify = FALSE))
peanuts_kc_nov <- do.call("cbind", replicate(nov, peanuts_kc$nov, simplify = FALSE))
peanuts_kc_dec <- do.call("cbind", replicate(dec, peanuts_kc$dec, simplify = FALSE))

potatoes_kc_jan <- do.call("cbind", replicate(jan, potatoes_kc$jan, simplify = FALSE))
potatoes_kc_feb1 <- do.call("cbind", replicate(feb1, potatoes_kc$feb, simplify = FALSE))
potatoes_kc_feb2 <- do.call("cbind", replicate(feb2, potatoes_kc$feb, simplify = FALSE))
potatoes_kc_mar <- do.call("cbind", replicate(mar, potatoes_kc$mar, simplify = FALSE))
potatoes_kc_apr <- do.call("cbind", replicate(apr, potatoes_kc$apr, simplify = FALSE))
potatoes_kc_may <- do.call("cbind", replicate(may, potatoes_kc$may, simplify = FALSE))
potatoes_kc_jun <- do.call("cbind", replicate(jun, potatoes_kc$jun, simplify = FALSE))
potatoes_kc_jul <- do.call("cbind", replicate(jul, potatoes_kc$jul, simplify = FALSE))
potatoes_kc_aug <- do.call("cbind", replicate(aug, potatoes_kc$aug, simplify = FALSE))
potatoes_kc_sep <- do.call("cbind", replicate(sep, potatoes_kc$sep, simplify = FALSE))
potatoes_kc_oct <- do.call("cbind", replicate(oct, potatoes_kc$oct, simplify = FALSE))
potatoes_kc_nov <- do.call("cbind", replicate(nov, potatoes_kc$nov, simplify = FALSE))
potatoes_kc_dec <- do.call("cbind", replicate(dec, potatoes_kc$dec, simplify = FALSE))

rye_kc_jan <- do.call("cbind", replicate(jan, rye_kc$jan, simplify = FALSE))
rye_kc_feb1 <- do.call("cbind", replicate(feb1, rye_kc$feb, simplify = FALSE))
rye_kc_feb2 <- do.call("cbind", replicate(feb2, rye_kc$feb, simplify = FALSE))
rye_kc_mar <- do.call("cbind", replicate(mar, rye_kc$mar, simplify = FALSE))
rye_kc_apr <- do.call("cbind", replicate(apr, rye_kc$apr, simplify = FALSE))
rye_kc_may <- do.call("cbind", replicate(may, rye_kc$may, simplify = FALSE))
rye_kc_jun <- do.call("cbind", replicate(jun, rye_kc$jun, simplify = FALSE))
rye_kc_jul <- do.call("cbind", replicate(jul, rye_kc$jul, simplify = FALSE))
rye_kc_aug <- do.call("cbind", replicate(aug, rye_kc$aug, simplify = FALSE))
rye_kc_sep <- do.call("cbind", replicate(sep, rye_kc$sep, simplify = FALSE))
rye_kc_oct <- do.call("cbind", replicate(oct, rye_kc$oct, simplify = FALSE))
rye_kc_nov <- do.call("cbind", replicate(nov, rye_kc$nov, simplify = FALSE))
rye_kc_dec <- do.call("cbind", replicate(dec, rye_kc$dec, simplify = FALSE))


snapbeans_kc_jan <- do.call("cbind", replicate(jan, snapbeans_kc$jan, simplify = FALSE))
snapbeans_kc_feb1 <- do.call("cbind", replicate(feb1, snapbeans_kc$feb, simplify = FALSE))
snapbeans_kc_feb2 <- do.call("cbind", replicate(feb2, snapbeans_kc$feb, simplify = FALSE))
snapbeans_kc_mar <- do.call("cbind", replicate(mar, snapbeans_kc$mar, simplify = FALSE))
snapbeans_kc_apr <- do.call("cbind", replicate(apr, snapbeans_kc$apr, simplify = FALSE))
snapbeans_kc_may <- do.call("cbind", replicate(may, snapbeans_kc$may, simplify = FALSE))
snapbeans_kc_jun <- do.call("cbind", replicate(jun, snapbeans_kc$jun, simplify = FALSE))
snapbeans_kc_jul <- do.call("cbind", replicate(jul, snapbeans_kc$jul, simplify = FALSE))
snapbeans_kc_aug <- do.call("cbind", replicate(aug, snapbeans_kc$aug, simplify = FALSE))
snapbeans_kc_sep <- do.call("cbind", replicate(sep, snapbeans_kc$sep, simplify = FALSE))
snapbeans_kc_oct <- do.call("cbind", replicate(oct, snapbeans_kc$oct, simplify = FALSE))
snapbeans_kc_nov <- do.call("cbind", replicate(nov, snapbeans_kc$nov, simplify = FALSE))
snapbeans_kc_dec <- do.call("cbind", replicate(dec, snapbeans_kc$dec, simplify = FALSE))


sorghum_kc_jan <- do.call("cbind", replicate(jan, sorghum_kc$jan, simplify = FALSE))
sorghum_kc_feb1 <- do.call("cbind", replicate(feb1, sorghum_kc$feb, simplify = FALSE))
sorghum_kc_feb2 <- do.call("cbind", replicate(feb2, sorghum_kc$feb, simplify = FALSE))
sorghum_kc_mar <- do.call("cbind", replicate(mar, sorghum_kc$mar, simplify = FALSE))
sorghum_kc_apr <- do.call("cbind", replicate(apr, sorghum_kc$apr, simplify = FALSE))
sorghum_kc_may <- do.call("cbind", replicate(may, sorghum_kc$may, simplify = FALSE))
sorghum_kc_jun <- do.call("cbind", replicate(jun, sorghum_kc$jun, simplify = FALSE))
sorghum_kc_jul <- do.call("cbind", replicate(jul, sorghum_kc$jul, simplify = FALSE))
sorghum_kc_aug <- do.call("cbind", replicate(aug, sorghum_kc$aug, simplify = FALSE))
sorghum_kc_sep <- do.call("cbind", replicate(sep, sorghum_kc$sep, simplify = FALSE))
sorghum_kc_oct <- do.call("cbind", replicate(oct, sorghum_kc$oct, simplify = FALSE))
sorghum_kc_nov <- do.call("cbind", replicate(nov, sorghum_kc$nov, simplify = FALSE))
sorghum_kc_dec <- do.call("cbind", replicate(dec, sorghum_kc$dec, simplify = FALSE))


sorghum_silage_kc_jan <- do.call("cbind", replicate(jan, sorghum_silage_kc$jan, simplify = FALSE))
sorghum_silage_kc_feb1 <- do.call("cbind", replicate(feb1, sorghum_silage_kc$feb, simplify = FALSE))
sorghum_silage_kc_feb2 <- do.call("cbind", replicate(feb2, sorghum_silage_kc$feb, simplify = FALSE))
sorghum_silage_kc_mar <- do.call("cbind", replicate(mar, sorghum_silage_kc$mar, simplify = FALSE))
sorghum_silage_kc_apr <- do.call("cbind", replicate(apr, sorghum_silage_kc$apr, simplify = FALSE))
sorghum_silage_kc_may <- do.call("cbind", replicate(may, sorghum_silage_kc$may, simplify = FALSE))
sorghum_silage_kc_jun <- do.call("cbind", replicate(jun, sorghum_silage_kc$jun, simplify = FALSE))
sorghum_silage_kc_jul <- do.call("cbind", replicate(jul, sorghum_silage_kc$jul, simplify = FALSE))
sorghum_silage_kc_aug <- do.call("cbind", replicate(aug, sorghum_silage_kc$aug, simplify = FALSE))
sorghum_silage_kc_sep <- do.call("cbind", replicate(sep, sorghum_silage_kc$sep, simplify = FALSE))
sorghum_silage_kc_oct <- do.call("cbind", replicate(oct, sorghum_silage_kc$oct, simplify = FALSE))
sorghum_silage_kc_nov <- do.call("cbind", replicate(nov, sorghum_silage_kc$nov, simplify = FALSE))
sorghum_silage_kc_dec <- do.call("cbind", replicate(dec, sorghum_silage_kc$dec, simplify = FALSE))


soybean_kc_jan <- do.call("cbind", replicate(jan, soybean_kc$jan, simplify = FALSE))
soybean_kc_feb1 <- do.call("cbind", replicate(feb1, soybean_kc$feb, simplify = FALSE))
soybean_kc_feb2 <- do.call("cbind", replicate(feb2, soybean_kc$feb, simplify = FALSE))
soybean_kc_mar <- do.call("cbind", replicate(mar, soybean_kc$mar, simplify = FALSE))
soybean_kc_apr <- do.call("cbind", replicate(apr, soybean_kc$apr, simplify = FALSE))
soybean_kc_may <- do.call("cbind", replicate(may, soybean_kc$may, simplify = FALSE))
soybean_kc_jun <- do.call("cbind", replicate(jun, soybean_kc$jun, simplify = FALSE))
soybean_kc_jul <- do.call("cbind", replicate(jul, soybean_kc$jul, simplify = FALSE))
soybean_kc_aug <- do.call("cbind", replicate(aug, soybean_kc$aug, simplify = FALSE))
soybean_kc_sep <- do.call("cbind", replicate(sep, soybean_kc$sep, simplify = FALSE))
soybean_kc_oct <- do.call("cbind", replicate(oct, soybean_kc$oct, simplify = FALSE))
soybean_kc_nov <- do.call("cbind", replicate(nov, soybean_kc$nov, simplify = FALSE))
soybean_kc_dec <- do.call("cbind", replicate(dec, soybean_kc$dec, simplify = FALSE))


strawberries_kc_jan <- do.call("cbind", replicate(jan, strawberries_kc$jan, simplify = FALSE))
strawberries_kc_feb1 <- do.call("cbind", replicate(feb1, strawberries_kc$feb, simplify = FALSE))
strawberries_kc_feb2 <- do.call("cbind", replicate(feb2, strawberries_kc$feb, simplify = FALSE))
strawberries_kc_mar <- do.call("cbind", replicate(mar, strawberries_kc$mar, simplify = FALSE))
strawberries_kc_apr <- do.call("cbind", replicate(apr, strawberries_kc$apr, simplify = FALSE))
strawberries_kc_may <- do.call("cbind", replicate(may, strawberries_kc$may, simplify = FALSE))
strawberries_kc_jun <- do.call("cbind", replicate(jun, strawberries_kc$jun, simplify = FALSE))
strawberries_kc_jul <- do.call("cbind", replicate(jul, strawberries_kc$jul, simplify = FALSE))
strawberries_kc_aug <- do.call("cbind", replicate(aug, strawberries_kc$aug, simplify = FALSE))
strawberries_kc_sep <- do.call("cbind", replicate(sep, strawberries_kc$sep, simplify = FALSE))
strawberries_kc_oct <- do.call("cbind", replicate(oct, strawberries_kc$oct, simplify = FALSE))
strawberries_kc_nov <- do.call("cbind", replicate(nov, strawberries_kc$nov, simplify = FALSE))
strawberries_kc_dec <- do.call("cbind", replicate(dec, strawberries_kc$dec, simplify = FALSE))


sweet_potato_kc_jan <- do.call("cbind", replicate(jan, sweet_potato_kc$jan, simplify = FALSE))
sweet_potato_kc_feb1 <- do.call("cbind", replicate(feb1, sweet_potato_kc$feb, simplify = FALSE))
sweet_potato_kc_feb2 <- do.call("cbind", replicate(feb2, sweet_potato_kc$feb, simplify = FALSE))
sweet_potato_kc_mar <- do.call("cbind", replicate(mar, sweet_potato_kc$mar, simplify = FALSE))
sweet_potato_kc_apr <- do.call("cbind", replicate(apr, sweet_potato_kc$apr, simplify = FALSE))
sweet_potato_kc_may <- do.call("cbind", replicate(may, sweet_potato_kc$may, simplify = FALSE))
sweet_potato_kc_jun <- do.call("cbind", replicate(jun, sweet_potato_kc$jun, simplify = FALSE))
sweet_potato_kc_jul <- do.call("cbind", replicate(jul, sweet_potato_kc$jul, simplify = FALSE))
sweet_potato_kc_aug <- do.call("cbind", replicate(aug, sweet_potato_kc$aug, simplify = FALSE))
sweet_potato_kc_sep <- do.call("cbind", replicate(sep, sweet_potato_kc$sep, simplify = FALSE))
sweet_potato_kc_oct <- do.call("cbind", replicate(oct, sweet_potato_kc$oct, simplify = FALSE))
sweet_potato_kc_nov <- do.call("cbind", replicate(nov, sweet_potato_kc$nov, simplify = FALSE))
sweet_potato_kc_dec <- do.call("cbind", replicate(dec, sweet_potato_kc$dec, simplify = FALSE))


tomatoes_kc_jan <- do.call("cbind", replicate(jan, tomatoes_kc$jan, simplify = FALSE))
tomatoes_kc_feb1 <- do.call("cbind", replicate(feb1, tomatoes_kc$feb, simplify = FALSE))
tomatoes_kc_feb2 <- do.call("cbind", replicate(feb2, tomatoes_kc$feb, simplify = FALSE))
tomatoes_kc_mar <- do.call("cbind", replicate(mar, tomatoes_kc$mar, simplify = FALSE))
tomatoes_kc_apr <- do.call("cbind", replicate(apr, tomatoes_kc$apr, simplify = FALSE))
tomatoes_kc_may <- do.call("cbind", replicate(may, tomatoes_kc$may, simplify = FALSE))
tomatoes_kc_jun <- do.call("cbind", replicate(jun, tomatoes_kc$jun, simplify = FALSE))
tomatoes_kc_jul <- do.call("cbind", replicate(jul, tomatoes_kc$jul, simplify = FALSE))
tomatoes_kc_aug <- do.call("cbind", replicate(aug, tomatoes_kc$aug, simplify = FALSE))
tomatoes_kc_sep <- do.call("cbind", replicate(sep, tomatoes_kc$sep, simplify = FALSE))
tomatoes_kc_oct <- do.call("cbind", replicate(oct, tomatoes_kc$oct, simplify = FALSE))
tomatoes_kc_nov <- do.call("cbind", replicate(nov, tomatoes_kc$nov, simplify = FALSE))
tomatoes_kc_dec <- do.call("cbind", replicate(dec, tomatoes_kc$dec, simplify = FALSE))


watermelon_kc_jan <- do.call("cbind", replicate(jan, watermelon_kc$jan, simplify = FALSE))
watermelon_kc_feb1 <- do.call("cbind", replicate(feb1, watermelon_kc$feb, simplify = FALSE))
watermelon_kc_feb2 <- do.call("cbind", replicate(feb2, watermelon_kc$feb, simplify = FALSE))
watermelon_kc_mar <- do.call("cbind", replicate(mar, watermelon_kc$mar, simplify = FALSE))
watermelon_kc_apr <- do.call("cbind", replicate(apr, watermelon_kc$apr, simplify = FALSE))
watermelon_kc_may <- do.call("cbind", replicate(may, watermelon_kc$may, simplify = FALSE))
watermelon_kc_jun <- do.call("cbind", replicate(jun, watermelon_kc$jun, simplify = FALSE))
watermelon_kc_jul <- do.call("cbind", replicate(jul, watermelon_kc$jul, simplify = FALSE))
watermelon_kc_aug <- do.call("cbind", replicate(aug, watermelon_kc$aug, simplify = FALSE))
watermelon_kc_sep <- do.call("cbind", replicate(sep, watermelon_kc$sep, simplify = FALSE))
watermelon_kc_oct <- do.call("cbind", replicate(oct, watermelon_kc$oct, simplify = FALSE))
watermelon_kc_nov <- do.call("cbind", replicate(nov, watermelon_kc$nov, simplify = FALSE))
watermelon_kc_dec <- do.call("cbind", replicate(dec, watermelon_kc$dec, simplify = FALSE))


wheat_kc_jan <- do.call("cbind", replicate(jan, wheat_kc$jan, simplify = FALSE))
wheat_kc_feb1 <- do.call("cbind", replicate(feb1, wheat_kc$feb, simplify = FALSE))
wheat_kc_feb2 <- do.call("cbind", replicate(feb2, wheat_kc$feb, simplify = FALSE))
wheat_kc_mar <- do.call("cbind", replicate(mar, wheat_kc$mar, simplify = FALSE))
wheat_kc_apr <- do.call("cbind", replicate(apr, wheat_kc$apr, simplify = FALSE))
wheat_kc_may <- do.call("cbind", replicate(may, wheat_kc$may, simplify = FALSE))
wheat_kc_jun <- do.call("cbind", replicate(jun, wheat_kc$jun, simplify = FALSE))
wheat_kc_jul <- do.call("cbind", replicate(jul, wheat_kc$jul, simplify = FALSE))
wheat_kc_aug <- do.call("cbind", replicate(aug, wheat_kc$aug, simplify = FALSE))
wheat_kc_sep <- do.call("cbind", replicate(sep, wheat_kc$sep, simplify = FALSE))
wheat_kc_oct <- do.call("cbind", replicate(oct, wheat_kc$oct, simplify = FALSE))
wheat_kc_nov <- do.call("cbind", replicate(nov, wheat_kc$nov, simplify = FALSE))
wheat_kc_dec <- do.call("cbind", replicate(dec, wheat_kc$dec, simplify = FALSE))

apples_kc_jan <- do.call("cbind", replicate(jan, apples_kc$jan, simplify = FALSE))
apples_kc_feb1 <- do.call("cbind", replicate(feb1, apples_kc$feb, simplify = FALSE))
apples_kc_feb2 <- do.call("cbind", replicate(feb2, apples_kc$feb, simplify = FALSE))
apples_kc_mar <- do.call("cbind", replicate(mar, apples_kc$mar, simplify = FALSE))
apples_kc_apr <- do.call("cbind", replicate(apr, apples_kc$apr, simplify = FALSE))
apples_kc_may <- do.call("cbind", replicate(may, apples_kc$may, simplify = FALSE))
apples_kc_jun <- do.call("cbind", replicate(jun, apples_kc$jun, simplify = FALSE))
apples_kc_jul <- do.call("cbind", replicate(jul, apples_kc$jul, simplify = FALSE))
apples_kc_aug <- do.call("cbind", replicate(aug, apples_kc$aug, simplify = FALSE))
apples_kc_sep <- do.call("cbind", replicate(sep, apples_kc$sep, simplify = FALSE))
apples_kc_oct <- do.call("cbind", replicate(oct, apples_kc$oct, simplify = FALSE))
apples_kc_nov <- do.call("cbind", replicate(nov, apples_kc$nov, simplify = FALSE))
apples_kc_dec <- do.call("cbind", replicate(dec, apples_kc$dec, simplify = FALSE))


apricots_kc_jan <- do.call("cbind", replicate(jan, apricots_kc$jan, simplify = FALSE))
apricots_kc_feb1 <- do.call("cbind", replicate(feb1, apricots_kc$feb, simplify = FALSE))
apricots_kc_feb2 <- do.call("cbind", replicate(feb2, apricots_kc$feb, simplify = FALSE))
apricots_kc_mar <- do.call("cbind", replicate(mar, apricots_kc$mar, simplify = FALSE))
apricots_kc_apr <- do.call("cbind", replicate(apr, apricots_kc$apr, simplify = FALSE))
apricots_kc_may <- do.call("cbind", replicate(may, apricots_kc$may, simplify = FALSE))
apricots_kc_jun <- do.call("cbind", replicate(jun, apricots_kc$jun, simplify = FALSE))
apricots_kc_jul <- do.call("cbind", replicate(jul, apricots_kc$jul, simplify = FALSE))
apricots_kc_aug <- do.call("cbind", replicate(aug, apricots_kc$aug, simplify = FALSE))
apricots_kc_sep <- do.call("cbind", replicate(sep, apricots_kc$sep, simplify = FALSE))
apricots_kc_oct <- do.call("cbind", replicate(oct, apricots_kc$oct, simplify = FALSE))
apricots_kc_nov <- do.call("cbind", replicate(nov, apricots_kc$nov, simplify = FALSE))
apricots_kc_dec <- do.call("cbind", replicate(dec, apricots_kc$dec, simplify = FALSE))

avocadoes_kc_jan <- do.call("cbind", replicate(jan, avocadoes_kc$jan, simplify = FALSE))
avocadoes_kc_feb1 <- do.call("cbind", replicate(feb1, avocadoes_kc$feb, simplify = FALSE))
avocadoes_kc_feb2 <- do.call("cbind", replicate(feb2, avocadoes_kc$feb, simplify = FALSE))
avocadoes_kc_mar <- do.call("cbind", replicate(mar, avocadoes_kc$mar, simplify = FALSE))
avocadoes_kc_apr <- do.call("cbind", replicate(apr, avocadoes_kc$apr, simplify = FALSE))
avocadoes_kc_may <- do.call("cbind", replicate(may, avocadoes_kc$may, simplify = FALSE))
avocadoes_kc_jun <- do.call("cbind", replicate(jun, avocadoes_kc$jun, simplify = FALSE))
avocadoes_kc_jul <- do.call("cbind", replicate(jul, avocadoes_kc$jul, simplify = FALSE))
avocadoes_kc_aug <- do.call("cbind", replicate(aug, avocadoes_kc$aug, simplify = FALSE))
avocadoes_kc_sep <- do.call("cbind", replicate(sep, avocadoes_kc$sep, simplify = FALSE))
avocadoes_kc_oct <- do.call("cbind", replicate(oct, avocadoes_kc$oct, simplify = FALSE))
avocadoes_kc_nov <- do.call("cbind", replicate(nov, avocadoes_kc$nov, simplify = FALSE))
avocadoes_kc_dec <- do.call("cbind", replicate(dec, avocadoes_kc$dec, simplify = FALSE))

berries_kc_jan <- do.call("cbind", replicate(jan, berries_kc$jan, simplify = FALSE))
berries_kc_feb1 <- do.call("cbind", replicate(feb1, berries_kc$feb, simplify = FALSE))
berries_kc_feb2 <- do.call("cbind", replicate(feb2, berries_kc$feb, simplify = FALSE))
berries_kc_mar <- do.call("cbind", replicate(mar, berries_kc$mar, simplify = FALSE))
berries_kc_apr <- do.call("cbind", replicate(apr, berries_kc$apr, simplify = FALSE))
berries_kc_may <- do.call("cbind", replicate(may, berries_kc$may, simplify = FALSE))
berries_kc_jun <- do.call("cbind", replicate(jun, berries_kc$jun, simplify = FALSE))
berries_kc_jul <- do.call("cbind", replicate(jul, berries_kc$jul, simplify = FALSE))
berries_kc_aug <- do.call("cbind", replicate(aug, berries_kc$aug, simplify = FALSE))
berries_kc_sep <- do.call("cbind", replicate(sep, berries_kc$sep, simplify = FALSE))
berries_kc_oct <- do.call("cbind", replicate(oct, berries_kc$oct, simplify = FALSE))
berries_kc_nov <- do.call("cbind", replicate(nov, berries_kc$nov, simplify = FALSE))
berries_kc_dec <- do.call("cbind", replicate(dec, berries_kc$dec, simplify = FALSE))

blueberries_kc_jan <- do.call("cbind", replicate(jan, blueberries_kc$jan, simplify = FALSE))
blueberries_kc_feb1 <- do.call("cbind", replicate(feb1, blueberries_kc$feb, simplify = FALSE))
blueberries_kc_feb2 <- do.call("cbind", replicate(feb2, blueberries_kc$feb, simplify = FALSE))
blueberries_kc_mar <- do.call("cbind", replicate(mar, blueberries_kc$mar, simplify = FALSE))
blueberries_kc_apr <- do.call("cbind", replicate(apr, blueberries_kc$apr, simplify = FALSE))
blueberries_kc_may <- do.call("cbind", replicate(may, blueberries_kc$may, simplify = FALSE))
blueberries_kc_jun <- do.call("cbind", replicate(jun, blueberries_kc$jun, simplify = FALSE))
blueberries_kc_jul <- do.call("cbind", replicate(jul, blueberries_kc$jul, simplify = FALSE))
blueberries_kc_aug <- do.call("cbind", replicate(aug, blueberries_kc$aug, simplify = FALSE))
blueberries_kc_sep <- do.call("cbind", replicate(sep, blueberries_kc$sep, simplify = FALSE))
blueberries_kc_oct <- do.call("cbind", replicate(oct, blueberries_kc$oct, simplify = FALSE))
blueberries_kc_nov <- do.call("cbind", replicate(nov, blueberries_kc$nov, simplify = FALSE))
blueberries_kc_dec <- do.call("cbind", replicate(dec, blueberries_kc$dec, simplify = FALSE))


buckwheat_kc_jan <- do.call("cbind", replicate(jan, buckwheat_kc$jan, simplify = FALSE))
buckwheat_kc_feb1 <- do.call("cbind", replicate(feb1, buckwheat_kc$feb, simplify = FALSE))
buckwheat_kc_feb2 <- do.call("cbind", replicate(feb2, buckwheat_kc$feb, simplify = FALSE))
buckwheat_kc_mar <- do.call("cbind", replicate(mar, buckwheat_kc$mar, simplify = FALSE))
buckwheat_kc_apr <- do.call("cbind", replicate(apr, buckwheat_kc$apr, simplify = FALSE))
buckwheat_kc_may <- do.call("cbind", replicate(may, buckwheat_kc$may, simplify = FALSE))
buckwheat_kc_jun <- do.call("cbind", replicate(jun, buckwheat_kc$jun, simplify = FALSE))
buckwheat_kc_jul <- do.call("cbind", replicate(jul, buckwheat_kc$jul, simplify = FALSE))
buckwheat_kc_aug <- do.call("cbind", replicate(aug, buckwheat_kc$aug, simplify = FALSE))
buckwheat_kc_sep <- do.call("cbind", replicate(sep, buckwheat_kc$sep, simplify = FALSE))
buckwheat_kc_oct <- do.call("cbind", replicate(oct, buckwheat_kc$oct, simplify = FALSE))
buckwheat_kc_nov <- do.call("cbind", replicate(nov, buckwheat_kc$nov, simplify = FALSE))
buckwheat_kc_dec <- do.call("cbind", replicate(dec, buckwheat_kc$dec, simplify = FALSE))

cherries_kc_jan <- do.call("cbind", replicate(jan, cherries_kc$jan, simplify = FALSE))
cherries_kc_feb1 <- do.call("cbind", replicate(feb1, cherries_kc$feb, simplify = FALSE))
cherries_kc_feb2 <- do.call("cbind", replicate(feb2, cherries_kc$feb, simplify = FALSE))
cherries_kc_mar <- do.call("cbind", replicate(mar, cherries_kc$mar, simplify = FALSE))
cherries_kc_apr <- do.call("cbind", replicate(apr, cherries_kc$apr, simplify = FALSE))
cherries_kc_may <- do.call("cbind", replicate(may, cherries_kc$may, simplify = FALSE))
cherries_kc_jun <- do.call("cbind", replicate(jun, cherries_kc$jun, simplify = FALSE))
cherries_kc_jul <- do.call("cbind", replicate(jul, cherries_kc$jul, simplify = FALSE))
cherries_kc_aug <- do.call("cbind", replicate(aug, cherries_kc$aug, simplify = FALSE))
cherries_kc_sep <- do.call("cbind", replicate(sep, cherries_kc$sep, simplify = FALSE))
cherries_kc_oct <- do.call("cbind", replicate(oct, cherries_kc$oct, simplify = FALSE))
cherries_kc_nov <- do.call("cbind", replicate(nov, cherries_kc$nov, simplify = FALSE))
cherries_kc_dec <- do.call("cbind", replicate(dec, cherries_kc$dec, simplify = FALSE))

citrus_kc_jan <- do.call("cbind", replicate(jan, citrus_kc$jan, simplify = FALSE))
citrus_kc_feb1 <- do.call("cbind", replicate(feb1, citrus_kc$feb, simplify = FALSE))
citrus_kc_feb2 <- do.call("cbind", replicate(feb2, citrus_kc$feb, simplify = FALSE))
citrus_kc_mar <- do.call("cbind", replicate(mar, citrus_kc$mar, simplify = FALSE))
citrus_kc_apr <- do.call("cbind", replicate(apr, citrus_kc$apr, simplify = FALSE))
citrus_kc_may <- do.call("cbind", replicate(may, citrus_kc$may, simplify = FALSE))
citrus_kc_jun <- do.call("cbind", replicate(jun, citrus_kc$jun, simplify = FALSE))
citrus_kc_jul <- do.call("cbind", replicate(jul, citrus_kc$jul, simplify = FALSE))
citrus_kc_aug <- do.call("cbind", replicate(aug, citrus_kc$aug, simplify = FALSE))
citrus_kc_sep <- do.call("cbind", replicate(sep, citrus_kc$sep, simplify = FALSE))
citrus_kc_oct <- do.call("cbind", replicate(oct, citrus_kc$oct, simplify = FALSE))
citrus_kc_nov <- do.call("cbind", replicate(nov, citrus_kc$nov, simplify = FALSE))
citrus_kc_dec <- do.call("cbind", replicate(dec, citrus_kc$dec, simplify = FALSE))

grape_kc_jan <- do.call("cbind", replicate(jan, grape_kc$jan, simplify = FALSE))
grape_kc_feb1 <- do.call("cbind", replicate(feb1, grape_kc$feb, simplify = FALSE))
grape_kc_feb2 <- do.call("cbind", replicate(feb2, grape_kc$feb, simplify = FALSE))
grape_kc_mar <- do.call("cbind", replicate(mar, grape_kc$mar, simplify = FALSE))
grape_kc_apr <- do.call("cbind", replicate(apr, grape_kc$apr, simplify = FALSE))
grape_kc_may <- do.call("cbind", replicate(may, grape_kc$may, simplify = FALSE))
grape_kc_jun <- do.call("cbind", replicate(jun, grape_kc$jun, simplify = FALSE))
grape_kc_jul <- do.call("cbind", replicate(jul, grape_kc$jul, simplify = FALSE))
grape_kc_aug <- do.call("cbind", replicate(aug, grape_kc$aug, simplify = FALSE))
grape_kc_sep <- do.call("cbind", replicate(sep, grape_kc$sep, simplify = FALSE))
grape_kc_oct <- do.call("cbind", replicate(oct, grape_kc$oct, simplify = FALSE))
grape_kc_nov <- do.call("cbind", replicate(nov, grape_kc$nov, simplify = FALSE))
grape_kc_dec <- do.call("cbind", replicate(dec, grape_kc$dec, simplify = FALSE))

hay_all_kc_jan <- do.call("cbind", replicate(jan, hay_all_kc$jan, simplify = FALSE))
hay_all_kc_feb1 <- do.call("cbind", replicate(feb1, hay_all_kc$feb, simplify = FALSE))
hay_all_kc_feb2 <- do.call("cbind", replicate(feb2, hay_all_kc$feb, simplify = FALSE))
hay_all_kc_mar <- do.call("cbind", replicate(mar, hay_all_kc$mar, simplify = FALSE))
hay_all_kc_apr <- do.call("cbind", replicate(apr, hay_all_kc$apr, simplify = FALSE))
hay_all_kc_may <- do.call("cbind", replicate(may, hay_all_kc$may, simplify = FALSE))
hay_all_kc_jun <- do.call("cbind", replicate(jun, hay_all_kc$jun, simplify = FALSE))
hay_all_kc_jul <- do.call("cbind", replicate(jul, hay_all_kc$jul, simplify = FALSE))
hay_all_kc_aug <- do.call("cbind", replicate(aug, hay_all_kc$aug, simplify = FALSE))
hay_all_kc_sep <- do.call("cbind", replicate(sep, hay_all_kc$sep, simplify = FALSE))
hay_all_kc_oct <- do.call("cbind", replicate(oct, hay_all_kc$oct, simplify = FALSE))
hay_all_kc_nov <- do.call("cbind", replicate(nov, hay_all_kc$nov, simplify = FALSE))
hay_all_kc_dec <- do.call("cbind", replicate(dec, hay_all_kc$dec, simplify = FALSE))

hotpeppers_kc_jan <- do.call("cbind", replicate(jan, hotpeppers_kc$jan, simplify = FALSE))
hotpeppers_kc_feb1 <- do.call("cbind", replicate(feb1, hotpeppers_kc$feb, simplify = FALSE))
hotpeppers_kc_feb2 <- do.call("cbind", replicate(feb2, hotpeppers_kc$feb, simplify = FALSE))
hotpeppers_kc_mar <- do.call("cbind", replicate(mar, hotpeppers_kc$mar, simplify = FALSE))
hotpeppers_kc_apr <- do.call("cbind", replicate(apr, hotpeppers_kc$apr, simplify = FALSE))
hotpeppers_kc_may <- do.call("cbind", replicate(may, hotpeppers_kc$may, simplify = FALSE))
hotpeppers_kc_jun <- do.call("cbind", replicate(jun, hotpeppers_kc$jun, simplify = FALSE))
hotpeppers_kc_jul <- do.call("cbind", replicate(jul, hotpeppers_kc$jul, simplify = FALSE))
hotpeppers_kc_aug <- do.call("cbind", replicate(aug, hotpeppers_kc$aug, simplify = FALSE))
hotpeppers_kc_sep <- do.call("cbind", replicate(sep, hotpeppers_kc$sep, simplify = FALSE))
hotpeppers_kc_oct <- do.call("cbind", replicate(oct, hotpeppers_kc$oct, simplify = FALSE))
hotpeppers_kc_nov <- do.call("cbind", replicate(nov, hotpeppers_kc$nov, simplify = FALSE))
hotpeppers_kc_dec <- do.call("cbind", replicate(dec, hotpeppers_kc$dec, simplify = FALSE))


lettuce_kc_jan <- do.call("cbind", replicate(jan, lettuce_kc$jan, simplify = FALSE))
lettuce_kc_feb1 <- do.call("cbind", replicate(feb1, lettuce_kc$feb, simplify = FALSE))
lettuce_kc_feb2 <- do.call("cbind", replicate(feb2, lettuce_kc$feb, simplify = FALSE))
lettuce_kc_mar <- do.call("cbind", replicate(mar, lettuce_kc$mar, simplify = FALSE))
lettuce_kc_apr <- do.call("cbind", replicate(apr, lettuce_kc$apr, simplify = FALSE))
lettuce_kc_may <- do.call("cbind", replicate(may, lettuce_kc$may, simplify = FALSE))
lettuce_kc_jun <- do.call("cbind", replicate(jun, lettuce_kc$jun, simplify = FALSE))
lettuce_kc_jul <- do.call("cbind", replicate(jul, lettuce_kc$jul, simplify = FALSE))
lettuce_kc_aug <- do.call("cbind", replicate(aug, lettuce_kc$aug, simplify = FALSE))
lettuce_kc_sep <- do.call("cbind", replicate(sep, lettuce_kc$sep, simplify = FALSE))
lettuce_kc_oct <- do.call("cbind", replicate(oct, lettuce_kc$oct, simplify = FALSE))
lettuce_kc_nov <- do.call("cbind", replicate(nov, lettuce_kc$nov, simplify = FALSE))
lettuce_kc_dec <- do.call("cbind", replicate(dec, lettuce_kc$dec, simplify = FALSE))

nuts_kc_jan <- do.call("cbind", replicate(jan, nuts_kc$jan, simplify = FALSE))
nuts_kc_feb1 <- do.call("cbind", replicate(feb1, nuts_kc$feb, simplify = FALSE))
nuts_kc_feb2 <- do.call("cbind", replicate(feb2, nuts_kc$feb, simplify = FALSE))
nuts_kc_mar <- do.call("cbind", replicate(mar, nuts_kc$mar, simplify = FALSE))
nuts_kc_apr <- do.call("cbind", replicate(apr, nuts_kc$apr, simplify = FALSE))
nuts_kc_may <- do.call("cbind", replicate(may, nuts_kc$may, simplify = FALSE))
nuts_kc_jun <- do.call("cbind", replicate(jun, nuts_kc$jun, simplify = FALSE))
nuts_kc_jul <- do.call("cbind", replicate(jul, nuts_kc$jul, simplify = FALSE))
nuts_kc_aug <- do.call("cbind", replicate(aug, nuts_kc$aug, simplify = FALSE))
nuts_kc_sep <- do.call("cbind", replicate(sep, nuts_kc$sep, simplify = FALSE))
nuts_kc_oct <- do.call("cbind", replicate(oct, nuts_kc$oct, simplify = FALSE))
nuts_kc_nov <- do.call("cbind", replicate(nov, nuts_kc$nov, simplify = FALSE))
nuts_kc_dec <- do.call("cbind", replicate(dec, nuts_kc$dec, simplify = FALSE))


peaches_kc_jan <- do.call("cbind", replicate(jan, peaches_kc$jan, simplify = FALSE))
peaches_kc_feb1 <- do.call("cbind", replicate(feb1, peaches_kc$feb, simplify = FALSE))
peaches_kc_feb2 <- do.call("cbind", replicate(feb2, peaches_kc$feb, simplify = FALSE))
peaches_kc_mar <- do.call("cbind", replicate(mar, peaches_kc$mar, simplify = FALSE))
peaches_kc_apr <- do.call("cbind", replicate(apr, peaches_kc$apr, simplify = FALSE))
peaches_kc_may <- do.call("cbind", replicate(may, peaches_kc$may, simplify = FALSE))
peaches_kc_jun <- do.call("cbind", replicate(jun, peaches_kc$jun, simplify = FALSE))
peaches_kc_jul <- do.call("cbind", replicate(jul, peaches_kc$jul, simplify = FALSE))
peaches_kc_aug <- do.call("cbind", replicate(aug, peaches_kc$aug, simplify = FALSE))
peaches_kc_sep <- do.call("cbind", replicate(sep, peaches_kc$sep, simplify = FALSE))
peaches_kc_oct <- do.call("cbind", replicate(oct, peaches_kc$oct, simplify = FALSE))
peaches_kc_nov <- do.call("cbind", replicate(nov, peaches_kc$nov, simplify = FALSE))
peaches_kc_dec <- do.call("cbind", replicate(dec, peaches_kc$dec, simplify = FALSE))


pears_kc_jan <- do.call("cbind", replicate(jan, pears_kc$jan, simplify = FALSE))
pears_kc_feb1 <- do.call("cbind", replicate(feb1, pears_kc$feb, simplify = FALSE))
pears_kc_feb2 <- do.call("cbind", replicate(feb2, pears_kc$feb, simplify = FALSE))
pears_kc_mar <- do.call("cbind", replicate(mar, pears_kc$mar, simplify = FALSE))
pears_kc_apr <- do.call("cbind", replicate(apr, pears_kc$apr, simplify = FALSE))
pears_kc_may <- do.call("cbind", replicate(may, pears_kc$may, simplify = FALSE))
pears_kc_jun <- do.call("cbind", replicate(jun, pears_kc$jun, simplify = FALSE))
pears_kc_jul <- do.call("cbind", replicate(jul, pears_kc$jul, simplify = FALSE))
pears_kc_aug <- do.call("cbind", replicate(aug, pears_kc$aug, simplify = FALSE))
pears_kc_sep <- do.call("cbind", replicate(sep, pears_kc$sep, simplify = FALSE))
pears_kc_oct <- do.call("cbind", replicate(oct, pears_kc$oct, simplify = FALSE))
pears_kc_nov <- do.call("cbind", replicate(nov, pears_kc$nov, simplify = FALSE))
pears_kc_dec <- do.call("cbind", replicate(dec, pears_kc$dec, simplify = FALSE))

plums_prunes_kc_jan <- do.call("cbind", replicate(jan, plums_prunes_kc$jan, simplify = FALSE))
plums_prunes_kc_feb1 <- do.call("cbind", replicate(feb1, plums_prunes_kc$feb, simplify = FALSE))
plums_prunes_kc_feb2 <- do.call("cbind", replicate(feb2, plums_prunes_kc$feb, simplify = FALSE))
plums_prunes_kc_mar <- do.call("cbind", replicate(mar, plums_prunes_kc$mar, simplify = FALSE))
plums_prunes_kc_apr <- do.call("cbind", replicate(apr, plums_prunes_kc$apr, simplify = FALSE))
plums_prunes_kc_may <- do.call("cbind", replicate(may, plums_prunes_kc$may, simplify = FALSE))
plums_prunes_kc_jun <- do.call("cbind", replicate(jun, plums_prunes_kc$jun, simplify = FALSE))
plums_prunes_kc_jul <- do.call("cbind", replicate(jul, plums_prunes_kc$jul, simplify = FALSE))
plums_prunes_kc_aug <- do.call("cbind", replicate(aug, plums_prunes_kc$aug, simplify = FALSE))
plums_prunes_kc_sep <- do.call("cbind", replicate(sep, plums_prunes_kc$sep, simplify = FALSE))
plums_prunes_kc_oct <- do.call("cbind", replicate(oct, plums_prunes_kc$oct, simplify = FALSE))
plums_prunes_kc_nov <- do.call("cbind", replicate(nov, plums_prunes_kc$nov, simplify = FALSE))
plums_prunes_kc_dec <- do.call("cbind", replicate(dec, plums_prunes_kc$dec, simplify = FALSE))

raspberries_kc_jan <- do.call("cbind", replicate(jan, raspberries_kc$jan, simplify = FALSE))
raspberries_kc_feb1 <- do.call("cbind", replicate(feb1, raspberries_kc$feb, simplify = FALSE))
raspberries_kc_feb2 <- do.call("cbind", replicate(feb2, raspberries_kc$feb, simplify = FALSE))
raspberries_kc_mar <- do.call("cbind", replicate(mar, raspberries_kc$mar, simplify = FALSE))
raspberries_kc_apr <- do.call("cbind", replicate(apr, raspberries_kc$apr, simplify = FALSE))
raspberries_kc_may <- do.call("cbind", replicate(may, raspberries_kc$may, simplify = FALSE))
raspberries_kc_jun <- do.call("cbind", replicate(jun, raspberries_kc$jun, simplify = FALSE))
raspberries_kc_jul <- do.call("cbind", replicate(jul, raspberries_kc$jul, simplify = FALSE))
raspberries_kc_aug <- do.call("cbind", replicate(aug, raspberries_kc$aug, simplify = FALSE))
raspberries_kc_sep <- do.call("cbind", replicate(sep, raspberries_kc$sep, simplify = FALSE))
raspberries_kc_oct <- do.call("cbind", replicate(oct, raspberries_kc$oct, simplify = FALSE))
raspberries_kc_nov <- do.call("cbind", replicate(nov, raspberries_kc$nov, simplify = FALSE))
raspberries_kc_dec <- do.call("cbind", replicate(dec, raspberries_kc$dec, simplify = FALSE))

rice_kc_jan <- do.call("cbind", replicate(jan, rice_kc$jan, simplify = FALSE))
rice_kc_feb1 <- do.call("cbind", replicate(feb1, rice_kc$feb, simplify = FALSE))
rice_kc_feb2 <- do.call("cbind", replicate(feb2, rice_kc$feb, simplify = FALSE))
rice_kc_mar <- do.call("cbind", replicate(mar, rice_kc$mar, simplify = FALSE))
rice_kc_apr <- do.call("cbind", replicate(apr, rice_kc$apr, simplify = FALSE))
rice_kc_may <- do.call("cbind", replicate(may, rice_kc$may, simplify = FALSE))
rice_kc_jun <- do.call("cbind", replicate(jun, rice_kc$jun, simplify = FALSE))
rice_kc_jul <- do.call("cbind", replicate(jul, rice_kc$jul, simplify = FALSE))
rice_kc_aug <- do.call("cbind", replicate(aug, rice_kc$aug, simplify = FALSE))
rice_kc_sep <- do.call("cbind", replicate(sep, rice_kc$sep, simplify = FALSE))
rice_kc_oct <- do.call("cbind", replicate(oct, rice_kc$oct, simplify = FALSE))
rice_kc_nov <- do.call("cbind", replicate(nov, rice_kc$nov, simplify = FALSE))
rice_kc_dec <- do.call("cbind", replicate(dec, rice_kc$dec, simplify = FALSE))

spinach_kc_jan <- do.call("cbind", replicate(jan, spinach_kc$jan, simplify = FALSE))
spinach_kc_feb1 <- do.call("cbind", replicate(feb1, spinach_kc$feb, simplify = FALSE))
spinach_kc_feb2 <- do.call("cbind", replicate(feb2, spinach_kc$feb, simplify = FALSE))
spinach_kc_mar <- do.call("cbind", replicate(mar, spinach_kc$mar, simplify = FALSE))
spinach_kc_apr <- do.call("cbind", replicate(apr, spinach_kc$apr, simplify = FALSE))
spinach_kc_may <- do.call("cbind", replicate(may, spinach_kc$may, simplify = FALSE))
spinach_kc_jun <- do.call("cbind", replicate(jun, spinach_kc$jun, simplify = FALSE))
spinach_kc_jul <- do.call("cbind", replicate(jul, spinach_kc$jul, simplify = FALSE))
spinach_kc_aug <- do.call("cbind", replicate(aug, spinach_kc$aug, simplify = FALSE))
spinach_kc_sep <- do.call("cbind", replicate(sep, spinach_kc$sep, simplify = FALSE))
spinach_kc_oct <- do.call("cbind", replicate(oct, spinach_kc$oct, simplify = FALSE))
spinach_kc_nov <- do.call("cbind", replicate(nov, spinach_kc$nov, simplify = FALSE))
spinach_kc_dec <- do.call("cbind", replicate(dec, spinach_kc$dec, simplify = FALSE))

sugarbeet_kc_jan <- do.call("cbind", replicate(jan, sugarbeet_kc$jan, simplify = FALSE))
sugarbeet_kc_feb1 <- do.call("cbind", replicate(feb1, sugarbeet_kc$feb, simplify = FALSE))
sugarbeet_kc_feb2 <- do.call("cbind", replicate(feb2, sugarbeet_kc$feb, simplify = FALSE))
sugarbeet_kc_mar <- do.call("cbind", replicate(mar, sugarbeet_kc$mar, simplify = FALSE))
sugarbeet_kc_apr <- do.call("cbind", replicate(apr, sugarbeet_kc$apr, simplify = FALSE))
sugarbeet_kc_may <- do.call("cbind", replicate(may, sugarbeet_kc$may, simplify = FALSE))
sugarbeet_kc_jun <- do.call("cbind", replicate(jun, sugarbeet_kc$jun, simplify = FALSE))
sugarbeet_kc_jul <- do.call("cbind", replicate(jul, sugarbeet_kc$jul, simplify = FALSE))
sugarbeet_kc_aug <- do.call("cbind", replicate(aug, sugarbeet_kc$aug, simplify = FALSE))
sugarbeet_kc_sep <- do.call("cbind", replicate(sep, sugarbeet_kc$sep, simplify = FALSE))
sugarbeet_kc_oct <- do.call("cbind", replicate(oct, sugarbeet_kc$oct, simplify = FALSE))
sugarbeet_kc_nov <- do.call("cbind", replicate(nov, sugarbeet_kc$nov, simplify = FALSE))
sugarbeet_kc_dec <- do.call("cbind", replicate(dec, sugarbeet_kc$dec, simplify = FALSE))

sweetpeppers_kc_jan <- do.call("cbind", replicate(jan, sweetpeppers_kc$jan, simplify = FALSE))
sweetpeppers_kc_feb1 <- do.call("cbind", replicate(feb1, sweetpeppers_kc$feb, simplify = FALSE))
sweetpeppers_kc_feb2 <- do.call("cbind", replicate(feb2, sweetpeppers_kc$feb, simplify = FALSE))
sweetpeppers_kc_mar <- do.call("cbind", replicate(mar, sweetpeppers_kc$mar, simplify = FALSE))
sweetpeppers_kc_apr <- do.call("cbind", replicate(apr, sweetpeppers_kc$apr, simplify = FALSE))
sweetpeppers_kc_may <- do.call("cbind", replicate(may, sweetpeppers_kc$may, simplify = FALSE))
sweetpeppers_kc_jun <- do.call("cbind", replicate(jun, sweetpeppers_kc$jun, simplify = FALSE))
sweetpeppers_kc_jul <- do.call("cbind", replicate(jul, sweetpeppers_kc$jul, simplify = FALSE))
sweetpeppers_kc_aug <- do.call("cbind", replicate(aug, sweetpeppers_kc$aug, simplify = FALSE))
sweetpeppers_kc_sep <- do.call("cbind", replicate(sep, sweetpeppers_kc$sep, simplify = FALSE))
sweetpeppers_kc_oct <- do.call("cbind", replicate(oct, sweetpeppers_kc$oct, simplify = FALSE))
sweetpeppers_kc_nov <- do.call("cbind", replicate(nov, sweetpeppers_kc$nov, simplify = FALSE))
sweetpeppers_kc_dec <- do.call("cbind", replicate(dec, sweetpeppers_kc$dec, simplify = FALSE))


tobacco_kc_jan <- do.call("cbind", replicate(jan, tobacco_kc$jan, simplify = FALSE))
tobacco_kc_feb1 <- do.call("cbind", replicate(feb1, tobacco_kc$feb, simplify = FALSE))
tobacco_kc_feb2 <- do.call("cbind", replicate(feb2, tobacco_kc$feb, simplify = FALSE))
tobacco_kc_mar <- do.call("cbind", replicate(mar, tobacco_kc$mar, simplify = FALSE))
tobacco_kc_apr <- do.call("cbind", replicate(apr, tobacco_kc$apr, simplify = FALSE))
tobacco_kc_may <- do.call("cbind", replicate(may, tobacco_kc$may, simplify = FALSE))
tobacco_kc_jun <- do.call("cbind", replicate(jun, tobacco_kc$jun, simplify = FALSE))
tobacco_kc_jul <- do.call("cbind", replicate(jul, tobacco_kc$jul, simplify = FALSE))
tobacco_kc_aug <- do.call("cbind", replicate(aug, tobacco_kc$aug, simplify = FALSE))
tobacco_kc_sep <- do.call("cbind", replicate(sep, tobacco_kc$sep, simplify = FALSE))
tobacco_kc_oct <- do.call("cbind", replicate(oct, tobacco_kc$oct, simplify = FALSE))
tobacco_kc_nov <- do.call("cbind", replicate(nov, tobacco_kc$nov, simplify = FALSE))
tobacco_kc_dec <- do.call("cbind", replicate(dec, tobacco_kc$dec, simplify = FALSE))

vegetable_all_kc_jan <- do.call("cbind", replicate(jan, vegetable_all_kc$jan, simplify = FALSE))
vegetable_all_kc_feb1 <- do.call("cbind", replicate(feb1, vegetable_all_kc$feb, simplify = FALSE))
vegetable_all_kc_feb2 <- do.call("cbind", replicate(feb2, vegetable_all_kc$feb, simplify = FALSE))
vegetable_all_kc_mar <- do.call("cbind", replicate(mar, vegetable_all_kc$mar, simplify = FALSE))
vegetable_all_kc_apr <- do.call("cbind", replicate(apr, vegetable_all_kc$apr, simplify = FALSE))
vegetable_all_kc_may <- do.call("cbind", replicate(may, vegetable_all_kc$may, simplify = FALSE))
vegetable_all_kc_jun <- do.call("cbind", replicate(jun, vegetable_all_kc$jun, simplify = FALSE))
vegetable_all_kc_jul <- do.call("cbind", replicate(jul, vegetable_all_kc$jul, simplify = FALSE))
vegetable_all_kc_aug <- do.call("cbind", replicate(aug, vegetable_all_kc$aug, simplify = FALSE))
vegetable_all_kc_sep <- do.call("cbind", replicate(sep, vegetable_all_kc$sep, simplify = FALSE))
vegetable_all_kc_oct <- do.call("cbind", replicate(oct, vegetable_all_kc$oct, simplify = FALSE))
vegetable_all_kc_nov <- do.call("cbind", replicate(nov, vegetable_all_kc$nov, simplify = FALSE))
vegetable_all_kc_dec <- do.call("cbind", replicate(dec, vegetable_all_kc$dec, simplify = FALSE))

#### creating kc files


alfalfa_kc_norm <- cbind(FIPS, alfalfa_kc_jan,alfalfa_kc_feb1,alfalfa_kc_mar,alfalfa_kc_apr,alfalfa_kc_may,alfalfa_kc_jun,alfalfa_kc_jul,alfalfa_kc_aug,alfalfa_kc_sep,alfalfa_kc_oct,alfalfa_kc_nov,alfalfa_kc_dec)
barley_kc_norm <- cbind(FIPS, barley_kc_jan,barley_kc_feb1,barley_kc_mar,barley_kc_apr,barley_kc_may,barley_kc_jun,barley_kc_jul,barley_kc_aug,barley_kc_sep,barley_kc_oct,barley_kc_nov,barley_kc_dec)
cantaloup_kc_norm <- cbind(FIPS, cantaloup_kc_jan,cantaloup_kc_feb1,cantaloup_kc_mar,cantaloup_kc_apr,cantaloup_kc_may,cantaloup_kc_jun,cantaloup_kc_jul,cantaloup_kc_aug,cantaloup_kc_sep,cantaloup_kc_oct,cantaloup_kc_nov,cantaloup_kc_dec)
corn_grain_kc_norm <- cbind(FIPS, corn_grain_kc_jan,corn_grain_kc_feb1,corn_grain_kc_mar,corn_grain_kc_apr,corn_grain_kc_may,corn_grain_kc_jun,corn_grain_kc_jul,corn_grain_kc_aug,corn_grain_kc_sep,corn_grain_kc_oct,corn_grain_kc_nov,corn_grain_kc_dec)
corn_silage_kc_norm <- cbind(FIPS, corn_silage_kc_jan,corn_silage_kc_feb1,corn_silage_kc_mar,corn_silage_kc_apr,corn_silage_kc_may,corn_silage_kc_jun,corn_silage_kc_jul,corn_silage_kc_aug,corn_silage_kc_sep,corn_silage_kc_oct,corn_silage_kc_nov,corn_silage_kc_dec)
cotton_kc_norm <- cbind(FIPS, cotton_kc_jan,cotton_kc_feb1,cotton_kc_mar,cotton_kc_apr,cotton_kc_may,cotton_kc_jun,cotton_kc_jul,cotton_kc_aug,cotton_kc_sep,cotton_kc_oct,cotton_kc_nov,cotton_kc_dec)
cucumber_kc_norm <- cbind(FIPS, cucumber_kc_jan,cucumber_kc_feb1,cucumber_kc_mar,cucumber_kc_apr,cucumber_kc_may,cucumber_kc_jun,cucumber_kc_jul,cucumber_kc_aug,cucumber_kc_sep,cucumber_kc_oct,cucumber_kc_nov,cucumber_kc_dec)
oats_kc_norm <- cbind(FIPS, oats_kc_jan,oats_kc_feb1,oats_kc_mar,oats_kc_apr,oats_kc_may,oats_kc_jun,oats_kc_jul,oats_kc_aug,oats_kc_sep,oats_kc_oct,oats_kc_nov,oats_kc_dec)
peanuts_kc_norm <- cbind(FIPS, peanuts_kc_jan,peanuts_kc_feb1,peanuts_kc_mar,peanuts_kc_apr,peanuts_kc_may,peanuts_kc_jun,peanuts_kc_jul,peanuts_kc_aug,peanuts_kc_sep,peanuts_kc_oct,peanuts_kc_nov,peanuts_kc_dec)
potatoes_kc_norm <- cbind(FIPS, potatoes_kc_jan,potatoes_kc_feb1,potatoes_kc_mar,potatoes_kc_apr,potatoes_kc_may,potatoes_kc_jun,potatoes_kc_jul,potatoes_kc_aug,potatoes_kc_sep,potatoes_kc_oct,potatoes_kc_nov,potatoes_kc_dec)
rye_kc_norm <- cbind(FIPS, rye_kc_jan,rye_kc_feb1,rye_kc_mar,rye_kc_apr,rye_kc_may,rye_kc_jun,rye_kc_jul,rye_kc_aug,rye_kc_sep,rye_kc_oct,rye_kc_nov,rye_kc_dec)
snapbeans_kc_norm <- cbind(FIPS, snapbeans_kc_jan,snapbeans_kc_feb1,snapbeans_kc_mar,snapbeans_kc_apr,snapbeans_kc_may,snapbeans_kc_jun,snapbeans_kc_jul,snapbeans_kc_aug,snapbeans_kc_sep,snapbeans_kc_oct,snapbeans_kc_nov,snapbeans_kc_dec)
sorghum_kc_norm <- cbind(FIPS, sorghum_kc_jan,sorghum_kc_feb1,sorghum_kc_mar,sorghum_kc_apr,sorghum_kc_may,sorghum_kc_jun,sorghum_kc_jul,sorghum_kc_aug,sorghum_kc_sep,sorghum_kc_oct,sorghum_kc_nov,sorghum_kc_dec)
sorghum_silage_kc_norm <- cbind(FIPS, sorghum_silage_kc_jan,sorghum_silage_kc_feb1,sorghum_silage_kc_mar,sorghum_silage_kc_apr,sorghum_silage_kc_may,sorghum_silage_kc_jun,sorghum_silage_kc_jul,sorghum_silage_kc_aug,sorghum_silage_kc_sep,sorghum_silage_kc_oct,sorghum_silage_kc_nov,sorghum_silage_kc_dec)
soybean_kc_norm <- cbind(FIPS, soybean_kc_jan,soybean_kc_feb1,soybean_kc_mar,soybean_kc_apr,soybean_kc_may,soybean_kc_jun,soybean_kc_jul,soybean_kc_aug,soybean_kc_sep,soybean_kc_oct,soybean_kc_nov,soybean_kc_dec)
strawberries_kc_norm <- cbind(FIPS, strawberries_kc_jan,strawberries_kc_feb1,strawberries_kc_mar,strawberries_kc_apr,strawberries_kc_may,strawberries_kc_jun,strawberries_kc_jul,strawberries_kc_aug,strawberries_kc_sep,strawberries_kc_oct,strawberries_kc_nov,strawberries_kc_dec)
sweet_potato_kc_norm <- cbind(FIPS, sweet_potato_kc_jan,sweet_potato_kc_feb1,sweet_potato_kc_mar,sweet_potato_kc_apr,sweet_potato_kc_may,sweet_potato_kc_jun,sweet_potato_kc_jul,sweet_potato_kc_aug,sweet_potato_kc_sep,sweet_potato_kc_oct,sweet_potato_kc_nov,sweet_potato_kc_dec)
tomatoes_kc_norm <- cbind(FIPS, tomatoes_kc_jan,tomatoes_kc_feb1,tomatoes_kc_mar,tomatoes_kc_apr,tomatoes_kc_may,tomatoes_kc_jun,tomatoes_kc_jul,tomatoes_kc_aug,tomatoes_kc_sep,tomatoes_kc_oct,tomatoes_kc_nov,tomatoes_kc_dec)
watermelon_kc_norm <- cbind(FIPS, watermelon_kc_jan,watermelon_kc_feb1,watermelon_kc_mar,watermelon_kc_apr,watermelon_kc_may,watermelon_kc_jun,watermelon_kc_jul,watermelon_kc_aug,watermelon_kc_sep,watermelon_kc_oct,watermelon_kc_nov,watermelon_kc_dec)
wheat_kc_norm <- cbind(FIPS, wheat_kc_jan,wheat_kc_feb1,wheat_kc_mar,wheat_kc_apr,wheat_kc_may,wheat_kc_jun,wheat_kc_jul,wheat_kc_aug,wheat_kc_sep,wheat_kc_oct,wheat_kc_nov,wheat_kc_dec)

apples_kc_norm <- cbind(FIPS, apples_kc_jan,apples_kc_feb1,apples_kc_mar,apples_kc_apr,apples_kc_may,apples_kc_jun,apples_kc_jul,apples_kc_aug,apples_kc_sep,apples_kc_oct,apples_kc_nov,apples_kc_dec)
apricots_kc_norm <- cbind(FIPS, apricots_kc_jan,apricots_kc_feb1,apricots_kc_mar,apricots_kc_apr,apricots_kc_may,apricots_kc_jun,apricots_kc_jul,apricots_kc_aug,apricots_kc_sep,apricots_kc_oct,apricots_kc_nov,apricots_kc_dec)
avocadoes_kc_norm <- cbind(FIPS, avocadoes_kc_jan,avocadoes_kc_feb1,avocadoes_kc_mar,avocadoes_kc_apr,avocadoes_kc_may,avocadoes_kc_jun,avocadoes_kc_jul,avocadoes_kc_aug,avocadoes_kc_sep,avocadoes_kc_oct,avocadoes_kc_nov,avocadoes_kc_dec)
berries_kc_norm <- cbind(FIPS, berries_kc_jan,berries_kc_feb1,berries_kc_mar,berries_kc_apr,berries_kc_may,berries_kc_jun,berries_kc_jul,berries_kc_aug,berries_kc_sep,berries_kc_oct,berries_kc_nov,berries_kc_dec)
blueberries_kc_norm <- cbind(FIPS, blueberries_kc_jan,blueberries_kc_feb1,blueberries_kc_mar,blueberries_kc_apr,blueberries_kc_may,blueberries_kc_jun,blueberries_kc_jul,blueberries_kc_aug,blueberries_kc_sep,blueberries_kc_oct,blueberries_kc_nov,blueberries_kc_dec)
buckwheat_kc_norm <- cbind(FIPS, buckwheat_kc_jan,buckwheat_kc_feb1,buckwheat_kc_mar,buckwheat_kc_apr,buckwheat_kc_may,buckwheat_kc_jun,buckwheat_kc_jul,buckwheat_kc_aug,buckwheat_kc_sep,buckwheat_kc_oct,buckwheat_kc_nov,buckwheat_kc_dec)
cherries_kc_norm <- cbind(FIPS, cherries_kc_jan,cherries_kc_feb1,cherries_kc_mar,cherries_kc_apr,cherries_kc_may,cherries_kc_jun,cherries_kc_jul,cherries_kc_aug,cherries_kc_sep,cherries_kc_oct,cherries_kc_nov,cherries_kc_dec)
citrus_kc_norm <- cbind(FIPS, citrus_kc_jan,citrus_kc_feb1,citrus_kc_mar,citrus_kc_apr,citrus_kc_may,citrus_kc_jun,citrus_kc_jul,citrus_kc_aug,citrus_kc_sep,citrus_kc_oct,citrus_kc_nov,citrus_kc_dec)
grape_kc_norm <- cbind(FIPS, grape_kc_jan,grape_kc_feb1,grape_kc_mar,grape_kc_apr,grape_kc_may,grape_kc_jun,grape_kc_jul,grape_kc_aug,grape_kc_sep,grape_kc_oct,grape_kc_nov,grape_kc_dec)
hay_all_kc_norm <- cbind(FIPS, hay_all_kc_jan,hay_all_kc_feb1,hay_all_kc_mar,hay_all_kc_apr,hay_all_kc_may,hay_all_kc_jun,hay_all_kc_jul,hay_all_kc_aug,hay_all_kc_sep,hay_all_kc_oct,hay_all_kc_nov,hay_all_kc_dec)
hotpeppers_kc_norm <- cbind(FIPS, hotpeppers_kc_jan,hotpeppers_kc_feb1,hotpeppers_kc_mar,hotpeppers_kc_apr,hotpeppers_kc_may,hotpeppers_kc_jun,hotpeppers_kc_jul,hotpeppers_kc_aug,hotpeppers_kc_sep,hotpeppers_kc_oct,hotpeppers_kc_nov,hotpeppers_kc_dec)
lettuce_kc_norm <- cbind(FIPS, lettuce_kc_jan,lettuce_kc_feb1,lettuce_kc_mar,lettuce_kc_apr,lettuce_kc_may,lettuce_kc_jun,lettuce_kc_jul,lettuce_kc_aug,lettuce_kc_sep,lettuce_kc_oct,lettuce_kc_nov,lettuce_kc_dec)
nuts_kc_norm <- cbind(FIPS, nuts_kc_jan,nuts_kc_feb1,nuts_kc_mar,nuts_kc_apr,nuts_kc_may,nuts_kc_jun,nuts_kc_jul,nuts_kc_aug,nuts_kc_sep,nuts_kc_oct,nuts_kc_nov,nuts_kc_dec)
peaches_kc_norm <- cbind(FIPS, peaches_kc_jan,peaches_kc_feb1,peaches_kc_mar,peaches_kc_apr,peaches_kc_may,peaches_kc_jun,peaches_kc_jul,peaches_kc_aug,peaches_kc_sep,peaches_kc_oct,peaches_kc_nov,peaches_kc_dec)
pears_kc_norm <- cbind(FIPS, pears_kc_jan,pears_kc_feb1,pears_kc_mar,pears_kc_apr,pears_kc_may,pears_kc_jun,pears_kc_jul,pears_kc_aug,pears_kc_sep,pears_kc_oct,pears_kc_nov,pears_kc_dec)
plums_prunes_kc_norm <- cbind(FIPS, plums_prunes_kc_jan,plums_prunes_kc_feb1,plums_prunes_kc_mar,plums_prunes_kc_apr,plums_prunes_kc_may,plums_prunes_kc_jun,plums_prunes_kc_jul,plums_prunes_kc_aug,plums_prunes_kc_sep,plums_prunes_kc_oct,plums_prunes_kc_nov,plums_prunes_kc_dec)
raspberries_kc_norm <- cbind(FIPS, raspberries_kc_jan,raspberries_kc_feb1,raspberries_kc_mar,raspberries_kc_apr,raspberries_kc_may,raspberries_kc_jun,raspberries_kc_jul,raspberries_kc_aug,raspberries_kc_sep,raspberries_kc_oct,raspberries_kc_nov,raspberries_kc_dec)
rice_kc_norm <- cbind(FIPS, rice_kc_jan,rice_kc_feb1,rice_kc_mar,rice_kc_apr,rice_kc_may,rice_kc_jun,rice_kc_jul,rice_kc_aug,rice_kc_sep,rice_kc_oct,rice_kc_nov,rice_kc_dec)
spinach_kc_norm <- cbind(FIPS, spinach_kc_jan,spinach_kc_feb1,spinach_kc_mar,spinach_kc_apr,spinach_kc_may,spinach_kc_jun,spinach_kc_jul,spinach_kc_aug,spinach_kc_sep,spinach_kc_oct,spinach_kc_nov,spinach_kc_dec)
sugarbeet_kc_norm <- cbind(FIPS, sugarbeet_kc_jan,sugarbeet_kc_feb1,sugarbeet_kc_mar,sugarbeet_kc_apr,sugarbeet_kc_may,sugarbeet_kc_jun,sugarbeet_kc_jul,sugarbeet_kc_aug,sugarbeet_kc_sep,sugarbeet_kc_oct,sugarbeet_kc_nov,sugarbeet_kc_dec)
sweetpeppers_kc_norm <- cbind(FIPS, sweetpeppers_kc_jan,sweetpeppers_kc_feb1,sweetpeppers_kc_mar,sweetpeppers_kc_apr,sweetpeppers_kc_may,sweetpeppers_kc_jun,sweetpeppers_kc_jul,sweetpeppers_kc_aug,sweetpeppers_kc_sep,sweetpeppers_kc_oct,sweetpeppers_kc_nov,sweetpeppers_kc_dec)
tobacco_kc_norm <- cbind(FIPS, tobacco_kc_jan,tobacco_kc_feb1,tobacco_kc_mar,tobacco_kc_apr,tobacco_kc_may,tobacco_kc_jun,tobacco_kc_jul,tobacco_kc_aug,tobacco_kc_sep,tobacco_kc_oct,tobacco_kc_nov,tobacco_kc_dec)
vegetable_all_kc_norm <- cbind(FIPS, vegetable_all_kc_jan,vegetable_all_kc_feb1,vegetable_all_kc_mar,vegetable_all_kc_apr,vegetable_all_kc_may,vegetable_all_kc_jun,vegetable_all_kc_jul,vegetable_all_kc_aug,vegetable_all_kc_sep,vegetable_all_kc_oct,vegetable_all_kc_nov,vegetable_all_kc_dec)


alfalfa_kc_leap <- cbind(FIPS, alfalfa_kc_jan,alfalfa_kc_feb2,alfalfa_kc_mar,alfalfa_kc_apr,alfalfa_kc_may,alfalfa_kc_jun,alfalfa_kc_jul,alfalfa_kc_aug,alfalfa_kc_sep,alfalfa_kc_oct,alfalfa_kc_nov,alfalfa_kc_dec)
barley_kc_leap <- cbind(FIPS, barley_kc_jan,barley_kc_feb2,barley_kc_mar,barley_kc_apr,barley_kc_may,barley_kc_jun,barley_kc_jul,barley_kc_aug,barley_kc_sep,barley_kc_oct,barley_kc_nov,barley_kc_dec)
cantaloup_kc_leap <- cbind(FIPS, cantaloup_kc_jan,cantaloup_kc_feb2,cantaloup_kc_mar,cantaloup_kc_apr,cantaloup_kc_may,cantaloup_kc_jun,cantaloup_kc_jul,cantaloup_kc_aug,cantaloup_kc_sep,cantaloup_kc_oct,cantaloup_kc_nov,cantaloup_kc_dec)
corn_grain_kc_leap <- cbind(FIPS, corn_grain_kc_jan,corn_grain_kc_feb2,corn_grain_kc_mar,corn_grain_kc_apr,corn_grain_kc_may,corn_grain_kc_jun,corn_grain_kc_jul,corn_grain_kc_aug,corn_grain_kc_sep,corn_grain_kc_oct,corn_grain_kc_nov,corn_grain_kc_dec)
corn_silage_kc_leap <- cbind(FIPS, corn_silage_kc_jan,corn_silage_kc_feb2,corn_silage_kc_mar,corn_silage_kc_apr,corn_silage_kc_may,corn_silage_kc_jun,corn_silage_kc_jul,corn_silage_kc_aug,corn_silage_kc_sep,corn_silage_kc_oct,corn_silage_kc_nov,corn_silage_kc_dec)
cotton_kc_leap <- cbind(FIPS, cotton_kc_jan,cotton_kc_feb2,cotton_kc_mar,cotton_kc_apr,cotton_kc_may,cotton_kc_jun,cotton_kc_jul,cotton_kc_aug,cotton_kc_sep,cotton_kc_oct,cotton_kc_nov,cotton_kc_dec)
cucumber_kc_leap <- cbind(FIPS, cucumber_kc_jan,cucumber_kc_feb2,cucumber_kc_mar,cucumber_kc_apr,cucumber_kc_may,cucumber_kc_jun,cucumber_kc_jul,cucumber_kc_aug,cucumber_kc_sep,cucumber_kc_oct,cucumber_kc_nov,cucumber_kc_dec)
oats_kc_leap <- cbind(FIPS, oats_kc_jan,oats_kc_feb2,oats_kc_mar,oats_kc_apr,oats_kc_may,oats_kc_jun,oats_kc_jul,oats_kc_aug,oats_kc_sep,oats_kc_oct,oats_kc_nov,oats_kc_dec)
peanuts_kc_leap <- cbind(FIPS, peanuts_kc_jan,peanuts_kc_feb2,peanuts_kc_mar,peanuts_kc_apr,peanuts_kc_may,peanuts_kc_jun,peanuts_kc_jul,peanuts_kc_aug,peanuts_kc_sep,peanuts_kc_oct,peanuts_kc_nov,peanuts_kc_dec)
potatoes_kc_leap <- cbind(FIPS, potatoes_kc_jan,potatoes_kc_feb2,potatoes_kc_mar,potatoes_kc_apr,potatoes_kc_may,potatoes_kc_jun,potatoes_kc_jul,potatoes_kc_aug,potatoes_kc_sep,potatoes_kc_oct,potatoes_kc_nov,potatoes_kc_dec)
rye_kc_leap <- cbind(FIPS, rye_kc_jan,rye_kc_feb2,rye_kc_mar,rye_kc_apr,rye_kc_may,rye_kc_jun,rye_kc_jul,rye_kc_aug,rye_kc_sep,rye_kc_oct,rye_kc_nov,rye_kc_dec)
snapbeans_kc_leap <- cbind(FIPS, snapbeans_kc_jan,snapbeans_kc_feb2,snapbeans_kc_mar,snapbeans_kc_apr,snapbeans_kc_may,snapbeans_kc_jun,snapbeans_kc_jul,snapbeans_kc_aug,snapbeans_kc_sep,snapbeans_kc_oct,snapbeans_kc_nov,snapbeans_kc_dec)
sorghum_kc_leap <- cbind(FIPS, sorghum_kc_jan,sorghum_kc_feb2,sorghum_kc_mar,sorghum_kc_apr,sorghum_kc_may,sorghum_kc_jun,sorghum_kc_jul,sorghum_kc_aug,sorghum_kc_sep,sorghum_kc_oct,sorghum_kc_nov,sorghum_kc_dec)
sorghum_silage_kc_leap <- cbind(FIPS, sorghum_silage_kc_jan,sorghum_silage_kc_feb2,sorghum_silage_kc_mar,sorghum_silage_kc_apr,sorghum_silage_kc_may,sorghum_silage_kc_jun,sorghum_silage_kc_jul,sorghum_silage_kc_aug,sorghum_silage_kc_sep,sorghum_silage_kc_oct,sorghum_silage_kc_nov,sorghum_silage_kc_dec)
soybean_kc_leap <- cbind(FIPS, soybean_kc_jan,soybean_kc_feb2,soybean_kc_mar,soybean_kc_apr,soybean_kc_may,soybean_kc_jun,soybean_kc_jul,soybean_kc_aug,soybean_kc_sep,soybean_kc_oct,soybean_kc_nov,soybean_kc_dec)
strawberries_kc_leap <- cbind(FIPS, strawberries_kc_jan,strawberries_kc_feb2,strawberries_kc_mar,strawberries_kc_apr,strawberries_kc_may,strawberries_kc_jun,strawberries_kc_jul,strawberries_kc_aug,strawberries_kc_sep,strawberries_kc_oct,strawberries_kc_nov,strawberries_kc_dec)
sweet_potato_kc_leap <- cbind(FIPS, sweet_potato_kc_jan,sweet_potato_kc_feb2,sweet_potato_kc_mar,sweet_potato_kc_apr,sweet_potato_kc_may,sweet_potato_kc_jun,sweet_potato_kc_jul,sweet_potato_kc_aug,sweet_potato_kc_sep,sweet_potato_kc_oct,sweet_potato_kc_nov,sweet_potato_kc_dec)
tomatoes_kc_leap <- cbind(FIPS, tomatoes_kc_jan,tomatoes_kc_feb2,tomatoes_kc_mar,tomatoes_kc_apr,tomatoes_kc_may,tomatoes_kc_jun,tomatoes_kc_jul,tomatoes_kc_aug,tomatoes_kc_sep,tomatoes_kc_oct,tomatoes_kc_nov,tomatoes_kc_dec)
watermelon_kc_leap <- cbind(FIPS, watermelon_kc_jan,watermelon_kc_feb2,watermelon_kc_mar,watermelon_kc_apr,watermelon_kc_may,watermelon_kc_jun,watermelon_kc_jul,watermelon_kc_aug,watermelon_kc_sep,watermelon_kc_oct,watermelon_kc_nov,watermelon_kc_dec)
wheat_kc_leap <- cbind(FIPS, wheat_kc_jan,wheat_kc_feb2,wheat_kc_mar,wheat_kc_apr,wheat_kc_may,wheat_kc_jun,wheat_kc_jul,wheat_kc_aug,wheat_kc_sep,wheat_kc_oct,wheat_kc_nov,wheat_kc_dec)

apples_kc_leap <- cbind(FIPS, apples_kc_jan,apples_kc_feb2,apples_kc_mar,apples_kc_apr,apples_kc_may,apples_kc_jun,apples_kc_jul,apples_kc_aug,apples_kc_sep,apples_kc_oct,apples_kc_nov,apples_kc_dec)
apricots_kc_leap <- cbind(FIPS, apricots_kc_jan,apricots_kc_feb2,apricots_kc_mar,apricots_kc_apr,apricots_kc_may,apricots_kc_jun,apricots_kc_jul,apricots_kc_aug,apricots_kc_sep,apricots_kc_oct,apricots_kc_nov,apricots_kc_dec)
avocadoes_kc_leap <- cbind(FIPS, avocadoes_kc_jan,avocadoes_kc_feb2,avocadoes_kc_mar,avocadoes_kc_apr,avocadoes_kc_may,avocadoes_kc_jun,avocadoes_kc_jul,avocadoes_kc_aug,avocadoes_kc_sep,avocadoes_kc_oct,avocadoes_kc_nov,avocadoes_kc_dec)
berries_kc_leap <- cbind(FIPS, berries_kc_jan,berries_kc_feb2,berries_kc_mar,berries_kc_apr,berries_kc_may,berries_kc_jun,berries_kc_jul,berries_kc_aug,berries_kc_sep,berries_kc_oct,berries_kc_nov,berries_kc_dec)
blueberries_kc_leap <- cbind(FIPS, blueberries_kc_jan,blueberries_kc_feb2,blueberries_kc_mar,blueberries_kc_apr,blueberries_kc_may,blueberries_kc_jun,blueberries_kc_jul,blueberries_kc_aug,blueberries_kc_sep,blueberries_kc_oct,blueberries_kc_nov,blueberries_kc_dec)
buckwheat_kc_leap <- cbind(FIPS, buckwheat_kc_jan,buckwheat_kc_feb2,buckwheat_kc_mar,buckwheat_kc_apr,buckwheat_kc_may,buckwheat_kc_jun,buckwheat_kc_jul,buckwheat_kc_aug,buckwheat_kc_sep,buckwheat_kc_oct,buckwheat_kc_nov,buckwheat_kc_dec)
cherries_kc_leap <- cbind(FIPS, cherries_kc_jan,cherries_kc_feb2,cherries_kc_mar,cherries_kc_apr,cherries_kc_may,cherries_kc_jun,cherries_kc_jul,cherries_kc_aug,cherries_kc_sep,cherries_kc_oct,cherries_kc_nov,cherries_kc_dec)
citrus_kc_leap <- cbind(FIPS, citrus_kc_jan,citrus_kc_feb2,citrus_kc_mar,citrus_kc_apr,citrus_kc_may,citrus_kc_jun,citrus_kc_jul,citrus_kc_aug,citrus_kc_sep,citrus_kc_oct,citrus_kc_nov,citrus_kc_dec)
grape_kc_leap <- cbind(FIPS, grape_kc_jan,grape_kc_feb2,grape_kc_mar,grape_kc_apr,grape_kc_may,grape_kc_jun,grape_kc_jul,grape_kc_aug,grape_kc_sep,grape_kc_oct,grape_kc_nov,grape_kc_dec)
hay_all_kc_leap <- cbind(FIPS, hay_all_kc_jan,hay_all_kc_feb2,hay_all_kc_mar,hay_all_kc_apr,hay_all_kc_may,hay_all_kc_jun,hay_all_kc_jul,hay_all_kc_aug,hay_all_kc_sep,hay_all_kc_oct,hay_all_kc_nov,hay_all_kc_dec)
hotpeppers_kc_leap <- cbind(FIPS, hotpeppers_kc_jan,hotpeppers_kc_feb2,hotpeppers_kc_mar,hotpeppers_kc_apr,hotpeppers_kc_may,hotpeppers_kc_jun,hotpeppers_kc_jul,hotpeppers_kc_aug,hotpeppers_kc_sep,hotpeppers_kc_oct,hotpeppers_kc_nov,hotpeppers_kc_dec)
lettuce_kc_leap <- cbind(FIPS, lettuce_kc_jan,lettuce_kc_feb2,lettuce_kc_mar,lettuce_kc_apr,lettuce_kc_may,lettuce_kc_jun,lettuce_kc_jul,lettuce_kc_aug,lettuce_kc_sep,lettuce_kc_oct,lettuce_kc_nov,lettuce_kc_dec)
nuts_kc_leap <- cbind(FIPS, nuts_kc_jan,nuts_kc_feb2,nuts_kc_mar,nuts_kc_apr,nuts_kc_may,nuts_kc_jun,nuts_kc_jul,nuts_kc_aug,nuts_kc_sep,nuts_kc_oct,nuts_kc_nov,nuts_kc_dec)
peaches_kc_leap <- cbind(FIPS, peaches_kc_jan,peaches_kc_feb2,peaches_kc_mar,peaches_kc_apr,peaches_kc_may,peaches_kc_jun,peaches_kc_jul,peaches_kc_aug,peaches_kc_sep,peaches_kc_oct,peaches_kc_nov,peaches_kc_dec)
pears_kc_leap <- cbind(FIPS, pears_kc_jan,pears_kc_feb2,pears_kc_mar,pears_kc_apr,pears_kc_may,pears_kc_jun,pears_kc_jul,pears_kc_aug,pears_kc_sep,pears_kc_oct,pears_kc_nov,pears_kc_dec)
plums_prunes_kc_leap <- cbind(FIPS, plums_prunes_kc_jan,plums_prunes_kc_feb2,plums_prunes_kc_mar,plums_prunes_kc_apr,plums_prunes_kc_may,plums_prunes_kc_jun,plums_prunes_kc_jul,plums_prunes_kc_aug,plums_prunes_kc_sep,plums_prunes_kc_oct,plums_prunes_kc_nov,plums_prunes_kc_dec)
raspberries_kc_leap <- cbind(FIPS, raspberries_kc_jan,raspberries_kc_feb2,raspberries_kc_mar,raspberries_kc_apr,raspberries_kc_may,raspberries_kc_jun,raspberries_kc_jul,raspberries_kc_aug,raspberries_kc_sep,raspberries_kc_oct,raspberries_kc_nov,raspberries_kc_dec)
rice_kc_leap <- cbind(FIPS, rice_kc_jan,rice_kc_feb2,rice_kc_mar,rice_kc_apr,rice_kc_may,rice_kc_jun,rice_kc_jul,rice_kc_aug,rice_kc_sep,rice_kc_oct,rice_kc_nov,rice_kc_dec)
spinach_kc_leap <- cbind(FIPS, spinach_kc_jan,spinach_kc_feb2,spinach_kc_mar,spinach_kc_apr,spinach_kc_may,spinach_kc_jun,spinach_kc_jul,spinach_kc_aug,spinach_kc_sep,spinach_kc_oct,spinach_kc_nov,spinach_kc_dec)
sugarbeet_kc_leap <- cbind(FIPS, sugarbeet_kc_jan,sugarbeet_kc_feb2,sugarbeet_kc_mar,sugarbeet_kc_apr,sugarbeet_kc_may,sugarbeet_kc_jun,sugarbeet_kc_jul,sugarbeet_kc_aug,sugarbeet_kc_sep,sugarbeet_kc_oct,sugarbeet_kc_nov,sugarbeet_kc_dec)
sweetpeppers_kc_leap <- cbind(FIPS, sweetpeppers_kc_jan,sweetpeppers_kc_feb2,sweetpeppers_kc_mar,sweetpeppers_kc_apr,sweetpeppers_kc_may,sweetpeppers_kc_jun,sweetpeppers_kc_jul,sweetpeppers_kc_aug,sweetpeppers_kc_sep,sweetpeppers_kc_oct,sweetpeppers_kc_nov,sweetpeppers_kc_dec)
tobacco_kc_leap <- cbind(FIPS, tobacco_kc_jan,tobacco_kc_feb2,tobacco_kc_mar,tobacco_kc_apr,tobacco_kc_may,tobacco_kc_jun,tobacco_kc_jul,tobacco_kc_aug,tobacco_kc_sep,tobacco_kc_oct,tobacco_kc_nov,tobacco_kc_dec)
vegetable_all_kc_leap <- cbind(FIPS, vegetable_all_kc_jan,vegetable_all_kc_feb2,vegetable_all_kc_mar,vegetable_all_kc_apr,vegetable_all_kc_may,vegetable_all_kc_jun,vegetable_all_kc_jul,vegetable_all_kc_aug,vegetable_all_kc_sep,vegetable_all_kc_oct,vegetable_all_kc_nov,vegetable_all_kc_dec)






colnames(alfalfa_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(barley_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(cantaloup_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(corn_grain_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(corn_silage_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(cotton_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(cucumber_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(oats_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(peanuts_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(potatoes_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(rye_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(snapbeans_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(sorghum_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(sorghum_silage_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(soybean_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(strawberries_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(sweet_potato_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(tomatoes_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(watermelon_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(wheat_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	

colnames(apples_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(apricots_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(avocadoes_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(berries_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(blueberries_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(buckwheat_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(cherries_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(citrus_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(grape_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(hay_all_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(hotpeppers_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(lettuce_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(nuts_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(peaches_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(pears_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(plums_prunes_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(raspberries_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(rice_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(spinach_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(sugarbeet_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(sweetpeppers_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(tobacco_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	
colnames(vegetable_all_kc_norm) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365")	


colnames(alfalfa_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(barley_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(cantaloup_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(corn_grain_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(corn_silage_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(cotton_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(cucumber_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(oats_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(peanuts_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(potatoes_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(rye_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(snapbeans_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(sorghum_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(sorghum_silage_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(soybean_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(strawberries_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(sweet_potato_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(tomatoes_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(watermelon_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(wheat_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")

colnames(apples_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(apricots_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(avocadoes_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(berries_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(blueberries_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(buckwheat_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(cherries_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(citrus_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(grape_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(hay_all_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(hotpeppers_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(lettuce_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(nuts_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(peaches_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(pears_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(plums_prunes_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(raspberries_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(rice_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(spinach_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(sugarbeet_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(sweetpeppers_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(tobacco_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")
colnames(vegetable_all_kc_leap) <- c(	"FIPS",	"X1",	"X2",	"X3",	"X4",	"X5",	"X6",	"X7",	"X8",	"X9",	"X10",	"X11",	"X12",	"X13",	"X14",	"X15",	"X16",	"X17",	"X18",	"X19",	"X20",	"X21",	"X22",	"X23",	"X24",	"X25",	"X26",	"X27",	"X28",	"X29",	"X30",	"X31",	"X32",	"X33",	"X34",	"X35",	"X36",	"X37",	"X38",	"X39",	"X40",	"X41",	"X42",	"X43",	"X44",	"X45",	"X46",	"X47",	"X48",	"X49",	"X50",	"X51",	"X52",	"X53",	"X54",	"X55",	"X56",	"X57",	"X58",	"X59",	"X60",	"X61",	"X62",	"X63",	"X64",	"X65",	"X66",	"X67",	"X68",	"X69",	"X70",	"X71",	"X72",	"X73",	"X74",	"X75",	"X76",	"X77",	"X78",	"X79",	"X80",	"X81",	"X82",	"X83",	"X84",	"X85",	"X86",	"X87",	"X88",	"X89",	"X90",	"X91",	"X92",	"X93",	"X94",	"X95",	"X96",	"X97",	"X98",	"X99",	"X100",	"X101",	"X102",	"X103",	"X104",	"X105",	"X106",	"X107",	"X108",	"X109",	"X110",	"X111",	"X112",	"X113",	"X114",	"X115",	"X116",	"X117",	"X118",	"X119",	"X120",	"X121",	"X122",	"X123",	"X124",	"X125",	"X126",	"X127",	"X128",	"X129",	"X130",	"X131",	"X132",	"X133",	"X134",	"X135",	"X136",	"X137",	"X138",	"X139",	"X140",	"X141",	"X142",	"X143",	"X144",	"X145",	"X146",	"X147",	"X148",	"X149",	"X150",	"X151",	"X152",	"X153",	"X154",	"X155",	"X156",	"X157",	"X158",	"X159",	"X160",	"X161",	"X162",	"X163",	"X164",	"X165",	"X166",	"X167",	"X168",	"X169",	"X170",	"X171",	"X172",	"X173",	"X174",	"X175",	"X176",	"X177",	"X178",	"X179",	"X180",	"X181",	"X182",	"X183",	"X184",	"X185",	"X186",	"X187",	"X188",	"X189",	"X190",	"X191",	"X192",	"X193",	"X194",	"X195",	"X196",	"X197",	"X198",	"X199",	"X200",	"X201",	"X202",	"X203",	"X204",	"X205",	"X206",	"X207",	"X208",	"X209",	"X210",	"X211",	"X212",	"X213",	"X214",	"X215",	"X216",	"X217",	"X218",	"X219",	"X220",	"X221",	"X222",	"X223",	"X224",	"X225",	"X226",	"X227",	"X228",	"X229",	"X230",	"X231",	"X232",	"X233",	"X234",	"X235",	"X236",	"X237",	"X238",	"X239",	"X240",	"X241",	"X242",	"X243",	"X244",	"X245",	"X246",	"X247",	"X248",	"X249",	"X250",	"X251",	"X252",	"X253",	"X254",	"X255",	"X256",	"X257",	"X258",	"X259",	"X260",	"X261",	"X262",	"X263",	"X264",	"X265",	"X266",	"X267",	"X268",	"X269",	"X270",	"X271",	"X272",	"X273",	"X274",	"X275",	"X276",	"X277",	"X278",	"X279",	"X280",	"X281",	"X282",	"X283",	"X284",	"X285",	"X286",	"X287",	"X288",	"X289",	"X290",	"X291",	"X292",	"X293",	"X294",	"X295",	"X296",	"X297",	"X298",	"X299",	"X300",	"X301",	"X302",	"X303",	"X304",	"X305",	"X306",	"X307",	"X308",	"X309",	"X310",	"X311",	"X312",	"X313",	"X314",	"X315",	"X316",	"X317",	"X318",	"X319",	"X320",	"X321",	"X322",	"X323",	"X324",	"X325",	"X326",	"X327",	"X328",	"X329",	"X330",	"X331",	"X332",	"X333",	"X334",	"X335",	"X336",	"X337",	"X338",	"X339",	"X340",	"X341",	"X342",	"X343",	"X344",	"X345",	"X346",	"X347",	"X348",	"X349",	"X350",	"X351",	"X352",	"X353",	"X354",	"X355",	"X356",	"X357",	"X358",	"X359",	"X360",	"X361",	"X362",	"X363",	"X364",	"X365",	"X366")




write.csv(alfalfa_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/alfalfa_kc_norm.csv")
write.csv(barley_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/barley_kc_norm.csv")
write.csv(cantaloup_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/cantaloup_kc_norm.csv")
write.csv(corn_grain_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/corn_grain_kc_norm.csv")
write.csv(corn_silage_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/corn_silage_kc_norm.csv")
write.csv(cotton_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/cotton_kc_norm.csv")
write.csv(cucumber_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/cucumber_kc_norm.csv")
write.csv(oats_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/oats_kc_norm.csv")
write.csv(peanuts_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/peanuts_kc_norm.csv")
write.csv(potatoes_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/potatoes_kc_norm.csv")
write.csv(rye_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/rye_kc_norm.csv")
write.csv(snapbeans_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/snapbeans_kc_norm.csv")
write.csv(sorghum_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/sorghum_kc_norm.csv")
write.csv(sorghum_silage_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/sorghum_silage_kc_norm.csv")
write.csv(soybean_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/soybean_kc_norm.csv")
write.csv(strawberries_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/strawberries_kc_norm.csv")
write.csv(sweet_potato_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/sweet_potato_kc_norm.csv")
write.csv(tomatoes_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/tomatoes_kc_norm.csv")
write.csv(watermelon_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/watermelon_kc_norm.csv")
write.csv(wheat_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/wheat_kc_norm.csv")

write.csv(apples_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/apples_kc_norm.csv")
write.csv(apricots_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/apricots_kc_norm.csv")
write.csv(avocadoes_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/avocadoes_kc_norm.csv")
write.csv(berries_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/berries_kc_norm.csv")
write.csv(blueberries_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/blueberries_kc_norm.csv")
write.csv(buckwheat_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/buckwheat_kc_norm.csv")
write.csv(cherries_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/cherries_kc_norm.csv")
write.csv(citrus_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/citrus_kc_norm.csv")
write.csv(grape_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/grape_kc_norm.csv")
write.csv(hay_all_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/hay_all_kc_norm.csv")
write.csv(hotpeppers_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/hotpeppers_kc_norm.csv")
write.csv(lettuce_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/lettuce_kc_norm.csv")
write.csv(nuts_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/nuts_kc_norm.csv")
write.csv(peaches_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/peaches_kc_norm.csv")
write.csv(pears_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/pears_kc_norm.csv")
write.csv(plums_prunes_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/plums_prunes_kc_norm.csv")
write.csv(raspberries_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/raspberries_kc_norm.csv")
write.csv(rice_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/rice_kc_norm.csv")
write.csv(spinach_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/spinach_kc_norm.csv")
write.csv(sugarbeet_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/sugarbeet_kc_norm.csv")
write.csv(sweetpeppers_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/sweetpeppers_kc_norm.csv")
write.csv(tobacco_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/tobacco_kc_norm.csv")
write.csv(vegetable_all_kc_norm, file="D://EWN_KDF/New_daily_data/kc_tables/normal_years/vegetable_all_kc_norm.csv")



write.csv(alfalfa_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/alfalfa_kc_leap.csv")
write.csv(barley_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/barley_kc_leap.csv")
write.csv(cantaloup_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/cantaloup_kc_leap.csv")
write.csv(corn_grain_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/corn_grain_kc_leap.csv")
write.csv(corn_silage_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/corn_silage_kc_leap.csv")
write.csv(cotton_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/cotton_kc_leap.csv")
write.csv(cucumber_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/cucumber_kc_leap.csv")
write.csv(oats_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/oats_kc_leap.csv")
write.csv(peanuts_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/peanuts_kc_leap.csv")
write.csv(potatoes_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/potatoes_kc_leap.csv")
write.csv(rye_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/rye_kc_leap.csv")
write.csv(snapbeans_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/snapbeans_kc_leap.csv")
write.csv(sorghum_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/sorghum_kc_leap.csv")
write.csv(sorghum_silage_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/sorghum_silage_kc_leap.csv")
write.csv(soybean_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/soybean_kc_leap.csv")
write.csv(strawberries_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/strawberries_kc_leap.csv")
write.csv(sweet_potato_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/sweet_potato_kc_leap.csv")
write.csv(tomatoes_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/tomatoes_kc_leap.csv")
write.csv(watermelon_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/watermelon_kc_leap.csv")
write.csv(wheat_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/wheat_kc_leap.csv")

write.csv(apples_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/apples_kc_leap.csv")
write.csv(apricots_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/apricots_kc_leap.csv")
write.csv(avocadoes_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/avocadoes_kc_leap.csv")
write.csv(berries_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/berries_kc_leap.csv")
write.csv(blueberries_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/blueberries_kc_leap.csv")
write.csv(buckwheat_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/buckwheat_kc_leap.csv")
write.csv(cherries_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/cherries_kc_leap.csv")
write.csv(citrus_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/citrus_kc_leap.csv")
write.csv(grape_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/grape_kc_leap.csv")
write.csv(hay_all_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/hay_all_kc_leap.csv")
write.csv(hotpeppers_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/hotpeppers_kc_leap.csv")
write.csv(lettuce_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/lettuce_kc_leap.csv")
write.csv(nuts_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/nuts_kc_leap.csv")
write.csv(peaches_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/peaches_kc_leap.csv")
write.csv(pears_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/pears_kc_leap.csv")
write.csv(plums_prunes_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/plums_prunes_kc_leap.csv")
write.csv(raspberries_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/raspberries_kc_leap.csv")
write.csv(rice_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/rice_kc_leap.csv")
write.csv(spinach_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/spinach_kc_leap.csv")
write.csv(sugarbeet_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/sugarbeet_kc_leap.csv")
write.csv(sweetpeppers_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/sweetpeppers_kc_leap.csv")
write.csv(tobacco_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/tobacco_kc_leap.csv")
write.csv(vegetable_all_kc_leap, file="D://EWN_KDF/New_daily_data/kc_tables/leap_years/vegetable_all_kc_leap.csv")


ET0_1950 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1950.mat")
ET0_1951 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1951.mat")
ET0_1952 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1952.mat")
ET0_1953 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1953.mat")
ET0_1954 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1954.mat")
ET0_1955 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1955.mat")
ET0_1956 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1956.mat")
ET0_1957 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1957.mat")
ET0_1958 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1958.mat")
ET0_1959 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1959.mat")
ET0_1960 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1960.mat")
ET0_1961 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1961.mat")
ET0_1962 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1962.mat")
ET0_1963 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1963.mat")
ET0_1964 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1964.mat")
ET0_1965 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1965.mat")
ET0_1966 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1966.mat")
ET0_1967 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1967.mat")
ET0_1968 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1968.mat")
ET0_1969 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1969.mat")
ET0_1970 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1970.mat")
ET0_1971 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1971.mat")
ET0_1972 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1972.mat")
ET0_1973 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1973.mat")
ET0_1974 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1974.mat")
ET0_1975 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1975.mat")
ET0_1976 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1976.mat")
ET0_1977 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1977.mat")
ET0_1978 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1978.mat")
ET0_1979 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1979.mat")
ET0_1980 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1980.mat")
ET0_1981 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1981.mat")
ET0_1982 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1982.mat")
ET0_1983 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1983.mat")
ET0_1984 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1984.mat")
ET0_1985 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1985.mat")
ET0_1986 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1986.mat")
ET0_1987 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1987.mat")
ET0_1988 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1988.mat")
ET0_1989 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1989.mat")
ET0_1990 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1990.mat")
ET0_1991 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1991.mat")
ET0_1992 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1992.mat")
ET0_1993 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1993.mat")
ET0_1994 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1994.mat")
ET0_1995 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1995.mat")
ET0_1996 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1996.mat")
ET0_1997 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1997.mat")
ET0_1998 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1998.mat")
ET0_1999 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_1999.mat")
ET0_2000 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2000.mat")
ET0_2001 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2001.mat")
ET0_2002 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2002.mat")
ET0_2003 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2003.mat")
ET0_2004 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2004.mat")
ET0_2005 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2005.mat")
ET0_2006 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2006.mat")
ET0_2007 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2007.mat")
ET0_2008 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2008.mat")
ET0_2009 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2009.mat")
ET0_2010 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2010.mat")
ET0_2011 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2011.mat")
ET0_2012 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2012.mat")
ET0_2013 <- read.mat(file="F://EWN_KDF//New_daily_data/Livneh_1950_2013/Livneh_County_ET0 (1)/Livneh_County_ET0_2013.mat")


GEOID <- as.data.frame(ET0_1950$Counties_GEOID)
colnames(GEOID) <- c("GEOID")

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


ET0_1950 <- cbind(GEOID, ET0_1950)
ET0_1951 <- cbind(GEOID, ET0_1951)
ET0_1952 <- cbind(GEOID, ET0_1952)
ET0_1953 <- cbind(GEOID, ET0_1953)
ET0_1954 <- cbind(GEOID, ET0_1954)
ET0_1955 <- cbind(GEOID, ET0_1955)
ET0_1956 <- cbind(GEOID, ET0_1956)
ET0_1957 <- cbind(GEOID, ET0_1957)
ET0_1958 <- cbind(GEOID, ET0_1958)
ET0_1959 <- cbind(GEOID, ET0_1959)
ET0_1960 <- cbind(GEOID, ET0_1960)
ET0_1961 <- cbind(GEOID, ET0_1961)
ET0_1962 <- cbind(GEOID, ET0_1962)
ET0_1963 <- cbind(GEOID, ET0_1963)
ET0_1964 <- cbind(GEOID, ET0_1964)
ET0_1965 <- cbind(GEOID, ET0_1965)
ET0_1966 <- cbind(GEOID, ET0_1966)
ET0_1967 <- cbind(GEOID, ET0_1967)
ET0_1968 <- cbind(GEOID, ET0_1968)
ET0_1969 <- cbind(GEOID, ET0_1969)
ET0_1970 <- cbind(GEOID, ET0_1970)
ET0_1971 <- cbind(GEOID, ET0_1971)
ET0_1972 <- cbind(GEOID, ET0_1972)
ET0_1973 <- cbind(GEOID, ET0_1973)
ET0_1974 <- cbind(GEOID, ET0_1974)
ET0_1975 <- cbind(GEOID, ET0_1975)
ET0_1976 <- cbind(GEOID, ET0_1976)
ET0_1977 <- cbind(GEOID, ET0_1977)
ET0_1978 <- cbind(GEOID, ET0_1978)
ET0_1979 <- cbind(GEOID, ET0_1979)
ET0_1980 <- cbind(GEOID, ET0_1980)
ET0_1981 <- cbind(GEOID, ET0_1981)
ET0_1982 <- cbind(GEOID, ET0_1982)
ET0_1983 <- cbind(GEOID, ET0_1983)
ET0_1984 <- cbind(GEOID, ET0_1984)
ET0_1985 <- cbind(GEOID, ET0_1985)
ET0_1986 <- cbind(GEOID, ET0_1986)
ET0_1987 <- cbind(GEOID, ET0_1987)
ET0_1988 <- cbind(GEOID, ET0_1988)
ET0_1989 <- cbind(GEOID, ET0_1989)
ET0_1990 <- cbind(GEOID, ET0_1990)
ET0_1991 <- cbind(GEOID, ET0_1991)
ET0_1992 <- cbind(GEOID, ET0_1992)
ET0_1993 <- cbind(GEOID, ET0_1993)
ET0_1994 <- cbind(GEOID, ET0_1994)
ET0_1995 <- cbind(GEOID, ET0_1995)
ET0_1996 <- cbind(GEOID, ET0_1996)
ET0_1997 <- cbind(GEOID, ET0_1997)
ET0_1998 <- cbind(GEOID, ET0_1998)
ET0_1999 <- cbind(GEOID, ET0_1999)
ET0_2000 <- cbind(GEOID, ET0_2000)
ET0_2001 <- cbind(GEOID, ET0_2001)
ET0_2002 <- cbind(GEOID, ET0_2002)
ET0_2003 <- cbind(GEOID, ET0_2003)
ET0_2004 <- cbind(GEOID, ET0_2004)
ET0_2005 <- cbind(GEOID, ET0_2005)
ET0_2006 <- cbind(GEOID, ET0_2006)
ET0_2007 <- cbind(GEOID, ET0_2007)
ET0_2008 <- cbind(GEOID, ET0_2008)
ET0_2009 <- cbind(GEOID, ET0_2009)
ET0_2010 <- cbind(GEOID, ET0_2010)
ET0_2011 <- cbind(GEOID, ET0_2011)
ET0_2012 <- cbind(GEOID, ET0_2012)
ET0_2013 <- cbind(GEOID, ET0_2013)


ET0_1950 <- ET0_1950[order(ET0_1950$GEOID),]
ET0_1951 <- ET0_1951[order(ET0_1951$GEOID),]
ET0_1952 <- ET0_1952[order(ET0_1952$GEOID),]
ET0_1953 <- ET0_1953[order(ET0_1953$GEOID),]
ET0_1954 <- ET0_1954[order(ET0_1954$GEOID),]
ET0_1955 <- ET0_1955[order(ET0_1955$GEOID),]
ET0_1956 <- ET0_1956[order(ET0_1956$GEOID),]
ET0_1957 <- ET0_1957[order(ET0_1957$GEOID),]
ET0_1958 <- ET0_1958[order(ET0_1958$GEOID),]
ET0_1959 <- ET0_1959[order(ET0_1959$GEOID),]
ET0_1960 <- ET0_1960[order(ET0_1960$GEOID),]
ET0_1961 <- ET0_1961[order(ET0_1961$GEOID),]
ET0_1962 <- ET0_1962[order(ET0_1962$GEOID),]
ET0_1963 <- ET0_1963[order(ET0_1963$GEOID),]
ET0_1964 <- ET0_1964[order(ET0_1964$GEOID),]
ET0_1965 <- ET0_1965[order(ET0_1965$GEOID),]
ET0_1966 <- ET0_1966[order(ET0_1966$GEOID),]
ET0_1967 <- ET0_1967[order(ET0_1967$GEOID),]
ET0_1968 <- ET0_1968[order(ET0_1968$GEOID),]
ET0_1969 <- ET0_1969[order(ET0_1969$GEOID),]
ET0_1970 <- ET0_1970[order(ET0_1970$GEOID),]
ET0_1971 <- ET0_1971[order(ET0_1971$GEOID),]
ET0_1972 <- ET0_1972[order(ET0_1972$GEOID),]
ET0_1973 <- ET0_1973[order(ET0_1973$GEOID),]
ET0_1974 <- ET0_1974[order(ET0_1974$GEOID),]
ET0_1975 <- ET0_1975[order(ET0_1975$GEOID),]
ET0_1976 <- ET0_1976[order(ET0_1976$GEOID),]
ET0_1977 <- ET0_1977[order(ET0_1977$GEOID),]
ET0_1978 <- ET0_1978[order(ET0_1978$GEOID),]
ET0_1979 <- ET0_1979[order(ET0_1979$GEOID),]
ET0_1980 <- ET0_1980[order(ET0_1980$GEOID),]
ET0_1981 <- ET0_1981[order(ET0_1981$GEOID),]
ET0_1982 <- ET0_1982[order(ET0_1982$GEOID),]
ET0_1983 <- ET0_1983[order(ET0_1983$GEOID),]
ET0_1984 <- ET0_1984[order(ET0_1984$GEOID),]
ET0_1985 <- ET0_1985[order(ET0_1985$GEOID),]
ET0_1986 <- ET0_1986[order(ET0_1986$GEOID),]
ET0_1987 <- ET0_1987[order(ET0_1987$GEOID),]
ET0_1988 <- ET0_1988[order(ET0_1988$GEOID),]
ET0_1989 <- ET0_1989[order(ET0_1989$GEOID),]
ET0_1990 <- ET0_1990[order(ET0_1990$GEOID),]
ET0_1991 <- ET0_1991[order(ET0_1991$GEOID),]
ET0_1992 <- ET0_1992[order(ET0_1992$GEOID),]
ET0_1993 <- ET0_1993[order(ET0_1993$GEOID),]
ET0_1994 <- ET0_1994[order(ET0_1994$GEOID),]
ET0_1995 <- ET0_1995[order(ET0_1995$GEOID),]
ET0_1996 <- ET0_1996[order(ET0_1996$GEOID),]
ET0_1997 <- ET0_1997[order(ET0_1997$GEOID),]
ET0_1998 <- ET0_1998[order(ET0_1998$GEOID),]
ET0_1999 <- ET0_1999[order(ET0_1999$GEOID),]
ET0_2000 <- ET0_2000[order(ET0_2000$GEOID),]
ET0_2001 <- ET0_2001[order(ET0_2001$GEOID),]
ET0_2002 <- ET0_2002[order(ET0_2002$GEOID),]
ET0_2003 <- ET0_2003[order(ET0_2003$GEOID),]
ET0_2004 <- ET0_2004[order(ET0_2004$GEOID),]
ET0_2005 <- ET0_2005[order(ET0_2005$GEOID),]
ET0_2006 <- ET0_2006[order(ET0_2006$GEOID),]
ET0_2007 <- ET0_2007[order(ET0_2007$GEOID),]
ET0_2008 <- ET0_2008[order(ET0_2008$GEOID),]
ET0_2009 <- ET0_2009[order(ET0_2009$GEOID),]
ET0_2010 <- ET0_2010[order(ET0_2010$GEOID),]
ET0_2011 <- ET0_2011[order(ET0_2011$GEOID),]
ET0_2012 <- ET0_2012[order(ET0_2012$GEOID),]
ET0_2013 <- ET0_2013[order(ET0_2013$GEOID),]

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


###order kc tables
alfalfa_kc_norm <- alfalfa_kc_norm[order(alfalfa_kc_norm$FIPS),]
barley_kc_norm <- barley_kc_norm[order(barley_kc_norm$FIPS),]
cantaloup_kc_norm <- cantaloup_kc_norm[order(cantaloup_kc_norm$FIPS),]
corn_grain_kc_norm <- corn_grain_kc_norm[order(corn_grain_kc_norm$FIPS),]
corn_silage_kc_norm <- corn_silage_kc_norm[order(corn_silage_kc_norm$FIPS),]
cotton_kc_norm <- cotton_kc_norm[order(cotton_kc_norm$FIPS),]
cucumber_kc_norm <- cucumber_kc_norm[order(cucumber_kc_norm$FIPS),]
oats_kc_norm <- oats_kc_norm[order(oats_kc_norm$FIPS),]
peanuts_kc_norm <- peanuts_kc_norm[order(peanuts_kc_norm$FIPS),]
potatoes_kc_norm <- potatoes_kc_norm[order(potatoes_kc_norm$FIPS),]
rye_kc_norm <- rye_kc_norm[order(rye_kc_norm$FIPS),]
snapbeans_kc_norm <- snapbeans_kc_norm[order(snapbeans_kc_norm$FIPS),]
sorghum_kc_norm <- sorghum_kc_norm[order(sorghum_kc_norm$FIPS),]
sorghum_silage_kc_norm <- sorghum_silage_kc_norm[order(sorghum_silage_kc_norm$FIPS),]
soybean_kc_norm <- soybean_kc_norm[order(soybean_kc_norm$FIPS),]
strawberries_kc_norm <- strawberries_kc_norm[order(strawberries_kc_norm$FIPS),]
sweet_potato_kc_norm <- sweet_potato_kc_norm[order(sweet_potato_kc_norm$FIPS),]
tomatoes_kc_norm <- tomatoes_kc_norm[order(tomatoes_kc_norm$FIPS),]
watermelon_kc_norm <- watermelon_kc_norm[order(watermelon_kc_norm$FIPS),]
wheat_kc_norm <- wheat_kc_norm[order(wheat_kc_norm$FIPS),]

apples_kc_norm <- apples_kc_norm[order(apples_kc_norm$FIPS),]
apricots_kc_norm <- apricots_kc_norm[order(apricots_kc_norm$FIPS),]
avocadoes_kc_norm <- avocadoes_kc_norm[order(avocadoes_kc_norm$FIPS),]
berries_kc_norm <- berries_kc_norm[order(berries_kc_norm$FIPS),]
blueberries_kc_norm <- blueberries_kc_norm[order(blueberries_kc_norm$FIPS),]
buckwheat_kc_norm <- buckwheat_kc_norm[order(buckwheat_kc_norm$FIPS),]
cherries_kc_norm <- cherries_kc_norm[order(cherries_kc_norm$FIPS),]
citrus_kc_norm <- citrus_kc_norm[order(citrus_kc_norm$FIPS),]
grape_kc_norm <- grape_kc_norm[order(grape_kc_norm$FIPS),]
hay_all_kc_norm <- hay_all_kc_norm[order(hay_all_kc_norm$FIPS),]
hotpeppers_kc_norm <- hotpeppers_kc_norm[order(hotpeppers_kc_norm$FIPS),]
lettuce_kc_norm <- lettuce_kc_norm[order(lettuce_kc_norm$FIPS),]
nuts_kc_norm <- nuts_kc_norm[order(nuts_kc_norm$FIPS),]
peaches_kc_norm <- peaches_kc_norm[order(peaches_kc_norm$FIPS),]
pears_kc_norm <- pears_kc_norm[order(pears_kc_norm$FIPS),]
plums_prunes_kc_norm <- plums_prunes_kc_norm[order(plums_prunes_kc_norm$FIPS),]
raspberries_kc_norm <- raspberries_kc_norm[order(raspberries_kc_norm$FIPS),]
rice_kc_norm <- rice_kc_norm[order(rice_kc_norm$FIPS),]
spinach_kc_norm <- spinach_kc_norm[order(spinach_kc_norm$FIPS),]
sugarbeet_kc_norm <- sugarbeet_kc_norm[order(sugarbeet_kc_norm$FIPS),]
sweetpeppers_kc_norm <- sweetpeppers_kc_norm[order(sweetpeppers_kc_norm$FIPS),]
tobacco_kc_norm <- tobacco_kc_norm[order(tobacco_kc_norm$FIPS),]
vegetable_all_kc_norm <- vegetable_all_kc_norm[order(vegetable_all_kc_norm$FIPS),]

alfalfa_kc_leap <- alfalfa_kc_leap[order(alfalfa_kc_leap$FIPS),]
barley_kc_leap <- barley_kc_leap[order(barley_kc_leap$FIPS),]
cantaloup_kc_leap <- cantaloup_kc_leap[order(cantaloup_kc_leap$FIPS),]
corn_grain_kc_leap <- corn_grain_kc_leap[order(corn_grain_kc_leap$FIPS),]
corn_silage_kc_leap <- corn_silage_kc_leap[order(corn_silage_kc_leap$FIPS),]
cotton_kc_leap <- cotton_kc_leap[order(cotton_kc_leap$FIPS),]
cucumber_kc_leap <- cucumber_kc_leap[order(cucumber_kc_leap$FIPS),]
oats_kc_leap <- oats_kc_leap[order(oats_kc_leap$FIPS),]
peanuts_kc_leap <- peanuts_kc_leap[order(peanuts_kc_leap$FIPS),]
potatoes_kc_leap <- potatoes_kc_leap[order(potatoes_kc_leap$FIPS),]
rye_kc_leap <- rye_kc_leap[order(rye_kc_leap$FIPS),]
snapbeans_kc_leap <- snapbeans_kc_leap[order(snapbeans_kc_leap$FIPS),]
sorghum_kc_leap <- sorghum_kc_leap[order(sorghum_kc_leap$FIPS),]
sorghum_silage_kc_leap <- sorghum_silage_kc_leap[order(sorghum_silage_kc_leap$FIPS),]
soybean_kc_leap <- soybean_kc_leap[order(soybean_kc_leap$FIPS),]
strawberries_kc_leap <- strawberries_kc_leap[order(strawberries_kc_leap$FIPS),]
sweet_potato_kc_leap <- sweet_potato_kc_leap[order(sweet_potato_kc_leap$FIPS),]
tomatoes_kc_leap <- tomatoes_kc_leap[order(tomatoes_kc_leap$FIPS),]
watermelon_kc_leap <- watermelon_kc_leap[order(watermelon_kc_leap$FIPS),]
wheat_kc_leap <- wheat_kc_leap[order(wheat_kc_leap$FIPS),]

apples_kc_leap <- apples_kc_leap[order(apples_kc_leap$FIPS),]
apricots_kc_leap <- apricots_kc_leap[order(apricots_kc_leap$FIPS),]
avocadoes_kc_leap <- avocadoes_kc_leap[order(avocadoes_kc_leap$FIPS),]
berries_kc_leap <- berries_kc_leap[order(berries_kc_leap$FIPS),]
blueberries_kc_leap <- blueberries_kc_leap[order(blueberries_kc_leap$FIPS),]
buckwheat_kc_leap <- buckwheat_kc_leap[order(buckwheat_kc_leap$FIPS),]
cherries_kc_leap <- cherries_kc_leap[order(cherries_kc_leap$FIPS),]
citrus_kc_leap <- citrus_kc_leap[order(citrus_kc_leap$FIPS),]
grape_kc_leap <- grape_kc_leap[order(grape_kc_leap$FIPS),]
hay_all_kc_leap <- hay_all_kc_leap[order(hay_all_kc_leap$FIPS),]
hotpeppers_kc_leap <- hotpeppers_kc_leap[order(hotpeppers_kc_leap$FIPS),]
lettuce_kc_leap <- lettuce_kc_leap[order(lettuce_kc_leap$FIPS),]
nuts_kc_leap <- nuts_kc_leap[order(nuts_kc_leap$FIPS),]
peaches_kc_leap <- peaches_kc_leap[order(peaches_kc_leap$FIPS),]
pears_kc_leap <- pears_kc_leap[order(pears_kc_leap$FIPS),]
plums_prunes_kc_leap <- plums_prunes_kc_leap[order(plums_prunes_kc_leap$FIPS),]
raspberries_kc_leap <- raspberries_kc_leap[order(raspberries_kc_leap$FIPS),]
rice_kc_leap <- rice_kc_leap[order(rice_kc_leap$FIPS),]
spinach_kc_leap <- spinach_kc_leap[order(spinach_kc_leap$FIPS),]
sugarbeet_kc_leap <- sugarbeet_kc_leap[order(sugarbeet_kc_leap$FIPS),]
sweetpeppers_kc_leap <- sweetpeppers_kc_leap[order(sweetpeppers_kc_leap$FIPS),]
tobacco_kc_leap <- tobacco_kc_leap[order(tobacco_kc_leap$FIPS),]
vegetable_all_kc_leap <- vegetable_all_kc_leap[order(vegetable_all_kc_leap$FIPS),]


#### remove FIPS

alfalfa_kc_norm <- subset(alfalfa_kc_norm, select=-c(FIPS))
barley_kc_norm <- subset(barley_kc_norm, select=-c(FIPS))
cantaloup_kc_norm <- subset(cantaloup_kc_norm, select=-c(FIPS))
corn_grain_kc_norm <- subset(corn_grain_kc_norm, select=-c(FIPS))
corn_silage_kc_norm <- subset(corn_silage_kc_norm, select=-c(FIPS))
cotton_kc_norm <- subset(cotton_kc_norm, select=-c(FIPS))
cucumber_kc_norm <- subset(cucumber_kc_norm, select=-c(FIPS))
oats_kc_norm <- subset(oats_kc_norm, select=-c(FIPS))
peanuts_kc_norm <- subset(peanuts_kc_norm, select=-c(FIPS))
potatoes_kc_norm <- subset(potatoes_kc_norm, select=-c(FIPS))
rye_kc_norm <- subset(rye_kc_norm, select=-c(FIPS))
snapbeans_kc_norm <- subset(snapbeans_kc_norm, select=-c(FIPS))
sorghum_kc_norm <- subset(sorghum_kc_norm, select=-c(FIPS))
sorghum_silage_kc_norm <- subset(sorghum_silage_kc_norm, select=-c(FIPS))
soybean_kc_norm <- subset(soybean_kc_norm, select=-c(FIPS))
strawberries_kc_norm <- subset(strawberries_kc_norm, select=-c(FIPS))
sweet_potato_kc_norm <- subset(sweet_potato_kc_norm, select=-c(FIPS))
tomatoes_kc_norm <- subset(tomatoes_kc_norm, select=-c(FIPS))
watermelon_kc_norm <- subset(watermelon_kc_norm, select=-c(FIPS))
wheat_kc_norm <- subset(wheat_kc_norm, select=-c(FIPS))

apples_kc_norm <- subset(apples_kc_norm, select=-c(FIPS))
apricots_kc_norm <- subset(apricots_kc_norm, select=-c(FIPS))
avocadoes_kc_norm <- subset(avocadoes_kc_norm, select=-c(FIPS))
berries_kc_norm <- subset(berries_kc_norm, select=-c(FIPS))
blueberries_kc_norm <- subset(blueberries_kc_norm, select=-c(FIPS))
buckwheat_kc_norm <- subset(buckwheat_kc_norm, select=-c(FIPS))
cherries_kc_norm <- subset(cherries_kc_norm, select=-c(FIPS))
citrus_kc_norm <- subset(citrus_kc_norm, select=-c(FIPS))
grape_kc_norm <- subset(grape_kc_norm, select=-c(FIPS))
hay_all_kc_norm <- subset(hay_all_kc_norm, select=-c(FIPS))
hotpeppers_kc_norm <- subset(hotpeppers_kc_norm, select=-c(FIPS))
lettuce_kc_norm <- subset(lettuce_kc_norm, select=-c(FIPS))
nuts_kc_norm <- subset(nuts_kc_norm, select=-c(FIPS))
peaches_kc_norm <- subset(peaches_kc_norm, select=-c(FIPS))
pears_kc_norm <- subset(pears_kc_norm, select=-c(FIPS))
plums_prunes_kc_norm <- subset(plums_prunes_kc_norm, select=-c(FIPS))
raspberries_kc_norm <- subset(raspberries_kc_norm, select=-c(FIPS))
rice_kc_norm <- subset(rice_kc_norm, select=-c(FIPS))
spinach_kc_norm <- subset(spinach_kc_norm, select=-c(FIPS))
sugarbeet_kc_norm <- subset(sugarbeet_kc_norm, select=-c(FIPS))
sweetpeppers_kc_norm <- subset(sweetpeppers_kc_norm, select=-c(FIPS))
tobacco_kc_norm <- subset(tobacco_kc_norm, select=-c(FIPS))
vegetable_all_kc_norm <- subset(vegetable_all_kc_norm, select=-c(FIPS))


alfalfa_kc_leap <- subset(alfalfa_kc_leap, select=-c(FIPS))
barley_kc_leap <- subset(barley_kc_leap, select=-c(FIPS))
cantaloup_kc_leap <- subset(cantaloup_kc_leap, select=-c(FIPS))
corn_grain_kc_leap <- subset(corn_grain_kc_leap, select=-c(FIPS))
corn_silage_kc_leap <- subset(corn_silage_kc_leap, select=-c(FIPS))
cotton_kc_leap <- subset(cotton_kc_leap, select=-c(FIPS))
cucumber_kc_leap <- subset(cucumber_kc_leap, select=-c(FIPS))
oats_kc_leap <- subset(oats_kc_leap, select=-c(FIPS))
peanuts_kc_leap <- subset(peanuts_kc_leap, select=-c(FIPS))
potatoes_kc_leap <- subset(potatoes_kc_leap, select=-c(FIPS))
rye_kc_leap <- subset(rye_kc_leap, select=-c(FIPS))
snapbeans_kc_leap <- subset(snapbeans_kc_leap, select=-c(FIPS))
sorghum_kc_leap <- subset(sorghum_kc_leap, select=-c(FIPS))
sorghum_silage_kc_leap <- subset(sorghum_silage_kc_leap, select=-c(FIPS))
soybean_kc_leap <- subset(soybean_kc_leap, select=-c(FIPS))
strawberries_kc_leap <- subset(strawberries_kc_leap, select=-c(FIPS))
sweet_potato_kc_leap <- subset(sweet_potato_kc_leap, select=-c(FIPS))
tomatoes_kc_leap <- subset(tomatoes_kc_leap, select=-c(FIPS))
watermelon_kc_leap <- subset(watermelon_kc_leap, select=-c(FIPS))
wheat_kc_leap <- subset(wheat_kc_leap, select=-c(FIPS))

apples_kc_leap <- subset(apples_kc_leap, select=-c(FIPS))
apricots_kc_leap <- subset(apricots_kc_leap, select=-c(FIPS))
avocadoes_kc_leap <- subset(avocadoes_kc_leap, select=-c(FIPS))
berries_kc_leap <- subset(berries_kc_leap, select=-c(FIPS))
blueberries_kc_leap <- subset(blueberries_kc_leap, select=-c(FIPS))
buckwheat_kc_leap <- subset(buckwheat_kc_leap, select=-c(FIPS))
cherries_kc_leap <- subset(cherries_kc_leap, select=-c(FIPS))
citrus_kc_leap <- subset(citrus_kc_leap, select=-c(FIPS))
grape_kc_leap <- subset(grape_kc_leap, select=-c(FIPS))
hay_all_kc_leap <- subset(hay_all_kc_leap, select=-c(FIPS))
hotpeppers_kc_leap <- subset(hotpeppers_kc_leap, select=-c(FIPS))
lettuce_kc_leap <- subset(lettuce_kc_leap, select=-c(FIPS))
nuts_kc_leap <- subset(nuts_kc_leap, select=-c(FIPS))
peaches_kc_leap <- subset(peaches_kc_leap, select=-c(FIPS))
pears_kc_leap <- subset(pears_kc_leap, select=-c(FIPS))
plums_prunes_kc_leap <- subset(plums_prunes_kc_leap, select=-c(FIPS))
raspberries_kc_leap <- subset(raspberries_kc_leap, select=-c(FIPS))
rice_kc_leap <- subset(rice_kc_leap, select=-c(FIPS))
spinach_kc_leap <- subset(spinach_kc_leap, select=-c(FIPS))
sugarbeet_kc_leap <- subset(sugarbeet_kc_leap, select=-c(FIPS))
sweetpeppers_kc_leap <- subset(sweetpeppers_kc_leap, select=-c(FIPS))
tobacco_kc_leap <- subset(tobacco_kc_leap, select=-c(FIPS))
vegetable_all_kc_leap <- subset(vegetable_all_kc_leap, select=-c(FIPS))



ETc_alfalfa_1950 <- ET0_1950*alfalfa_kc_norm
ETc_alfalfa_1951 <- ET0_1951*alfalfa_kc_norm
ETc_alfalfa_1952 <- ET0_1952*alfalfa_kc_leap
ETc_alfalfa_1953 <- ET0_1953*alfalfa_kc_norm
ETc_alfalfa_1954 <- ET0_1954*alfalfa_kc_norm
ETc_alfalfa_1955 <- ET0_1955*alfalfa_kc_norm
ETc_alfalfa_1956 <- ET0_1956*alfalfa_kc_leap
ETc_alfalfa_1957 <- ET0_1957*alfalfa_kc_norm
ETc_alfalfa_1958 <- ET0_1958*alfalfa_kc_norm
ETc_alfalfa_1959 <- ET0_1959*alfalfa_kc_norm
ETc_alfalfa_1960 <- ET0_1960*alfalfa_kc_leap
ETc_alfalfa_1961 <- ET0_1961*alfalfa_kc_norm
ETc_alfalfa_1962 <- ET0_1962*alfalfa_kc_norm
ETc_alfalfa_1963 <- ET0_1963*alfalfa_kc_norm
ETc_alfalfa_1964 <- ET0_1964*alfalfa_kc_leap
ETc_alfalfa_1965 <- ET0_1965*alfalfa_kc_norm
ETc_alfalfa_1966 <- ET0_1966*alfalfa_kc_norm
ETc_alfalfa_1967 <- ET0_1967*alfalfa_kc_norm
ETc_alfalfa_1968 <- ET0_1968*alfalfa_kc_leap
ETc_alfalfa_1969 <- ET0_1969*alfalfa_kc_norm
ETc_alfalfa_1970 <- ET0_1970*alfalfa_kc_norm
ETc_alfalfa_1971 <- ET0_1971*alfalfa_kc_norm
ETc_alfalfa_1972 <- ET0_1972*alfalfa_kc_leap
ETc_alfalfa_1973 <- ET0_1973*alfalfa_kc_norm
ETc_alfalfa_1974 <- ET0_1974*alfalfa_kc_norm
ETc_alfalfa_1975 <- ET0_1975*alfalfa_kc_norm
ETc_alfalfa_1976 <- ET0_1976*alfalfa_kc_leap
ETc_alfalfa_1977 <- ET0_1977*alfalfa_kc_norm
ETc_alfalfa_1978 <- ET0_1978*alfalfa_kc_norm
ETc_alfalfa_1979 <- ET0_1979*alfalfa_kc_norm
ETc_alfalfa_1980 <- ET0_1980*alfalfa_kc_leap
ETc_alfalfa_1981 <- ET0_1981*alfalfa_kc_norm
ETc_alfalfa_1982 <- ET0_1982*alfalfa_kc_norm
ETc_alfalfa_1983 <- ET0_1983*alfalfa_kc_norm
ETc_alfalfa_1984 <- ET0_1984*alfalfa_kc_leap
ETc_alfalfa_1985 <- ET0_1985*alfalfa_kc_norm
ETc_alfalfa_1986 <- ET0_1986*alfalfa_kc_norm
ETc_alfalfa_1987 <- ET0_1987*alfalfa_kc_norm
ETc_alfalfa_1988 <- ET0_1988*alfalfa_kc_leap
ETc_alfalfa_1989 <- ET0_1989*alfalfa_kc_norm
ETc_alfalfa_1990 <- ET0_1990*alfalfa_kc_norm
ETc_alfalfa_1991 <- ET0_1991*alfalfa_kc_norm
ETc_alfalfa_1992 <- ET0_1992*alfalfa_kc_leap
ETc_alfalfa_1993 <- ET0_1993*alfalfa_kc_norm
ETc_alfalfa_1994 <- ET0_1994*alfalfa_kc_norm
ETc_alfalfa_1995 <- ET0_1995*alfalfa_kc_norm
ETc_alfalfa_1996 <- ET0_1996*alfalfa_kc_leap
ETc_alfalfa_1997 <- ET0_1997*alfalfa_kc_norm
ETc_alfalfa_1998 <- ET0_1998*alfalfa_kc_norm
ETc_alfalfa_1999 <- ET0_1999*alfalfa_kc_norm
ETc_alfalfa_2000 <- ET0_2000*alfalfa_kc_leap
ETc_alfalfa_2001 <- ET0_2001*alfalfa_kc_norm
ETc_alfalfa_2002 <- ET0_2002*alfalfa_kc_norm
ETc_alfalfa_2003 <- ET0_2003*alfalfa_kc_norm
ETc_alfalfa_2004 <- ET0_2004*alfalfa_kc_leap
ETc_alfalfa_2005 <- ET0_2005*alfalfa_kc_norm
ETc_alfalfa_2006 <- ET0_2006*alfalfa_kc_norm
ETc_alfalfa_2007 <- ET0_2007*alfalfa_kc_norm
ETc_alfalfa_2008 <- ET0_2008*alfalfa_kc_leap
ETc_alfalfa_2009 <- ET0_2009*alfalfa_kc_norm
ETc_alfalfa_2010 <- ET0_2010*alfalfa_kc_norm
ETc_alfalfa_2011 <- ET0_2011*alfalfa_kc_norm
ETc_alfalfa_2012 <- ET0_2012*alfalfa_kc_leap
ETc_alfalfa_2013 <- ET0_2013*alfalfa_kc_norm

write.csv(cbind(GEOID,ETc_alfalfa_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1950.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1951.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1952.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1953.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1954.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1955.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1956.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1957.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1958.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1959.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1960.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1961.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1962.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1963.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1964.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1965.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1966.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1967.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1968.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1969.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1970.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1971.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1972.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1973.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1974.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1975.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1976.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1977.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1978.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1979.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1980.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1981.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1982.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1983.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1984.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1985.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1986.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1987.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1988.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1989.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1990.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1991.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1992.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1993.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1994.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1995.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1996.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1997.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1998.csv")
write.csv(cbind(GEOID,ETc_alfalfa_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_1999.csv")
write.csv(cbind(GEOID,ETc_alfalfa_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_2000.csv")
write.csv(cbind(GEOID,ETc_alfalfa_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_2001.csv")
write.csv(cbind(GEOID,ETc_alfalfa_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_2002.csv")
write.csv(cbind(GEOID,ETc_alfalfa_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_2003.csv")
write.csv(cbind(GEOID,ETc_alfalfa_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_2004.csv")
write.csv(cbind(GEOID,ETc_alfalfa_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_2005.csv")
write.csv(cbind(GEOID,ETc_alfalfa_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_2006.csv")
write.csv(cbind(GEOID,ETc_alfalfa_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_2007.csv")
write.csv(cbind(GEOID,ETc_alfalfa_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_2008.csv")
write.csv(cbind(GEOID,ETc_alfalfa_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_2009.csv")
write.csv(cbind(GEOID,ETc_alfalfa_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_2010.csv")
write.csv(cbind(GEOID,ETc_alfalfa_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_2011.csv")
write.csv(cbind(GEOID,ETc_alfalfa_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_2012.csv")
write.csv(cbind(GEOID,ETc_alfalfa_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_alfalfa_2013.csv")



ETc_barley_1950 <- ET0_1950*barley_kc_norm
ETc_barley_1951 <- ET0_1951*barley_kc_norm
ETc_barley_1952 <- ET0_1952*barley_kc_leap
ETc_barley_1953 <- ET0_1953*barley_kc_norm
ETc_barley_1954 <- ET0_1954*barley_kc_norm
ETc_barley_1955 <- ET0_1955*barley_kc_norm
ETc_barley_1956 <- ET0_1956*barley_kc_leap
ETc_barley_1957 <- ET0_1957*barley_kc_norm
ETc_barley_1958 <- ET0_1958*barley_kc_norm
ETc_barley_1959 <- ET0_1959*barley_kc_norm
ETc_barley_1960 <- ET0_1960*barley_kc_leap
ETc_barley_1961 <- ET0_1961*barley_kc_norm
ETc_barley_1962 <- ET0_1962*barley_kc_norm
ETc_barley_1963 <- ET0_1963*barley_kc_norm
ETc_barley_1964 <- ET0_1964*barley_kc_leap
ETc_barley_1965 <- ET0_1965*barley_kc_norm
ETc_barley_1966 <- ET0_1966*barley_kc_norm
ETc_barley_1967 <- ET0_1967*barley_kc_norm
ETc_barley_1968 <- ET0_1968*barley_kc_leap
ETc_barley_1969 <- ET0_1969*barley_kc_norm
ETc_barley_1970 <- ET0_1970*barley_kc_norm
ETc_barley_1971 <- ET0_1971*barley_kc_norm
ETc_barley_1972 <- ET0_1972*barley_kc_leap
ETc_barley_1973 <- ET0_1973*barley_kc_norm
ETc_barley_1974 <- ET0_1974*barley_kc_norm
ETc_barley_1975 <- ET0_1975*barley_kc_norm
ETc_barley_1976 <- ET0_1976*barley_kc_leap
ETc_barley_1977 <- ET0_1977*barley_kc_norm
ETc_barley_1978 <- ET0_1978*barley_kc_norm
ETc_barley_1979 <- ET0_1979*barley_kc_norm
ETc_barley_1980 <- ET0_1980*barley_kc_leap
ETc_barley_1981 <- ET0_1981*barley_kc_norm
ETc_barley_1982 <- ET0_1982*barley_kc_norm
ETc_barley_1983 <- ET0_1983*barley_kc_norm
ETc_barley_1984 <- ET0_1984*barley_kc_leap
ETc_barley_1985 <- ET0_1985*barley_kc_norm
ETc_barley_1986 <- ET0_1986*barley_kc_norm
ETc_barley_1987 <- ET0_1987*barley_kc_norm
ETc_barley_1988 <- ET0_1988*barley_kc_leap
ETc_barley_1989 <- ET0_1989*barley_kc_norm
ETc_barley_1990 <- ET0_1990*barley_kc_norm
ETc_barley_1991 <- ET0_1991*barley_kc_norm
ETc_barley_1992 <- ET0_1992*barley_kc_leap
ETc_barley_1993 <- ET0_1993*barley_kc_norm
ETc_barley_1994 <- ET0_1994*barley_kc_norm
ETc_barley_1995 <- ET0_1995*barley_kc_norm
ETc_barley_1996 <- ET0_1996*barley_kc_leap
ETc_barley_1997 <- ET0_1997*barley_kc_norm
ETc_barley_1998 <- ET0_1998*barley_kc_norm
ETc_barley_1999 <- ET0_1999*barley_kc_norm
ETc_barley_2000 <- ET0_2000*barley_kc_leap
ETc_barley_2001 <- ET0_2001*barley_kc_norm
ETc_barley_2002 <- ET0_2002*barley_kc_norm
ETc_barley_2003 <- ET0_2003*barley_kc_norm
ETc_barley_2004 <- ET0_2004*barley_kc_leap
ETc_barley_2005 <- ET0_2005*barley_kc_norm
ETc_barley_2006 <- ET0_2006*barley_kc_norm
ETc_barley_2007 <- ET0_2007*barley_kc_norm
ETc_barley_2008 <- ET0_2008*barley_kc_leap
ETc_barley_2009 <- ET0_2009*barley_kc_norm
ETc_barley_2010 <- ET0_2010*barley_kc_norm
ETc_barley_2011 <- ET0_2011*barley_kc_norm
ETc_barley_2012 <- ET0_2012*barley_kc_leap
ETc_barley_2013 <- ET0_2013*barley_kc_norm
write.csv(cbind(GEOID,ETc_barley_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1950.csv")
write.csv(cbind(GEOID,ETc_barley_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1951.csv")
write.csv(cbind(GEOID,ETc_barley_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1952.csv")
write.csv(cbind(GEOID,ETc_barley_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1953.csv")
write.csv(cbind(GEOID,ETc_barley_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1954.csv")
write.csv(cbind(GEOID,ETc_barley_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1955.csv")
write.csv(cbind(GEOID,ETc_barley_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1956.csv")
write.csv(cbind(GEOID,ETc_barley_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1957.csv")
write.csv(cbind(GEOID,ETc_barley_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1958.csv")
write.csv(cbind(GEOID,ETc_barley_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1959.csv")
write.csv(cbind(GEOID,ETc_barley_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1960.csv")
write.csv(cbind(GEOID,ETc_barley_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1961.csv")
write.csv(cbind(GEOID,ETc_barley_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1962.csv")
write.csv(cbind(GEOID,ETc_barley_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1963.csv")
write.csv(cbind(GEOID,ETc_barley_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1964.csv")
write.csv(cbind(GEOID,ETc_barley_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1965.csv")
write.csv(cbind(GEOID,ETc_barley_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1966.csv")
write.csv(cbind(GEOID,ETc_barley_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1967.csv")
write.csv(cbind(GEOID,ETc_barley_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1968.csv")
write.csv(cbind(GEOID,ETc_barley_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1969.csv")
write.csv(cbind(GEOID,ETc_barley_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1970.csv")
write.csv(cbind(GEOID,ETc_barley_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1971.csv")
write.csv(cbind(GEOID,ETc_barley_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1972.csv")
write.csv(cbind(GEOID,ETc_barley_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1973.csv")
write.csv(cbind(GEOID,ETc_barley_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1974.csv")
write.csv(cbind(GEOID,ETc_barley_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1975.csv")
write.csv(cbind(GEOID,ETc_barley_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1976.csv")
write.csv(cbind(GEOID,ETc_barley_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1977.csv")
write.csv(cbind(GEOID,ETc_barley_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1978.csv")
write.csv(cbind(GEOID,ETc_barley_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1979.csv")
write.csv(cbind(GEOID,ETc_barley_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1980.csv")
write.csv(cbind(GEOID,ETc_barley_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1981.csv")
write.csv(cbind(GEOID,ETc_barley_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1982.csv")
write.csv(cbind(GEOID,ETc_barley_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1983.csv")
write.csv(cbind(GEOID,ETc_barley_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1984.csv")
write.csv(cbind(GEOID,ETc_barley_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1985.csv")
write.csv(cbind(GEOID,ETc_barley_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1986.csv")
write.csv(cbind(GEOID,ETc_barley_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1987.csv")
write.csv(cbind(GEOID,ETc_barley_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1988.csv")
write.csv(cbind(GEOID,ETc_barley_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1989.csv")
write.csv(cbind(GEOID,ETc_barley_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1990.csv")
write.csv(cbind(GEOID,ETc_barley_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1991.csv")
write.csv(cbind(GEOID,ETc_barley_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1992.csv")
write.csv(cbind(GEOID,ETc_barley_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1993.csv")
write.csv(cbind(GEOID,ETc_barley_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1994.csv")
write.csv(cbind(GEOID,ETc_barley_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1995.csv")
write.csv(cbind(GEOID,ETc_barley_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1996.csv")
write.csv(cbind(GEOID,ETc_barley_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1997.csv")
write.csv(cbind(GEOID,ETc_barley_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1998.csv")
write.csv(cbind(GEOID,ETc_barley_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_1999.csv")
write.csv(cbind(GEOID,ETc_barley_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_2000.csv")
write.csv(cbind(GEOID,ETc_barley_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_2001.csv")
write.csv(cbind(GEOID,ETc_barley_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_2002.csv")
write.csv(cbind(GEOID,ETc_barley_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_2003.csv")
write.csv(cbind(GEOID,ETc_barley_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_2004.csv")
write.csv(cbind(GEOID,ETc_barley_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_2005.csv")
write.csv(cbind(GEOID,ETc_barley_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_2006.csv")
write.csv(cbind(GEOID,ETc_barley_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_2007.csv")
write.csv(cbind(GEOID,ETc_barley_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_2008.csv")
write.csv(cbind(GEOID,ETc_barley_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_2009.csv")
write.csv(cbind(GEOID,ETc_barley_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_2010.csv")
write.csv(cbind(GEOID,ETc_barley_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_2011.csv")
write.csv(cbind(GEOID,ETc_barley_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_2012.csv")
write.csv(cbind(GEOID,ETc_barley_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_barley_2013.csv")
ETc_cantaloup_1950 <- ET0_1950*cantaloup_kc_norm
ETc_cantaloup_1951 <- ET0_1951*cantaloup_kc_norm
ETc_cantaloup_1952 <- ET0_1952*cantaloup_kc_leap
ETc_cantaloup_1953 <- ET0_1953*cantaloup_kc_norm
ETc_cantaloup_1954 <- ET0_1954*cantaloup_kc_norm
ETc_cantaloup_1955 <- ET0_1955*cantaloup_kc_norm
ETc_cantaloup_1956 <- ET0_1956*cantaloup_kc_leap
ETc_cantaloup_1957 <- ET0_1957*cantaloup_kc_norm
ETc_cantaloup_1958 <- ET0_1958*cantaloup_kc_norm
ETc_cantaloup_1959 <- ET0_1959*cantaloup_kc_norm
ETc_cantaloup_1960 <- ET0_1960*cantaloup_kc_leap
ETc_cantaloup_1961 <- ET0_1961*cantaloup_kc_norm
ETc_cantaloup_1962 <- ET0_1962*cantaloup_kc_norm
ETc_cantaloup_1963 <- ET0_1963*cantaloup_kc_norm
ETc_cantaloup_1964 <- ET0_1964*cantaloup_kc_leap
ETc_cantaloup_1965 <- ET0_1965*cantaloup_kc_norm
ETc_cantaloup_1966 <- ET0_1966*cantaloup_kc_norm
ETc_cantaloup_1967 <- ET0_1967*cantaloup_kc_norm
ETc_cantaloup_1968 <- ET0_1968*cantaloup_kc_leap
ETc_cantaloup_1969 <- ET0_1969*cantaloup_kc_norm
ETc_cantaloup_1970 <- ET0_1970*cantaloup_kc_norm
ETc_cantaloup_1971 <- ET0_1971*cantaloup_kc_norm
ETc_cantaloup_1972 <- ET0_1972*cantaloup_kc_leap
ETc_cantaloup_1973 <- ET0_1973*cantaloup_kc_norm
ETc_cantaloup_1974 <- ET0_1974*cantaloup_kc_norm
ETc_cantaloup_1975 <- ET0_1975*cantaloup_kc_norm
ETc_cantaloup_1976 <- ET0_1976*cantaloup_kc_leap
ETc_cantaloup_1977 <- ET0_1977*cantaloup_kc_norm
ETc_cantaloup_1978 <- ET0_1978*cantaloup_kc_norm
ETc_cantaloup_1979 <- ET0_1979*cantaloup_kc_norm
ETc_cantaloup_1980 <- ET0_1980*cantaloup_kc_leap
ETc_cantaloup_1981 <- ET0_1981*cantaloup_kc_norm
ETc_cantaloup_1982 <- ET0_1982*cantaloup_kc_norm
ETc_cantaloup_1983 <- ET0_1983*cantaloup_kc_norm
ETc_cantaloup_1984 <- ET0_1984*cantaloup_kc_leap
ETc_cantaloup_1985 <- ET0_1985*cantaloup_kc_norm
ETc_cantaloup_1986 <- ET0_1986*cantaloup_kc_norm
ETc_cantaloup_1987 <- ET0_1987*cantaloup_kc_norm
ETc_cantaloup_1988 <- ET0_1988*cantaloup_kc_leap
ETc_cantaloup_1989 <- ET0_1989*cantaloup_kc_norm
ETc_cantaloup_1990 <- ET0_1990*cantaloup_kc_norm
ETc_cantaloup_1991 <- ET0_1991*cantaloup_kc_norm
ETc_cantaloup_1992 <- ET0_1992*cantaloup_kc_leap
ETc_cantaloup_1993 <- ET0_1993*cantaloup_kc_norm
ETc_cantaloup_1994 <- ET0_1994*cantaloup_kc_norm
ETc_cantaloup_1995 <- ET0_1995*cantaloup_kc_norm
ETc_cantaloup_1996 <- ET0_1996*cantaloup_kc_leap
ETc_cantaloup_1997 <- ET0_1997*cantaloup_kc_norm
ETc_cantaloup_1998 <- ET0_1998*cantaloup_kc_norm
ETc_cantaloup_1999 <- ET0_1999*cantaloup_kc_norm
ETc_cantaloup_2000 <- ET0_2000*cantaloup_kc_leap
ETc_cantaloup_2001 <- ET0_2001*cantaloup_kc_norm
ETc_cantaloup_2002 <- ET0_2002*cantaloup_kc_norm
ETc_cantaloup_2003 <- ET0_2003*cantaloup_kc_norm
ETc_cantaloup_2004 <- ET0_2004*cantaloup_kc_leap
ETc_cantaloup_2005 <- ET0_2005*cantaloup_kc_norm
ETc_cantaloup_2006 <- ET0_2006*cantaloup_kc_norm
ETc_cantaloup_2007 <- ET0_2007*cantaloup_kc_norm
ETc_cantaloup_2008 <- ET0_2008*cantaloup_kc_leap
ETc_cantaloup_2009 <- ET0_2009*cantaloup_kc_norm
ETc_cantaloup_2010 <- ET0_2010*cantaloup_kc_norm
ETc_cantaloup_2011 <- ET0_2011*cantaloup_kc_norm
ETc_cantaloup_2012 <- ET0_2012*cantaloup_kc_leap
ETc_cantaloup_2013 <- ET0_2013*cantaloup_kc_norm
write.csv(cbind(GEOID,ETc_cantaloup_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1950.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1951.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1952.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1953.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1954.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1955.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1956.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1957.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1958.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1959.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1960.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1961.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1962.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1963.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1964.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1965.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1966.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1967.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1968.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1969.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1970.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1971.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1972.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1973.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1974.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1975.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1976.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1977.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1978.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1979.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1980.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1981.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1982.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1983.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1984.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1985.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1986.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1987.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1988.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1989.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1990.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1991.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1992.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1993.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1994.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1995.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1996.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1997.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1998.csv")
write.csv(cbind(GEOID,ETc_cantaloup_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_1999.csv")
write.csv(cbind(GEOID,ETc_cantaloup_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_2000.csv")
write.csv(cbind(GEOID,ETc_cantaloup_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_2001.csv")
write.csv(cbind(GEOID,ETc_cantaloup_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_2002.csv")
write.csv(cbind(GEOID,ETc_cantaloup_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_2003.csv")
write.csv(cbind(GEOID,ETc_cantaloup_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_2004.csv")
write.csv(cbind(GEOID,ETc_cantaloup_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_2005.csv")
write.csv(cbind(GEOID,ETc_cantaloup_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_2006.csv")
write.csv(cbind(GEOID,ETc_cantaloup_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_2007.csv")
write.csv(cbind(GEOID,ETc_cantaloup_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_2008.csv")
write.csv(cbind(GEOID,ETc_cantaloup_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_2009.csv")
write.csv(cbind(GEOID,ETc_cantaloup_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_2010.csv")
write.csv(cbind(GEOID,ETc_cantaloup_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_2011.csv")
write.csv(cbind(GEOID,ETc_cantaloup_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_2012.csv")
write.csv(cbind(GEOID,ETc_cantaloup_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cantaloup_2013.csv")
ETc_corn_grain_1950 <- ET0_1950*corn_grain_kc_norm
ETc_corn_grain_1951 <- ET0_1951*corn_grain_kc_norm
ETc_corn_grain_1952 <- ET0_1952*corn_grain_kc_leap
ETc_corn_grain_1953 <- ET0_1953*corn_grain_kc_norm
ETc_corn_grain_1954 <- ET0_1954*corn_grain_kc_norm
ETc_corn_grain_1955 <- ET0_1955*corn_grain_kc_norm
ETc_corn_grain_1956 <- ET0_1956*corn_grain_kc_leap
ETc_corn_grain_1957 <- ET0_1957*corn_grain_kc_norm
ETc_corn_grain_1958 <- ET0_1958*corn_grain_kc_norm
ETc_corn_grain_1959 <- ET0_1959*corn_grain_kc_norm
ETc_corn_grain_1960 <- ET0_1960*corn_grain_kc_leap
ETc_corn_grain_1961 <- ET0_1961*corn_grain_kc_norm
ETc_corn_grain_1962 <- ET0_1962*corn_grain_kc_norm
ETc_corn_grain_1963 <- ET0_1963*corn_grain_kc_norm
ETc_corn_grain_1964 <- ET0_1964*corn_grain_kc_leap
ETc_corn_grain_1965 <- ET0_1965*corn_grain_kc_norm
ETc_corn_grain_1966 <- ET0_1966*corn_grain_kc_norm
ETc_corn_grain_1967 <- ET0_1967*corn_grain_kc_norm
ETc_corn_grain_1968 <- ET0_1968*corn_grain_kc_leap
ETc_corn_grain_1969 <- ET0_1969*corn_grain_kc_norm
ETc_corn_grain_1970 <- ET0_1970*corn_grain_kc_norm
ETc_corn_grain_1971 <- ET0_1971*corn_grain_kc_norm
ETc_corn_grain_1972 <- ET0_1972*corn_grain_kc_leap
ETc_corn_grain_1973 <- ET0_1973*corn_grain_kc_norm
ETc_corn_grain_1974 <- ET0_1974*corn_grain_kc_norm
ETc_corn_grain_1975 <- ET0_1975*corn_grain_kc_norm
ETc_corn_grain_1976 <- ET0_1976*corn_grain_kc_leap
ETc_corn_grain_1977 <- ET0_1977*corn_grain_kc_norm
ETc_corn_grain_1978 <- ET0_1978*corn_grain_kc_norm
ETc_corn_grain_1979 <- ET0_1979*corn_grain_kc_norm
ETc_corn_grain_1980 <- ET0_1980*corn_grain_kc_leap
ETc_corn_grain_1981 <- ET0_1981*corn_grain_kc_norm
ETc_corn_grain_1982 <- ET0_1982*corn_grain_kc_norm
ETc_corn_grain_1983 <- ET0_1983*corn_grain_kc_norm
ETc_corn_grain_1984 <- ET0_1984*corn_grain_kc_leap
ETc_corn_grain_1985 <- ET0_1985*corn_grain_kc_norm
ETc_corn_grain_1986 <- ET0_1986*corn_grain_kc_norm
ETc_corn_grain_1987 <- ET0_1987*corn_grain_kc_norm
ETc_corn_grain_1988 <- ET0_1988*corn_grain_kc_leap
ETc_corn_grain_1989 <- ET0_1989*corn_grain_kc_norm
ETc_corn_grain_1990 <- ET0_1990*corn_grain_kc_norm
ETc_corn_grain_1991 <- ET0_1991*corn_grain_kc_norm
ETc_corn_grain_1992 <- ET0_1992*corn_grain_kc_leap
ETc_corn_grain_1993 <- ET0_1993*corn_grain_kc_norm
ETc_corn_grain_1994 <- ET0_1994*corn_grain_kc_norm
ETc_corn_grain_1995 <- ET0_1995*corn_grain_kc_norm
ETc_corn_grain_1996 <- ET0_1996*corn_grain_kc_leap
ETc_corn_grain_1997 <- ET0_1997*corn_grain_kc_norm
ETc_corn_grain_1998 <- ET0_1998*corn_grain_kc_norm
ETc_corn_grain_1999 <- ET0_1999*corn_grain_kc_norm
ETc_corn_grain_2000 <- ET0_2000*corn_grain_kc_leap
ETc_corn_grain_2001 <- ET0_2001*corn_grain_kc_norm
ETc_corn_grain_2002 <- ET0_2002*corn_grain_kc_norm
ETc_corn_grain_2003 <- ET0_2003*corn_grain_kc_norm
ETc_corn_grain_2004 <- ET0_2004*corn_grain_kc_leap
ETc_corn_grain_2005 <- ET0_2005*corn_grain_kc_norm
ETc_corn_grain_2006 <- ET0_2006*corn_grain_kc_norm
ETc_corn_grain_2007 <- ET0_2007*corn_grain_kc_norm
ETc_corn_grain_2008 <- ET0_2008*corn_grain_kc_leap
ETc_corn_grain_2009 <- ET0_2009*corn_grain_kc_norm
ETc_corn_grain_2010 <- ET0_2010*corn_grain_kc_norm
ETc_corn_grain_2011 <- ET0_2011*corn_grain_kc_norm
ETc_corn_grain_2012 <- ET0_2012*corn_grain_kc_leap
ETc_corn_grain_2013 <- ET0_2013*corn_grain_kc_norm
write.csv(cbind(GEOID,ETc_corn_grain_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1950.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1951.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1952.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1953.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1954.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1955.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1956.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1957.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1958.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1959.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1960.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1961.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1962.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1963.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1964.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1965.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1966.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1967.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1968.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1969.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1970.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1971.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1972.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1973.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1974.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1975.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1976.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1977.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1978.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1979.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1980.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1981.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1982.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1983.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1984.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1985.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1986.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1987.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1988.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1989.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1990.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1991.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1992.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1993.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1994.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1995.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1996.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1997.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1998.csv")
write.csv(cbind(GEOID,ETc_corn_grain_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_1999.csv")
write.csv(cbind(GEOID,ETc_corn_grain_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_2000.csv")
write.csv(cbind(GEOID,ETc_corn_grain_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_2001.csv")
write.csv(cbind(GEOID,ETc_corn_grain_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_2002.csv")
write.csv(cbind(GEOID,ETc_corn_grain_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_2003.csv")
write.csv(cbind(GEOID,ETc_corn_grain_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_2004.csv")
write.csv(cbind(GEOID,ETc_corn_grain_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_2005.csv")
write.csv(cbind(GEOID,ETc_corn_grain_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_2006.csv")
write.csv(cbind(GEOID,ETc_corn_grain_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_2007.csv")
write.csv(cbind(GEOID,ETc_corn_grain_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_2008.csv")
write.csv(cbind(GEOID,ETc_corn_grain_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_2009.csv")
write.csv(cbind(GEOID,ETc_corn_grain_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_2010.csv")
write.csv(cbind(GEOID,ETc_corn_grain_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_2011.csv")
write.csv(cbind(GEOID,ETc_corn_grain_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_2012.csv")
write.csv(cbind(GEOID,ETc_corn_grain_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_grain_2013.csv")
ETc_corn_silage_1950 <- ET0_1950*corn_silage_kc_norm
ETc_corn_silage_1951 <- ET0_1951*corn_silage_kc_norm
ETc_corn_silage_1952 <- ET0_1952*corn_silage_kc_leap
ETc_corn_silage_1953 <- ET0_1953*corn_silage_kc_norm
ETc_corn_silage_1954 <- ET0_1954*corn_silage_kc_norm
ETc_corn_silage_1955 <- ET0_1955*corn_silage_kc_norm
ETc_corn_silage_1956 <- ET0_1956*corn_silage_kc_leap
ETc_corn_silage_1957 <- ET0_1957*corn_silage_kc_norm
ETc_corn_silage_1958 <- ET0_1958*corn_silage_kc_norm
ETc_corn_silage_1959 <- ET0_1959*corn_silage_kc_norm
ETc_corn_silage_1960 <- ET0_1960*corn_silage_kc_leap
ETc_corn_silage_1961 <- ET0_1961*corn_silage_kc_norm
ETc_corn_silage_1962 <- ET0_1962*corn_silage_kc_norm
ETc_corn_silage_1963 <- ET0_1963*corn_silage_kc_norm
ETc_corn_silage_1964 <- ET0_1964*corn_silage_kc_leap
ETc_corn_silage_1965 <- ET0_1965*corn_silage_kc_norm
ETc_corn_silage_1966 <- ET0_1966*corn_silage_kc_norm
ETc_corn_silage_1967 <- ET0_1967*corn_silage_kc_norm
ETc_corn_silage_1968 <- ET0_1968*corn_silage_kc_leap
ETc_corn_silage_1969 <- ET0_1969*corn_silage_kc_norm
ETc_corn_silage_1970 <- ET0_1970*corn_silage_kc_norm
ETc_corn_silage_1971 <- ET0_1971*corn_silage_kc_norm
ETc_corn_silage_1972 <- ET0_1972*corn_silage_kc_leap
ETc_corn_silage_1973 <- ET0_1973*corn_silage_kc_norm
ETc_corn_silage_1974 <- ET0_1974*corn_silage_kc_norm
ETc_corn_silage_1975 <- ET0_1975*corn_silage_kc_norm
ETc_corn_silage_1976 <- ET0_1976*corn_silage_kc_leap
ETc_corn_silage_1977 <- ET0_1977*corn_silage_kc_norm
ETc_corn_silage_1978 <- ET0_1978*corn_silage_kc_norm
ETc_corn_silage_1979 <- ET0_1979*corn_silage_kc_norm
ETc_corn_silage_1980 <- ET0_1980*corn_silage_kc_leap
ETc_corn_silage_1981 <- ET0_1981*corn_silage_kc_norm
ETc_corn_silage_1982 <- ET0_1982*corn_silage_kc_norm
ETc_corn_silage_1983 <- ET0_1983*corn_silage_kc_norm
ETc_corn_silage_1984 <- ET0_1984*corn_silage_kc_leap
ETc_corn_silage_1985 <- ET0_1985*corn_silage_kc_norm
ETc_corn_silage_1986 <- ET0_1986*corn_silage_kc_norm
ETc_corn_silage_1987 <- ET0_1987*corn_silage_kc_norm
ETc_corn_silage_1988 <- ET0_1988*corn_silage_kc_leap
ETc_corn_silage_1989 <- ET0_1989*corn_silage_kc_norm
ETc_corn_silage_1990 <- ET0_1990*corn_silage_kc_norm
ETc_corn_silage_1991 <- ET0_1991*corn_silage_kc_norm
ETc_corn_silage_1992 <- ET0_1992*corn_silage_kc_leap
ETc_corn_silage_1993 <- ET0_1993*corn_silage_kc_norm
ETc_corn_silage_1994 <- ET0_1994*corn_silage_kc_norm
ETc_corn_silage_1995 <- ET0_1995*corn_silage_kc_norm
ETc_corn_silage_1996 <- ET0_1996*corn_silage_kc_leap
ETc_corn_silage_1997 <- ET0_1997*corn_silage_kc_norm
ETc_corn_silage_1998 <- ET0_1998*corn_silage_kc_norm
ETc_corn_silage_1999 <- ET0_1999*corn_silage_kc_norm
ETc_corn_silage_2000 <- ET0_2000*corn_silage_kc_leap
ETc_corn_silage_2001 <- ET0_2001*corn_silage_kc_norm
ETc_corn_silage_2002 <- ET0_2002*corn_silage_kc_norm
ETc_corn_silage_2003 <- ET0_2003*corn_silage_kc_norm
ETc_corn_silage_2004 <- ET0_2004*corn_silage_kc_leap
ETc_corn_silage_2005 <- ET0_2005*corn_silage_kc_norm
ETc_corn_silage_2006 <- ET0_2006*corn_silage_kc_norm
ETc_corn_silage_2007 <- ET0_2007*corn_silage_kc_norm
ETc_corn_silage_2008 <- ET0_2008*corn_silage_kc_leap
ETc_corn_silage_2009 <- ET0_2009*corn_silage_kc_norm
ETc_corn_silage_2010 <- ET0_2010*corn_silage_kc_norm
ETc_corn_silage_2011 <- ET0_2011*corn_silage_kc_norm
ETc_corn_silage_2012 <- ET0_2012*corn_silage_kc_leap
ETc_corn_silage_2013 <- ET0_2013*corn_silage_kc_norm
write.csv(cbind(GEOID,ETc_corn_silage_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1950.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1951.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1952.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1953.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1954.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1955.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1956.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1957.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1958.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1959.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1960.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1961.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1962.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1963.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1964.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1965.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1966.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1967.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1968.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1969.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1970.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1971.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1972.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1973.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1974.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1975.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1976.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1977.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1978.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1979.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1980.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1981.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1982.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1983.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1984.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1985.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1986.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1987.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1988.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1989.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1990.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1991.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1992.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1993.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1994.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1995.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1996.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1997.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1998.csv")
write.csv(cbind(GEOID,ETc_corn_silage_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_1999.csv")
write.csv(cbind(GEOID,ETc_corn_silage_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_2000.csv")
write.csv(cbind(GEOID,ETc_corn_silage_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_2001.csv")
write.csv(cbind(GEOID,ETc_corn_silage_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_2002.csv")
write.csv(cbind(GEOID,ETc_corn_silage_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_2003.csv")
write.csv(cbind(GEOID,ETc_corn_silage_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_2004.csv")
write.csv(cbind(GEOID,ETc_corn_silage_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_2005.csv")
write.csv(cbind(GEOID,ETc_corn_silage_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_2006.csv")
write.csv(cbind(GEOID,ETc_corn_silage_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_2007.csv")
write.csv(cbind(GEOID,ETc_corn_silage_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_2008.csv")
write.csv(cbind(GEOID,ETc_corn_silage_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_2009.csv")
write.csv(cbind(GEOID,ETc_corn_silage_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_2010.csv")
write.csv(cbind(GEOID,ETc_corn_silage_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_2011.csv")
write.csv(cbind(GEOID,ETc_corn_silage_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_2012.csv")
write.csv(cbind(GEOID,ETc_corn_silage_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_corn_silage_2013.csv")
ETc_cotton_1950 <- ET0_1950*cotton_kc_norm
ETc_cotton_1951 <- ET0_1951*cotton_kc_norm
ETc_cotton_1952 <- ET0_1952*cotton_kc_leap
ETc_cotton_1953 <- ET0_1953*cotton_kc_norm
ETc_cotton_1954 <- ET0_1954*cotton_kc_norm
ETc_cotton_1955 <- ET0_1955*cotton_kc_norm
ETc_cotton_1956 <- ET0_1956*cotton_kc_leap
ETc_cotton_1957 <- ET0_1957*cotton_kc_norm
ETc_cotton_1958 <- ET0_1958*cotton_kc_norm
ETc_cotton_1959 <- ET0_1959*cotton_kc_norm
ETc_cotton_1960 <- ET0_1960*cotton_kc_leap
ETc_cotton_1961 <- ET0_1961*cotton_kc_norm
ETc_cotton_1962 <- ET0_1962*cotton_kc_norm
ETc_cotton_1963 <- ET0_1963*cotton_kc_norm
ETc_cotton_1964 <- ET0_1964*cotton_kc_leap
ETc_cotton_1965 <- ET0_1965*cotton_kc_norm
ETc_cotton_1966 <- ET0_1966*cotton_kc_norm
ETc_cotton_1967 <- ET0_1967*cotton_kc_norm
ETc_cotton_1968 <- ET0_1968*cotton_kc_leap
ETc_cotton_1969 <- ET0_1969*cotton_kc_norm
ETc_cotton_1970 <- ET0_1970*cotton_kc_norm
ETc_cotton_1971 <- ET0_1971*cotton_kc_norm
ETc_cotton_1972 <- ET0_1972*cotton_kc_leap
ETc_cotton_1973 <- ET0_1973*cotton_kc_norm
ETc_cotton_1974 <- ET0_1974*cotton_kc_norm
ETc_cotton_1975 <- ET0_1975*cotton_kc_norm
ETc_cotton_1976 <- ET0_1976*cotton_kc_leap
ETc_cotton_1977 <- ET0_1977*cotton_kc_norm
ETc_cotton_1978 <- ET0_1978*cotton_kc_norm
ETc_cotton_1979 <- ET0_1979*cotton_kc_norm
ETc_cotton_1980 <- ET0_1980*cotton_kc_leap
ETc_cotton_1981 <- ET0_1981*cotton_kc_norm
ETc_cotton_1982 <- ET0_1982*cotton_kc_norm
ETc_cotton_1983 <- ET0_1983*cotton_kc_norm
ETc_cotton_1984 <- ET0_1984*cotton_kc_leap
ETc_cotton_1985 <- ET0_1985*cotton_kc_norm
ETc_cotton_1986 <- ET0_1986*cotton_kc_norm
ETc_cotton_1987 <- ET0_1987*cotton_kc_norm
ETc_cotton_1988 <- ET0_1988*cotton_kc_leap
ETc_cotton_1989 <- ET0_1989*cotton_kc_norm
ETc_cotton_1990 <- ET0_1990*cotton_kc_norm
ETc_cotton_1991 <- ET0_1991*cotton_kc_norm
ETc_cotton_1992 <- ET0_1992*cotton_kc_leap
ETc_cotton_1993 <- ET0_1993*cotton_kc_norm
ETc_cotton_1994 <- ET0_1994*cotton_kc_norm
ETc_cotton_1995 <- ET0_1995*cotton_kc_norm
ETc_cotton_1996 <- ET0_1996*cotton_kc_leap
ETc_cotton_1997 <- ET0_1997*cotton_kc_norm
ETc_cotton_1998 <- ET0_1998*cotton_kc_norm
ETc_cotton_1999 <- ET0_1999*cotton_kc_norm
ETc_cotton_2000 <- ET0_2000*cotton_kc_leap
ETc_cotton_2001 <- ET0_2001*cotton_kc_norm
ETc_cotton_2002 <- ET0_2002*cotton_kc_norm
ETc_cotton_2003 <- ET0_2003*cotton_kc_norm
ETc_cotton_2004 <- ET0_2004*cotton_kc_leap
ETc_cotton_2005 <- ET0_2005*cotton_kc_norm
ETc_cotton_2006 <- ET0_2006*cotton_kc_norm
ETc_cotton_2007 <- ET0_2007*cotton_kc_norm
ETc_cotton_2008 <- ET0_2008*cotton_kc_leap
ETc_cotton_2009 <- ET0_2009*cotton_kc_norm
ETc_cotton_2010 <- ET0_2010*cotton_kc_norm
ETc_cotton_2011 <- ET0_2011*cotton_kc_norm
ETc_cotton_2012 <- ET0_2012*cotton_kc_leap
ETc_cotton_2013 <- ET0_2013*cotton_kc_norm
write.csv(cbind(GEOID,ETc_cotton_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1950.csv")
write.csv(cbind(GEOID,ETc_cotton_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1951.csv")
write.csv(cbind(GEOID,ETc_cotton_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1952.csv")
write.csv(cbind(GEOID,ETc_cotton_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1953.csv")
write.csv(cbind(GEOID,ETc_cotton_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1954.csv")
write.csv(cbind(GEOID,ETc_cotton_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1955.csv")
write.csv(cbind(GEOID,ETc_cotton_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1956.csv")
write.csv(cbind(GEOID,ETc_cotton_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1957.csv")
write.csv(cbind(GEOID,ETc_cotton_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1958.csv")
write.csv(cbind(GEOID,ETc_cotton_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1959.csv")
write.csv(cbind(GEOID,ETc_cotton_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1960.csv")
write.csv(cbind(GEOID,ETc_cotton_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1961.csv")
write.csv(cbind(GEOID,ETc_cotton_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1962.csv")
write.csv(cbind(GEOID,ETc_cotton_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1963.csv")
write.csv(cbind(GEOID,ETc_cotton_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1964.csv")
write.csv(cbind(GEOID,ETc_cotton_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1965.csv")
write.csv(cbind(GEOID,ETc_cotton_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1966.csv")
write.csv(cbind(GEOID,ETc_cotton_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1967.csv")
write.csv(cbind(GEOID,ETc_cotton_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1968.csv")
write.csv(cbind(GEOID,ETc_cotton_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1969.csv")
write.csv(cbind(GEOID,ETc_cotton_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1970.csv")
write.csv(cbind(GEOID,ETc_cotton_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1971.csv")
write.csv(cbind(GEOID,ETc_cotton_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1972.csv")
write.csv(cbind(GEOID,ETc_cotton_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1973.csv")
write.csv(cbind(GEOID,ETc_cotton_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1974.csv")
write.csv(cbind(GEOID,ETc_cotton_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1975.csv")
write.csv(cbind(GEOID,ETc_cotton_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1976.csv")
write.csv(cbind(GEOID,ETc_cotton_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1977.csv")
write.csv(cbind(GEOID,ETc_cotton_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1978.csv")
write.csv(cbind(GEOID,ETc_cotton_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1979.csv")
write.csv(cbind(GEOID,ETc_cotton_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1980.csv")
write.csv(cbind(GEOID,ETc_cotton_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1981.csv")
write.csv(cbind(GEOID,ETc_cotton_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1982.csv")
write.csv(cbind(GEOID,ETc_cotton_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1983.csv")
write.csv(cbind(GEOID,ETc_cotton_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1984.csv")
write.csv(cbind(GEOID,ETc_cotton_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1985.csv")
write.csv(cbind(GEOID,ETc_cotton_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1986.csv")
write.csv(cbind(GEOID,ETc_cotton_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1987.csv")
write.csv(cbind(GEOID,ETc_cotton_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1988.csv")
write.csv(cbind(GEOID,ETc_cotton_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1989.csv")
write.csv(cbind(GEOID,ETc_cotton_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1990.csv")
write.csv(cbind(GEOID,ETc_cotton_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1991.csv")
write.csv(cbind(GEOID,ETc_cotton_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1992.csv")
write.csv(cbind(GEOID,ETc_cotton_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1993.csv")
write.csv(cbind(GEOID,ETc_cotton_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1994.csv")
write.csv(cbind(GEOID,ETc_cotton_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1995.csv")
write.csv(cbind(GEOID,ETc_cotton_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1996.csv")
write.csv(cbind(GEOID,ETc_cotton_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1997.csv")
write.csv(cbind(GEOID,ETc_cotton_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1998.csv")
write.csv(cbind(GEOID,ETc_cotton_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_1999.csv")
write.csv(cbind(GEOID,ETc_cotton_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_2000.csv")
write.csv(cbind(GEOID,ETc_cotton_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_2001.csv")
write.csv(cbind(GEOID,ETc_cotton_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_2002.csv")
write.csv(cbind(GEOID,ETc_cotton_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_2003.csv")
write.csv(cbind(GEOID,ETc_cotton_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_2004.csv")
write.csv(cbind(GEOID,ETc_cotton_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_2005.csv")
write.csv(cbind(GEOID,ETc_cotton_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_2006.csv")
write.csv(cbind(GEOID,ETc_cotton_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_2007.csv")
write.csv(cbind(GEOID,ETc_cotton_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_2008.csv")
write.csv(cbind(GEOID,ETc_cotton_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_2009.csv")
write.csv(cbind(GEOID,ETc_cotton_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_2010.csv")
write.csv(cbind(GEOID,ETc_cotton_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_2011.csv")
write.csv(cbind(GEOID,ETc_cotton_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_2012.csv")
write.csv(cbind(GEOID,ETc_cotton_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cotton_2013.csv")
ETc_cucumber_1950 <- ET0_1950*cucumber_kc_norm
ETc_cucumber_1951 <- ET0_1951*cucumber_kc_norm
ETc_cucumber_1952 <- ET0_1952*cucumber_kc_leap
ETc_cucumber_1953 <- ET0_1953*cucumber_kc_norm
ETc_cucumber_1954 <- ET0_1954*cucumber_kc_norm
ETc_cucumber_1955 <- ET0_1955*cucumber_kc_norm
ETc_cucumber_1956 <- ET0_1956*cucumber_kc_leap
ETc_cucumber_1957 <- ET0_1957*cucumber_kc_norm
ETc_cucumber_1958 <- ET0_1958*cucumber_kc_norm
ETc_cucumber_1959 <- ET0_1959*cucumber_kc_norm
ETc_cucumber_1960 <- ET0_1960*cucumber_kc_leap
ETc_cucumber_1961 <- ET0_1961*cucumber_kc_norm
ETc_cucumber_1962 <- ET0_1962*cucumber_kc_norm
ETc_cucumber_1963 <- ET0_1963*cucumber_kc_norm
ETc_cucumber_1964 <- ET0_1964*cucumber_kc_leap
ETc_cucumber_1965 <- ET0_1965*cucumber_kc_norm
ETc_cucumber_1966 <- ET0_1966*cucumber_kc_norm
ETc_cucumber_1967 <- ET0_1967*cucumber_kc_norm
ETc_cucumber_1968 <- ET0_1968*cucumber_kc_leap
ETc_cucumber_1969 <- ET0_1969*cucumber_kc_norm
ETc_cucumber_1970 <- ET0_1970*cucumber_kc_norm
ETc_cucumber_1971 <- ET0_1971*cucumber_kc_norm
ETc_cucumber_1972 <- ET0_1972*cucumber_kc_leap
ETc_cucumber_1973 <- ET0_1973*cucumber_kc_norm
ETc_cucumber_1974 <- ET0_1974*cucumber_kc_norm
ETc_cucumber_1975 <- ET0_1975*cucumber_kc_norm
ETc_cucumber_1976 <- ET0_1976*cucumber_kc_leap
ETc_cucumber_1977 <- ET0_1977*cucumber_kc_norm
ETc_cucumber_1978 <- ET0_1978*cucumber_kc_norm
ETc_cucumber_1979 <- ET0_1979*cucumber_kc_norm
ETc_cucumber_1980 <- ET0_1980*cucumber_kc_leap
ETc_cucumber_1981 <- ET0_1981*cucumber_kc_norm
ETc_cucumber_1982 <- ET0_1982*cucumber_kc_norm
ETc_cucumber_1983 <- ET0_1983*cucumber_kc_norm
ETc_cucumber_1984 <- ET0_1984*cucumber_kc_leap
ETc_cucumber_1985 <- ET0_1985*cucumber_kc_norm
ETc_cucumber_1986 <- ET0_1986*cucumber_kc_norm
ETc_cucumber_1987 <- ET0_1987*cucumber_kc_norm
ETc_cucumber_1988 <- ET0_1988*cucumber_kc_leap
ETc_cucumber_1989 <- ET0_1989*cucumber_kc_norm
ETc_cucumber_1990 <- ET0_1990*cucumber_kc_norm
ETc_cucumber_1991 <- ET0_1991*cucumber_kc_norm
ETc_cucumber_1992 <- ET0_1992*cucumber_kc_leap
ETc_cucumber_1993 <- ET0_1993*cucumber_kc_norm
ETc_cucumber_1994 <- ET0_1994*cucumber_kc_norm
ETc_cucumber_1995 <- ET0_1995*cucumber_kc_norm
ETc_cucumber_1996 <- ET0_1996*cucumber_kc_leap
ETc_cucumber_1997 <- ET0_1997*cucumber_kc_norm
ETc_cucumber_1998 <- ET0_1998*cucumber_kc_norm
ETc_cucumber_1999 <- ET0_1999*cucumber_kc_norm
ETc_cucumber_2000 <- ET0_2000*cucumber_kc_leap
ETc_cucumber_2001 <- ET0_2001*cucumber_kc_norm
ETc_cucumber_2002 <- ET0_2002*cucumber_kc_norm
ETc_cucumber_2003 <- ET0_2003*cucumber_kc_norm
ETc_cucumber_2004 <- ET0_2004*cucumber_kc_leap
ETc_cucumber_2005 <- ET0_2005*cucumber_kc_norm
ETc_cucumber_2006 <- ET0_2006*cucumber_kc_norm
ETc_cucumber_2007 <- ET0_2007*cucumber_kc_norm
ETc_cucumber_2008 <- ET0_2008*cucumber_kc_leap
ETc_cucumber_2009 <- ET0_2009*cucumber_kc_norm
ETc_cucumber_2010 <- ET0_2010*cucumber_kc_norm
ETc_cucumber_2011 <- ET0_2011*cucumber_kc_norm
ETc_cucumber_2012 <- ET0_2012*cucumber_kc_leap
ETc_cucumber_2013 <- ET0_2013*cucumber_kc_norm
write.csv(cbind(GEOID,ETc_cucumber_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1950.csv")
write.csv(cbind(GEOID,ETc_cucumber_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1951.csv")
write.csv(cbind(GEOID,ETc_cucumber_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1952.csv")
write.csv(cbind(GEOID,ETc_cucumber_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1953.csv")
write.csv(cbind(GEOID,ETc_cucumber_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1954.csv")
write.csv(cbind(GEOID,ETc_cucumber_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1955.csv")
write.csv(cbind(GEOID,ETc_cucumber_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1956.csv")
write.csv(cbind(GEOID,ETc_cucumber_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1957.csv")
write.csv(cbind(GEOID,ETc_cucumber_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1958.csv")
write.csv(cbind(GEOID,ETc_cucumber_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1959.csv")
write.csv(cbind(GEOID,ETc_cucumber_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1960.csv")
write.csv(cbind(GEOID,ETc_cucumber_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1961.csv")
write.csv(cbind(GEOID,ETc_cucumber_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1962.csv")
write.csv(cbind(GEOID,ETc_cucumber_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1963.csv")
write.csv(cbind(GEOID,ETc_cucumber_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1964.csv")
write.csv(cbind(GEOID,ETc_cucumber_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1965.csv")
write.csv(cbind(GEOID,ETc_cucumber_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1966.csv")
write.csv(cbind(GEOID,ETc_cucumber_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1967.csv")
write.csv(cbind(GEOID,ETc_cucumber_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1968.csv")
write.csv(cbind(GEOID,ETc_cucumber_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1969.csv")
write.csv(cbind(GEOID,ETc_cucumber_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1970.csv")
write.csv(cbind(GEOID,ETc_cucumber_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1971.csv")
write.csv(cbind(GEOID,ETc_cucumber_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1972.csv")
write.csv(cbind(GEOID,ETc_cucumber_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1973.csv")
write.csv(cbind(GEOID,ETc_cucumber_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1974.csv")
write.csv(cbind(GEOID,ETc_cucumber_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1975.csv")
write.csv(cbind(GEOID,ETc_cucumber_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1976.csv")
write.csv(cbind(GEOID,ETc_cucumber_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1977.csv")
write.csv(cbind(GEOID,ETc_cucumber_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1978.csv")
write.csv(cbind(GEOID,ETc_cucumber_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1979.csv")
write.csv(cbind(GEOID,ETc_cucumber_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1980.csv")
write.csv(cbind(GEOID,ETc_cucumber_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1981.csv")
write.csv(cbind(GEOID,ETc_cucumber_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1982.csv")
write.csv(cbind(GEOID,ETc_cucumber_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1983.csv")
write.csv(cbind(GEOID,ETc_cucumber_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1984.csv")
write.csv(cbind(GEOID,ETc_cucumber_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1985.csv")
write.csv(cbind(GEOID,ETc_cucumber_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1986.csv")
write.csv(cbind(GEOID,ETc_cucumber_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1987.csv")
write.csv(cbind(GEOID,ETc_cucumber_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1988.csv")
write.csv(cbind(GEOID,ETc_cucumber_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1989.csv")
write.csv(cbind(GEOID,ETc_cucumber_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1990.csv")
write.csv(cbind(GEOID,ETc_cucumber_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1991.csv")
write.csv(cbind(GEOID,ETc_cucumber_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1992.csv")
write.csv(cbind(GEOID,ETc_cucumber_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1993.csv")
write.csv(cbind(GEOID,ETc_cucumber_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1994.csv")
write.csv(cbind(GEOID,ETc_cucumber_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1995.csv")
write.csv(cbind(GEOID,ETc_cucumber_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1996.csv")
write.csv(cbind(GEOID,ETc_cucumber_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1997.csv")
write.csv(cbind(GEOID,ETc_cucumber_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1998.csv")
write.csv(cbind(GEOID,ETc_cucumber_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_1999.csv")
write.csv(cbind(GEOID,ETc_cucumber_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_2000.csv")
write.csv(cbind(GEOID,ETc_cucumber_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_2001.csv")
write.csv(cbind(GEOID,ETc_cucumber_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_2002.csv")
write.csv(cbind(GEOID,ETc_cucumber_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_2003.csv")
write.csv(cbind(GEOID,ETc_cucumber_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_2004.csv")
write.csv(cbind(GEOID,ETc_cucumber_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_2005.csv")
write.csv(cbind(GEOID,ETc_cucumber_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_2006.csv")
write.csv(cbind(GEOID,ETc_cucumber_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_2007.csv")
write.csv(cbind(GEOID,ETc_cucumber_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_2008.csv")
write.csv(cbind(GEOID,ETc_cucumber_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_2009.csv")
write.csv(cbind(GEOID,ETc_cucumber_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_2010.csv")
write.csv(cbind(GEOID,ETc_cucumber_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_2011.csv")
write.csv(cbind(GEOID,ETc_cucumber_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_2012.csv")
write.csv(cbind(GEOID,ETc_cucumber_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cucumber_2013.csv")
ETc_oats_1950 <- ET0_1950*oats_kc_norm
ETc_oats_1951 <- ET0_1951*oats_kc_norm
ETc_oats_1952 <- ET0_1952*oats_kc_leap
ETc_oats_1953 <- ET0_1953*oats_kc_norm
ETc_oats_1954 <- ET0_1954*oats_kc_norm
ETc_oats_1955 <- ET0_1955*oats_kc_norm
ETc_oats_1956 <- ET0_1956*oats_kc_leap
ETc_oats_1957 <- ET0_1957*oats_kc_norm
ETc_oats_1958 <- ET0_1958*oats_kc_norm
ETc_oats_1959 <- ET0_1959*oats_kc_norm
ETc_oats_1960 <- ET0_1960*oats_kc_leap
ETc_oats_1961 <- ET0_1961*oats_kc_norm
ETc_oats_1962 <- ET0_1962*oats_kc_norm
ETc_oats_1963 <- ET0_1963*oats_kc_norm
ETc_oats_1964 <- ET0_1964*oats_kc_leap
ETc_oats_1965 <- ET0_1965*oats_kc_norm
ETc_oats_1966 <- ET0_1966*oats_kc_norm
ETc_oats_1967 <- ET0_1967*oats_kc_norm
ETc_oats_1968 <- ET0_1968*oats_kc_leap
ETc_oats_1969 <- ET0_1969*oats_kc_norm
ETc_oats_1970 <- ET0_1970*oats_kc_norm
ETc_oats_1971 <- ET0_1971*oats_kc_norm
ETc_oats_1972 <- ET0_1972*oats_kc_leap
ETc_oats_1973 <- ET0_1973*oats_kc_norm
ETc_oats_1974 <- ET0_1974*oats_kc_norm
ETc_oats_1975 <- ET0_1975*oats_kc_norm
ETc_oats_1976 <- ET0_1976*oats_kc_leap
ETc_oats_1977 <- ET0_1977*oats_kc_norm
ETc_oats_1978 <- ET0_1978*oats_kc_norm
ETc_oats_1979 <- ET0_1979*oats_kc_norm
ETc_oats_1980 <- ET0_1980*oats_kc_leap
ETc_oats_1981 <- ET0_1981*oats_kc_norm
ETc_oats_1982 <- ET0_1982*oats_kc_norm
ETc_oats_1983 <- ET0_1983*oats_kc_norm
ETc_oats_1984 <- ET0_1984*oats_kc_leap
ETc_oats_1985 <- ET0_1985*oats_kc_norm
ETc_oats_1986 <- ET0_1986*oats_kc_norm
ETc_oats_1987 <- ET0_1987*oats_kc_norm
ETc_oats_1988 <- ET0_1988*oats_kc_leap
ETc_oats_1989 <- ET0_1989*oats_kc_norm
ETc_oats_1990 <- ET0_1990*oats_kc_norm
ETc_oats_1991 <- ET0_1991*oats_kc_norm
ETc_oats_1992 <- ET0_1992*oats_kc_leap
ETc_oats_1993 <- ET0_1993*oats_kc_norm
ETc_oats_1994 <- ET0_1994*oats_kc_norm
ETc_oats_1995 <- ET0_1995*oats_kc_norm
ETc_oats_1996 <- ET0_1996*oats_kc_leap
ETc_oats_1997 <- ET0_1997*oats_kc_norm
ETc_oats_1998 <- ET0_1998*oats_kc_norm
ETc_oats_1999 <- ET0_1999*oats_kc_norm
ETc_oats_2000 <- ET0_2000*oats_kc_leap
ETc_oats_2001 <- ET0_2001*oats_kc_norm
ETc_oats_2002 <- ET0_2002*oats_kc_norm
ETc_oats_2003 <- ET0_2003*oats_kc_norm
ETc_oats_2004 <- ET0_2004*oats_kc_leap
ETc_oats_2005 <- ET0_2005*oats_kc_norm
ETc_oats_2006 <- ET0_2006*oats_kc_norm
ETc_oats_2007 <- ET0_2007*oats_kc_norm
ETc_oats_2008 <- ET0_2008*oats_kc_leap
ETc_oats_2009 <- ET0_2009*oats_kc_norm
ETc_oats_2010 <- ET0_2010*oats_kc_norm
ETc_oats_2011 <- ET0_2011*oats_kc_norm
ETc_oats_2012 <- ET0_2012*oats_kc_leap
ETc_oats_2013 <- ET0_2013*oats_kc_norm
write.csv(cbind(GEOID,ETc_oats_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1950.csv")
write.csv(cbind(GEOID,ETc_oats_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1951.csv")
write.csv(cbind(GEOID,ETc_oats_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1952.csv")
write.csv(cbind(GEOID,ETc_oats_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1953.csv")
write.csv(cbind(GEOID,ETc_oats_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1954.csv")
write.csv(cbind(GEOID,ETc_oats_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1955.csv")
write.csv(cbind(GEOID,ETc_oats_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1956.csv")
write.csv(cbind(GEOID,ETc_oats_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1957.csv")
write.csv(cbind(GEOID,ETc_oats_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1958.csv")
write.csv(cbind(GEOID,ETc_oats_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1959.csv")
write.csv(cbind(GEOID,ETc_oats_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1960.csv")
write.csv(cbind(GEOID,ETc_oats_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1961.csv")
write.csv(cbind(GEOID,ETc_oats_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1962.csv")
write.csv(cbind(GEOID,ETc_oats_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1963.csv")
write.csv(cbind(GEOID,ETc_oats_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1964.csv")
write.csv(cbind(GEOID,ETc_oats_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1965.csv")
write.csv(cbind(GEOID,ETc_oats_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1966.csv")
write.csv(cbind(GEOID,ETc_oats_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1967.csv")
write.csv(cbind(GEOID,ETc_oats_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1968.csv")
write.csv(cbind(GEOID,ETc_oats_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1969.csv")
write.csv(cbind(GEOID,ETc_oats_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1970.csv")
write.csv(cbind(GEOID,ETc_oats_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1971.csv")
write.csv(cbind(GEOID,ETc_oats_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1972.csv")
write.csv(cbind(GEOID,ETc_oats_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1973.csv")
write.csv(cbind(GEOID,ETc_oats_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1974.csv")
write.csv(cbind(GEOID,ETc_oats_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1975.csv")
write.csv(cbind(GEOID,ETc_oats_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1976.csv")
write.csv(cbind(GEOID,ETc_oats_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1977.csv")
write.csv(cbind(GEOID,ETc_oats_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1978.csv")
write.csv(cbind(GEOID,ETc_oats_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1979.csv")
write.csv(cbind(GEOID,ETc_oats_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1980.csv")
write.csv(cbind(GEOID,ETc_oats_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1981.csv")
write.csv(cbind(GEOID,ETc_oats_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1982.csv")
write.csv(cbind(GEOID,ETc_oats_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1983.csv")
write.csv(cbind(GEOID,ETc_oats_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1984.csv")
write.csv(cbind(GEOID,ETc_oats_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1985.csv")
write.csv(cbind(GEOID,ETc_oats_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1986.csv")
write.csv(cbind(GEOID,ETc_oats_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1987.csv")
write.csv(cbind(GEOID,ETc_oats_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1988.csv")
write.csv(cbind(GEOID,ETc_oats_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1989.csv")
write.csv(cbind(GEOID,ETc_oats_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1990.csv")
write.csv(cbind(GEOID,ETc_oats_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1991.csv")
write.csv(cbind(GEOID,ETc_oats_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1992.csv")
write.csv(cbind(GEOID,ETc_oats_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1993.csv")
write.csv(cbind(GEOID,ETc_oats_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1994.csv")
write.csv(cbind(GEOID,ETc_oats_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1995.csv")
write.csv(cbind(GEOID,ETc_oats_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1996.csv")
write.csv(cbind(GEOID,ETc_oats_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1997.csv")
write.csv(cbind(GEOID,ETc_oats_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1998.csv")
write.csv(cbind(GEOID,ETc_oats_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_1999.csv")
write.csv(cbind(GEOID,ETc_oats_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_2000.csv")
write.csv(cbind(GEOID,ETc_oats_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_2001.csv")
write.csv(cbind(GEOID,ETc_oats_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_2002.csv")
write.csv(cbind(GEOID,ETc_oats_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_2003.csv")
write.csv(cbind(GEOID,ETc_oats_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_2004.csv")
write.csv(cbind(GEOID,ETc_oats_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_2005.csv")
write.csv(cbind(GEOID,ETc_oats_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_2006.csv")
write.csv(cbind(GEOID,ETc_oats_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_2007.csv")
write.csv(cbind(GEOID,ETc_oats_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_2008.csv")
write.csv(cbind(GEOID,ETc_oats_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_2009.csv")
write.csv(cbind(GEOID,ETc_oats_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_2010.csv")
write.csv(cbind(GEOID,ETc_oats_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_2011.csv")
write.csv(cbind(GEOID,ETc_oats_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_2012.csv")
write.csv(cbind(GEOID,ETc_oats_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_oats_2013.csv")
ETc_peanuts_1950 <- ET0_1950*peanuts_kc_norm
ETc_peanuts_1951 <- ET0_1951*peanuts_kc_norm
ETc_peanuts_1952 <- ET0_1952*peanuts_kc_leap
ETc_peanuts_1953 <- ET0_1953*peanuts_kc_norm
ETc_peanuts_1954 <- ET0_1954*peanuts_kc_norm
ETc_peanuts_1955 <- ET0_1955*peanuts_kc_norm
ETc_peanuts_1956 <- ET0_1956*peanuts_kc_leap
ETc_peanuts_1957 <- ET0_1957*peanuts_kc_norm
ETc_peanuts_1958 <- ET0_1958*peanuts_kc_norm
ETc_peanuts_1959 <- ET0_1959*peanuts_kc_norm
ETc_peanuts_1960 <- ET0_1960*peanuts_kc_leap
ETc_peanuts_1961 <- ET0_1961*peanuts_kc_norm
ETc_peanuts_1962 <- ET0_1962*peanuts_kc_norm
ETc_peanuts_1963 <- ET0_1963*peanuts_kc_norm
ETc_peanuts_1964 <- ET0_1964*peanuts_kc_leap
ETc_peanuts_1965 <- ET0_1965*peanuts_kc_norm
ETc_peanuts_1966 <- ET0_1966*peanuts_kc_norm
ETc_peanuts_1967 <- ET0_1967*peanuts_kc_norm
ETc_peanuts_1968 <- ET0_1968*peanuts_kc_leap
ETc_peanuts_1969 <- ET0_1969*peanuts_kc_norm
ETc_peanuts_1970 <- ET0_1970*peanuts_kc_norm
ETc_peanuts_1971 <- ET0_1971*peanuts_kc_norm
ETc_peanuts_1972 <- ET0_1972*peanuts_kc_leap
ETc_peanuts_1973 <- ET0_1973*peanuts_kc_norm
ETc_peanuts_1974 <- ET0_1974*peanuts_kc_norm
ETc_peanuts_1975 <- ET0_1975*peanuts_kc_norm
ETc_peanuts_1976 <- ET0_1976*peanuts_kc_leap
ETc_peanuts_1977 <- ET0_1977*peanuts_kc_norm
ETc_peanuts_1978 <- ET0_1978*peanuts_kc_norm
ETc_peanuts_1979 <- ET0_1979*peanuts_kc_norm
ETc_peanuts_1980 <- ET0_1980*peanuts_kc_leap
ETc_peanuts_1981 <- ET0_1981*peanuts_kc_norm
ETc_peanuts_1982 <- ET0_1982*peanuts_kc_norm
ETc_peanuts_1983 <- ET0_1983*peanuts_kc_norm
ETc_peanuts_1984 <- ET0_1984*peanuts_kc_leap
ETc_peanuts_1985 <- ET0_1985*peanuts_kc_norm
ETc_peanuts_1986 <- ET0_1986*peanuts_kc_norm
ETc_peanuts_1987 <- ET0_1987*peanuts_kc_norm
ETc_peanuts_1988 <- ET0_1988*peanuts_kc_leap
ETc_peanuts_1989 <- ET0_1989*peanuts_kc_norm
ETc_peanuts_1990 <- ET0_1990*peanuts_kc_norm
ETc_peanuts_1991 <- ET0_1991*peanuts_kc_norm
ETc_peanuts_1992 <- ET0_1992*peanuts_kc_leap
ETc_peanuts_1993 <- ET0_1993*peanuts_kc_norm
ETc_peanuts_1994 <- ET0_1994*peanuts_kc_norm
ETc_peanuts_1995 <- ET0_1995*peanuts_kc_norm
ETc_peanuts_1996 <- ET0_1996*peanuts_kc_leap
ETc_peanuts_1997 <- ET0_1997*peanuts_kc_norm
ETc_peanuts_1998 <- ET0_1998*peanuts_kc_norm
ETc_peanuts_1999 <- ET0_1999*peanuts_kc_norm
ETc_peanuts_2000 <- ET0_2000*peanuts_kc_leap
ETc_peanuts_2001 <- ET0_2001*peanuts_kc_norm
ETc_peanuts_2002 <- ET0_2002*peanuts_kc_norm
ETc_peanuts_2003 <- ET0_2003*peanuts_kc_norm
ETc_peanuts_2004 <- ET0_2004*peanuts_kc_leap
ETc_peanuts_2005 <- ET0_2005*peanuts_kc_norm
ETc_peanuts_2006 <- ET0_2006*peanuts_kc_norm
ETc_peanuts_2007 <- ET0_2007*peanuts_kc_norm
ETc_peanuts_2008 <- ET0_2008*peanuts_kc_leap
ETc_peanuts_2009 <- ET0_2009*peanuts_kc_norm
ETc_peanuts_2010 <- ET0_2010*peanuts_kc_norm
ETc_peanuts_2011 <- ET0_2011*peanuts_kc_norm
ETc_peanuts_2012 <- ET0_2012*peanuts_kc_leap
ETc_peanuts_2013 <- ET0_2013*peanuts_kc_norm
write.csv(cbind(GEOID,ETc_peanuts_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1950.csv")
write.csv(cbind(GEOID,ETc_peanuts_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1951.csv")
write.csv(cbind(GEOID,ETc_peanuts_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1952.csv")
write.csv(cbind(GEOID,ETc_peanuts_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1953.csv")
write.csv(cbind(GEOID,ETc_peanuts_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1954.csv")
write.csv(cbind(GEOID,ETc_peanuts_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1955.csv")
write.csv(cbind(GEOID,ETc_peanuts_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1956.csv")
write.csv(cbind(GEOID,ETc_peanuts_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1957.csv")
write.csv(cbind(GEOID,ETc_peanuts_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1958.csv")
write.csv(cbind(GEOID,ETc_peanuts_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1959.csv")
write.csv(cbind(GEOID,ETc_peanuts_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1960.csv")
write.csv(cbind(GEOID,ETc_peanuts_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1961.csv")
write.csv(cbind(GEOID,ETc_peanuts_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1962.csv")
write.csv(cbind(GEOID,ETc_peanuts_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1963.csv")
write.csv(cbind(GEOID,ETc_peanuts_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1964.csv")
write.csv(cbind(GEOID,ETc_peanuts_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1965.csv")
write.csv(cbind(GEOID,ETc_peanuts_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1966.csv")
write.csv(cbind(GEOID,ETc_peanuts_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1967.csv")
write.csv(cbind(GEOID,ETc_peanuts_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1968.csv")
write.csv(cbind(GEOID,ETc_peanuts_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1969.csv")
write.csv(cbind(GEOID,ETc_peanuts_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1970.csv")
write.csv(cbind(GEOID,ETc_peanuts_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1971.csv")
write.csv(cbind(GEOID,ETc_peanuts_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1972.csv")
write.csv(cbind(GEOID,ETc_peanuts_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1973.csv")
write.csv(cbind(GEOID,ETc_peanuts_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1974.csv")
write.csv(cbind(GEOID,ETc_peanuts_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1975.csv")
write.csv(cbind(GEOID,ETc_peanuts_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1976.csv")
write.csv(cbind(GEOID,ETc_peanuts_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1977.csv")
write.csv(cbind(GEOID,ETc_peanuts_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1978.csv")
write.csv(cbind(GEOID,ETc_peanuts_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1979.csv")
write.csv(cbind(GEOID,ETc_peanuts_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1980.csv")
write.csv(cbind(GEOID,ETc_peanuts_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1981.csv")
write.csv(cbind(GEOID,ETc_peanuts_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1982.csv")
write.csv(cbind(GEOID,ETc_peanuts_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1983.csv")
write.csv(cbind(GEOID,ETc_peanuts_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1984.csv")
write.csv(cbind(GEOID,ETc_peanuts_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1985.csv")
write.csv(cbind(GEOID,ETc_peanuts_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1986.csv")
write.csv(cbind(GEOID,ETc_peanuts_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1987.csv")
write.csv(cbind(GEOID,ETc_peanuts_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1988.csv")
write.csv(cbind(GEOID,ETc_peanuts_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1989.csv")
write.csv(cbind(GEOID,ETc_peanuts_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1990.csv")
write.csv(cbind(GEOID,ETc_peanuts_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1991.csv")
write.csv(cbind(GEOID,ETc_peanuts_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1992.csv")
write.csv(cbind(GEOID,ETc_peanuts_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1993.csv")
write.csv(cbind(GEOID,ETc_peanuts_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1994.csv")
write.csv(cbind(GEOID,ETc_peanuts_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1995.csv")
write.csv(cbind(GEOID,ETc_peanuts_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1996.csv")
write.csv(cbind(GEOID,ETc_peanuts_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1997.csv")
write.csv(cbind(GEOID,ETc_peanuts_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1998.csv")
write.csv(cbind(GEOID,ETc_peanuts_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_1999.csv")
write.csv(cbind(GEOID,ETc_peanuts_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_2000.csv")
write.csv(cbind(GEOID,ETc_peanuts_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_2001.csv")
write.csv(cbind(GEOID,ETc_peanuts_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_2002.csv")
write.csv(cbind(GEOID,ETc_peanuts_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_2003.csv")
write.csv(cbind(GEOID,ETc_peanuts_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_2004.csv")
write.csv(cbind(GEOID,ETc_peanuts_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_2005.csv")
write.csv(cbind(GEOID,ETc_peanuts_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_2006.csv")
write.csv(cbind(GEOID,ETc_peanuts_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_2007.csv")
write.csv(cbind(GEOID,ETc_peanuts_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_2008.csv")
write.csv(cbind(GEOID,ETc_peanuts_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_2009.csv")
write.csv(cbind(GEOID,ETc_peanuts_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_2010.csv")
write.csv(cbind(GEOID,ETc_peanuts_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_2011.csv")
write.csv(cbind(GEOID,ETc_peanuts_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_2012.csv")
write.csv(cbind(GEOID,ETc_peanuts_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peanuts_2013.csv")
ETc_potatoes_1950 <- ET0_1950*potatoes_kc_norm
ETc_potatoes_1951 <- ET0_1951*potatoes_kc_norm
ETc_potatoes_1952 <- ET0_1952*potatoes_kc_leap
ETc_potatoes_1953 <- ET0_1953*potatoes_kc_norm
ETc_potatoes_1954 <- ET0_1954*potatoes_kc_norm
ETc_potatoes_1955 <- ET0_1955*potatoes_kc_norm
ETc_potatoes_1956 <- ET0_1956*potatoes_kc_leap
ETc_potatoes_1957 <- ET0_1957*potatoes_kc_norm
ETc_potatoes_1958 <- ET0_1958*potatoes_kc_norm
ETc_potatoes_1959 <- ET0_1959*potatoes_kc_norm
ETc_potatoes_1960 <- ET0_1960*potatoes_kc_leap
ETc_potatoes_1961 <- ET0_1961*potatoes_kc_norm
ETc_potatoes_1962 <- ET0_1962*potatoes_kc_norm
ETc_potatoes_1963 <- ET0_1963*potatoes_kc_norm
ETc_potatoes_1964 <- ET0_1964*potatoes_kc_leap
ETc_potatoes_1965 <- ET0_1965*potatoes_kc_norm
ETc_potatoes_1966 <- ET0_1966*potatoes_kc_norm
ETc_potatoes_1967 <- ET0_1967*potatoes_kc_norm
ETc_potatoes_1968 <- ET0_1968*potatoes_kc_leap
ETc_potatoes_1969 <- ET0_1969*potatoes_kc_norm
ETc_potatoes_1970 <- ET0_1970*potatoes_kc_norm
ETc_potatoes_1971 <- ET0_1971*potatoes_kc_norm
ETc_potatoes_1972 <- ET0_1972*potatoes_kc_leap
ETc_potatoes_1973 <- ET0_1973*potatoes_kc_norm
ETc_potatoes_1974 <- ET0_1974*potatoes_kc_norm
ETc_potatoes_1975 <- ET0_1975*potatoes_kc_norm
ETc_potatoes_1976 <- ET0_1976*potatoes_kc_leap
ETc_potatoes_1977 <- ET0_1977*potatoes_kc_norm
ETc_potatoes_1978 <- ET0_1978*potatoes_kc_norm
ETc_potatoes_1979 <- ET0_1979*potatoes_kc_norm
ETc_potatoes_1980 <- ET0_1980*potatoes_kc_leap
ETc_potatoes_1981 <- ET0_1981*potatoes_kc_norm
ETc_potatoes_1982 <- ET0_1982*potatoes_kc_norm
ETc_potatoes_1983 <- ET0_1983*potatoes_kc_norm
ETc_potatoes_1984 <- ET0_1984*potatoes_kc_leap
ETc_potatoes_1985 <- ET0_1985*potatoes_kc_norm
ETc_potatoes_1986 <- ET0_1986*potatoes_kc_norm
ETc_potatoes_1987 <- ET0_1987*potatoes_kc_norm
ETc_potatoes_1988 <- ET0_1988*potatoes_kc_leap
ETc_potatoes_1989 <- ET0_1989*potatoes_kc_norm
ETc_potatoes_1990 <- ET0_1990*potatoes_kc_norm
ETc_potatoes_1991 <- ET0_1991*potatoes_kc_norm
ETc_potatoes_1992 <- ET0_1992*potatoes_kc_leap
ETc_potatoes_1993 <- ET0_1993*potatoes_kc_norm
ETc_potatoes_1994 <- ET0_1994*potatoes_kc_norm
ETc_potatoes_1995 <- ET0_1995*potatoes_kc_norm
ETc_potatoes_1996 <- ET0_1996*potatoes_kc_leap
ETc_potatoes_1997 <- ET0_1997*potatoes_kc_norm
ETc_potatoes_1998 <- ET0_1998*potatoes_kc_norm
ETc_potatoes_1999 <- ET0_1999*potatoes_kc_norm
ETc_potatoes_2000 <- ET0_2000*potatoes_kc_leap
ETc_potatoes_2001 <- ET0_2001*potatoes_kc_norm
ETc_potatoes_2002 <- ET0_2002*potatoes_kc_norm
ETc_potatoes_2003 <- ET0_2003*potatoes_kc_norm
ETc_potatoes_2004 <- ET0_2004*potatoes_kc_leap
ETc_potatoes_2005 <- ET0_2005*potatoes_kc_norm
ETc_potatoes_2006 <- ET0_2006*potatoes_kc_norm
ETc_potatoes_2007 <- ET0_2007*potatoes_kc_norm
ETc_potatoes_2008 <- ET0_2008*potatoes_kc_leap
ETc_potatoes_2009 <- ET0_2009*potatoes_kc_norm
ETc_potatoes_2010 <- ET0_2010*potatoes_kc_norm
ETc_potatoes_2011 <- ET0_2011*potatoes_kc_norm
ETc_potatoes_2012 <- ET0_2012*potatoes_kc_leap
ETc_potatoes_2013 <- ET0_2013*potatoes_kc_norm
write.csv(cbind(GEOID,ETc_potatoes_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1950.csv")
write.csv(cbind(GEOID,ETc_potatoes_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1951.csv")
write.csv(cbind(GEOID,ETc_potatoes_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1952.csv")
write.csv(cbind(GEOID,ETc_potatoes_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1953.csv")
write.csv(cbind(GEOID,ETc_potatoes_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1954.csv")
write.csv(cbind(GEOID,ETc_potatoes_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1955.csv")
write.csv(cbind(GEOID,ETc_potatoes_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1956.csv")
write.csv(cbind(GEOID,ETc_potatoes_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1957.csv")
write.csv(cbind(GEOID,ETc_potatoes_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1958.csv")
write.csv(cbind(GEOID,ETc_potatoes_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1959.csv")
write.csv(cbind(GEOID,ETc_potatoes_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1960.csv")
write.csv(cbind(GEOID,ETc_potatoes_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1961.csv")
write.csv(cbind(GEOID,ETc_potatoes_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1962.csv")
write.csv(cbind(GEOID,ETc_potatoes_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1963.csv")
write.csv(cbind(GEOID,ETc_potatoes_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1964.csv")
write.csv(cbind(GEOID,ETc_potatoes_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1965.csv")
write.csv(cbind(GEOID,ETc_potatoes_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1966.csv")
write.csv(cbind(GEOID,ETc_potatoes_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1967.csv")
write.csv(cbind(GEOID,ETc_potatoes_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1968.csv")
write.csv(cbind(GEOID,ETc_potatoes_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1969.csv")
write.csv(cbind(GEOID,ETc_potatoes_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1970.csv")
write.csv(cbind(GEOID,ETc_potatoes_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1971.csv")
write.csv(cbind(GEOID,ETc_potatoes_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1972.csv")
write.csv(cbind(GEOID,ETc_potatoes_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1973.csv")
write.csv(cbind(GEOID,ETc_potatoes_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1974.csv")
write.csv(cbind(GEOID,ETc_potatoes_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1975.csv")
write.csv(cbind(GEOID,ETc_potatoes_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1976.csv")
write.csv(cbind(GEOID,ETc_potatoes_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1977.csv")
write.csv(cbind(GEOID,ETc_potatoes_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1978.csv")
write.csv(cbind(GEOID,ETc_potatoes_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1979.csv")
write.csv(cbind(GEOID,ETc_potatoes_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1980.csv")
write.csv(cbind(GEOID,ETc_potatoes_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1981.csv")
write.csv(cbind(GEOID,ETc_potatoes_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1982.csv")
write.csv(cbind(GEOID,ETc_potatoes_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1983.csv")
write.csv(cbind(GEOID,ETc_potatoes_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1984.csv")
write.csv(cbind(GEOID,ETc_potatoes_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1985.csv")
write.csv(cbind(GEOID,ETc_potatoes_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1986.csv")
write.csv(cbind(GEOID,ETc_potatoes_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1987.csv")
write.csv(cbind(GEOID,ETc_potatoes_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1988.csv")
write.csv(cbind(GEOID,ETc_potatoes_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1989.csv")
write.csv(cbind(GEOID,ETc_potatoes_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1990.csv")
write.csv(cbind(GEOID,ETc_potatoes_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1991.csv")
write.csv(cbind(GEOID,ETc_potatoes_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1992.csv")
write.csv(cbind(GEOID,ETc_potatoes_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1993.csv")
write.csv(cbind(GEOID,ETc_potatoes_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1994.csv")
write.csv(cbind(GEOID,ETc_potatoes_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1995.csv")
write.csv(cbind(GEOID,ETc_potatoes_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1996.csv")
write.csv(cbind(GEOID,ETc_potatoes_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1997.csv")
write.csv(cbind(GEOID,ETc_potatoes_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1998.csv")
write.csv(cbind(GEOID,ETc_potatoes_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_1999.csv")
write.csv(cbind(GEOID,ETc_potatoes_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_2000.csv")
write.csv(cbind(GEOID,ETc_potatoes_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_2001.csv")
write.csv(cbind(GEOID,ETc_potatoes_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_2002.csv")
write.csv(cbind(GEOID,ETc_potatoes_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_2003.csv")
write.csv(cbind(GEOID,ETc_potatoes_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_2004.csv")
write.csv(cbind(GEOID,ETc_potatoes_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_2005.csv")
write.csv(cbind(GEOID,ETc_potatoes_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_2006.csv")
write.csv(cbind(GEOID,ETc_potatoes_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_2007.csv")
write.csv(cbind(GEOID,ETc_potatoes_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_2008.csv")
write.csv(cbind(GEOID,ETc_potatoes_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_2009.csv")
write.csv(cbind(GEOID,ETc_potatoes_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_2010.csv")
write.csv(cbind(GEOID,ETc_potatoes_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_2011.csv")
write.csv(cbind(GEOID,ETc_potatoes_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_2012.csv")
write.csv(cbind(GEOID,ETc_potatoes_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_potatoes_2013.csv")
ETc_rye_1950 <- ET0_1950*rye_kc_norm
ETc_rye_1951 <- ET0_1951*rye_kc_norm
ETc_rye_1952 <- ET0_1952*rye_kc_leap
ETc_rye_1953 <- ET0_1953*rye_kc_norm
ETc_rye_1954 <- ET0_1954*rye_kc_norm
ETc_rye_1955 <- ET0_1955*rye_kc_norm
ETc_rye_1956 <- ET0_1956*rye_kc_leap
ETc_rye_1957 <- ET0_1957*rye_kc_norm
ETc_rye_1958 <- ET0_1958*rye_kc_norm
ETc_rye_1959 <- ET0_1959*rye_kc_norm
ETc_rye_1960 <- ET0_1960*rye_kc_leap
ETc_rye_1961 <- ET0_1961*rye_kc_norm
ETc_rye_1962 <- ET0_1962*rye_kc_norm
ETc_rye_1963 <- ET0_1963*rye_kc_norm
ETc_rye_1964 <- ET0_1964*rye_kc_leap
ETc_rye_1965 <- ET0_1965*rye_kc_norm
ETc_rye_1966 <- ET0_1966*rye_kc_norm
ETc_rye_1967 <- ET0_1967*rye_kc_norm
ETc_rye_1968 <- ET0_1968*rye_kc_leap
ETc_rye_1969 <- ET0_1969*rye_kc_norm
ETc_rye_1970 <- ET0_1970*rye_kc_norm
ETc_rye_1971 <- ET0_1971*rye_kc_norm
ETc_rye_1972 <- ET0_1972*rye_kc_leap
ETc_rye_1973 <- ET0_1973*rye_kc_norm
ETc_rye_1974 <- ET0_1974*rye_kc_norm
ETc_rye_1975 <- ET0_1975*rye_kc_norm
ETc_rye_1976 <- ET0_1976*rye_kc_leap
ETc_rye_1977 <- ET0_1977*rye_kc_norm
ETc_rye_1978 <- ET0_1978*rye_kc_norm
ETc_rye_1979 <- ET0_1979*rye_kc_norm
ETc_rye_1980 <- ET0_1980*rye_kc_leap
ETc_rye_1981 <- ET0_1981*rye_kc_norm
ETc_rye_1982 <- ET0_1982*rye_kc_norm
ETc_rye_1983 <- ET0_1983*rye_kc_norm
ETc_rye_1984 <- ET0_1984*rye_kc_leap
ETc_rye_1985 <- ET0_1985*rye_kc_norm
ETc_rye_1986 <- ET0_1986*rye_kc_norm
ETc_rye_1987 <- ET0_1987*rye_kc_norm
ETc_rye_1988 <- ET0_1988*rye_kc_leap
ETc_rye_1989 <- ET0_1989*rye_kc_norm
ETc_rye_1990 <- ET0_1990*rye_kc_norm
ETc_rye_1991 <- ET0_1991*rye_kc_norm
ETc_rye_1992 <- ET0_1992*rye_kc_leap
ETc_rye_1993 <- ET0_1993*rye_kc_norm
ETc_rye_1994 <- ET0_1994*rye_kc_norm
ETc_rye_1995 <- ET0_1995*rye_kc_norm
ETc_rye_1996 <- ET0_1996*rye_kc_leap
ETc_rye_1997 <- ET0_1997*rye_kc_norm
ETc_rye_1998 <- ET0_1998*rye_kc_norm
ETc_rye_1999 <- ET0_1999*rye_kc_norm
ETc_rye_2000 <- ET0_2000*rye_kc_leap
ETc_rye_2001 <- ET0_2001*rye_kc_norm
ETc_rye_2002 <- ET0_2002*rye_kc_norm
ETc_rye_2003 <- ET0_2003*rye_kc_norm
ETc_rye_2004 <- ET0_2004*rye_kc_leap
ETc_rye_2005 <- ET0_2005*rye_kc_norm
ETc_rye_2006 <- ET0_2006*rye_kc_norm
ETc_rye_2007 <- ET0_2007*rye_kc_norm
ETc_rye_2008 <- ET0_2008*rye_kc_leap
ETc_rye_2009 <- ET0_2009*rye_kc_norm
ETc_rye_2010 <- ET0_2010*rye_kc_norm
ETc_rye_2011 <- ET0_2011*rye_kc_norm
ETc_rye_2012 <- ET0_2012*rye_kc_leap
ETc_rye_2013 <- ET0_2013*rye_kc_norm
write.csv(cbind(GEOID,ETc_rye_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1950.csv")
write.csv(cbind(GEOID,ETc_rye_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1951.csv")
write.csv(cbind(GEOID,ETc_rye_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1952.csv")
write.csv(cbind(GEOID,ETc_rye_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1953.csv")
write.csv(cbind(GEOID,ETc_rye_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1954.csv")
write.csv(cbind(GEOID,ETc_rye_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1955.csv")
write.csv(cbind(GEOID,ETc_rye_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1956.csv")
write.csv(cbind(GEOID,ETc_rye_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1957.csv")
write.csv(cbind(GEOID,ETc_rye_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1958.csv")
write.csv(cbind(GEOID,ETc_rye_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1959.csv")
write.csv(cbind(GEOID,ETc_rye_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1960.csv")
write.csv(cbind(GEOID,ETc_rye_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1961.csv")
write.csv(cbind(GEOID,ETc_rye_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1962.csv")
write.csv(cbind(GEOID,ETc_rye_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1963.csv")
write.csv(cbind(GEOID,ETc_rye_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1964.csv")
write.csv(cbind(GEOID,ETc_rye_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1965.csv")
write.csv(cbind(GEOID,ETc_rye_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1966.csv")
write.csv(cbind(GEOID,ETc_rye_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1967.csv")
write.csv(cbind(GEOID,ETc_rye_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1968.csv")
write.csv(cbind(GEOID,ETc_rye_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1969.csv")
write.csv(cbind(GEOID,ETc_rye_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1970.csv")
write.csv(cbind(GEOID,ETc_rye_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1971.csv")
write.csv(cbind(GEOID,ETc_rye_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1972.csv")
write.csv(cbind(GEOID,ETc_rye_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1973.csv")
write.csv(cbind(GEOID,ETc_rye_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1974.csv")
write.csv(cbind(GEOID,ETc_rye_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1975.csv")
write.csv(cbind(GEOID,ETc_rye_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1976.csv")
write.csv(cbind(GEOID,ETc_rye_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1977.csv")
write.csv(cbind(GEOID,ETc_rye_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1978.csv")
write.csv(cbind(GEOID,ETc_rye_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1979.csv")
write.csv(cbind(GEOID,ETc_rye_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1980.csv")
write.csv(cbind(GEOID,ETc_rye_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1981.csv")
write.csv(cbind(GEOID,ETc_rye_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1982.csv")
write.csv(cbind(GEOID,ETc_rye_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1983.csv")
write.csv(cbind(GEOID,ETc_rye_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1984.csv")
write.csv(cbind(GEOID,ETc_rye_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1985.csv")
write.csv(cbind(GEOID,ETc_rye_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1986.csv")
write.csv(cbind(GEOID,ETc_rye_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1987.csv")
write.csv(cbind(GEOID,ETc_rye_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1988.csv")
write.csv(cbind(GEOID,ETc_rye_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1989.csv")
write.csv(cbind(GEOID,ETc_rye_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1990.csv")
write.csv(cbind(GEOID,ETc_rye_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1991.csv")
write.csv(cbind(GEOID,ETc_rye_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1992.csv")
write.csv(cbind(GEOID,ETc_rye_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1993.csv")
write.csv(cbind(GEOID,ETc_rye_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1994.csv")
write.csv(cbind(GEOID,ETc_rye_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1995.csv")
write.csv(cbind(GEOID,ETc_rye_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1996.csv")
write.csv(cbind(GEOID,ETc_rye_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1997.csv")
write.csv(cbind(GEOID,ETc_rye_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1998.csv")
write.csv(cbind(GEOID,ETc_rye_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_1999.csv")
write.csv(cbind(GEOID,ETc_rye_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_2000.csv")
write.csv(cbind(GEOID,ETc_rye_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_2001.csv")
write.csv(cbind(GEOID,ETc_rye_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_2002.csv")
write.csv(cbind(GEOID,ETc_rye_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_2003.csv")
write.csv(cbind(GEOID,ETc_rye_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_2004.csv")
write.csv(cbind(GEOID,ETc_rye_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_2005.csv")
write.csv(cbind(GEOID,ETc_rye_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_2006.csv")
write.csv(cbind(GEOID,ETc_rye_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_2007.csv")
write.csv(cbind(GEOID,ETc_rye_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_2008.csv")
write.csv(cbind(GEOID,ETc_rye_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_2009.csv")
write.csv(cbind(GEOID,ETc_rye_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_2010.csv")
write.csv(cbind(GEOID,ETc_rye_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_2011.csv")
write.csv(cbind(GEOID,ETc_rye_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_2012.csv")
write.csv(cbind(GEOID,ETc_rye_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rye_2013.csv")
ETc_snapbeans_1950 <- ET0_1950*snapbeans_kc_norm
ETc_snapbeans_1951 <- ET0_1951*snapbeans_kc_norm
ETc_snapbeans_1952 <- ET0_1952*snapbeans_kc_leap
ETc_snapbeans_1953 <- ET0_1953*snapbeans_kc_norm
ETc_snapbeans_1954 <- ET0_1954*snapbeans_kc_norm
ETc_snapbeans_1955 <- ET0_1955*snapbeans_kc_norm
ETc_snapbeans_1956 <- ET0_1956*snapbeans_kc_leap
ETc_snapbeans_1957 <- ET0_1957*snapbeans_kc_norm
ETc_snapbeans_1958 <- ET0_1958*snapbeans_kc_norm
ETc_snapbeans_1959 <- ET0_1959*snapbeans_kc_norm
ETc_snapbeans_1960 <- ET0_1960*snapbeans_kc_leap
ETc_snapbeans_1961 <- ET0_1961*snapbeans_kc_norm
ETc_snapbeans_1962 <- ET0_1962*snapbeans_kc_norm
ETc_snapbeans_1963 <- ET0_1963*snapbeans_kc_norm
ETc_snapbeans_1964 <- ET0_1964*snapbeans_kc_leap
ETc_snapbeans_1965 <- ET0_1965*snapbeans_kc_norm
ETc_snapbeans_1966 <- ET0_1966*snapbeans_kc_norm
ETc_snapbeans_1967 <- ET0_1967*snapbeans_kc_norm
ETc_snapbeans_1968 <- ET0_1968*snapbeans_kc_leap
ETc_snapbeans_1969 <- ET0_1969*snapbeans_kc_norm
ETc_snapbeans_1970 <- ET0_1970*snapbeans_kc_norm
ETc_snapbeans_1971 <- ET0_1971*snapbeans_kc_norm
ETc_snapbeans_1972 <- ET0_1972*snapbeans_kc_leap
ETc_snapbeans_1973 <- ET0_1973*snapbeans_kc_norm
ETc_snapbeans_1974 <- ET0_1974*snapbeans_kc_norm
ETc_snapbeans_1975 <- ET0_1975*snapbeans_kc_norm
ETc_snapbeans_1976 <- ET0_1976*snapbeans_kc_leap
ETc_snapbeans_1977 <- ET0_1977*snapbeans_kc_norm
ETc_snapbeans_1978 <- ET0_1978*snapbeans_kc_norm
ETc_snapbeans_1979 <- ET0_1979*snapbeans_kc_norm
ETc_snapbeans_1980 <- ET0_1980*snapbeans_kc_leap
ETc_snapbeans_1981 <- ET0_1981*snapbeans_kc_norm
ETc_snapbeans_1982 <- ET0_1982*snapbeans_kc_norm
ETc_snapbeans_1983 <- ET0_1983*snapbeans_kc_norm
ETc_snapbeans_1984 <- ET0_1984*snapbeans_kc_leap
ETc_snapbeans_1985 <- ET0_1985*snapbeans_kc_norm
ETc_snapbeans_1986 <- ET0_1986*snapbeans_kc_norm
ETc_snapbeans_1987 <- ET0_1987*snapbeans_kc_norm
ETc_snapbeans_1988 <- ET0_1988*snapbeans_kc_leap
ETc_snapbeans_1989 <- ET0_1989*snapbeans_kc_norm
ETc_snapbeans_1990 <- ET0_1990*snapbeans_kc_norm
ETc_snapbeans_1991 <- ET0_1991*snapbeans_kc_norm
ETc_snapbeans_1992 <- ET0_1992*snapbeans_kc_leap
ETc_snapbeans_1993 <- ET0_1993*snapbeans_kc_norm
ETc_snapbeans_1994 <- ET0_1994*snapbeans_kc_norm
ETc_snapbeans_1995 <- ET0_1995*snapbeans_kc_norm
ETc_snapbeans_1996 <- ET0_1996*snapbeans_kc_leap
ETc_snapbeans_1997 <- ET0_1997*snapbeans_kc_norm
ETc_snapbeans_1998 <- ET0_1998*snapbeans_kc_norm
ETc_snapbeans_1999 <- ET0_1999*snapbeans_kc_norm
ETc_snapbeans_2000 <- ET0_2000*snapbeans_kc_leap
ETc_snapbeans_2001 <- ET0_2001*snapbeans_kc_norm
ETc_snapbeans_2002 <- ET0_2002*snapbeans_kc_norm
ETc_snapbeans_2003 <- ET0_2003*snapbeans_kc_norm
ETc_snapbeans_2004 <- ET0_2004*snapbeans_kc_leap
ETc_snapbeans_2005 <- ET0_2005*snapbeans_kc_norm
ETc_snapbeans_2006 <- ET0_2006*snapbeans_kc_norm
ETc_snapbeans_2007 <- ET0_2007*snapbeans_kc_norm
ETc_snapbeans_2008 <- ET0_2008*snapbeans_kc_leap
ETc_snapbeans_2009 <- ET0_2009*snapbeans_kc_norm
ETc_snapbeans_2010 <- ET0_2010*snapbeans_kc_norm
ETc_snapbeans_2011 <- ET0_2011*snapbeans_kc_norm
ETc_snapbeans_2012 <- ET0_2012*snapbeans_kc_leap
ETc_snapbeans_2013 <- ET0_2013*snapbeans_kc_norm
write.csv(cbind(GEOID,ETc_snapbeans_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1950.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1951.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1952.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1953.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1954.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1955.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1956.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1957.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1958.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1959.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1960.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1961.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1962.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1963.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1964.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1965.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1966.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1967.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1968.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1969.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1970.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1971.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1972.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1973.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1974.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1975.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1976.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1977.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1978.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1979.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1980.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1981.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1982.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1983.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1984.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1985.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1986.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1987.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1988.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1989.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1990.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1991.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1992.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1993.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1994.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1995.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1996.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1997.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1998.csv")
write.csv(cbind(GEOID,ETc_snapbeans_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_1999.csv")
write.csv(cbind(GEOID,ETc_snapbeans_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_2000.csv")
write.csv(cbind(GEOID,ETc_snapbeans_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_2001.csv")
write.csv(cbind(GEOID,ETc_snapbeans_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_2002.csv")
write.csv(cbind(GEOID,ETc_snapbeans_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_2003.csv")
write.csv(cbind(GEOID,ETc_snapbeans_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_2004.csv")
write.csv(cbind(GEOID,ETc_snapbeans_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_2005.csv")
write.csv(cbind(GEOID,ETc_snapbeans_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_2006.csv")
write.csv(cbind(GEOID,ETc_snapbeans_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_2007.csv")
write.csv(cbind(GEOID,ETc_snapbeans_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_2008.csv")
write.csv(cbind(GEOID,ETc_snapbeans_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_2009.csv")
write.csv(cbind(GEOID,ETc_snapbeans_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_2010.csv")
write.csv(cbind(GEOID,ETc_snapbeans_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_2011.csv")
write.csv(cbind(GEOID,ETc_snapbeans_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_2012.csv")
write.csv(cbind(GEOID,ETc_snapbeans_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_snapbeans_2013.csv")
ETc_sorghum_1950 <- ET0_1950*sorghum_kc_norm
ETc_sorghum_1951 <- ET0_1951*sorghum_kc_norm
ETc_sorghum_1952 <- ET0_1952*sorghum_kc_leap
ETc_sorghum_1953 <- ET0_1953*sorghum_kc_norm
ETc_sorghum_1954 <- ET0_1954*sorghum_kc_norm
ETc_sorghum_1955 <- ET0_1955*sorghum_kc_norm
ETc_sorghum_1956 <- ET0_1956*sorghum_kc_leap
ETc_sorghum_1957 <- ET0_1957*sorghum_kc_norm
ETc_sorghum_1958 <- ET0_1958*sorghum_kc_norm
ETc_sorghum_1959 <- ET0_1959*sorghum_kc_norm
ETc_sorghum_1960 <- ET0_1960*sorghum_kc_leap
ETc_sorghum_1961 <- ET0_1961*sorghum_kc_norm
ETc_sorghum_1962 <- ET0_1962*sorghum_kc_norm
ETc_sorghum_1963 <- ET0_1963*sorghum_kc_norm
ETc_sorghum_1964 <- ET0_1964*sorghum_kc_leap
ETc_sorghum_1965 <- ET0_1965*sorghum_kc_norm
ETc_sorghum_1966 <- ET0_1966*sorghum_kc_norm
ETc_sorghum_1967 <- ET0_1967*sorghum_kc_norm
ETc_sorghum_1968 <- ET0_1968*sorghum_kc_leap
ETc_sorghum_1969 <- ET0_1969*sorghum_kc_norm
ETc_sorghum_1970 <- ET0_1970*sorghum_kc_norm
ETc_sorghum_1971 <- ET0_1971*sorghum_kc_norm
ETc_sorghum_1972 <- ET0_1972*sorghum_kc_leap
ETc_sorghum_1973 <- ET0_1973*sorghum_kc_norm
ETc_sorghum_1974 <- ET0_1974*sorghum_kc_norm
ETc_sorghum_1975 <- ET0_1975*sorghum_kc_norm
ETc_sorghum_1976 <- ET0_1976*sorghum_kc_leap
ETc_sorghum_1977 <- ET0_1977*sorghum_kc_norm
ETc_sorghum_1978 <- ET0_1978*sorghum_kc_norm
ETc_sorghum_1979 <- ET0_1979*sorghum_kc_norm
ETc_sorghum_1980 <- ET0_1980*sorghum_kc_leap
ETc_sorghum_1981 <- ET0_1981*sorghum_kc_norm
ETc_sorghum_1982 <- ET0_1982*sorghum_kc_norm
ETc_sorghum_1983 <- ET0_1983*sorghum_kc_norm
ETc_sorghum_1984 <- ET0_1984*sorghum_kc_leap
ETc_sorghum_1985 <- ET0_1985*sorghum_kc_norm
ETc_sorghum_1986 <- ET0_1986*sorghum_kc_norm
ETc_sorghum_1987 <- ET0_1987*sorghum_kc_norm
ETc_sorghum_1988 <- ET0_1988*sorghum_kc_leap
ETc_sorghum_1989 <- ET0_1989*sorghum_kc_norm
ETc_sorghum_1990 <- ET0_1990*sorghum_kc_norm
ETc_sorghum_1991 <- ET0_1991*sorghum_kc_norm
ETc_sorghum_1992 <- ET0_1992*sorghum_kc_leap
ETc_sorghum_1993 <- ET0_1993*sorghum_kc_norm
ETc_sorghum_1994 <- ET0_1994*sorghum_kc_norm
ETc_sorghum_1995 <- ET0_1995*sorghum_kc_norm
ETc_sorghum_1996 <- ET0_1996*sorghum_kc_leap
ETc_sorghum_1997 <- ET0_1997*sorghum_kc_norm
ETc_sorghum_1998 <- ET0_1998*sorghum_kc_norm
ETc_sorghum_1999 <- ET0_1999*sorghum_kc_norm
ETc_sorghum_2000 <- ET0_2000*sorghum_kc_leap
ETc_sorghum_2001 <- ET0_2001*sorghum_kc_norm
ETc_sorghum_2002 <- ET0_2002*sorghum_kc_norm
ETc_sorghum_2003 <- ET0_2003*sorghum_kc_norm
ETc_sorghum_2004 <- ET0_2004*sorghum_kc_leap
ETc_sorghum_2005 <- ET0_2005*sorghum_kc_norm
ETc_sorghum_2006 <- ET0_2006*sorghum_kc_norm
ETc_sorghum_2007 <- ET0_2007*sorghum_kc_norm
ETc_sorghum_2008 <- ET0_2008*sorghum_kc_leap
ETc_sorghum_2009 <- ET0_2009*sorghum_kc_norm
ETc_sorghum_2010 <- ET0_2010*sorghum_kc_norm
ETc_sorghum_2011 <- ET0_2011*sorghum_kc_norm
ETc_sorghum_2012 <- ET0_2012*sorghum_kc_leap
ETc_sorghum_2013 <- ET0_2013*sorghum_kc_norm
write.csv(cbind(GEOID,ETc_sorghum_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1950.csv")
write.csv(cbind(GEOID,ETc_sorghum_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1951.csv")
write.csv(cbind(GEOID,ETc_sorghum_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1952.csv")
write.csv(cbind(GEOID,ETc_sorghum_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1953.csv")
write.csv(cbind(GEOID,ETc_sorghum_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1954.csv")
write.csv(cbind(GEOID,ETc_sorghum_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1955.csv")
write.csv(cbind(GEOID,ETc_sorghum_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1956.csv")
write.csv(cbind(GEOID,ETc_sorghum_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1957.csv")
write.csv(cbind(GEOID,ETc_sorghum_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1958.csv")
write.csv(cbind(GEOID,ETc_sorghum_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1959.csv")
write.csv(cbind(GEOID,ETc_sorghum_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1960.csv")
write.csv(cbind(GEOID,ETc_sorghum_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1961.csv")
write.csv(cbind(GEOID,ETc_sorghum_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1962.csv")
write.csv(cbind(GEOID,ETc_sorghum_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1963.csv")
write.csv(cbind(GEOID,ETc_sorghum_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1964.csv")
write.csv(cbind(GEOID,ETc_sorghum_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1965.csv")
write.csv(cbind(GEOID,ETc_sorghum_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1966.csv")
write.csv(cbind(GEOID,ETc_sorghum_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1967.csv")
write.csv(cbind(GEOID,ETc_sorghum_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1968.csv")
write.csv(cbind(GEOID,ETc_sorghum_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1969.csv")
write.csv(cbind(GEOID,ETc_sorghum_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1970.csv")
write.csv(cbind(GEOID,ETc_sorghum_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1971.csv")
write.csv(cbind(GEOID,ETc_sorghum_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1972.csv")
write.csv(cbind(GEOID,ETc_sorghum_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1973.csv")
write.csv(cbind(GEOID,ETc_sorghum_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1974.csv")
write.csv(cbind(GEOID,ETc_sorghum_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1975.csv")
write.csv(cbind(GEOID,ETc_sorghum_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1976.csv")
write.csv(cbind(GEOID,ETc_sorghum_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1977.csv")
write.csv(cbind(GEOID,ETc_sorghum_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1978.csv")
write.csv(cbind(GEOID,ETc_sorghum_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1979.csv")
write.csv(cbind(GEOID,ETc_sorghum_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1980.csv")
write.csv(cbind(GEOID,ETc_sorghum_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1981.csv")
write.csv(cbind(GEOID,ETc_sorghum_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1982.csv")
write.csv(cbind(GEOID,ETc_sorghum_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1983.csv")
write.csv(cbind(GEOID,ETc_sorghum_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1984.csv")
write.csv(cbind(GEOID,ETc_sorghum_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1985.csv")
write.csv(cbind(GEOID,ETc_sorghum_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1986.csv")
write.csv(cbind(GEOID,ETc_sorghum_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1987.csv")
write.csv(cbind(GEOID,ETc_sorghum_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1988.csv")
write.csv(cbind(GEOID,ETc_sorghum_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1989.csv")
write.csv(cbind(GEOID,ETc_sorghum_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1990.csv")
write.csv(cbind(GEOID,ETc_sorghum_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1991.csv")
write.csv(cbind(GEOID,ETc_sorghum_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1992.csv")
write.csv(cbind(GEOID,ETc_sorghum_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1993.csv")
write.csv(cbind(GEOID,ETc_sorghum_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1994.csv")
write.csv(cbind(GEOID,ETc_sorghum_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1995.csv")
write.csv(cbind(GEOID,ETc_sorghum_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1996.csv")
write.csv(cbind(GEOID,ETc_sorghum_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1997.csv")
write.csv(cbind(GEOID,ETc_sorghum_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1998.csv")
write.csv(cbind(GEOID,ETc_sorghum_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_1999.csv")
write.csv(cbind(GEOID,ETc_sorghum_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_2000.csv")
write.csv(cbind(GEOID,ETc_sorghum_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_2001.csv")
write.csv(cbind(GEOID,ETc_sorghum_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_2002.csv")
write.csv(cbind(GEOID,ETc_sorghum_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_2003.csv")
write.csv(cbind(GEOID,ETc_sorghum_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_2004.csv")
write.csv(cbind(GEOID,ETc_sorghum_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_2005.csv")
write.csv(cbind(GEOID,ETc_sorghum_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_2006.csv")
write.csv(cbind(GEOID,ETc_sorghum_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_2007.csv")
write.csv(cbind(GEOID,ETc_sorghum_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_2008.csv")
write.csv(cbind(GEOID,ETc_sorghum_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_2009.csv")
write.csv(cbind(GEOID,ETc_sorghum_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_2010.csv")
write.csv(cbind(GEOID,ETc_sorghum_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_2011.csv")
write.csv(cbind(GEOID,ETc_sorghum_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_2012.csv")
write.csv(cbind(GEOID,ETc_sorghum_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_2013.csv")
ETc_sorghum_silage_1950 <- ET0_1950*sorghum_silage_kc_norm
ETc_sorghum_silage_1951 <- ET0_1951*sorghum_silage_kc_norm
ETc_sorghum_silage_1952 <- ET0_1952*sorghum_silage_kc_leap
ETc_sorghum_silage_1953 <- ET0_1953*sorghum_silage_kc_norm
ETc_sorghum_silage_1954 <- ET0_1954*sorghum_silage_kc_norm
ETc_sorghum_silage_1955 <- ET0_1955*sorghum_silage_kc_norm
ETc_sorghum_silage_1956 <- ET0_1956*sorghum_silage_kc_leap
ETc_sorghum_silage_1957 <- ET0_1957*sorghum_silage_kc_norm
ETc_sorghum_silage_1958 <- ET0_1958*sorghum_silage_kc_norm
ETc_sorghum_silage_1959 <- ET0_1959*sorghum_silage_kc_norm
ETc_sorghum_silage_1960 <- ET0_1960*sorghum_silage_kc_leap
ETc_sorghum_silage_1961 <- ET0_1961*sorghum_silage_kc_norm
ETc_sorghum_silage_1962 <- ET0_1962*sorghum_silage_kc_norm
ETc_sorghum_silage_1963 <- ET0_1963*sorghum_silage_kc_norm
ETc_sorghum_silage_1964 <- ET0_1964*sorghum_silage_kc_leap
ETc_sorghum_silage_1965 <- ET0_1965*sorghum_silage_kc_norm
ETc_sorghum_silage_1966 <- ET0_1966*sorghum_silage_kc_norm
ETc_sorghum_silage_1967 <- ET0_1967*sorghum_silage_kc_norm
ETc_sorghum_silage_1968 <- ET0_1968*sorghum_silage_kc_leap
ETc_sorghum_silage_1969 <- ET0_1969*sorghum_silage_kc_norm
ETc_sorghum_silage_1970 <- ET0_1970*sorghum_silage_kc_norm
ETc_sorghum_silage_1971 <- ET0_1971*sorghum_silage_kc_norm
ETc_sorghum_silage_1972 <- ET0_1972*sorghum_silage_kc_leap
ETc_sorghum_silage_1973 <- ET0_1973*sorghum_silage_kc_norm
ETc_sorghum_silage_1974 <- ET0_1974*sorghum_silage_kc_norm
ETc_sorghum_silage_1975 <- ET0_1975*sorghum_silage_kc_norm
ETc_sorghum_silage_1976 <- ET0_1976*sorghum_silage_kc_leap
ETc_sorghum_silage_1977 <- ET0_1977*sorghum_silage_kc_norm
ETc_sorghum_silage_1978 <- ET0_1978*sorghum_silage_kc_norm
ETc_sorghum_silage_1979 <- ET0_1979*sorghum_silage_kc_norm
ETc_sorghum_silage_1980 <- ET0_1980*sorghum_silage_kc_leap
ETc_sorghum_silage_1981 <- ET0_1981*sorghum_silage_kc_norm
ETc_sorghum_silage_1982 <- ET0_1982*sorghum_silage_kc_norm
ETc_sorghum_silage_1983 <- ET0_1983*sorghum_silage_kc_norm
ETc_sorghum_silage_1984 <- ET0_1984*sorghum_silage_kc_leap
ETc_sorghum_silage_1985 <- ET0_1985*sorghum_silage_kc_norm
ETc_sorghum_silage_1986 <- ET0_1986*sorghum_silage_kc_norm
ETc_sorghum_silage_1987 <- ET0_1987*sorghum_silage_kc_norm
ETc_sorghum_silage_1988 <- ET0_1988*sorghum_silage_kc_leap
ETc_sorghum_silage_1989 <- ET0_1989*sorghum_silage_kc_norm
ETc_sorghum_silage_1990 <- ET0_1990*sorghum_silage_kc_norm
ETc_sorghum_silage_1991 <- ET0_1991*sorghum_silage_kc_norm
ETc_sorghum_silage_1992 <- ET0_1992*sorghum_silage_kc_leap
ETc_sorghum_silage_1993 <- ET0_1993*sorghum_silage_kc_norm
ETc_sorghum_silage_1994 <- ET0_1994*sorghum_silage_kc_norm
ETc_sorghum_silage_1995 <- ET0_1995*sorghum_silage_kc_norm
ETc_sorghum_silage_1996 <- ET0_1996*sorghum_silage_kc_leap
ETc_sorghum_silage_1997 <- ET0_1997*sorghum_silage_kc_norm
ETc_sorghum_silage_1998 <- ET0_1998*sorghum_silage_kc_norm
ETc_sorghum_silage_1999 <- ET0_1999*sorghum_silage_kc_norm
ETc_sorghum_silage_2000 <- ET0_2000*sorghum_silage_kc_leap
ETc_sorghum_silage_2001 <- ET0_2001*sorghum_silage_kc_norm
ETc_sorghum_silage_2002 <- ET0_2002*sorghum_silage_kc_norm
ETc_sorghum_silage_2003 <- ET0_2003*sorghum_silage_kc_norm
ETc_sorghum_silage_2004 <- ET0_2004*sorghum_silage_kc_leap
ETc_sorghum_silage_2005 <- ET0_2005*sorghum_silage_kc_norm
ETc_sorghum_silage_2006 <- ET0_2006*sorghum_silage_kc_norm
ETc_sorghum_silage_2007 <- ET0_2007*sorghum_silage_kc_norm
ETc_sorghum_silage_2008 <- ET0_2008*sorghum_silage_kc_leap
ETc_sorghum_silage_2009 <- ET0_2009*sorghum_silage_kc_norm
ETc_sorghum_silage_2010 <- ET0_2010*sorghum_silage_kc_norm
ETc_sorghum_silage_2011 <- ET0_2011*sorghum_silage_kc_norm
ETc_sorghum_silage_2012 <- ET0_2012*sorghum_silage_kc_leap
ETc_sorghum_silage_2013 <- ET0_2013*sorghum_silage_kc_norm
write.csv(cbind(GEOID,ETc_sorghum_silage_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1950.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1951.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1952.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1953.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1954.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1955.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1956.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1957.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1958.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1959.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1960.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1961.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1962.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1963.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1964.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1965.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1966.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1967.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1968.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1969.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1970.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1971.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1972.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1973.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1974.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1975.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1976.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1977.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1978.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1979.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1980.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1981.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1982.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1983.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1984.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1985.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1986.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1987.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1988.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1989.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1990.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1991.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1992.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1993.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1994.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1995.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1996.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1997.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1998.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_1999.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_2000.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_2001.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_2002.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_2003.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_2004.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_2005.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_2006.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_2007.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_2008.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_2009.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_2010.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_2011.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_2012.csv")
write.csv(cbind(GEOID,ETc_sorghum_silage_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sorghum_silage_2013.csv")
ETc_soybean_1950 <- ET0_1950*soybean_kc_norm
ETc_soybean_1951 <- ET0_1951*soybean_kc_norm
ETc_soybean_1952 <- ET0_1952*soybean_kc_leap
ETc_soybean_1953 <- ET0_1953*soybean_kc_norm
ETc_soybean_1954 <- ET0_1954*soybean_kc_norm
ETc_soybean_1955 <- ET0_1955*soybean_kc_norm
ETc_soybean_1956 <- ET0_1956*soybean_kc_leap
ETc_soybean_1957 <- ET0_1957*soybean_kc_norm
ETc_soybean_1958 <- ET0_1958*soybean_kc_norm
ETc_soybean_1959 <- ET0_1959*soybean_kc_norm
ETc_soybean_1960 <- ET0_1960*soybean_kc_leap
ETc_soybean_1961 <- ET0_1961*soybean_kc_norm
ETc_soybean_1962 <- ET0_1962*soybean_kc_norm
ETc_soybean_1963 <- ET0_1963*soybean_kc_norm
ETc_soybean_1964 <- ET0_1964*soybean_kc_leap
ETc_soybean_1965 <- ET0_1965*soybean_kc_norm
ETc_soybean_1966 <- ET0_1966*soybean_kc_norm
ETc_soybean_1967 <- ET0_1967*soybean_kc_norm
ETc_soybean_1968 <- ET0_1968*soybean_kc_leap
ETc_soybean_1969 <- ET0_1969*soybean_kc_norm
ETc_soybean_1970 <- ET0_1970*soybean_kc_norm
ETc_soybean_1971 <- ET0_1971*soybean_kc_norm
ETc_soybean_1972 <- ET0_1972*soybean_kc_leap
ETc_soybean_1973 <- ET0_1973*soybean_kc_norm
ETc_soybean_1974 <- ET0_1974*soybean_kc_norm
ETc_soybean_1975 <- ET0_1975*soybean_kc_norm
ETc_soybean_1976 <- ET0_1976*soybean_kc_leap
ETc_soybean_1977 <- ET0_1977*soybean_kc_norm
ETc_soybean_1978 <- ET0_1978*soybean_kc_norm
ETc_soybean_1979 <- ET0_1979*soybean_kc_norm
ETc_soybean_1980 <- ET0_1980*soybean_kc_leap
ETc_soybean_1981 <- ET0_1981*soybean_kc_norm
ETc_soybean_1982 <- ET0_1982*soybean_kc_norm
ETc_soybean_1983 <- ET0_1983*soybean_kc_norm
ETc_soybean_1984 <- ET0_1984*soybean_kc_leap
ETc_soybean_1985 <- ET0_1985*soybean_kc_norm
ETc_soybean_1986 <- ET0_1986*soybean_kc_norm
ETc_soybean_1987 <- ET0_1987*soybean_kc_norm
ETc_soybean_1988 <- ET0_1988*soybean_kc_leap
ETc_soybean_1989 <- ET0_1989*soybean_kc_norm
ETc_soybean_1990 <- ET0_1990*soybean_kc_norm
ETc_soybean_1991 <- ET0_1991*soybean_kc_norm
ETc_soybean_1992 <- ET0_1992*soybean_kc_leap
ETc_soybean_1993 <- ET0_1993*soybean_kc_norm
ETc_soybean_1994 <- ET0_1994*soybean_kc_norm
ETc_soybean_1995 <- ET0_1995*soybean_kc_norm
ETc_soybean_1996 <- ET0_1996*soybean_kc_leap
ETc_soybean_1997 <- ET0_1997*soybean_kc_norm
ETc_soybean_1998 <- ET0_1998*soybean_kc_norm
ETc_soybean_1999 <- ET0_1999*soybean_kc_norm
ETc_soybean_2000 <- ET0_2000*soybean_kc_leap
ETc_soybean_2001 <- ET0_2001*soybean_kc_norm
ETc_soybean_2002 <- ET0_2002*soybean_kc_norm
ETc_soybean_2003 <- ET0_2003*soybean_kc_norm
ETc_soybean_2004 <- ET0_2004*soybean_kc_leap
ETc_soybean_2005 <- ET0_2005*soybean_kc_norm
ETc_soybean_2006 <- ET0_2006*soybean_kc_norm
ETc_soybean_2007 <- ET0_2007*soybean_kc_norm
ETc_soybean_2008 <- ET0_2008*soybean_kc_leap
ETc_soybean_2009 <- ET0_2009*soybean_kc_norm
ETc_soybean_2010 <- ET0_2010*soybean_kc_norm
ETc_soybean_2011 <- ET0_2011*soybean_kc_norm
ETc_soybean_2012 <- ET0_2012*soybean_kc_leap
ETc_soybean_2013 <- ET0_2013*soybean_kc_norm
write.csv(cbind(GEOID,ETc_soybean_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1950.csv")
write.csv(cbind(GEOID,ETc_soybean_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1951.csv")
write.csv(cbind(GEOID,ETc_soybean_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1952.csv")
write.csv(cbind(GEOID,ETc_soybean_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1953.csv")
write.csv(cbind(GEOID,ETc_soybean_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1954.csv")
write.csv(cbind(GEOID,ETc_soybean_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1955.csv")
write.csv(cbind(GEOID,ETc_soybean_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1956.csv")
write.csv(cbind(GEOID,ETc_soybean_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1957.csv")
write.csv(cbind(GEOID,ETc_soybean_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1958.csv")
write.csv(cbind(GEOID,ETc_soybean_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1959.csv")
write.csv(cbind(GEOID,ETc_soybean_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1960.csv")
write.csv(cbind(GEOID,ETc_soybean_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1961.csv")
write.csv(cbind(GEOID,ETc_soybean_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1962.csv")
write.csv(cbind(GEOID,ETc_soybean_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1963.csv")
write.csv(cbind(GEOID,ETc_soybean_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1964.csv")
write.csv(cbind(GEOID,ETc_soybean_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1965.csv")
write.csv(cbind(GEOID,ETc_soybean_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1966.csv")
write.csv(cbind(GEOID,ETc_soybean_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1967.csv")
write.csv(cbind(GEOID,ETc_soybean_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1968.csv")
write.csv(cbind(GEOID,ETc_soybean_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1969.csv")
write.csv(cbind(GEOID,ETc_soybean_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1970.csv")
write.csv(cbind(GEOID,ETc_soybean_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1971.csv")
write.csv(cbind(GEOID,ETc_soybean_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1972.csv")
write.csv(cbind(GEOID,ETc_soybean_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1973.csv")
write.csv(cbind(GEOID,ETc_soybean_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1974.csv")
write.csv(cbind(GEOID,ETc_soybean_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1975.csv")
write.csv(cbind(GEOID,ETc_soybean_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1976.csv")
write.csv(cbind(GEOID,ETc_soybean_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1977.csv")
write.csv(cbind(GEOID,ETc_soybean_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1978.csv")
write.csv(cbind(GEOID,ETc_soybean_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1979.csv")
write.csv(cbind(GEOID,ETc_soybean_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1980.csv")
write.csv(cbind(GEOID,ETc_soybean_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1981.csv")
write.csv(cbind(GEOID,ETc_soybean_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1982.csv")
write.csv(cbind(GEOID,ETc_soybean_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1983.csv")
write.csv(cbind(GEOID,ETc_soybean_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1984.csv")
write.csv(cbind(GEOID,ETc_soybean_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1985.csv")
write.csv(cbind(GEOID,ETc_soybean_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1986.csv")
write.csv(cbind(GEOID,ETc_soybean_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1987.csv")
write.csv(cbind(GEOID,ETc_soybean_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1988.csv")
write.csv(cbind(GEOID,ETc_soybean_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1989.csv")
write.csv(cbind(GEOID,ETc_soybean_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1990.csv")
write.csv(cbind(GEOID,ETc_soybean_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1991.csv")
write.csv(cbind(GEOID,ETc_soybean_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1992.csv")
write.csv(cbind(GEOID,ETc_soybean_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1993.csv")
write.csv(cbind(GEOID,ETc_soybean_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1994.csv")
write.csv(cbind(GEOID,ETc_soybean_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1995.csv")
write.csv(cbind(GEOID,ETc_soybean_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1996.csv")
write.csv(cbind(GEOID,ETc_soybean_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1997.csv")
write.csv(cbind(GEOID,ETc_soybean_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1998.csv")
write.csv(cbind(GEOID,ETc_soybean_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_1999.csv")
write.csv(cbind(GEOID,ETc_soybean_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_2000.csv")
write.csv(cbind(GEOID,ETc_soybean_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_2001.csv")
write.csv(cbind(GEOID,ETc_soybean_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_2002.csv")
write.csv(cbind(GEOID,ETc_soybean_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_2003.csv")
write.csv(cbind(GEOID,ETc_soybean_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_2004.csv")
write.csv(cbind(GEOID,ETc_soybean_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_2005.csv")
write.csv(cbind(GEOID,ETc_soybean_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_2006.csv")
write.csv(cbind(GEOID,ETc_soybean_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_2007.csv")
write.csv(cbind(GEOID,ETc_soybean_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_2008.csv")
write.csv(cbind(GEOID,ETc_soybean_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_2009.csv")
write.csv(cbind(GEOID,ETc_soybean_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_2010.csv")
write.csv(cbind(GEOID,ETc_soybean_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_2011.csv")
write.csv(cbind(GEOID,ETc_soybean_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_2012.csv")
write.csv(cbind(GEOID,ETc_soybean_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_soybean_2013.csv")
ETc_strawberries_1950 <- ET0_1950*strawberries_kc_norm
ETc_strawberries_1951 <- ET0_1951*strawberries_kc_norm
ETc_strawberries_1952 <- ET0_1952*strawberries_kc_leap
ETc_strawberries_1953 <- ET0_1953*strawberries_kc_norm
ETc_strawberries_1954 <- ET0_1954*strawberries_kc_norm
ETc_strawberries_1955 <- ET0_1955*strawberries_kc_norm
ETc_strawberries_1956 <- ET0_1956*strawberries_kc_leap
ETc_strawberries_1957 <- ET0_1957*strawberries_kc_norm
ETc_strawberries_1958 <- ET0_1958*strawberries_kc_norm
ETc_strawberries_1959 <- ET0_1959*strawberries_kc_norm
ETc_strawberries_1960 <- ET0_1960*strawberries_kc_leap
ETc_strawberries_1961 <- ET0_1961*strawberries_kc_norm
ETc_strawberries_1962 <- ET0_1962*strawberries_kc_norm
ETc_strawberries_1963 <- ET0_1963*strawberries_kc_norm
ETc_strawberries_1964 <- ET0_1964*strawberries_kc_leap
ETc_strawberries_1965 <- ET0_1965*strawberries_kc_norm
ETc_strawberries_1966 <- ET0_1966*strawberries_kc_norm
ETc_strawberries_1967 <- ET0_1967*strawberries_kc_norm
ETc_strawberries_1968 <- ET0_1968*strawberries_kc_leap
ETc_strawberries_1969 <- ET0_1969*strawberries_kc_norm
ETc_strawberries_1970 <- ET0_1970*strawberries_kc_norm
ETc_strawberries_1971 <- ET0_1971*strawberries_kc_norm
ETc_strawberries_1972 <- ET0_1972*strawberries_kc_leap
ETc_strawberries_1973 <- ET0_1973*strawberries_kc_norm
ETc_strawberries_1974 <- ET0_1974*strawberries_kc_norm
ETc_strawberries_1975 <- ET0_1975*strawberries_kc_norm
ETc_strawberries_1976 <- ET0_1976*strawberries_kc_leap
ETc_strawberries_1977 <- ET0_1977*strawberries_kc_norm
ETc_strawberries_1978 <- ET0_1978*strawberries_kc_norm
ETc_strawberries_1979 <- ET0_1979*strawberries_kc_norm
ETc_strawberries_1980 <- ET0_1980*strawberries_kc_leap
ETc_strawberries_1981 <- ET0_1981*strawberries_kc_norm
ETc_strawberries_1982 <- ET0_1982*strawberries_kc_norm
ETc_strawberries_1983 <- ET0_1983*strawberries_kc_norm
ETc_strawberries_1984 <- ET0_1984*strawberries_kc_leap
ETc_strawberries_1985 <- ET0_1985*strawberries_kc_norm
ETc_strawberries_1986 <- ET0_1986*strawberries_kc_norm
ETc_strawberries_1987 <- ET0_1987*strawberries_kc_norm
ETc_strawberries_1988 <- ET0_1988*strawberries_kc_leap
ETc_strawberries_1989 <- ET0_1989*strawberries_kc_norm
ETc_strawberries_1990 <- ET0_1990*strawberries_kc_norm
ETc_strawberries_1991 <- ET0_1991*strawberries_kc_norm
ETc_strawberries_1992 <- ET0_1992*strawberries_kc_leap
ETc_strawberries_1993 <- ET0_1993*strawberries_kc_norm
ETc_strawberries_1994 <- ET0_1994*strawberries_kc_norm
ETc_strawberries_1995 <- ET0_1995*strawberries_kc_norm
ETc_strawberries_1996 <- ET0_1996*strawberries_kc_leap
ETc_strawberries_1997 <- ET0_1997*strawberries_kc_norm
ETc_strawberries_1998 <- ET0_1998*strawberries_kc_norm
ETc_strawberries_1999 <- ET0_1999*strawberries_kc_norm
ETc_strawberries_2000 <- ET0_2000*strawberries_kc_leap
ETc_strawberries_2001 <- ET0_2001*strawberries_kc_norm
ETc_strawberries_2002 <- ET0_2002*strawberries_kc_norm
ETc_strawberries_2003 <- ET0_2003*strawberries_kc_norm
ETc_strawberries_2004 <- ET0_2004*strawberries_kc_leap
ETc_strawberries_2005 <- ET0_2005*strawberries_kc_norm
ETc_strawberries_2006 <- ET0_2006*strawberries_kc_norm
ETc_strawberries_2007 <- ET0_2007*strawberries_kc_norm
ETc_strawberries_2008 <- ET0_2008*strawberries_kc_leap
ETc_strawberries_2009 <- ET0_2009*strawberries_kc_norm
ETc_strawberries_2010 <- ET0_2010*strawberries_kc_norm
ETc_strawberries_2011 <- ET0_2011*strawberries_kc_norm
ETc_strawberries_2012 <- ET0_2012*strawberries_kc_leap
ETc_strawberries_2013 <- ET0_2013*strawberries_kc_norm
write.csv(cbind(GEOID,ETc_strawberries_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1950.csv")
write.csv(cbind(GEOID,ETc_strawberries_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1951.csv")
write.csv(cbind(GEOID,ETc_strawberries_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1952.csv")
write.csv(cbind(GEOID,ETc_strawberries_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1953.csv")
write.csv(cbind(GEOID,ETc_strawberries_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1954.csv")
write.csv(cbind(GEOID,ETc_strawberries_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1955.csv")
write.csv(cbind(GEOID,ETc_strawberries_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1956.csv")
write.csv(cbind(GEOID,ETc_strawberries_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1957.csv")
write.csv(cbind(GEOID,ETc_strawberries_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1958.csv")
write.csv(cbind(GEOID,ETc_strawberries_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1959.csv")
write.csv(cbind(GEOID,ETc_strawberries_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1960.csv")
write.csv(cbind(GEOID,ETc_strawberries_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1961.csv")
write.csv(cbind(GEOID,ETc_strawberries_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1962.csv")
write.csv(cbind(GEOID,ETc_strawberries_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1963.csv")
write.csv(cbind(GEOID,ETc_strawberries_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1964.csv")
write.csv(cbind(GEOID,ETc_strawberries_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1965.csv")
write.csv(cbind(GEOID,ETc_strawberries_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1966.csv")
write.csv(cbind(GEOID,ETc_strawberries_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1967.csv")
write.csv(cbind(GEOID,ETc_strawberries_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1968.csv")
write.csv(cbind(GEOID,ETc_strawberries_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1969.csv")
write.csv(cbind(GEOID,ETc_strawberries_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1970.csv")
write.csv(cbind(GEOID,ETc_strawberries_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1971.csv")
write.csv(cbind(GEOID,ETc_strawberries_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1972.csv")
write.csv(cbind(GEOID,ETc_strawberries_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1973.csv")
write.csv(cbind(GEOID,ETc_strawberries_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1974.csv")
write.csv(cbind(GEOID,ETc_strawberries_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1975.csv")
write.csv(cbind(GEOID,ETc_strawberries_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1976.csv")
write.csv(cbind(GEOID,ETc_strawberries_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1977.csv")
write.csv(cbind(GEOID,ETc_strawberries_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1978.csv")
write.csv(cbind(GEOID,ETc_strawberries_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1979.csv")
write.csv(cbind(GEOID,ETc_strawberries_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1980.csv")
write.csv(cbind(GEOID,ETc_strawberries_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1981.csv")
write.csv(cbind(GEOID,ETc_strawberries_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1982.csv")
write.csv(cbind(GEOID,ETc_strawberries_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1983.csv")
write.csv(cbind(GEOID,ETc_strawberries_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1984.csv")
write.csv(cbind(GEOID,ETc_strawberries_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1985.csv")
write.csv(cbind(GEOID,ETc_strawberries_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1986.csv")
write.csv(cbind(GEOID,ETc_strawberries_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1987.csv")
write.csv(cbind(GEOID,ETc_strawberries_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1988.csv")
write.csv(cbind(GEOID,ETc_strawberries_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1989.csv")
write.csv(cbind(GEOID,ETc_strawberries_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1990.csv")
write.csv(cbind(GEOID,ETc_strawberries_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1991.csv")
write.csv(cbind(GEOID,ETc_strawberries_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1992.csv")
write.csv(cbind(GEOID,ETc_strawberries_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1993.csv")
write.csv(cbind(GEOID,ETc_strawberries_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1994.csv")
write.csv(cbind(GEOID,ETc_strawberries_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1995.csv")
write.csv(cbind(GEOID,ETc_strawberries_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1996.csv")
write.csv(cbind(GEOID,ETc_strawberries_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1997.csv")
write.csv(cbind(GEOID,ETc_strawberries_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1998.csv")
write.csv(cbind(GEOID,ETc_strawberries_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_1999.csv")
write.csv(cbind(GEOID,ETc_strawberries_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_2000.csv")
write.csv(cbind(GEOID,ETc_strawberries_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_2001.csv")
write.csv(cbind(GEOID,ETc_strawberries_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_2002.csv")
write.csv(cbind(GEOID,ETc_strawberries_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_2003.csv")
write.csv(cbind(GEOID,ETc_strawberries_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_2004.csv")
write.csv(cbind(GEOID,ETc_strawberries_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_2005.csv")
write.csv(cbind(GEOID,ETc_strawberries_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_2006.csv")
write.csv(cbind(GEOID,ETc_strawberries_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_2007.csv")
write.csv(cbind(GEOID,ETc_strawberries_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_2008.csv")
write.csv(cbind(GEOID,ETc_strawberries_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_2009.csv")
write.csv(cbind(GEOID,ETc_strawberries_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_2010.csv")
write.csv(cbind(GEOID,ETc_strawberries_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_2011.csv")
write.csv(cbind(GEOID,ETc_strawberries_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_2012.csv")
write.csv(cbind(GEOID,ETc_strawberries_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_strawberries_2013.csv")
ETc_sweet_potato_1950 <- ET0_1950*sweet_potato_kc_norm
ETc_sweet_potato_1951 <- ET0_1951*sweet_potato_kc_norm
ETc_sweet_potato_1952 <- ET0_1952*sweet_potato_kc_leap
ETc_sweet_potato_1953 <- ET0_1953*sweet_potato_kc_norm
ETc_sweet_potato_1954 <- ET0_1954*sweet_potato_kc_norm
ETc_sweet_potato_1955 <- ET0_1955*sweet_potato_kc_norm
ETc_sweet_potato_1956 <- ET0_1956*sweet_potato_kc_leap
ETc_sweet_potato_1957 <- ET0_1957*sweet_potato_kc_norm
ETc_sweet_potato_1958 <- ET0_1958*sweet_potato_kc_norm
ETc_sweet_potato_1959 <- ET0_1959*sweet_potato_kc_norm
ETc_sweet_potato_1960 <- ET0_1960*sweet_potato_kc_leap
ETc_sweet_potato_1961 <- ET0_1961*sweet_potato_kc_norm
ETc_sweet_potato_1962 <- ET0_1962*sweet_potato_kc_norm
ETc_sweet_potato_1963 <- ET0_1963*sweet_potato_kc_norm
ETc_sweet_potato_1964 <- ET0_1964*sweet_potato_kc_leap
ETc_sweet_potato_1965 <- ET0_1965*sweet_potato_kc_norm
ETc_sweet_potato_1966 <- ET0_1966*sweet_potato_kc_norm
ETc_sweet_potato_1967 <- ET0_1967*sweet_potato_kc_norm
ETc_sweet_potato_1968 <- ET0_1968*sweet_potato_kc_leap
ETc_sweet_potato_1969 <- ET0_1969*sweet_potato_kc_norm
ETc_sweet_potato_1970 <- ET0_1970*sweet_potato_kc_norm
ETc_sweet_potato_1971 <- ET0_1971*sweet_potato_kc_norm
ETc_sweet_potato_1972 <- ET0_1972*sweet_potato_kc_leap
ETc_sweet_potato_1973 <- ET0_1973*sweet_potato_kc_norm
ETc_sweet_potato_1974 <- ET0_1974*sweet_potato_kc_norm
ETc_sweet_potato_1975 <- ET0_1975*sweet_potato_kc_norm
ETc_sweet_potato_1976 <- ET0_1976*sweet_potato_kc_leap
ETc_sweet_potato_1977 <- ET0_1977*sweet_potato_kc_norm
ETc_sweet_potato_1978 <- ET0_1978*sweet_potato_kc_norm
ETc_sweet_potato_1979 <- ET0_1979*sweet_potato_kc_norm
ETc_sweet_potato_1980 <- ET0_1980*sweet_potato_kc_leap
ETc_sweet_potato_1981 <- ET0_1981*sweet_potato_kc_norm
ETc_sweet_potato_1982 <- ET0_1982*sweet_potato_kc_norm
ETc_sweet_potato_1983 <- ET0_1983*sweet_potato_kc_norm
ETc_sweet_potato_1984 <- ET0_1984*sweet_potato_kc_leap
ETc_sweet_potato_1985 <- ET0_1985*sweet_potato_kc_norm
ETc_sweet_potato_1986 <- ET0_1986*sweet_potato_kc_norm
ETc_sweet_potato_1987 <- ET0_1987*sweet_potato_kc_norm
ETc_sweet_potato_1988 <- ET0_1988*sweet_potato_kc_leap
ETc_sweet_potato_1989 <- ET0_1989*sweet_potato_kc_norm
ETc_sweet_potato_1990 <- ET0_1990*sweet_potato_kc_norm
ETc_sweet_potato_1991 <- ET0_1991*sweet_potato_kc_norm
ETc_sweet_potato_1992 <- ET0_1992*sweet_potato_kc_leap
ETc_sweet_potato_1993 <- ET0_1993*sweet_potato_kc_norm
ETc_sweet_potato_1994 <- ET0_1994*sweet_potato_kc_norm
ETc_sweet_potato_1995 <- ET0_1995*sweet_potato_kc_norm
ETc_sweet_potato_1996 <- ET0_1996*sweet_potato_kc_leap
ETc_sweet_potato_1997 <- ET0_1997*sweet_potato_kc_norm
ETc_sweet_potato_1998 <- ET0_1998*sweet_potato_kc_norm
ETc_sweet_potato_1999 <- ET0_1999*sweet_potato_kc_norm
ETc_sweet_potato_2000 <- ET0_2000*sweet_potato_kc_leap
ETc_sweet_potato_2001 <- ET0_2001*sweet_potato_kc_norm
ETc_sweet_potato_2002 <- ET0_2002*sweet_potato_kc_norm
ETc_sweet_potato_2003 <- ET0_2003*sweet_potato_kc_norm
ETc_sweet_potato_2004 <- ET0_2004*sweet_potato_kc_leap
ETc_sweet_potato_2005 <- ET0_2005*sweet_potato_kc_norm
ETc_sweet_potato_2006 <- ET0_2006*sweet_potato_kc_norm
ETc_sweet_potato_2007 <- ET0_2007*sweet_potato_kc_norm
ETc_sweet_potato_2008 <- ET0_2008*sweet_potato_kc_leap
ETc_sweet_potato_2009 <- ET0_2009*sweet_potato_kc_norm
ETc_sweet_potato_2010 <- ET0_2010*sweet_potato_kc_norm
ETc_sweet_potato_2011 <- ET0_2011*sweet_potato_kc_norm
ETc_sweet_potato_2012 <- ET0_2012*sweet_potato_kc_leap
ETc_sweet_potato_2013 <- ET0_2013*sweet_potato_kc_norm
write.csv(cbind(GEOID,ETc_sweet_potato_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1950.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1951.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1952.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1953.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1954.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1955.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1956.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1957.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1958.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1959.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1960.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1961.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1962.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1963.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1964.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1965.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1966.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1967.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1968.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1969.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1970.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1971.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1972.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1973.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1974.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1975.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1976.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1977.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1978.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1979.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1980.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1981.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1982.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1983.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1984.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1985.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1986.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1987.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1988.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1989.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1990.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1991.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1992.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1993.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1994.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1995.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1996.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1997.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1998.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_1999.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_2000.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_2001.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_2002.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_2003.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_2004.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_2005.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_2006.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_2007.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_2008.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_2009.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_2010.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_2011.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_2012.csv")
write.csv(cbind(GEOID,ETc_sweet_potato_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweet_potato_2013.csv")
ETc_tomatoes_1950 <- ET0_1950*tomatoes_kc_norm
ETc_tomatoes_1951 <- ET0_1951*tomatoes_kc_norm
ETc_tomatoes_1952 <- ET0_1952*tomatoes_kc_leap
ETc_tomatoes_1953 <- ET0_1953*tomatoes_kc_norm
ETc_tomatoes_1954 <- ET0_1954*tomatoes_kc_norm
ETc_tomatoes_1955 <- ET0_1955*tomatoes_kc_norm
ETc_tomatoes_1956 <- ET0_1956*tomatoes_kc_leap
ETc_tomatoes_1957 <- ET0_1957*tomatoes_kc_norm
ETc_tomatoes_1958 <- ET0_1958*tomatoes_kc_norm
ETc_tomatoes_1959 <- ET0_1959*tomatoes_kc_norm
ETc_tomatoes_1960 <- ET0_1960*tomatoes_kc_leap
ETc_tomatoes_1961 <- ET0_1961*tomatoes_kc_norm
ETc_tomatoes_1962 <- ET0_1962*tomatoes_kc_norm
ETc_tomatoes_1963 <- ET0_1963*tomatoes_kc_norm
ETc_tomatoes_1964 <- ET0_1964*tomatoes_kc_leap
ETc_tomatoes_1965 <- ET0_1965*tomatoes_kc_norm
ETc_tomatoes_1966 <- ET0_1966*tomatoes_kc_norm
ETc_tomatoes_1967 <- ET0_1967*tomatoes_kc_norm
ETc_tomatoes_1968 <- ET0_1968*tomatoes_kc_leap
ETc_tomatoes_1969 <- ET0_1969*tomatoes_kc_norm
ETc_tomatoes_1970 <- ET0_1970*tomatoes_kc_norm
ETc_tomatoes_1971 <- ET0_1971*tomatoes_kc_norm
ETc_tomatoes_1972 <- ET0_1972*tomatoes_kc_leap
ETc_tomatoes_1973 <- ET0_1973*tomatoes_kc_norm
ETc_tomatoes_1974 <- ET0_1974*tomatoes_kc_norm
ETc_tomatoes_1975 <- ET0_1975*tomatoes_kc_norm
ETc_tomatoes_1976 <- ET0_1976*tomatoes_kc_leap
ETc_tomatoes_1977 <- ET0_1977*tomatoes_kc_norm
ETc_tomatoes_1978 <- ET0_1978*tomatoes_kc_norm
ETc_tomatoes_1979 <- ET0_1979*tomatoes_kc_norm
ETc_tomatoes_1980 <- ET0_1980*tomatoes_kc_leap
ETc_tomatoes_1981 <- ET0_1981*tomatoes_kc_norm
ETc_tomatoes_1982 <- ET0_1982*tomatoes_kc_norm
ETc_tomatoes_1983 <- ET0_1983*tomatoes_kc_norm
ETc_tomatoes_1984 <- ET0_1984*tomatoes_kc_leap
ETc_tomatoes_1985 <- ET0_1985*tomatoes_kc_norm
ETc_tomatoes_1986 <- ET0_1986*tomatoes_kc_norm
ETc_tomatoes_1987 <- ET0_1987*tomatoes_kc_norm
ETc_tomatoes_1988 <- ET0_1988*tomatoes_kc_leap
ETc_tomatoes_1989 <- ET0_1989*tomatoes_kc_norm
ETc_tomatoes_1990 <- ET0_1990*tomatoes_kc_norm
ETc_tomatoes_1991 <- ET0_1991*tomatoes_kc_norm
ETc_tomatoes_1992 <- ET0_1992*tomatoes_kc_leap
ETc_tomatoes_1993 <- ET0_1993*tomatoes_kc_norm
ETc_tomatoes_1994 <- ET0_1994*tomatoes_kc_norm
ETc_tomatoes_1995 <- ET0_1995*tomatoes_kc_norm
ETc_tomatoes_1996 <- ET0_1996*tomatoes_kc_leap
ETc_tomatoes_1997 <- ET0_1997*tomatoes_kc_norm
ETc_tomatoes_1998 <- ET0_1998*tomatoes_kc_norm
ETc_tomatoes_1999 <- ET0_1999*tomatoes_kc_norm
ETc_tomatoes_2000 <- ET0_2000*tomatoes_kc_leap
ETc_tomatoes_2001 <- ET0_2001*tomatoes_kc_norm
ETc_tomatoes_2002 <- ET0_2002*tomatoes_kc_norm
ETc_tomatoes_2003 <- ET0_2003*tomatoes_kc_norm
ETc_tomatoes_2004 <- ET0_2004*tomatoes_kc_leap
ETc_tomatoes_2005 <- ET0_2005*tomatoes_kc_norm
ETc_tomatoes_2006 <- ET0_2006*tomatoes_kc_norm
ETc_tomatoes_2007 <- ET0_2007*tomatoes_kc_norm
ETc_tomatoes_2008 <- ET0_2008*tomatoes_kc_leap
ETc_tomatoes_2009 <- ET0_2009*tomatoes_kc_norm
ETc_tomatoes_2010 <- ET0_2010*tomatoes_kc_norm
ETc_tomatoes_2011 <- ET0_2011*tomatoes_kc_norm
ETc_tomatoes_2012 <- ET0_2012*tomatoes_kc_leap
ETc_tomatoes_2013 <- ET0_2013*tomatoes_kc_norm
write.csv(cbind(GEOID,ETc_tomatoes_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1950.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1951.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1952.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1953.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1954.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1955.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1956.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1957.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1958.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1959.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1960.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1961.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1962.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1963.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1964.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1965.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1966.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1967.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1968.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1969.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1970.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1971.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1972.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1973.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1974.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1975.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1976.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1977.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1978.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1979.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1980.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1981.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1982.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1983.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1984.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1985.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1986.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1987.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1988.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1989.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1990.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1991.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1992.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1993.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1994.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1995.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1996.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1997.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1998.csv")
write.csv(cbind(GEOID,ETc_tomatoes_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_1999.csv")
write.csv(cbind(GEOID,ETc_tomatoes_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_2000.csv")
write.csv(cbind(GEOID,ETc_tomatoes_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_2001.csv")
write.csv(cbind(GEOID,ETc_tomatoes_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_2002.csv")
write.csv(cbind(GEOID,ETc_tomatoes_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_2003.csv")
write.csv(cbind(GEOID,ETc_tomatoes_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_2004.csv")
write.csv(cbind(GEOID,ETc_tomatoes_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_2005.csv")
write.csv(cbind(GEOID,ETc_tomatoes_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_2006.csv")
write.csv(cbind(GEOID,ETc_tomatoes_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_2007.csv")
write.csv(cbind(GEOID,ETc_tomatoes_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_2008.csv")
write.csv(cbind(GEOID,ETc_tomatoes_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_2009.csv")
write.csv(cbind(GEOID,ETc_tomatoes_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_2010.csv")
write.csv(cbind(GEOID,ETc_tomatoes_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_2011.csv")
write.csv(cbind(GEOID,ETc_tomatoes_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_2012.csv")
write.csv(cbind(GEOID,ETc_tomatoes_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tomatoes_2013.csv")
ETc_watermelon_1950 <- ET0_1950*watermelon_kc_norm
ETc_watermelon_1951 <- ET0_1951*watermelon_kc_norm
ETc_watermelon_1952 <- ET0_1952*watermelon_kc_leap
ETc_watermelon_1953 <- ET0_1953*watermelon_kc_norm
ETc_watermelon_1954 <- ET0_1954*watermelon_kc_norm
ETc_watermelon_1955 <- ET0_1955*watermelon_kc_norm
ETc_watermelon_1956 <- ET0_1956*watermelon_kc_leap
ETc_watermelon_1957 <- ET0_1957*watermelon_kc_norm
ETc_watermelon_1958 <- ET0_1958*watermelon_kc_norm
ETc_watermelon_1959 <- ET0_1959*watermelon_kc_norm
ETc_watermelon_1960 <- ET0_1960*watermelon_kc_leap
ETc_watermelon_1961 <- ET0_1961*watermelon_kc_norm
ETc_watermelon_1962 <- ET0_1962*watermelon_kc_norm
ETc_watermelon_1963 <- ET0_1963*watermelon_kc_norm
ETc_watermelon_1964 <- ET0_1964*watermelon_kc_leap
ETc_watermelon_1965 <- ET0_1965*watermelon_kc_norm
ETc_watermelon_1966 <- ET0_1966*watermelon_kc_norm
ETc_watermelon_1967 <- ET0_1967*watermelon_kc_norm
ETc_watermelon_1968 <- ET0_1968*watermelon_kc_leap
ETc_watermelon_1969 <- ET0_1969*watermelon_kc_norm
ETc_watermelon_1970 <- ET0_1970*watermelon_kc_norm
ETc_watermelon_1971 <- ET0_1971*watermelon_kc_norm
ETc_watermelon_1972 <- ET0_1972*watermelon_kc_leap
ETc_watermelon_1973 <- ET0_1973*watermelon_kc_norm
ETc_watermelon_1974 <- ET0_1974*watermelon_kc_norm
ETc_watermelon_1975 <- ET0_1975*watermelon_kc_norm
ETc_watermelon_1976 <- ET0_1976*watermelon_kc_leap
ETc_watermelon_1977 <- ET0_1977*watermelon_kc_norm
ETc_watermelon_1978 <- ET0_1978*watermelon_kc_norm
ETc_watermelon_1979 <- ET0_1979*watermelon_kc_norm
ETc_watermelon_1980 <- ET0_1980*watermelon_kc_leap
ETc_watermelon_1981 <- ET0_1981*watermelon_kc_norm
ETc_watermelon_1982 <- ET0_1982*watermelon_kc_norm
ETc_watermelon_1983 <- ET0_1983*watermelon_kc_norm
ETc_watermelon_1984 <- ET0_1984*watermelon_kc_leap
ETc_watermelon_1985 <- ET0_1985*watermelon_kc_norm
ETc_watermelon_1986 <- ET0_1986*watermelon_kc_norm
ETc_watermelon_1987 <- ET0_1987*watermelon_kc_norm
ETc_watermelon_1988 <- ET0_1988*watermelon_kc_leap
ETc_watermelon_1989 <- ET0_1989*watermelon_kc_norm
ETc_watermelon_1990 <- ET0_1990*watermelon_kc_norm
ETc_watermelon_1991 <- ET0_1991*watermelon_kc_norm
ETc_watermelon_1992 <- ET0_1992*watermelon_kc_leap
ETc_watermelon_1993 <- ET0_1993*watermelon_kc_norm
ETc_watermelon_1994 <- ET0_1994*watermelon_kc_norm
ETc_watermelon_1995 <- ET0_1995*watermelon_kc_norm
ETc_watermelon_1996 <- ET0_1996*watermelon_kc_leap
ETc_watermelon_1997 <- ET0_1997*watermelon_kc_norm
ETc_watermelon_1998 <- ET0_1998*watermelon_kc_norm
ETc_watermelon_1999 <- ET0_1999*watermelon_kc_norm
ETc_watermelon_2000 <- ET0_2000*watermelon_kc_leap
ETc_watermelon_2001 <- ET0_2001*watermelon_kc_norm
ETc_watermelon_2002 <- ET0_2002*watermelon_kc_norm
ETc_watermelon_2003 <- ET0_2003*watermelon_kc_norm
ETc_watermelon_2004 <- ET0_2004*watermelon_kc_leap
ETc_watermelon_2005 <- ET0_2005*watermelon_kc_norm
ETc_watermelon_2006 <- ET0_2006*watermelon_kc_norm
ETc_watermelon_2007 <- ET0_2007*watermelon_kc_norm
ETc_watermelon_2008 <- ET0_2008*watermelon_kc_leap
ETc_watermelon_2009 <- ET0_2009*watermelon_kc_norm
ETc_watermelon_2010 <- ET0_2010*watermelon_kc_norm
ETc_watermelon_2011 <- ET0_2011*watermelon_kc_norm
ETc_watermelon_2012 <- ET0_2012*watermelon_kc_leap
ETc_watermelon_2013 <- ET0_2013*watermelon_kc_norm
write.csv(cbind(GEOID,ETc_watermelon_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1950.csv")
write.csv(cbind(GEOID,ETc_watermelon_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1951.csv")
write.csv(cbind(GEOID,ETc_watermelon_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1952.csv")
write.csv(cbind(GEOID,ETc_watermelon_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1953.csv")
write.csv(cbind(GEOID,ETc_watermelon_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1954.csv")
write.csv(cbind(GEOID,ETc_watermelon_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1955.csv")
write.csv(cbind(GEOID,ETc_watermelon_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1956.csv")
write.csv(cbind(GEOID,ETc_watermelon_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1957.csv")
write.csv(cbind(GEOID,ETc_watermelon_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1958.csv")
write.csv(cbind(GEOID,ETc_watermelon_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1959.csv")
write.csv(cbind(GEOID,ETc_watermelon_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1960.csv")
write.csv(cbind(GEOID,ETc_watermelon_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1961.csv")
write.csv(cbind(GEOID,ETc_watermelon_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1962.csv")
write.csv(cbind(GEOID,ETc_watermelon_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1963.csv")
write.csv(cbind(GEOID,ETc_watermelon_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1964.csv")
write.csv(cbind(GEOID,ETc_watermelon_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1965.csv")
write.csv(cbind(GEOID,ETc_watermelon_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1966.csv")
write.csv(cbind(GEOID,ETc_watermelon_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1967.csv")
write.csv(cbind(GEOID,ETc_watermelon_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1968.csv")
write.csv(cbind(GEOID,ETc_watermelon_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1969.csv")
write.csv(cbind(GEOID,ETc_watermelon_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1970.csv")
write.csv(cbind(GEOID,ETc_watermelon_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1971.csv")
write.csv(cbind(GEOID,ETc_watermelon_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1972.csv")
write.csv(cbind(GEOID,ETc_watermelon_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1973.csv")
write.csv(cbind(GEOID,ETc_watermelon_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1974.csv")
write.csv(cbind(GEOID,ETc_watermelon_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1975.csv")
write.csv(cbind(GEOID,ETc_watermelon_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1976.csv")
write.csv(cbind(GEOID,ETc_watermelon_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1977.csv")
write.csv(cbind(GEOID,ETc_watermelon_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1978.csv")
write.csv(cbind(GEOID,ETc_watermelon_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1979.csv")
write.csv(cbind(GEOID,ETc_watermelon_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1980.csv")
write.csv(cbind(GEOID,ETc_watermelon_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1981.csv")
write.csv(cbind(GEOID,ETc_watermelon_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1982.csv")
write.csv(cbind(GEOID,ETc_watermelon_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1983.csv")
write.csv(cbind(GEOID,ETc_watermelon_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1984.csv")
write.csv(cbind(GEOID,ETc_watermelon_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1985.csv")
write.csv(cbind(GEOID,ETc_watermelon_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1986.csv")
write.csv(cbind(GEOID,ETc_watermelon_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1987.csv")
write.csv(cbind(GEOID,ETc_watermelon_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1988.csv")
write.csv(cbind(GEOID,ETc_watermelon_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1989.csv")
write.csv(cbind(GEOID,ETc_watermelon_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1990.csv")
write.csv(cbind(GEOID,ETc_watermelon_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1991.csv")
write.csv(cbind(GEOID,ETc_watermelon_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1992.csv")
write.csv(cbind(GEOID,ETc_watermelon_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1993.csv")
write.csv(cbind(GEOID,ETc_watermelon_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1994.csv")
write.csv(cbind(GEOID,ETc_watermelon_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1995.csv")
write.csv(cbind(GEOID,ETc_watermelon_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1996.csv")
write.csv(cbind(GEOID,ETc_watermelon_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1997.csv")
write.csv(cbind(GEOID,ETc_watermelon_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1998.csv")
write.csv(cbind(GEOID,ETc_watermelon_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_1999.csv")
write.csv(cbind(GEOID,ETc_watermelon_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_2000.csv")
write.csv(cbind(GEOID,ETc_watermelon_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_2001.csv")
write.csv(cbind(GEOID,ETc_watermelon_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_2002.csv")
write.csv(cbind(GEOID,ETc_watermelon_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_2003.csv")
write.csv(cbind(GEOID,ETc_watermelon_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_2004.csv")
write.csv(cbind(GEOID,ETc_watermelon_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_2005.csv")
write.csv(cbind(GEOID,ETc_watermelon_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_2006.csv")
write.csv(cbind(GEOID,ETc_watermelon_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_2007.csv")
write.csv(cbind(GEOID,ETc_watermelon_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_2008.csv")
write.csv(cbind(GEOID,ETc_watermelon_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_2009.csv")
write.csv(cbind(GEOID,ETc_watermelon_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_2010.csv")
write.csv(cbind(GEOID,ETc_watermelon_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_2011.csv")
write.csv(cbind(GEOID,ETc_watermelon_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_2012.csv")
write.csv(cbind(GEOID,ETc_watermelon_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_watermelon_2013.csv")
ETc_wheat_1950 <- ET0_1950*wheat_kc_norm
ETc_wheat_1951 <- ET0_1951*wheat_kc_norm
ETc_wheat_1952 <- ET0_1952*wheat_kc_leap
ETc_wheat_1953 <- ET0_1953*wheat_kc_norm
ETc_wheat_1954 <- ET0_1954*wheat_kc_norm
ETc_wheat_1955 <- ET0_1955*wheat_kc_norm
ETc_wheat_1956 <- ET0_1956*wheat_kc_leap
ETc_wheat_1957 <- ET0_1957*wheat_kc_norm
ETc_wheat_1958 <- ET0_1958*wheat_kc_norm
ETc_wheat_1959 <- ET0_1959*wheat_kc_norm
ETc_wheat_1960 <- ET0_1960*wheat_kc_leap
ETc_wheat_1961 <- ET0_1961*wheat_kc_norm
ETc_wheat_1962 <- ET0_1962*wheat_kc_norm
ETc_wheat_1963 <- ET0_1963*wheat_kc_norm
ETc_wheat_1964 <- ET0_1964*wheat_kc_leap
ETc_wheat_1965 <- ET0_1965*wheat_kc_norm
ETc_wheat_1966 <- ET0_1966*wheat_kc_norm
ETc_wheat_1967 <- ET0_1967*wheat_kc_norm
ETc_wheat_1968 <- ET0_1968*wheat_kc_leap
ETc_wheat_1969 <- ET0_1969*wheat_kc_norm
ETc_wheat_1970 <- ET0_1970*wheat_kc_norm
ETc_wheat_1971 <- ET0_1971*wheat_kc_norm
ETc_wheat_1972 <- ET0_1972*wheat_kc_leap
ETc_wheat_1973 <- ET0_1973*wheat_kc_norm
ETc_wheat_1974 <- ET0_1974*wheat_kc_norm
ETc_wheat_1975 <- ET0_1975*wheat_kc_norm
ETc_wheat_1976 <- ET0_1976*wheat_kc_leap
ETc_wheat_1977 <- ET0_1977*wheat_kc_norm
ETc_wheat_1978 <- ET0_1978*wheat_kc_norm
ETc_wheat_1979 <- ET0_1979*wheat_kc_norm
ETc_wheat_1980 <- ET0_1980*wheat_kc_leap
ETc_wheat_1981 <- ET0_1981*wheat_kc_norm
ETc_wheat_1982 <- ET0_1982*wheat_kc_norm
ETc_wheat_1983 <- ET0_1983*wheat_kc_norm
ETc_wheat_1984 <- ET0_1984*wheat_kc_leap
ETc_wheat_1985 <- ET0_1985*wheat_kc_norm
ETc_wheat_1986 <- ET0_1986*wheat_kc_norm
ETc_wheat_1987 <- ET0_1987*wheat_kc_norm
ETc_wheat_1988 <- ET0_1988*wheat_kc_leap
ETc_wheat_1989 <- ET0_1989*wheat_kc_norm
ETc_wheat_1990 <- ET0_1990*wheat_kc_norm
ETc_wheat_1991 <- ET0_1991*wheat_kc_norm
ETc_wheat_1992 <- ET0_1992*wheat_kc_leap
ETc_wheat_1993 <- ET0_1993*wheat_kc_norm
ETc_wheat_1994 <- ET0_1994*wheat_kc_norm
ETc_wheat_1995 <- ET0_1995*wheat_kc_norm
ETc_wheat_1996 <- ET0_1996*wheat_kc_leap
ETc_wheat_1997 <- ET0_1997*wheat_kc_norm
ETc_wheat_1998 <- ET0_1998*wheat_kc_norm
ETc_wheat_1999 <- ET0_1999*wheat_kc_norm
ETc_wheat_2000 <- ET0_2000*wheat_kc_leap
ETc_wheat_2001 <- ET0_2001*wheat_kc_norm
ETc_wheat_2002 <- ET0_2002*wheat_kc_norm
ETc_wheat_2003 <- ET0_2003*wheat_kc_norm
ETc_wheat_2004 <- ET0_2004*wheat_kc_leap
ETc_wheat_2005 <- ET0_2005*wheat_kc_norm
ETc_wheat_2006 <- ET0_2006*wheat_kc_norm
ETc_wheat_2007 <- ET0_2007*wheat_kc_norm
ETc_wheat_2008 <- ET0_2008*wheat_kc_leap
ETc_wheat_2009 <- ET0_2009*wheat_kc_norm
ETc_wheat_2010 <- ET0_2010*wheat_kc_norm
ETc_wheat_2011 <- ET0_2011*wheat_kc_norm
ETc_wheat_2012 <- ET0_2012*wheat_kc_leap
ETc_wheat_2013 <- ET0_2013*wheat_kc_norm
write.csv(cbind(GEOID,ETc_wheat_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1950.csv")
write.csv(cbind(GEOID,ETc_wheat_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1951.csv")
write.csv(cbind(GEOID,ETc_wheat_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1952.csv")
write.csv(cbind(GEOID,ETc_wheat_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1953.csv")
write.csv(cbind(GEOID,ETc_wheat_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1954.csv")
write.csv(cbind(GEOID,ETc_wheat_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1955.csv")
write.csv(cbind(GEOID,ETc_wheat_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1956.csv")
write.csv(cbind(GEOID,ETc_wheat_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1957.csv")
write.csv(cbind(GEOID,ETc_wheat_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1958.csv")
write.csv(cbind(GEOID,ETc_wheat_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1959.csv")
write.csv(cbind(GEOID,ETc_wheat_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1960.csv")
write.csv(cbind(GEOID,ETc_wheat_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1961.csv")
write.csv(cbind(GEOID,ETc_wheat_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1962.csv")
write.csv(cbind(GEOID,ETc_wheat_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1963.csv")
write.csv(cbind(GEOID,ETc_wheat_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1964.csv")
write.csv(cbind(GEOID,ETc_wheat_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1965.csv")
write.csv(cbind(GEOID,ETc_wheat_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1966.csv")
write.csv(cbind(GEOID,ETc_wheat_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1967.csv")
write.csv(cbind(GEOID,ETc_wheat_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1968.csv")
write.csv(cbind(GEOID,ETc_wheat_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1969.csv")
write.csv(cbind(GEOID,ETc_wheat_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1970.csv")
write.csv(cbind(GEOID,ETc_wheat_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1971.csv")
write.csv(cbind(GEOID,ETc_wheat_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1972.csv")
write.csv(cbind(GEOID,ETc_wheat_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1973.csv")
write.csv(cbind(GEOID,ETc_wheat_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1974.csv")
write.csv(cbind(GEOID,ETc_wheat_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1975.csv")
write.csv(cbind(GEOID,ETc_wheat_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1976.csv")
write.csv(cbind(GEOID,ETc_wheat_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1977.csv")
write.csv(cbind(GEOID,ETc_wheat_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1978.csv")
write.csv(cbind(GEOID,ETc_wheat_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1979.csv")
write.csv(cbind(GEOID,ETc_wheat_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1980.csv")
write.csv(cbind(GEOID,ETc_wheat_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1981.csv")
write.csv(cbind(GEOID,ETc_wheat_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1982.csv")
write.csv(cbind(GEOID,ETc_wheat_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1983.csv")
write.csv(cbind(GEOID,ETc_wheat_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1984.csv")
write.csv(cbind(GEOID,ETc_wheat_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1985.csv")
write.csv(cbind(GEOID,ETc_wheat_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1986.csv")
write.csv(cbind(GEOID,ETc_wheat_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1987.csv")
write.csv(cbind(GEOID,ETc_wheat_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1988.csv")
write.csv(cbind(GEOID,ETc_wheat_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1989.csv")
write.csv(cbind(GEOID,ETc_wheat_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1990.csv")
write.csv(cbind(GEOID,ETc_wheat_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1991.csv")
write.csv(cbind(GEOID,ETc_wheat_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1992.csv")
write.csv(cbind(GEOID,ETc_wheat_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1993.csv")
write.csv(cbind(GEOID,ETc_wheat_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1994.csv")
write.csv(cbind(GEOID,ETc_wheat_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1995.csv")
write.csv(cbind(GEOID,ETc_wheat_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1996.csv")
write.csv(cbind(GEOID,ETc_wheat_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1997.csv")
write.csv(cbind(GEOID,ETc_wheat_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1998.csv")
write.csv(cbind(GEOID,ETc_wheat_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_1999.csv")
write.csv(cbind(GEOID,ETc_wheat_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_2000.csv")
write.csv(cbind(GEOID,ETc_wheat_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_2001.csv")
write.csv(cbind(GEOID,ETc_wheat_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_2002.csv")
write.csv(cbind(GEOID,ETc_wheat_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_2003.csv")
write.csv(cbind(GEOID,ETc_wheat_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_2004.csv")
write.csv(cbind(GEOID,ETc_wheat_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_2005.csv")
write.csv(cbind(GEOID,ETc_wheat_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_2006.csv")
write.csv(cbind(GEOID,ETc_wheat_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_2007.csv")
write.csv(cbind(GEOID,ETc_wheat_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_2008.csv")
write.csv(cbind(GEOID,ETc_wheat_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_2009.csv")
write.csv(cbind(GEOID,ETc_wheat_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_2010.csv")
write.csv(cbind(GEOID,ETc_wheat_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_2011.csv")
write.csv(cbind(GEOID,ETc_wheat_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_2012.csv")
write.csv(cbind(GEOID,ETc_wheat_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_wheat_2013.csv")
ETc_apples_1950 <- ET0_1950*apples_kc_norm
ETc_apples_1951 <- ET0_1951*apples_kc_norm
ETc_apples_1952 <- ET0_1952*apples_kc_leap
ETc_apples_1953 <- ET0_1953*apples_kc_norm
ETc_apples_1954 <- ET0_1954*apples_kc_norm
ETc_apples_1955 <- ET0_1955*apples_kc_norm
ETc_apples_1956 <- ET0_1956*apples_kc_leap
ETc_apples_1957 <- ET0_1957*apples_kc_norm
ETc_apples_1958 <- ET0_1958*apples_kc_norm
ETc_apples_1959 <- ET0_1959*apples_kc_norm
ETc_apples_1960 <- ET0_1960*apples_kc_leap
ETc_apples_1961 <- ET0_1961*apples_kc_norm
ETc_apples_1962 <- ET0_1962*apples_kc_norm
ETc_apples_1963 <- ET0_1963*apples_kc_norm
ETc_apples_1964 <- ET0_1964*apples_kc_leap
ETc_apples_1965 <- ET0_1965*apples_kc_norm
ETc_apples_1966 <- ET0_1966*apples_kc_norm
ETc_apples_1967 <- ET0_1967*apples_kc_norm
ETc_apples_1968 <- ET0_1968*apples_kc_leap
ETc_apples_1969 <- ET0_1969*apples_kc_norm
ETc_apples_1970 <- ET0_1970*apples_kc_norm
ETc_apples_1971 <- ET0_1971*apples_kc_norm
ETc_apples_1972 <- ET0_1972*apples_kc_leap
ETc_apples_1973 <- ET0_1973*apples_kc_norm
ETc_apples_1974 <- ET0_1974*apples_kc_norm
ETc_apples_1975 <- ET0_1975*apples_kc_norm
ETc_apples_1976 <- ET0_1976*apples_kc_leap
ETc_apples_1977 <- ET0_1977*apples_kc_norm
ETc_apples_1978 <- ET0_1978*apples_kc_norm
ETc_apples_1979 <- ET0_1979*apples_kc_norm
ETc_apples_1980 <- ET0_1980*apples_kc_leap
ETc_apples_1981 <- ET0_1981*apples_kc_norm
ETc_apples_1982 <- ET0_1982*apples_kc_norm
ETc_apples_1983 <- ET0_1983*apples_kc_norm
ETc_apples_1984 <- ET0_1984*apples_kc_leap
ETc_apples_1985 <- ET0_1985*apples_kc_norm
ETc_apples_1986 <- ET0_1986*apples_kc_norm
ETc_apples_1987 <- ET0_1987*apples_kc_norm
ETc_apples_1988 <- ET0_1988*apples_kc_leap
ETc_apples_1989 <- ET0_1989*apples_kc_norm
ETc_apples_1990 <- ET0_1990*apples_kc_norm
ETc_apples_1991 <- ET0_1991*apples_kc_norm
ETc_apples_1992 <- ET0_1992*apples_kc_leap
ETc_apples_1993 <- ET0_1993*apples_kc_norm
ETc_apples_1994 <- ET0_1994*apples_kc_norm
ETc_apples_1995 <- ET0_1995*apples_kc_norm
ETc_apples_1996 <- ET0_1996*apples_kc_leap
ETc_apples_1997 <- ET0_1997*apples_kc_norm
ETc_apples_1998 <- ET0_1998*apples_kc_norm
ETc_apples_1999 <- ET0_1999*apples_kc_norm
ETc_apples_2000 <- ET0_2000*apples_kc_leap
ETc_apples_2001 <- ET0_2001*apples_kc_norm
ETc_apples_2002 <- ET0_2002*apples_kc_norm
ETc_apples_2003 <- ET0_2003*apples_kc_norm
ETc_apples_2004 <- ET0_2004*apples_kc_leap
ETc_apples_2005 <- ET0_2005*apples_kc_norm
ETc_apples_2006 <- ET0_2006*apples_kc_norm
ETc_apples_2007 <- ET0_2007*apples_kc_norm
ETc_apples_2008 <- ET0_2008*apples_kc_leap
ETc_apples_2009 <- ET0_2009*apples_kc_norm
ETc_apples_2010 <- ET0_2010*apples_kc_norm
ETc_apples_2011 <- ET0_2011*apples_kc_norm
ETc_apples_2012 <- ET0_2012*apples_kc_leap
ETc_apples_2013 <- ET0_2013*apples_kc_norm
write.csv(cbind(GEOID,ETc_apples_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1950.csv")
write.csv(cbind(GEOID,ETc_apples_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1951.csv")
write.csv(cbind(GEOID,ETc_apples_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1952.csv")
write.csv(cbind(GEOID,ETc_apples_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1953.csv")
write.csv(cbind(GEOID,ETc_apples_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1954.csv")
write.csv(cbind(GEOID,ETc_apples_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1955.csv")
write.csv(cbind(GEOID,ETc_apples_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1956.csv")
write.csv(cbind(GEOID,ETc_apples_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1957.csv")
write.csv(cbind(GEOID,ETc_apples_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1958.csv")
write.csv(cbind(GEOID,ETc_apples_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1959.csv")
write.csv(cbind(GEOID,ETc_apples_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1960.csv")
write.csv(cbind(GEOID,ETc_apples_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1961.csv")
write.csv(cbind(GEOID,ETc_apples_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1962.csv")
write.csv(cbind(GEOID,ETc_apples_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1963.csv")
write.csv(cbind(GEOID,ETc_apples_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1964.csv")
write.csv(cbind(GEOID,ETc_apples_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1965.csv")
write.csv(cbind(GEOID,ETc_apples_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1966.csv")
write.csv(cbind(GEOID,ETc_apples_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1967.csv")
write.csv(cbind(GEOID,ETc_apples_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1968.csv")
write.csv(cbind(GEOID,ETc_apples_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1969.csv")
write.csv(cbind(GEOID,ETc_apples_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1970.csv")
write.csv(cbind(GEOID,ETc_apples_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1971.csv")
write.csv(cbind(GEOID,ETc_apples_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1972.csv")
write.csv(cbind(GEOID,ETc_apples_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1973.csv")
write.csv(cbind(GEOID,ETc_apples_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1974.csv")
write.csv(cbind(GEOID,ETc_apples_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1975.csv")
write.csv(cbind(GEOID,ETc_apples_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1976.csv")
write.csv(cbind(GEOID,ETc_apples_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1977.csv")
write.csv(cbind(GEOID,ETc_apples_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1978.csv")
write.csv(cbind(GEOID,ETc_apples_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1979.csv")
write.csv(cbind(GEOID,ETc_apples_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1980.csv")
write.csv(cbind(GEOID,ETc_apples_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1981.csv")
write.csv(cbind(GEOID,ETc_apples_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1982.csv")
write.csv(cbind(GEOID,ETc_apples_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1983.csv")
write.csv(cbind(GEOID,ETc_apples_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1984.csv")
write.csv(cbind(GEOID,ETc_apples_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1985.csv")
write.csv(cbind(GEOID,ETc_apples_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1986.csv")
write.csv(cbind(GEOID,ETc_apples_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1987.csv")
write.csv(cbind(GEOID,ETc_apples_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1988.csv")
write.csv(cbind(GEOID,ETc_apples_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1989.csv")
write.csv(cbind(GEOID,ETc_apples_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1990.csv")
write.csv(cbind(GEOID,ETc_apples_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1991.csv")
write.csv(cbind(GEOID,ETc_apples_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1992.csv")
write.csv(cbind(GEOID,ETc_apples_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1993.csv")
write.csv(cbind(GEOID,ETc_apples_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1994.csv")
write.csv(cbind(GEOID,ETc_apples_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1995.csv")
write.csv(cbind(GEOID,ETc_apples_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1996.csv")
write.csv(cbind(GEOID,ETc_apples_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1997.csv")
write.csv(cbind(GEOID,ETc_apples_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1998.csv")
write.csv(cbind(GEOID,ETc_apples_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_1999.csv")
write.csv(cbind(GEOID,ETc_apples_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_2000.csv")
write.csv(cbind(GEOID,ETc_apples_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_2001.csv")
write.csv(cbind(GEOID,ETc_apples_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_2002.csv")
write.csv(cbind(GEOID,ETc_apples_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_2003.csv")
write.csv(cbind(GEOID,ETc_apples_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_2004.csv")
write.csv(cbind(GEOID,ETc_apples_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_2005.csv")
write.csv(cbind(GEOID,ETc_apples_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_2006.csv")
write.csv(cbind(GEOID,ETc_apples_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_2007.csv")
write.csv(cbind(GEOID,ETc_apples_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_2008.csv")
write.csv(cbind(GEOID,ETc_apples_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_2009.csv")
write.csv(cbind(GEOID,ETc_apples_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_2010.csv")
write.csv(cbind(GEOID,ETc_apples_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_2011.csv")
write.csv(cbind(GEOID,ETc_apples_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_2012.csv")
write.csv(cbind(GEOID,ETc_apples_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apples_2013.csv")
ETc_apricots_1950 <- ET0_1950*apricots_kc_norm
ETc_apricots_1951 <- ET0_1951*apricots_kc_norm
ETc_apricots_1952 <- ET0_1952*apricots_kc_leap
ETc_apricots_1953 <- ET0_1953*apricots_kc_norm
ETc_apricots_1954 <- ET0_1954*apricots_kc_norm
ETc_apricots_1955 <- ET0_1955*apricots_kc_norm
ETc_apricots_1956 <- ET0_1956*apricots_kc_leap
ETc_apricots_1957 <- ET0_1957*apricots_kc_norm
ETc_apricots_1958 <- ET0_1958*apricots_kc_norm
ETc_apricots_1959 <- ET0_1959*apricots_kc_norm
ETc_apricots_1960 <- ET0_1960*apricots_kc_leap
ETc_apricots_1961 <- ET0_1961*apricots_kc_norm
ETc_apricots_1962 <- ET0_1962*apricots_kc_norm
ETc_apricots_1963 <- ET0_1963*apricots_kc_norm
ETc_apricots_1964 <- ET0_1964*apricots_kc_leap
ETc_apricots_1965 <- ET0_1965*apricots_kc_norm
ETc_apricots_1966 <- ET0_1966*apricots_kc_norm
ETc_apricots_1967 <- ET0_1967*apricots_kc_norm
ETc_apricots_1968 <- ET0_1968*apricots_kc_leap
ETc_apricots_1969 <- ET0_1969*apricots_kc_norm
ETc_apricots_1970 <- ET0_1970*apricots_kc_norm
ETc_apricots_1971 <- ET0_1971*apricots_kc_norm
ETc_apricots_1972 <- ET0_1972*apricots_kc_leap
ETc_apricots_1973 <- ET0_1973*apricots_kc_norm
ETc_apricots_1974 <- ET0_1974*apricots_kc_norm
ETc_apricots_1975 <- ET0_1975*apricots_kc_norm
ETc_apricots_1976 <- ET0_1976*apricots_kc_leap
ETc_apricots_1977 <- ET0_1977*apricots_kc_norm
ETc_apricots_1978 <- ET0_1978*apricots_kc_norm
ETc_apricots_1979 <- ET0_1979*apricots_kc_norm
ETc_apricots_1980 <- ET0_1980*apricots_kc_leap
ETc_apricots_1981 <- ET0_1981*apricots_kc_norm
ETc_apricots_1982 <- ET0_1982*apricots_kc_norm
ETc_apricots_1983 <- ET0_1983*apricots_kc_norm
ETc_apricots_1984 <- ET0_1984*apricots_kc_leap
ETc_apricots_1985 <- ET0_1985*apricots_kc_norm
ETc_apricots_1986 <- ET0_1986*apricots_kc_norm
ETc_apricots_1987 <- ET0_1987*apricots_kc_norm
ETc_apricots_1988 <- ET0_1988*apricots_kc_leap
ETc_apricots_1989 <- ET0_1989*apricots_kc_norm
ETc_apricots_1990 <- ET0_1990*apricots_kc_norm
ETc_apricots_1991 <- ET0_1991*apricots_kc_norm
ETc_apricots_1992 <- ET0_1992*apricots_kc_leap
ETc_apricots_1993 <- ET0_1993*apricots_kc_norm
ETc_apricots_1994 <- ET0_1994*apricots_kc_norm
ETc_apricots_1995 <- ET0_1995*apricots_kc_norm
ETc_apricots_1996 <- ET0_1996*apricots_kc_leap
ETc_apricots_1997 <- ET0_1997*apricots_kc_norm
ETc_apricots_1998 <- ET0_1998*apricots_kc_norm
ETc_apricots_1999 <- ET0_1999*apricots_kc_norm
ETc_apricots_2000 <- ET0_2000*apricots_kc_leap
ETc_apricots_2001 <- ET0_2001*apricots_kc_norm
ETc_apricots_2002 <- ET0_2002*apricots_kc_norm
ETc_apricots_2003 <- ET0_2003*apricots_kc_norm
ETc_apricots_2004 <- ET0_2004*apricots_kc_leap
ETc_apricots_2005 <- ET0_2005*apricots_kc_norm
ETc_apricots_2006 <- ET0_2006*apricots_kc_norm
ETc_apricots_2007 <- ET0_2007*apricots_kc_norm
ETc_apricots_2008 <- ET0_2008*apricots_kc_leap
ETc_apricots_2009 <- ET0_2009*apricots_kc_norm
ETc_apricots_2010 <- ET0_2010*apricots_kc_norm
ETc_apricots_2011 <- ET0_2011*apricots_kc_norm
ETc_apricots_2012 <- ET0_2012*apricots_kc_leap
ETc_apricots_2013 <- ET0_2013*apricots_kc_norm
write.csv(cbind(GEOID,ETc_apricots_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1950.csv")
write.csv(cbind(GEOID,ETc_apricots_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1951.csv")
write.csv(cbind(GEOID,ETc_apricots_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1952.csv")
write.csv(cbind(GEOID,ETc_apricots_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1953.csv")
write.csv(cbind(GEOID,ETc_apricots_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1954.csv")
write.csv(cbind(GEOID,ETc_apricots_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1955.csv")
write.csv(cbind(GEOID,ETc_apricots_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1956.csv")
write.csv(cbind(GEOID,ETc_apricots_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1957.csv")
write.csv(cbind(GEOID,ETc_apricots_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1958.csv")
write.csv(cbind(GEOID,ETc_apricots_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1959.csv")
write.csv(cbind(GEOID,ETc_apricots_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1960.csv")
write.csv(cbind(GEOID,ETc_apricots_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1961.csv")
write.csv(cbind(GEOID,ETc_apricots_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1962.csv")
write.csv(cbind(GEOID,ETc_apricots_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1963.csv")
write.csv(cbind(GEOID,ETc_apricots_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1964.csv")
write.csv(cbind(GEOID,ETc_apricots_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1965.csv")
write.csv(cbind(GEOID,ETc_apricots_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1966.csv")
write.csv(cbind(GEOID,ETc_apricots_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1967.csv")
write.csv(cbind(GEOID,ETc_apricots_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1968.csv")
write.csv(cbind(GEOID,ETc_apricots_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1969.csv")
write.csv(cbind(GEOID,ETc_apricots_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1970.csv")
write.csv(cbind(GEOID,ETc_apricots_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1971.csv")
write.csv(cbind(GEOID,ETc_apricots_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1972.csv")
write.csv(cbind(GEOID,ETc_apricots_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1973.csv")
write.csv(cbind(GEOID,ETc_apricots_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1974.csv")
write.csv(cbind(GEOID,ETc_apricots_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1975.csv")
write.csv(cbind(GEOID,ETc_apricots_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1976.csv")
write.csv(cbind(GEOID,ETc_apricots_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1977.csv")
write.csv(cbind(GEOID,ETc_apricots_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1978.csv")
write.csv(cbind(GEOID,ETc_apricots_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1979.csv")
write.csv(cbind(GEOID,ETc_apricots_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1980.csv")
write.csv(cbind(GEOID,ETc_apricots_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1981.csv")
write.csv(cbind(GEOID,ETc_apricots_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1982.csv")
write.csv(cbind(GEOID,ETc_apricots_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1983.csv")
write.csv(cbind(GEOID,ETc_apricots_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1984.csv")
write.csv(cbind(GEOID,ETc_apricots_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1985.csv")
write.csv(cbind(GEOID,ETc_apricots_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1986.csv")
write.csv(cbind(GEOID,ETc_apricots_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1987.csv")
write.csv(cbind(GEOID,ETc_apricots_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1988.csv")
write.csv(cbind(GEOID,ETc_apricots_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1989.csv")
write.csv(cbind(GEOID,ETc_apricots_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1990.csv")
write.csv(cbind(GEOID,ETc_apricots_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1991.csv")
write.csv(cbind(GEOID,ETc_apricots_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1992.csv")
write.csv(cbind(GEOID,ETc_apricots_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1993.csv")
write.csv(cbind(GEOID,ETc_apricots_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1994.csv")
write.csv(cbind(GEOID,ETc_apricots_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1995.csv")
write.csv(cbind(GEOID,ETc_apricots_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1996.csv")
write.csv(cbind(GEOID,ETc_apricots_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1997.csv")
write.csv(cbind(GEOID,ETc_apricots_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1998.csv")
write.csv(cbind(GEOID,ETc_apricots_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_1999.csv")
write.csv(cbind(GEOID,ETc_apricots_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_2000.csv")
write.csv(cbind(GEOID,ETc_apricots_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_2001.csv")
write.csv(cbind(GEOID,ETc_apricots_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_2002.csv")
write.csv(cbind(GEOID,ETc_apricots_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_2003.csv")
write.csv(cbind(GEOID,ETc_apricots_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_2004.csv")
write.csv(cbind(GEOID,ETc_apricots_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_2005.csv")
write.csv(cbind(GEOID,ETc_apricots_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_2006.csv")
write.csv(cbind(GEOID,ETc_apricots_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_2007.csv")
write.csv(cbind(GEOID,ETc_apricots_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_2008.csv")
write.csv(cbind(GEOID,ETc_apricots_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_2009.csv")
write.csv(cbind(GEOID,ETc_apricots_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_2010.csv")
write.csv(cbind(GEOID,ETc_apricots_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_2011.csv")
write.csv(cbind(GEOID,ETc_apricots_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_2012.csv")
write.csv(cbind(GEOID,ETc_apricots_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_apricots_2013.csv")
ETc_avocadoes_1950 <- ET0_1950*avocadoes_kc_norm
ETc_avocadoes_1951 <- ET0_1951*avocadoes_kc_norm
ETc_avocadoes_1952 <- ET0_1952*avocadoes_kc_leap
ETc_avocadoes_1953 <- ET0_1953*avocadoes_kc_norm
ETc_avocadoes_1954 <- ET0_1954*avocadoes_kc_norm
ETc_avocadoes_1955 <- ET0_1955*avocadoes_kc_norm
ETc_avocadoes_1956 <- ET0_1956*avocadoes_kc_leap
ETc_avocadoes_1957 <- ET0_1957*avocadoes_kc_norm
ETc_avocadoes_1958 <- ET0_1958*avocadoes_kc_norm
ETc_avocadoes_1959 <- ET0_1959*avocadoes_kc_norm
ETc_avocadoes_1960 <- ET0_1960*avocadoes_kc_leap
ETc_avocadoes_1961 <- ET0_1961*avocadoes_kc_norm
ETc_avocadoes_1962 <- ET0_1962*avocadoes_kc_norm
ETc_avocadoes_1963 <- ET0_1963*avocadoes_kc_norm
ETc_avocadoes_1964 <- ET0_1964*avocadoes_kc_leap
ETc_avocadoes_1965 <- ET0_1965*avocadoes_kc_norm
ETc_avocadoes_1966 <- ET0_1966*avocadoes_kc_norm
ETc_avocadoes_1967 <- ET0_1967*avocadoes_kc_norm
ETc_avocadoes_1968 <- ET0_1968*avocadoes_kc_leap
ETc_avocadoes_1969 <- ET0_1969*avocadoes_kc_norm
ETc_avocadoes_1970 <- ET0_1970*avocadoes_kc_norm
ETc_avocadoes_1971 <- ET0_1971*avocadoes_kc_norm
ETc_avocadoes_1972 <- ET0_1972*avocadoes_kc_leap
ETc_avocadoes_1973 <- ET0_1973*avocadoes_kc_norm
ETc_avocadoes_1974 <- ET0_1974*avocadoes_kc_norm
ETc_avocadoes_1975 <- ET0_1975*avocadoes_kc_norm
ETc_avocadoes_1976 <- ET0_1976*avocadoes_kc_leap
ETc_avocadoes_1977 <- ET0_1977*avocadoes_kc_norm
ETc_avocadoes_1978 <- ET0_1978*avocadoes_kc_norm
ETc_avocadoes_1979 <- ET0_1979*avocadoes_kc_norm
ETc_avocadoes_1980 <- ET0_1980*avocadoes_kc_leap
ETc_avocadoes_1981 <- ET0_1981*avocadoes_kc_norm
ETc_avocadoes_1982 <- ET0_1982*avocadoes_kc_norm
ETc_avocadoes_1983 <- ET0_1983*avocadoes_kc_norm
ETc_avocadoes_1984 <- ET0_1984*avocadoes_kc_leap
ETc_avocadoes_1985 <- ET0_1985*avocadoes_kc_norm
ETc_avocadoes_1986 <- ET0_1986*avocadoes_kc_norm
ETc_avocadoes_1987 <- ET0_1987*avocadoes_kc_norm
ETc_avocadoes_1988 <- ET0_1988*avocadoes_kc_leap
ETc_avocadoes_1989 <- ET0_1989*avocadoes_kc_norm
ETc_avocadoes_1990 <- ET0_1990*avocadoes_kc_norm
ETc_avocadoes_1991 <- ET0_1991*avocadoes_kc_norm
ETc_avocadoes_1992 <- ET0_1992*avocadoes_kc_leap
ETc_avocadoes_1993 <- ET0_1993*avocadoes_kc_norm
ETc_avocadoes_1994 <- ET0_1994*avocadoes_kc_norm
ETc_avocadoes_1995 <- ET0_1995*avocadoes_kc_norm
ETc_avocadoes_1996 <- ET0_1996*avocadoes_kc_leap
ETc_avocadoes_1997 <- ET0_1997*avocadoes_kc_norm
ETc_avocadoes_1998 <- ET0_1998*avocadoes_kc_norm
ETc_avocadoes_1999 <- ET0_1999*avocadoes_kc_norm
ETc_avocadoes_2000 <- ET0_2000*avocadoes_kc_leap
ETc_avocadoes_2001 <- ET0_2001*avocadoes_kc_norm
ETc_avocadoes_2002 <- ET0_2002*avocadoes_kc_norm
ETc_avocadoes_2003 <- ET0_2003*avocadoes_kc_norm
ETc_avocadoes_2004 <- ET0_2004*avocadoes_kc_leap
ETc_avocadoes_2005 <- ET0_2005*avocadoes_kc_norm
ETc_avocadoes_2006 <- ET0_2006*avocadoes_kc_norm
ETc_avocadoes_2007 <- ET0_2007*avocadoes_kc_norm
ETc_avocadoes_2008 <- ET0_2008*avocadoes_kc_leap
ETc_avocadoes_2009 <- ET0_2009*avocadoes_kc_norm
ETc_avocadoes_2010 <- ET0_2010*avocadoes_kc_norm
ETc_avocadoes_2011 <- ET0_2011*avocadoes_kc_norm
ETc_avocadoes_2012 <- ET0_2012*avocadoes_kc_leap
ETc_avocadoes_2013 <- ET0_2013*avocadoes_kc_norm
write.csv(cbind(GEOID,ETc_avocadoes_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1950.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1951.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1952.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1953.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1954.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1955.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1956.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1957.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1958.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1959.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1960.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1961.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1962.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1963.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1964.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1965.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1966.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1967.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1968.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1969.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1970.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1971.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1972.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1973.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1974.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1975.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1976.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1977.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1978.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1979.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1980.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1981.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1982.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1983.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1984.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1985.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1986.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1987.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1988.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1989.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1990.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1991.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1992.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1993.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1994.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1995.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1996.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1997.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1998.csv")
write.csv(cbind(GEOID,ETc_avocadoes_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_1999.csv")
write.csv(cbind(GEOID,ETc_avocadoes_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_2000.csv")
write.csv(cbind(GEOID,ETc_avocadoes_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_2001.csv")
write.csv(cbind(GEOID,ETc_avocadoes_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_2002.csv")
write.csv(cbind(GEOID,ETc_avocadoes_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_2003.csv")
write.csv(cbind(GEOID,ETc_avocadoes_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_2004.csv")
write.csv(cbind(GEOID,ETc_avocadoes_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_2005.csv")
write.csv(cbind(GEOID,ETc_avocadoes_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_2006.csv")
write.csv(cbind(GEOID,ETc_avocadoes_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_2007.csv")
write.csv(cbind(GEOID,ETc_avocadoes_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_2008.csv")
write.csv(cbind(GEOID,ETc_avocadoes_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_2009.csv")
write.csv(cbind(GEOID,ETc_avocadoes_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_2010.csv")
write.csv(cbind(GEOID,ETc_avocadoes_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_2011.csv")
write.csv(cbind(GEOID,ETc_avocadoes_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_2012.csv")
write.csv(cbind(GEOID,ETc_avocadoes_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_avocadoes_2013.csv")
ETc_berries_1950 <- ET0_1950*berries_kc_norm
ETc_berries_1951 <- ET0_1951*berries_kc_norm
ETc_berries_1952 <- ET0_1952*berries_kc_leap
ETc_berries_1953 <- ET0_1953*berries_kc_norm
ETc_berries_1954 <- ET0_1954*berries_kc_norm
ETc_berries_1955 <- ET0_1955*berries_kc_norm
ETc_berries_1956 <- ET0_1956*berries_kc_leap
ETc_berries_1957 <- ET0_1957*berries_kc_norm
ETc_berries_1958 <- ET0_1958*berries_kc_norm
ETc_berries_1959 <- ET0_1959*berries_kc_norm
ETc_berries_1960 <- ET0_1960*berries_kc_leap
ETc_berries_1961 <- ET0_1961*berries_kc_norm
ETc_berries_1962 <- ET0_1962*berries_kc_norm
ETc_berries_1963 <- ET0_1963*berries_kc_norm
ETc_berries_1964 <- ET0_1964*berries_kc_leap
ETc_berries_1965 <- ET0_1965*berries_kc_norm
ETc_berries_1966 <- ET0_1966*berries_kc_norm
ETc_berries_1967 <- ET0_1967*berries_kc_norm
ETc_berries_1968 <- ET0_1968*berries_kc_leap
ETc_berries_1969 <- ET0_1969*berries_kc_norm
ETc_berries_1970 <- ET0_1970*berries_kc_norm
ETc_berries_1971 <- ET0_1971*berries_kc_norm
ETc_berries_1972 <- ET0_1972*berries_kc_leap
ETc_berries_1973 <- ET0_1973*berries_kc_norm
ETc_berries_1974 <- ET0_1974*berries_kc_norm
ETc_berries_1975 <- ET0_1975*berries_kc_norm
ETc_berries_1976 <- ET0_1976*berries_kc_leap
ETc_berries_1977 <- ET0_1977*berries_kc_norm
ETc_berries_1978 <- ET0_1978*berries_kc_norm
ETc_berries_1979 <- ET0_1979*berries_kc_norm
ETc_berries_1980 <- ET0_1980*berries_kc_leap
ETc_berries_1981 <- ET0_1981*berries_kc_norm
ETc_berries_1982 <- ET0_1982*berries_kc_norm
ETc_berries_1983 <- ET0_1983*berries_kc_norm
ETc_berries_1984 <- ET0_1984*berries_kc_leap
ETc_berries_1985 <- ET0_1985*berries_kc_norm
ETc_berries_1986 <- ET0_1986*berries_kc_norm
ETc_berries_1987 <- ET0_1987*berries_kc_norm
ETc_berries_1988 <- ET0_1988*berries_kc_leap
ETc_berries_1989 <- ET0_1989*berries_kc_norm
ETc_berries_1990 <- ET0_1990*berries_kc_norm
ETc_berries_1991 <- ET0_1991*berries_kc_norm
ETc_berries_1992 <- ET0_1992*berries_kc_leap
ETc_berries_1993 <- ET0_1993*berries_kc_norm
ETc_berries_1994 <- ET0_1994*berries_kc_norm
ETc_berries_1995 <- ET0_1995*berries_kc_norm
ETc_berries_1996 <- ET0_1996*berries_kc_leap
ETc_berries_1997 <- ET0_1997*berries_kc_norm
ETc_berries_1998 <- ET0_1998*berries_kc_norm
ETc_berries_1999 <- ET0_1999*berries_kc_norm
ETc_berries_2000 <- ET0_2000*berries_kc_leap
ETc_berries_2001 <- ET0_2001*berries_kc_norm
ETc_berries_2002 <- ET0_2002*berries_kc_norm
ETc_berries_2003 <- ET0_2003*berries_kc_norm
ETc_berries_2004 <- ET0_2004*berries_kc_leap
ETc_berries_2005 <- ET0_2005*berries_kc_norm
ETc_berries_2006 <- ET0_2006*berries_kc_norm
ETc_berries_2007 <- ET0_2007*berries_kc_norm
ETc_berries_2008 <- ET0_2008*berries_kc_leap
ETc_berries_2009 <- ET0_2009*berries_kc_norm
ETc_berries_2010 <- ET0_2010*berries_kc_norm
ETc_berries_2011 <- ET0_2011*berries_kc_norm
ETc_berries_2012 <- ET0_2012*berries_kc_leap
ETc_berries_2013 <- ET0_2013*berries_kc_norm
write.csv(cbind(GEOID,ETc_berries_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1950.csv")
write.csv(cbind(GEOID,ETc_berries_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1951.csv")
write.csv(cbind(GEOID,ETc_berries_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1952.csv")
write.csv(cbind(GEOID,ETc_berries_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1953.csv")
write.csv(cbind(GEOID,ETc_berries_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1954.csv")
write.csv(cbind(GEOID,ETc_berries_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1955.csv")
write.csv(cbind(GEOID,ETc_berries_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1956.csv")
write.csv(cbind(GEOID,ETc_berries_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1957.csv")
write.csv(cbind(GEOID,ETc_berries_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1958.csv")
write.csv(cbind(GEOID,ETc_berries_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1959.csv")
write.csv(cbind(GEOID,ETc_berries_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1960.csv")
write.csv(cbind(GEOID,ETc_berries_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1961.csv")
write.csv(cbind(GEOID,ETc_berries_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1962.csv")
write.csv(cbind(GEOID,ETc_berries_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1963.csv")
write.csv(cbind(GEOID,ETc_berries_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1964.csv")
write.csv(cbind(GEOID,ETc_berries_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1965.csv")
write.csv(cbind(GEOID,ETc_berries_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1966.csv")
write.csv(cbind(GEOID,ETc_berries_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1967.csv")
write.csv(cbind(GEOID,ETc_berries_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1968.csv")
write.csv(cbind(GEOID,ETc_berries_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1969.csv")
write.csv(cbind(GEOID,ETc_berries_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1970.csv")
write.csv(cbind(GEOID,ETc_berries_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1971.csv")
write.csv(cbind(GEOID,ETc_berries_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1972.csv")
write.csv(cbind(GEOID,ETc_berries_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1973.csv")
write.csv(cbind(GEOID,ETc_berries_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1974.csv")
write.csv(cbind(GEOID,ETc_berries_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1975.csv")
write.csv(cbind(GEOID,ETc_berries_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1976.csv")
write.csv(cbind(GEOID,ETc_berries_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1977.csv")
write.csv(cbind(GEOID,ETc_berries_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1978.csv")
write.csv(cbind(GEOID,ETc_berries_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1979.csv")
write.csv(cbind(GEOID,ETc_berries_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1980.csv")
write.csv(cbind(GEOID,ETc_berries_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1981.csv")
write.csv(cbind(GEOID,ETc_berries_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1982.csv")
write.csv(cbind(GEOID,ETc_berries_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1983.csv")
write.csv(cbind(GEOID,ETc_berries_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1984.csv")
write.csv(cbind(GEOID,ETc_berries_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1985.csv")
write.csv(cbind(GEOID,ETc_berries_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1986.csv")
write.csv(cbind(GEOID,ETc_berries_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1987.csv")
write.csv(cbind(GEOID,ETc_berries_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1988.csv")
write.csv(cbind(GEOID,ETc_berries_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1989.csv")
write.csv(cbind(GEOID,ETc_berries_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1990.csv")
write.csv(cbind(GEOID,ETc_berries_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1991.csv")
write.csv(cbind(GEOID,ETc_berries_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1992.csv")
write.csv(cbind(GEOID,ETc_berries_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1993.csv")
write.csv(cbind(GEOID,ETc_berries_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1994.csv")
write.csv(cbind(GEOID,ETc_berries_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1995.csv")
write.csv(cbind(GEOID,ETc_berries_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1996.csv")
write.csv(cbind(GEOID,ETc_berries_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1997.csv")
write.csv(cbind(GEOID,ETc_berries_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1998.csv")
write.csv(cbind(GEOID,ETc_berries_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_1999.csv")
write.csv(cbind(GEOID,ETc_berries_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_2000.csv")
write.csv(cbind(GEOID,ETc_berries_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_2001.csv")
write.csv(cbind(GEOID,ETc_berries_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_2002.csv")
write.csv(cbind(GEOID,ETc_berries_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_2003.csv")
write.csv(cbind(GEOID,ETc_berries_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_2004.csv")
write.csv(cbind(GEOID,ETc_berries_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_2005.csv")
write.csv(cbind(GEOID,ETc_berries_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_2006.csv")
write.csv(cbind(GEOID,ETc_berries_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_2007.csv")
write.csv(cbind(GEOID,ETc_berries_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_2008.csv")
write.csv(cbind(GEOID,ETc_berries_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_2009.csv")
write.csv(cbind(GEOID,ETc_berries_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_2010.csv")
write.csv(cbind(GEOID,ETc_berries_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_2011.csv")
write.csv(cbind(GEOID,ETc_berries_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_2012.csv")
write.csv(cbind(GEOID,ETc_berries_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_berries_2013.csv")
ETc_blueberries_1950 <- ET0_1950*blueberries_kc_norm
ETc_blueberries_1951 <- ET0_1951*blueberries_kc_norm
ETc_blueberries_1952 <- ET0_1952*blueberries_kc_leap
ETc_blueberries_1953 <- ET0_1953*blueberries_kc_norm
ETc_blueberries_1954 <- ET0_1954*blueberries_kc_norm
ETc_blueberries_1955 <- ET0_1955*blueberries_kc_norm
ETc_blueberries_1956 <- ET0_1956*blueberries_kc_leap
ETc_blueberries_1957 <- ET0_1957*blueberries_kc_norm
ETc_blueberries_1958 <- ET0_1958*blueberries_kc_norm
ETc_blueberries_1959 <- ET0_1959*blueberries_kc_norm
ETc_blueberries_1960 <- ET0_1960*blueberries_kc_leap
ETc_blueberries_1961 <- ET0_1961*blueberries_kc_norm
ETc_blueberries_1962 <- ET0_1962*blueberries_kc_norm
ETc_blueberries_1963 <- ET0_1963*blueberries_kc_norm
ETc_blueberries_1964 <- ET0_1964*blueberries_kc_leap
ETc_blueberries_1965 <- ET0_1965*blueberries_kc_norm
ETc_blueberries_1966 <- ET0_1966*blueberries_kc_norm
ETc_blueberries_1967 <- ET0_1967*blueberries_kc_norm
ETc_blueberries_1968 <- ET0_1968*blueberries_kc_leap
ETc_blueberries_1969 <- ET0_1969*blueberries_kc_norm
ETc_blueberries_1970 <- ET0_1970*blueberries_kc_norm
ETc_blueberries_1971 <- ET0_1971*blueberries_kc_norm
ETc_blueberries_1972 <- ET0_1972*blueberries_kc_leap
ETc_blueberries_1973 <- ET0_1973*blueberries_kc_norm
ETc_blueberries_1974 <- ET0_1974*blueberries_kc_norm
ETc_blueberries_1975 <- ET0_1975*blueberries_kc_norm
ETc_blueberries_1976 <- ET0_1976*blueberries_kc_leap
ETc_blueberries_1977 <- ET0_1977*blueberries_kc_norm
ETc_blueberries_1978 <- ET0_1978*blueberries_kc_norm
ETc_blueberries_1979 <- ET0_1979*blueberries_kc_norm
ETc_blueberries_1980 <- ET0_1980*blueberries_kc_leap
ETc_blueberries_1981 <- ET0_1981*blueberries_kc_norm
ETc_blueberries_1982 <- ET0_1982*blueberries_kc_norm
ETc_blueberries_1983 <- ET0_1983*blueberries_kc_norm
ETc_blueberries_1984 <- ET0_1984*blueberries_kc_leap
ETc_blueberries_1985 <- ET0_1985*blueberries_kc_norm
ETc_blueberries_1986 <- ET0_1986*blueberries_kc_norm
ETc_blueberries_1987 <- ET0_1987*blueberries_kc_norm
ETc_blueberries_1988 <- ET0_1988*blueberries_kc_leap
ETc_blueberries_1989 <- ET0_1989*blueberries_kc_norm
ETc_blueberries_1990 <- ET0_1990*blueberries_kc_norm
ETc_blueberries_1991 <- ET0_1991*blueberries_kc_norm
ETc_blueberries_1992 <- ET0_1992*blueberries_kc_leap
ETc_blueberries_1993 <- ET0_1993*blueberries_kc_norm
ETc_blueberries_1994 <- ET0_1994*blueberries_kc_norm
ETc_blueberries_1995 <- ET0_1995*blueberries_kc_norm
ETc_blueberries_1996 <- ET0_1996*blueberries_kc_leap
ETc_blueberries_1997 <- ET0_1997*blueberries_kc_norm
ETc_blueberries_1998 <- ET0_1998*blueberries_kc_norm
ETc_blueberries_1999 <- ET0_1999*blueberries_kc_norm
ETc_blueberries_2000 <- ET0_2000*blueberries_kc_leap
ETc_blueberries_2001 <- ET0_2001*blueberries_kc_norm
ETc_blueberries_2002 <- ET0_2002*blueberries_kc_norm
ETc_blueberries_2003 <- ET0_2003*blueberries_kc_norm
ETc_blueberries_2004 <- ET0_2004*blueberries_kc_leap
ETc_blueberries_2005 <- ET0_2005*blueberries_kc_norm
ETc_blueberries_2006 <- ET0_2006*blueberries_kc_norm
ETc_blueberries_2007 <- ET0_2007*blueberries_kc_norm
ETc_blueberries_2008 <- ET0_2008*blueberries_kc_leap
ETc_blueberries_2009 <- ET0_2009*blueberries_kc_norm
ETc_blueberries_2010 <- ET0_2010*blueberries_kc_norm
ETc_blueberries_2011 <- ET0_2011*blueberries_kc_norm
ETc_blueberries_2012 <- ET0_2012*blueberries_kc_leap
ETc_blueberries_2013 <- ET0_2013*blueberries_kc_norm
write.csv(cbind(GEOID,ETc_blueberries_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1950.csv")
write.csv(cbind(GEOID,ETc_blueberries_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1951.csv")
write.csv(cbind(GEOID,ETc_blueberries_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1952.csv")
write.csv(cbind(GEOID,ETc_blueberries_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1953.csv")
write.csv(cbind(GEOID,ETc_blueberries_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1954.csv")
write.csv(cbind(GEOID,ETc_blueberries_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1955.csv")
write.csv(cbind(GEOID,ETc_blueberries_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1956.csv")
write.csv(cbind(GEOID,ETc_blueberries_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1957.csv")
write.csv(cbind(GEOID,ETc_blueberries_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1958.csv")
write.csv(cbind(GEOID,ETc_blueberries_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1959.csv")
write.csv(cbind(GEOID,ETc_blueberries_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1960.csv")
write.csv(cbind(GEOID,ETc_blueberries_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1961.csv")
write.csv(cbind(GEOID,ETc_blueberries_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1962.csv")
write.csv(cbind(GEOID,ETc_blueberries_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1963.csv")
write.csv(cbind(GEOID,ETc_blueberries_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1964.csv")
write.csv(cbind(GEOID,ETc_blueberries_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1965.csv")
write.csv(cbind(GEOID,ETc_blueberries_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1966.csv")
write.csv(cbind(GEOID,ETc_blueberries_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1967.csv")
write.csv(cbind(GEOID,ETc_blueberries_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1968.csv")
write.csv(cbind(GEOID,ETc_blueberries_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1969.csv")
write.csv(cbind(GEOID,ETc_blueberries_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1970.csv")
write.csv(cbind(GEOID,ETc_blueberries_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1971.csv")
write.csv(cbind(GEOID,ETc_blueberries_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1972.csv")
write.csv(cbind(GEOID,ETc_blueberries_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1973.csv")
write.csv(cbind(GEOID,ETc_blueberries_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1974.csv")
write.csv(cbind(GEOID,ETc_blueberries_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1975.csv")
write.csv(cbind(GEOID,ETc_blueberries_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1976.csv")
write.csv(cbind(GEOID,ETc_blueberries_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1977.csv")
write.csv(cbind(GEOID,ETc_blueberries_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1978.csv")
write.csv(cbind(GEOID,ETc_blueberries_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1979.csv")
write.csv(cbind(GEOID,ETc_blueberries_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1980.csv")
write.csv(cbind(GEOID,ETc_blueberries_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1981.csv")
write.csv(cbind(GEOID,ETc_blueberries_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1982.csv")
write.csv(cbind(GEOID,ETc_blueberries_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1983.csv")
write.csv(cbind(GEOID,ETc_blueberries_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1984.csv")
write.csv(cbind(GEOID,ETc_blueberries_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1985.csv")
write.csv(cbind(GEOID,ETc_blueberries_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1986.csv")
write.csv(cbind(GEOID,ETc_blueberries_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1987.csv")
write.csv(cbind(GEOID,ETc_blueberries_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1988.csv")
write.csv(cbind(GEOID,ETc_blueberries_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1989.csv")
write.csv(cbind(GEOID,ETc_blueberries_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1990.csv")
write.csv(cbind(GEOID,ETc_blueberries_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1991.csv")
write.csv(cbind(GEOID,ETc_blueberries_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1992.csv")
write.csv(cbind(GEOID,ETc_blueberries_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1993.csv")
write.csv(cbind(GEOID,ETc_blueberries_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1994.csv")
write.csv(cbind(GEOID,ETc_blueberries_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1995.csv")
write.csv(cbind(GEOID,ETc_blueberries_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1996.csv")
write.csv(cbind(GEOID,ETc_blueberries_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1997.csv")
write.csv(cbind(GEOID,ETc_blueberries_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1998.csv")
write.csv(cbind(GEOID,ETc_blueberries_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_1999.csv")
write.csv(cbind(GEOID,ETc_blueberries_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_2000.csv")
write.csv(cbind(GEOID,ETc_blueberries_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_2001.csv")
write.csv(cbind(GEOID,ETc_blueberries_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_2002.csv")
write.csv(cbind(GEOID,ETc_blueberries_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_2003.csv")
write.csv(cbind(GEOID,ETc_blueberries_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_2004.csv")
write.csv(cbind(GEOID,ETc_blueberries_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_2005.csv")
write.csv(cbind(GEOID,ETc_blueberries_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_2006.csv")
write.csv(cbind(GEOID,ETc_blueberries_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_2007.csv")
write.csv(cbind(GEOID,ETc_blueberries_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_2008.csv")
write.csv(cbind(GEOID,ETc_blueberries_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_2009.csv")
write.csv(cbind(GEOID,ETc_blueberries_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_2010.csv")
write.csv(cbind(GEOID,ETc_blueberries_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_2011.csv")
write.csv(cbind(GEOID,ETc_blueberries_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_2012.csv")
write.csv(cbind(GEOID,ETc_blueberries_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_blueberries_2013.csv")
ETc_buckwheat_1950 <- ET0_1950*buckwheat_kc_norm
ETc_buckwheat_1951 <- ET0_1951*buckwheat_kc_norm
ETc_buckwheat_1952 <- ET0_1952*buckwheat_kc_leap
ETc_buckwheat_1953 <- ET0_1953*buckwheat_kc_norm
ETc_buckwheat_1954 <- ET0_1954*buckwheat_kc_norm
ETc_buckwheat_1955 <- ET0_1955*buckwheat_kc_norm
ETc_buckwheat_1956 <- ET0_1956*buckwheat_kc_leap
ETc_buckwheat_1957 <- ET0_1957*buckwheat_kc_norm
ETc_buckwheat_1958 <- ET0_1958*buckwheat_kc_norm
ETc_buckwheat_1959 <- ET0_1959*buckwheat_kc_norm
ETc_buckwheat_1960 <- ET0_1960*buckwheat_kc_leap
ETc_buckwheat_1961 <- ET0_1961*buckwheat_kc_norm
ETc_buckwheat_1962 <- ET0_1962*buckwheat_kc_norm
ETc_buckwheat_1963 <- ET0_1963*buckwheat_kc_norm
ETc_buckwheat_1964 <- ET0_1964*buckwheat_kc_leap
ETc_buckwheat_1965 <- ET0_1965*buckwheat_kc_norm
ETc_buckwheat_1966 <- ET0_1966*buckwheat_kc_norm
ETc_buckwheat_1967 <- ET0_1967*buckwheat_kc_norm
ETc_buckwheat_1968 <- ET0_1968*buckwheat_kc_leap
ETc_buckwheat_1969 <- ET0_1969*buckwheat_kc_norm
ETc_buckwheat_1970 <- ET0_1970*buckwheat_kc_norm
ETc_buckwheat_1971 <- ET0_1971*buckwheat_kc_norm
ETc_buckwheat_1972 <- ET0_1972*buckwheat_kc_leap
ETc_buckwheat_1973 <- ET0_1973*buckwheat_kc_norm
ETc_buckwheat_1974 <- ET0_1974*buckwheat_kc_norm
ETc_buckwheat_1975 <- ET0_1975*buckwheat_kc_norm
ETc_buckwheat_1976 <- ET0_1976*buckwheat_kc_leap
ETc_buckwheat_1977 <- ET0_1977*buckwheat_kc_norm
ETc_buckwheat_1978 <- ET0_1978*buckwheat_kc_norm
ETc_buckwheat_1979 <- ET0_1979*buckwheat_kc_norm
ETc_buckwheat_1980 <- ET0_1980*buckwheat_kc_leap
ETc_buckwheat_1981 <- ET0_1981*buckwheat_kc_norm
ETc_buckwheat_1982 <- ET0_1982*buckwheat_kc_norm
ETc_buckwheat_1983 <- ET0_1983*buckwheat_kc_norm
ETc_buckwheat_1984 <- ET0_1984*buckwheat_kc_leap
ETc_buckwheat_1985 <- ET0_1985*buckwheat_kc_norm
ETc_buckwheat_1986 <- ET0_1986*buckwheat_kc_norm
ETc_buckwheat_1987 <- ET0_1987*buckwheat_kc_norm
ETc_buckwheat_1988 <- ET0_1988*buckwheat_kc_leap
ETc_buckwheat_1989 <- ET0_1989*buckwheat_kc_norm
ETc_buckwheat_1990 <- ET0_1990*buckwheat_kc_norm
ETc_buckwheat_1991 <- ET0_1991*buckwheat_kc_norm
ETc_buckwheat_1992 <- ET0_1992*buckwheat_kc_leap
ETc_buckwheat_1993 <- ET0_1993*buckwheat_kc_norm
ETc_buckwheat_1994 <- ET0_1994*buckwheat_kc_norm
ETc_buckwheat_1995 <- ET0_1995*buckwheat_kc_norm
ETc_buckwheat_1996 <- ET0_1996*buckwheat_kc_leap
ETc_buckwheat_1997 <- ET0_1997*buckwheat_kc_norm
ETc_buckwheat_1998 <- ET0_1998*buckwheat_kc_norm
ETc_buckwheat_1999 <- ET0_1999*buckwheat_kc_norm
ETc_buckwheat_2000 <- ET0_2000*buckwheat_kc_leap
ETc_buckwheat_2001 <- ET0_2001*buckwheat_kc_norm
ETc_buckwheat_2002 <- ET0_2002*buckwheat_kc_norm
ETc_buckwheat_2003 <- ET0_2003*buckwheat_kc_norm
ETc_buckwheat_2004 <- ET0_2004*buckwheat_kc_leap
ETc_buckwheat_2005 <- ET0_2005*buckwheat_kc_norm
ETc_buckwheat_2006 <- ET0_2006*buckwheat_kc_norm
ETc_buckwheat_2007 <- ET0_2007*buckwheat_kc_norm
ETc_buckwheat_2008 <- ET0_2008*buckwheat_kc_leap
ETc_buckwheat_2009 <- ET0_2009*buckwheat_kc_norm
ETc_buckwheat_2010 <- ET0_2010*buckwheat_kc_norm
ETc_buckwheat_2011 <- ET0_2011*buckwheat_kc_norm
ETc_buckwheat_2012 <- ET0_2012*buckwheat_kc_leap
ETc_buckwheat_2013 <- ET0_2013*buckwheat_kc_norm
write.csv(cbind(GEOID,ETc_buckwheat_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1950.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1951.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1952.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1953.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1954.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1955.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1956.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1957.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1958.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1959.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1960.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1961.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1962.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1963.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1964.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1965.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1966.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1967.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1968.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1969.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1970.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1971.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1972.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1973.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1974.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1975.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1976.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1977.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1978.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1979.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1980.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1981.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1982.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1983.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1984.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1985.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1986.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1987.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1988.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1989.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1990.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1991.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1992.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1993.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1994.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1995.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1996.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1997.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1998.csv")
write.csv(cbind(GEOID,ETc_buckwheat_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_1999.csv")
write.csv(cbind(GEOID,ETc_buckwheat_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_2000.csv")
write.csv(cbind(GEOID,ETc_buckwheat_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_2001.csv")
write.csv(cbind(GEOID,ETc_buckwheat_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_2002.csv")
write.csv(cbind(GEOID,ETc_buckwheat_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_2003.csv")
write.csv(cbind(GEOID,ETc_buckwheat_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_2004.csv")
write.csv(cbind(GEOID,ETc_buckwheat_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_2005.csv")
write.csv(cbind(GEOID,ETc_buckwheat_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_2006.csv")
write.csv(cbind(GEOID,ETc_buckwheat_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_2007.csv")
write.csv(cbind(GEOID,ETc_buckwheat_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_2008.csv")
write.csv(cbind(GEOID,ETc_buckwheat_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_2009.csv")
write.csv(cbind(GEOID,ETc_buckwheat_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_2010.csv")
write.csv(cbind(GEOID,ETc_buckwheat_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_2011.csv")
write.csv(cbind(GEOID,ETc_buckwheat_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_2012.csv")
write.csv(cbind(GEOID,ETc_buckwheat_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_buckwheat_2013.csv")
ETc_cherries_1950 <- ET0_1950*cherries_kc_norm
ETc_cherries_1951 <- ET0_1951*cherries_kc_norm
ETc_cherries_1952 <- ET0_1952*cherries_kc_leap
ETc_cherries_1953 <- ET0_1953*cherries_kc_norm
ETc_cherries_1954 <- ET0_1954*cherries_kc_norm
ETc_cherries_1955 <- ET0_1955*cherries_kc_norm
ETc_cherries_1956 <- ET0_1956*cherries_kc_leap
ETc_cherries_1957 <- ET0_1957*cherries_kc_norm
ETc_cherries_1958 <- ET0_1958*cherries_kc_norm
ETc_cherries_1959 <- ET0_1959*cherries_kc_norm
ETc_cherries_1960 <- ET0_1960*cherries_kc_leap
ETc_cherries_1961 <- ET0_1961*cherries_kc_norm
ETc_cherries_1962 <- ET0_1962*cherries_kc_norm
ETc_cherries_1963 <- ET0_1963*cherries_kc_norm
ETc_cherries_1964 <- ET0_1964*cherries_kc_leap
ETc_cherries_1965 <- ET0_1965*cherries_kc_norm
ETc_cherries_1966 <- ET0_1966*cherries_kc_norm
ETc_cherries_1967 <- ET0_1967*cherries_kc_norm
ETc_cherries_1968 <- ET0_1968*cherries_kc_leap
ETc_cherries_1969 <- ET0_1969*cherries_kc_norm
ETc_cherries_1970 <- ET0_1970*cherries_kc_norm
ETc_cherries_1971 <- ET0_1971*cherries_kc_norm
ETc_cherries_1972 <- ET0_1972*cherries_kc_leap
ETc_cherries_1973 <- ET0_1973*cherries_kc_norm
ETc_cherries_1974 <- ET0_1974*cherries_kc_norm
ETc_cherries_1975 <- ET0_1975*cherries_kc_norm
ETc_cherries_1976 <- ET0_1976*cherries_kc_leap
ETc_cherries_1977 <- ET0_1977*cherries_kc_norm
ETc_cherries_1978 <- ET0_1978*cherries_kc_norm
ETc_cherries_1979 <- ET0_1979*cherries_kc_norm
ETc_cherries_1980 <- ET0_1980*cherries_kc_leap
ETc_cherries_1981 <- ET0_1981*cherries_kc_norm
ETc_cherries_1982 <- ET0_1982*cherries_kc_norm
ETc_cherries_1983 <- ET0_1983*cherries_kc_norm
ETc_cherries_1984 <- ET0_1984*cherries_kc_leap
ETc_cherries_1985 <- ET0_1985*cherries_kc_norm
ETc_cherries_1986 <- ET0_1986*cherries_kc_norm
ETc_cherries_1987 <- ET0_1987*cherries_kc_norm
ETc_cherries_1988 <- ET0_1988*cherries_kc_leap
ETc_cherries_1989 <- ET0_1989*cherries_kc_norm
ETc_cherries_1990 <- ET0_1990*cherries_kc_norm
ETc_cherries_1991 <- ET0_1991*cherries_kc_norm
ETc_cherries_1992 <- ET0_1992*cherries_kc_leap
ETc_cherries_1993 <- ET0_1993*cherries_kc_norm
ETc_cherries_1994 <- ET0_1994*cherries_kc_norm
ETc_cherries_1995 <- ET0_1995*cherries_kc_norm
ETc_cherries_1996 <- ET0_1996*cherries_kc_leap
ETc_cherries_1997 <- ET0_1997*cherries_kc_norm
ETc_cherries_1998 <- ET0_1998*cherries_kc_norm
ETc_cherries_1999 <- ET0_1999*cherries_kc_norm
ETc_cherries_2000 <- ET0_2000*cherries_kc_leap
ETc_cherries_2001 <- ET0_2001*cherries_kc_norm
ETc_cherries_2002 <- ET0_2002*cherries_kc_norm
ETc_cherries_2003 <- ET0_2003*cherries_kc_norm
ETc_cherries_2004 <- ET0_2004*cherries_kc_leap
ETc_cherries_2005 <- ET0_2005*cherries_kc_norm
ETc_cherries_2006 <- ET0_2006*cherries_kc_norm
ETc_cherries_2007 <- ET0_2007*cherries_kc_norm
ETc_cherries_2008 <- ET0_2008*cherries_kc_leap
ETc_cherries_2009 <- ET0_2009*cherries_kc_norm
ETc_cherries_2010 <- ET0_2010*cherries_kc_norm
ETc_cherries_2011 <- ET0_2011*cherries_kc_norm
ETc_cherries_2012 <- ET0_2012*cherries_kc_leap
ETc_cherries_2013 <- ET0_2013*cherries_kc_norm
write.csv(cbind(GEOID,ETc_cherries_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1950.csv")
write.csv(cbind(GEOID,ETc_cherries_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1951.csv")
write.csv(cbind(GEOID,ETc_cherries_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1952.csv")
write.csv(cbind(GEOID,ETc_cherries_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1953.csv")
write.csv(cbind(GEOID,ETc_cherries_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1954.csv")
write.csv(cbind(GEOID,ETc_cherries_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1955.csv")
write.csv(cbind(GEOID,ETc_cherries_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1956.csv")
write.csv(cbind(GEOID,ETc_cherries_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1957.csv")
write.csv(cbind(GEOID,ETc_cherries_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1958.csv")
write.csv(cbind(GEOID,ETc_cherries_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1959.csv")
write.csv(cbind(GEOID,ETc_cherries_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1960.csv")
write.csv(cbind(GEOID,ETc_cherries_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1961.csv")
write.csv(cbind(GEOID,ETc_cherries_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1962.csv")
write.csv(cbind(GEOID,ETc_cherries_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1963.csv")
write.csv(cbind(GEOID,ETc_cherries_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1964.csv")
write.csv(cbind(GEOID,ETc_cherries_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1965.csv")
write.csv(cbind(GEOID,ETc_cherries_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1966.csv")
write.csv(cbind(GEOID,ETc_cherries_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1967.csv")
write.csv(cbind(GEOID,ETc_cherries_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1968.csv")
write.csv(cbind(GEOID,ETc_cherries_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1969.csv")
write.csv(cbind(GEOID,ETc_cherries_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1970.csv")
write.csv(cbind(GEOID,ETc_cherries_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1971.csv")
write.csv(cbind(GEOID,ETc_cherries_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1972.csv")
write.csv(cbind(GEOID,ETc_cherries_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1973.csv")
write.csv(cbind(GEOID,ETc_cherries_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1974.csv")
write.csv(cbind(GEOID,ETc_cherries_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1975.csv")
write.csv(cbind(GEOID,ETc_cherries_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1976.csv")
write.csv(cbind(GEOID,ETc_cherries_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1977.csv")
write.csv(cbind(GEOID,ETc_cherries_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1978.csv")
write.csv(cbind(GEOID,ETc_cherries_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1979.csv")
write.csv(cbind(GEOID,ETc_cherries_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1980.csv")
write.csv(cbind(GEOID,ETc_cherries_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1981.csv")
write.csv(cbind(GEOID,ETc_cherries_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1982.csv")
write.csv(cbind(GEOID,ETc_cherries_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1983.csv")
write.csv(cbind(GEOID,ETc_cherries_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1984.csv")
write.csv(cbind(GEOID,ETc_cherries_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1985.csv")
write.csv(cbind(GEOID,ETc_cherries_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1986.csv")
write.csv(cbind(GEOID,ETc_cherries_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1987.csv")
write.csv(cbind(GEOID,ETc_cherries_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1988.csv")
write.csv(cbind(GEOID,ETc_cherries_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1989.csv")
write.csv(cbind(GEOID,ETc_cherries_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1990.csv")
write.csv(cbind(GEOID,ETc_cherries_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1991.csv")
write.csv(cbind(GEOID,ETc_cherries_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1992.csv")
write.csv(cbind(GEOID,ETc_cherries_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1993.csv")
write.csv(cbind(GEOID,ETc_cherries_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1994.csv")
write.csv(cbind(GEOID,ETc_cherries_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1995.csv")
write.csv(cbind(GEOID,ETc_cherries_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1996.csv")
write.csv(cbind(GEOID,ETc_cherries_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1997.csv")
write.csv(cbind(GEOID,ETc_cherries_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1998.csv")
write.csv(cbind(GEOID,ETc_cherries_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_1999.csv")
write.csv(cbind(GEOID,ETc_cherries_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_2000.csv")
write.csv(cbind(GEOID,ETc_cherries_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_2001.csv")
write.csv(cbind(GEOID,ETc_cherries_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_2002.csv")
write.csv(cbind(GEOID,ETc_cherries_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_2003.csv")
write.csv(cbind(GEOID,ETc_cherries_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_2004.csv")
write.csv(cbind(GEOID,ETc_cherries_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_2005.csv")
write.csv(cbind(GEOID,ETc_cherries_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_2006.csv")
write.csv(cbind(GEOID,ETc_cherries_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_2007.csv")
write.csv(cbind(GEOID,ETc_cherries_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_2008.csv")
write.csv(cbind(GEOID,ETc_cherries_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_2009.csv")
write.csv(cbind(GEOID,ETc_cherries_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_2010.csv")
write.csv(cbind(GEOID,ETc_cherries_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_2011.csv")
write.csv(cbind(GEOID,ETc_cherries_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_2012.csv")
write.csv(cbind(GEOID,ETc_cherries_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_cherries_2013.csv")
ETc_citrus_1950 <- ET0_1950*citrus_kc_norm
ETc_citrus_1951 <- ET0_1951*citrus_kc_norm
ETc_citrus_1952 <- ET0_1952*citrus_kc_leap
ETc_citrus_1953 <- ET0_1953*citrus_kc_norm
ETc_citrus_1954 <- ET0_1954*citrus_kc_norm
ETc_citrus_1955 <- ET0_1955*citrus_kc_norm
ETc_citrus_1956 <- ET0_1956*citrus_kc_leap
ETc_citrus_1957 <- ET0_1957*citrus_kc_norm
ETc_citrus_1958 <- ET0_1958*citrus_kc_norm
ETc_citrus_1959 <- ET0_1959*citrus_kc_norm
ETc_citrus_1960 <- ET0_1960*citrus_kc_leap
ETc_citrus_1961 <- ET0_1961*citrus_kc_norm
ETc_citrus_1962 <- ET0_1962*citrus_kc_norm
ETc_citrus_1963 <- ET0_1963*citrus_kc_norm
ETc_citrus_1964 <- ET0_1964*citrus_kc_leap
ETc_citrus_1965 <- ET0_1965*citrus_kc_norm
ETc_citrus_1966 <- ET0_1966*citrus_kc_norm
ETc_citrus_1967 <- ET0_1967*citrus_kc_norm
ETc_citrus_1968 <- ET0_1968*citrus_kc_leap
ETc_citrus_1969 <- ET0_1969*citrus_kc_norm
ETc_citrus_1970 <- ET0_1970*citrus_kc_norm
ETc_citrus_1971 <- ET0_1971*citrus_kc_norm
ETc_citrus_1972 <- ET0_1972*citrus_kc_leap
ETc_citrus_1973 <- ET0_1973*citrus_kc_norm
ETc_citrus_1974 <- ET0_1974*citrus_kc_norm
ETc_citrus_1975 <- ET0_1975*citrus_kc_norm
ETc_citrus_1976 <- ET0_1976*citrus_kc_leap
ETc_citrus_1977 <- ET0_1977*citrus_kc_norm
ETc_citrus_1978 <- ET0_1978*citrus_kc_norm
ETc_citrus_1979 <- ET0_1979*citrus_kc_norm
ETc_citrus_1980 <- ET0_1980*citrus_kc_leap
ETc_citrus_1981 <- ET0_1981*citrus_kc_norm
ETc_citrus_1982 <- ET0_1982*citrus_kc_norm
ETc_citrus_1983 <- ET0_1983*citrus_kc_norm
ETc_citrus_1984 <- ET0_1984*citrus_kc_leap
ETc_citrus_1985 <- ET0_1985*citrus_kc_norm
ETc_citrus_1986 <- ET0_1986*citrus_kc_norm
ETc_citrus_1987 <- ET0_1987*citrus_kc_norm
ETc_citrus_1988 <- ET0_1988*citrus_kc_leap
ETc_citrus_1989 <- ET0_1989*citrus_kc_norm
ETc_citrus_1990 <- ET0_1990*citrus_kc_norm
ETc_citrus_1991 <- ET0_1991*citrus_kc_norm
ETc_citrus_1992 <- ET0_1992*citrus_kc_leap
ETc_citrus_1993 <- ET0_1993*citrus_kc_norm
ETc_citrus_1994 <- ET0_1994*citrus_kc_norm
ETc_citrus_1995 <- ET0_1995*citrus_kc_norm
ETc_citrus_1996 <- ET0_1996*citrus_kc_leap
ETc_citrus_1997 <- ET0_1997*citrus_kc_norm
ETc_citrus_1998 <- ET0_1998*citrus_kc_norm
ETc_citrus_1999 <- ET0_1999*citrus_kc_norm
ETc_citrus_2000 <- ET0_2000*citrus_kc_leap
ETc_citrus_2001 <- ET0_2001*citrus_kc_norm
ETc_citrus_2002 <- ET0_2002*citrus_kc_norm
ETc_citrus_2003 <- ET0_2003*citrus_kc_norm
ETc_citrus_2004 <- ET0_2004*citrus_kc_leap
ETc_citrus_2005 <- ET0_2005*citrus_kc_norm
ETc_citrus_2006 <- ET0_2006*citrus_kc_norm
ETc_citrus_2007 <- ET0_2007*citrus_kc_norm
ETc_citrus_2008 <- ET0_2008*citrus_kc_leap
ETc_citrus_2009 <- ET0_2009*citrus_kc_norm
ETc_citrus_2010 <- ET0_2010*citrus_kc_norm
ETc_citrus_2011 <- ET0_2011*citrus_kc_norm
ETc_citrus_2012 <- ET0_2012*citrus_kc_leap
ETc_citrus_2013 <- ET0_2013*citrus_kc_norm
write.csv(cbind(GEOID,ETc_citrus_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1950.csv")
write.csv(cbind(GEOID,ETc_citrus_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1951.csv")
write.csv(cbind(GEOID,ETc_citrus_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1952.csv")
write.csv(cbind(GEOID,ETc_citrus_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1953.csv")
write.csv(cbind(GEOID,ETc_citrus_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1954.csv")
write.csv(cbind(GEOID,ETc_citrus_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1955.csv")
write.csv(cbind(GEOID,ETc_citrus_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1956.csv")
write.csv(cbind(GEOID,ETc_citrus_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1957.csv")
write.csv(cbind(GEOID,ETc_citrus_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1958.csv")
write.csv(cbind(GEOID,ETc_citrus_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1959.csv")
write.csv(cbind(GEOID,ETc_citrus_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1960.csv")
write.csv(cbind(GEOID,ETc_citrus_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1961.csv")
write.csv(cbind(GEOID,ETc_citrus_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1962.csv")
write.csv(cbind(GEOID,ETc_citrus_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1963.csv")
write.csv(cbind(GEOID,ETc_citrus_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1964.csv")
write.csv(cbind(GEOID,ETc_citrus_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1965.csv")
write.csv(cbind(GEOID,ETc_citrus_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1966.csv")
write.csv(cbind(GEOID,ETc_citrus_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1967.csv")
write.csv(cbind(GEOID,ETc_citrus_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1968.csv")
write.csv(cbind(GEOID,ETc_citrus_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1969.csv")
write.csv(cbind(GEOID,ETc_citrus_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1970.csv")
write.csv(cbind(GEOID,ETc_citrus_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1971.csv")
write.csv(cbind(GEOID,ETc_citrus_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1972.csv")
write.csv(cbind(GEOID,ETc_citrus_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1973.csv")
write.csv(cbind(GEOID,ETc_citrus_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1974.csv")
write.csv(cbind(GEOID,ETc_citrus_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1975.csv")
write.csv(cbind(GEOID,ETc_citrus_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1976.csv")
write.csv(cbind(GEOID,ETc_citrus_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1977.csv")
write.csv(cbind(GEOID,ETc_citrus_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1978.csv")
write.csv(cbind(GEOID,ETc_citrus_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1979.csv")
write.csv(cbind(GEOID,ETc_citrus_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1980.csv")
write.csv(cbind(GEOID,ETc_citrus_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1981.csv")
write.csv(cbind(GEOID,ETc_citrus_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1982.csv")
write.csv(cbind(GEOID,ETc_citrus_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1983.csv")
write.csv(cbind(GEOID,ETc_citrus_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1984.csv")
write.csv(cbind(GEOID,ETc_citrus_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1985.csv")
write.csv(cbind(GEOID,ETc_citrus_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1986.csv")
write.csv(cbind(GEOID,ETc_citrus_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1987.csv")
write.csv(cbind(GEOID,ETc_citrus_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1988.csv")
write.csv(cbind(GEOID,ETc_citrus_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1989.csv")
write.csv(cbind(GEOID,ETc_citrus_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1990.csv")
write.csv(cbind(GEOID,ETc_citrus_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1991.csv")
write.csv(cbind(GEOID,ETc_citrus_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1992.csv")
write.csv(cbind(GEOID,ETc_citrus_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1993.csv")
write.csv(cbind(GEOID,ETc_citrus_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1994.csv")
write.csv(cbind(GEOID,ETc_citrus_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1995.csv")
write.csv(cbind(GEOID,ETc_citrus_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1996.csv")
write.csv(cbind(GEOID,ETc_citrus_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1997.csv")
write.csv(cbind(GEOID,ETc_citrus_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1998.csv")
write.csv(cbind(GEOID,ETc_citrus_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_1999.csv")
write.csv(cbind(GEOID,ETc_citrus_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_2000.csv")
write.csv(cbind(GEOID,ETc_citrus_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_2001.csv")
write.csv(cbind(GEOID,ETc_citrus_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_2002.csv")
write.csv(cbind(GEOID,ETc_citrus_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_2003.csv")
write.csv(cbind(GEOID,ETc_citrus_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_2004.csv")
write.csv(cbind(GEOID,ETc_citrus_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_2005.csv")
write.csv(cbind(GEOID,ETc_citrus_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_2006.csv")
write.csv(cbind(GEOID,ETc_citrus_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_2007.csv")
write.csv(cbind(GEOID,ETc_citrus_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_2008.csv")
write.csv(cbind(GEOID,ETc_citrus_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_2009.csv")
write.csv(cbind(GEOID,ETc_citrus_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_2010.csv")
write.csv(cbind(GEOID,ETc_citrus_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_2011.csv")
write.csv(cbind(GEOID,ETc_citrus_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_2012.csv")
write.csv(cbind(GEOID,ETc_citrus_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_citrus_2013.csv")
ETc_grape_1950 <- ET0_1950*grape_kc_norm
ETc_grape_1951 <- ET0_1951*grape_kc_norm
ETc_grape_1952 <- ET0_1952*grape_kc_leap
ETc_grape_1953 <- ET0_1953*grape_kc_norm
ETc_grape_1954 <- ET0_1954*grape_kc_norm
ETc_grape_1955 <- ET0_1955*grape_kc_norm
ETc_grape_1956 <- ET0_1956*grape_kc_leap
ETc_grape_1957 <- ET0_1957*grape_kc_norm
ETc_grape_1958 <- ET0_1958*grape_kc_norm
ETc_grape_1959 <- ET0_1959*grape_kc_norm
ETc_grape_1960 <- ET0_1960*grape_kc_leap
ETc_grape_1961 <- ET0_1961*grape_kc_norm
ETc_grape_1962 <- ET0_1962*grape_kc_norm
ETc_grape_1963 <- ET0_1963*grape_kc_norm
ETc_grape_1964 <- ET0_1964*grape_kc_leap
ETc_grape_1965 <- ET0_1965*grape_kc_norm
ETc_grape_1966 <- ET0_1966*grape_kc_norm
ETc_grape_1967 <- ET0_1967*grape_kc_norm
ETc_grape_1968 <- ET0_1968*grape_kc_leap
ETc_grape_1969 <- ET0_1969*grape_kc_norm
ETc_grape_1970 <- ET0_1970*grape_kc_norm
ETc_grape_1971 <- ET0_1971*grape_kc_norm
ETc_grape_1972 <- ET0_1972*grape_kc_leap
ETc_grape_1973 <- ET0_1973*grape_kc_norm
ETc_grape_1974 <- ET0_1974*grape_kc_norm
ETc_grape_1975 <- ET0_1975*grape_kc_norm
ETc_grape_1976 <- ET0_1976*grape_kc_leap
ETc_grape_1977 <- ET0_1977*grape_kc_norm
ETc_grape_1978 <- ET0_1978*grape_kc_norm
ETc_grape_1979 <- ET0_1979*grape_kc_norm
ETc_grape_1980 <- ET0_1980*grape_kc_leap
ETc_grape_1981 <- ET0_1981*grape_kc_norm
ETc_grape_1982 <- ET0_1982*grape_kc_norm
ETc_grape_1983 <- ET0_1983*grape_kc_norm
ETc_grape_1984 <- ET0_1984*grape_kc_leap
ETc_grape_1985 <- ET0_1985*grape_kc_norm
ETc_grape_1986 <- ET0_1986*grape_kc_norm
ETc_grape_1987 <- ET0_1987*grape_kc_norm
ETc_grape_1988 <- ET0_1988*grape_kc_leap
ETc_grape_1989 <- ET0_1989*grape_kc_norm
ETc_grape_1990 <- ET0_1990*grape_kc_norm
ETc_grape_1991 <- ET0_1991*grape_kc_norm
ETc_grape_1992 <- ET0_1992*grape_kc_leap
ETc_grape_1993 <- ET0_1993*grape_kc_norm
ETc_grape_1994 <- ET0_1994*grape_kc_norm
ETc_grape_1995 <- ET0_1995*grape_kc_norm
ETc_grape_1996 <- ET0_1996*grape_kc_leap
ETc_grape_1997 <- ET0_1997*grape_kc_norm
ETc_grape_1998 <- ET0_1998*grape_kc_norm
ETc_grape_1999 <- ET0_1999*grape_kc_norm
ETc_grape_2000 <- ET0_2000*grape_kc_leap
ETc_grape_2001 <- ET0_2001*grape_kc_norm
ETc_grape_2002 <- ET0_2002*grape_kc_norm
ETc_grape_2003 <- ET0_2003*grape_kc_norm
ETc_grape_2004 <- ET0_2004*grape_kc_leap
ETc_grape_2005 <- ET0_2005*grape_kc_norm
ETc_grape_2006 <- ET0_2006*grape_kc_norm
ETc_grape_2007 <- ET0_2007*grape_kc_norm
ETc_grape_2008 <- ET0_2008*grape_kc_leap
ETc_grape_2009 <- ET0_2009*grape_kc_norm
ETc_grape_2010 <- ET0_2010*grape_kc_norm
ETc_grape_2011 <- ET0_2011*grape_kc_norm
ETc_grape_2012 <- ET0_2012*grape_kc_leap
ETc_grape_2013 <- ET0_2013*grape_kc_norm
write.csv(cbind(GEOID,ETc_grape_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1950.csv")
write.csv(cbind(GEOID,ETc_grape_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1951.csv")
write.csv(cbind(GEOID,ETc_grape_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1952.csv")
write.csv(cbind(GEOID,ETc_grape_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1953.csv")
write.csv(cbind(GEOID,ETc_grape_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1954.csv")
write.csv(cbind(GEOID,ETc_grape_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1955.csv")
write.csv(cbind(GEOID,ETc_grape_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1956.csv")
write.csv(cbind(GEOID,ETc_grape_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1957.csv")
write.csv(cbind(GEOID,ETc_grape_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1958.csv")
write.csv(cbind(GEOID,ETc_grape_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1959.csv")
write.csv(cbind(GEOID,ETc_grape_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1960.csv")
write.csv(cbind(GEOID,ETc_grape_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1961.csv")
write.csv(cbind(GEOID,ETc_grape_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1962.csv")
write.csv(cbind(GEOID,ETc_grape_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1963.csv")
write.csv(cbind(GEOID,ETc_grape_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1964.csv")
write.csv(cbind(GEOID,ETc_grape_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1965.csv")
write.csv(cbind(GEOID,ETc_grape_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1966.csv")
write.csv(cbind(GEOID,ETc_grape_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1967.csv")
write.csv(cbind(GEOID,ETc_grape_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1968.csv")
write.csv(cbind(GEOID,ETc_grape_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1969.csv")
write.csv(cbind(GEOID,ETc_grape_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1970.csv")
write.csv(cbind(GEOID,ETc_grape_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1971.csv")
write.csv(cbind(GEOID,ETc_grape_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1972.csv")
write.csv(cbind(GEOID,ETc_grape_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1973.csv")
write.csv(cbind(GEOID,ETc_grape_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1974.csv")
write.csv(cbind(GEOID,ETc_grape_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1975.csv")
write.csv(cbind(GEOID,ETc_grape_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1976.csv")
write.csv(cbind(GEOID,ETc_grape_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1977.csv")
write.csv(cbind(GEOID,ETc_grape_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1978.csv")
write.csv(cbind(GEOID,ETc_grape_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1979.csv")
write.csv(cbind(GEOID,ETc_grape_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1980.csv")
write.csv(cbind(GEOID,ETc_grape_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1981.csv")
write.csv(cbind(GEOID,ETc_grape_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1982.csv")
write.csv(cbind(GEOID,ETc_grape_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1983.csv")
write.csv(cbind(GEOID,ETc_grape_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1984.csv")
write.csv(cbind(GEOID,ETc_grape_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1985.csv")
write.csv(cbind(GEOID,ETc_grape_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1986.csv")
write.csv(cbind(GEOID,ETc_grape_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1987.csv")
write.csv(cbind(GEOID,ETc_grape_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1988.csv")
write.csv(cbind(GEOID,ETc_grape_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1989.csv")
write.csv(cbind(GEOID,ETc_grape_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1990.csv")
write.csv(cbind(GEOID,ETc_grape_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1991.csv")
write.csv(cbind(GEOID,ETc_grape_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1992.csv")
write.csv(cbind(GEOID,ETc_grape_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1993.csv")
write.csv(cbind(GEOID,ETc_grape_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1994.csv")
write.csv(cbind(GEOID,ETc_grape_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1995.csv")
write.csv(cbind(GEOID,ETc_grape_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1996.csv")
write.csv(cbind(GEOID,ETc_grape_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1997.csv")
write.csv(cbind(GEOID,ETc_grape_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1998.csv")
write.csv(cbind(GEOID,ETc_grape_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_1999.csv")
write.csv(cbind(GEOID,ETc_grape_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_2000.csv")
write.csv(cbind(GEOID,ETc_grape_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_2001.csv")
write.csv(cbind(GEOID,ETc_grape_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_2002.csv")
write.csv(cbind(GEOID,ETc_grape_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_2003.csv")
write.csv(cbind(GEOID,ETc_grape_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_2004.csv")
write.csv(cbind(GEOID,ETc_grape_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_2005.csv")
write.csv(cbind(GEOID,ETc_grape_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_2006.csv")
write.csv(cbind(GEOID,ETc_grape_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_2007.csv")
write.csv(cbind(GEOID,ETc_grape_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_2008.csv")
write.csv(cbind(GEOID,ETc_grape_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_2009.csv")
write.csv(cbind(GEOID,ETc_grape_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_2010.csv")
write.csv(cbind(GEOID,ETc_grape_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_2011.csv")
write.csv(cbind(GEOID,ETc_grape_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_2012.csv")
write.csv(cbind(GEOID,ETc_grape_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_grape_2013.csv")
ETc_hay_all_1950 <- ET0_1950*hay_all_kc_norm
ETc_hay_all_1951 <- ET0_1951*hay_all_kc_norm
ETc_hay_all_1952 <- ET0_1952*hay_all_kc_leap
ETc_hay_all_1953 <- ET0_1953*hay_all_kc_norm
ETc_hay_all_1954 <- ET0_1954*hay_all_kc_norm
ETc_hay_all_1955 <- ET0_1955*hay_all_kc_norm
ETc_hay_all_1956 <- ET0_1956*hay_all_kc_leap
ETc_hay_all_1957 <- ET0_1957*hay_all_kc_norm
ETc_hay_all_1958 <- ET0_1958*hay_all_kc_norm
ETc_hay_all_1959 <- ET0_1959*hay_all_kc_norm
ETc_hay_all_1960 <- ET0_1960*hay_all_kc_leap
ETc_hay_all_1961 <- ET0_1961*hay_all_kc_norm
ETc_hay_all_1962 <- ET0_1962*hay_all_kc_norm
ETc_hay_all_1963 <- ET0_1963*hay_all_kc_norm
ETc_hay_all_1964 <- ET0_1964*hay_all_kc_leap
ETc_hay_all_1965 <- ET0_1965*hay_all_kc_norm
ETc_hay_all_1966 <- ET0_1966*hay_all_kc_norm
ETc_hay_all_1967 <- ET0_1967*hay_all_kc_norm
ETc_hay_all_1968 <- ET0_1968*hay_all_kc_leap
ETc_hay_all_1969 <- ET0_1969*hay_all_kc_norm
ETc_hay_all_1970 <- ET0_1970*hay_all_kc_norm
ETc_hay_all_1971 <- ET0_1971*hay_all_kc_norm
ETc_hay_all_1972 <- ET0_1972*hay_all_kc_leap
ETc_hay_all_1973 <- ET0_1973*hay_all_kc_norm
ETc_hay_all_1974 <- ET0_1974*hay_all_kc_norm
ETc_hay_all_1975 <- ET0_1975*hay_all_kc_norm
ETc_hay_all_1976 <- ET0_1976*hay_all_kc_leap
ETc_hay_all_1977 <- ET0_1977*hay_all_kc_norm
ETc_hay_all_1978 <- ET0_1978*hay_all_kc_norm
ETc_hay_all_1979 <- ET0_1979*hay_all_kc_norm
ETc_hay_all_1980 <- ET0_1980*hay_all_kc_leap
ETc_hay_all_1981 <- ET0_1981*hay_all_kc_norm
ETc_hay_all_1982 <- ET0_1982*hay_all_kc_norm
ETc_hay_all_1983 <- ET0_1983*hay_all_kc_norm
ETc_hay_all_1984 <- ET0_1984*hay_all_kc_leap
ETc_hay_all_1985 <- ET0_1985*hay_all_kc_norm
ETc_hay_all_1986 <- ET0_1986*hay_all_kc_norm
ETc_hay_all_1987 <- ET0_1987*hay_all_kc_norm
ETc_hay_all_1988 <- ET0_1988*hay_all_kc_leap
ETc_hay_all_1989 <- ET0_1989*hay_all_kc_norm
ETc_hay_all_1990 <- ET0_1990*hay_all_kc_norm
ETc_hay_all_1991 <- ET0_1991*hay_all_kc_norm
ETc_hay_all_1992 <- ET0_1992*hay_all_kc_leap
ETc_hay_all_1993 <- ET0_1993*hay_all_kc_norm
ETc_hay_all_1994 <- ET0_1994*hay_all_kc_norm
ETc_hay_all_1995 <- ET0_1995*hay_all_kc_norm
ETc_hay_all_1996 <- ET0_1996*hay_all_kc_leap
ETc_hay_all_1997 <- ET0_1997*hay_all_kc_norm
ETc_hay_all_1998 <- ET0_1998*hay_all_kc_norm
ETc_hay_all_1999 <- ET0_1999*hay_all_kc_norm
ETc_hay_all_2000 <- ET0_2000*hay_all_kc_leap
ETc_hay_all_2001 <- ET0_2001*hay_all_kc_norm
ETc_hay_all_2002 <- ET0_2002*hay_all_kc_norm
ETc_hay_all_2003 <- ET0_2003*hay_all_kc_norm
ETc_hay_all_2004 <- ET0_2004*hay_all_kc_leap
ETc_hay_all_2005 <- ET0_2005*hay_all_kc_norm
ETc_hay_all_2006 <- ET0_2006*hay_all_kc_norm
ETc_hay_all_2007 <- ET0_2007*hay_all_kc_norm
ETc_hay_all_2008 <- ET0_2008*hay_all_kc_leap
ETc_hay_all_2009 <- ET0_2009*hay_all_kc_norm
ETc_hay_all_2010 <- ET0_2010*hay_all_kc_norm
ETc_hay_all_2011 <- ET0_2011*hay_all_kc_norm
ETc_hay_all_2012 <- ET0_2012*hay_all_kc_leap
ETc_hay_all_2013 <- ET0_2013*hay_all_kc_norm
write.csv(cbind(GEOID,ETc_hay_all_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1950.csv")
write.csv(cbind(GEOID,ETc_hay_all_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1951.csv")
write.csv(cbind(GEOID,ETc_hay_all_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1952.csv")
write.csv(cbind(GEOID,ETc_hay_all_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1953.csv")
write.csv(cbind(GEOID,ETc_hay_all_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1954.csv")
write.csv(cbind(GEOID,ETc_hay_all_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1955.csv")
write.csv(cbind(GEOID,ETc_hay_all_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1956.csv")
write.csv(cbind(GEOID,ETc_hay_all_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1957.csv")
write.csv(cbind(GEOID,ETc_hay_all_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1958.csv")
write.csv(cbind(GEOID,ETc_hay_all_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1959.csv")
write.csv(cbind(GEOID,ETc_hay_all_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1960.csv")
write.csv(cbind(GEOID,ETc_hay_all_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1961.csv")
write.csv(cbind(GEOID,ETc_hay_all_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1962.csv")
write.csv(cbind(GEOID,ETc_hay_all_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1963.csv")
write.csv(cbind(GEOID,ETc_hay_all_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1964.csv")
write.csv(cbind(GEOID,ETc_hay_all_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1965.csv")
write.csv(cbind(GEOID,ETc_hay_all_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1966.csv")
write.csv(cbind(GEOID,ETc_hay_all_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1967.csv")
write.csv(cbind(GEOID,ETc_hay_all_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1968.csv")
write.csv(cbind(GEOID,ETc_hay_all_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1969.csv")
write.csv(cbind(GEOID,ETc_hay_all_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1970.csv")
write.csv(cbind(GEOID,ETc_hay_all_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1971.csv")
write.csv(cbind(GEOID,ETc_hay_all_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1972.csv")
write.csv(cbind(GEOID,ETc_hay_all_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1973.csv")
write.csv(cbind(GEOID,ETc_hay_all_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1974.csv")
write.csv(cbind(GEOID,ETc_hay_all_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1975.csv")
write.csv(cbind(GEOID,ETc_hay_all_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1976.csv")
write.csv(cbind(GEOID,ETc_hay_all_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1977.csv")
write.csv(cbind(GEOID,ETc_hay_all_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1978.csv")
write.csv(cbind(GEOID,ETc_hay_all_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1979.csv")
write.csv(cbind(GEOID,ETc_hay_all_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1980.csv")
write.csv(cbind(GEOID,ETc_hay_all_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1981.csv")
write.csv(cbind(GEOID,ETc_hay_all_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1982.csv")
write.csv(cbind(GEOID,ETc_hay_all_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1983.csv")
write.csv(cbind(GEOID,ETc_hay_all_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1984.csv")
write.csv(cbind(GEOID,ETc_hay_all_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1985.csv")
write.csv(cbind(GEOID,ETc_hay_all_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1986.csv")
write.csv(cbind(GEOID,ETc_hay_all_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1987.csv")
write.csv(cbind(GEOID,ETc_hay_all_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1988.csv")
write.csv(cbind(GEOID,ETc_hay_all_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1989.csv")
write.csv(cbind(GEOID,ETc_hay_all_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1990.csv")
write.csv(cbind(GEOID,ETc_hay_all_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1991.csv")
write.csv(cbind(GEOID,ETc_hay_all_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1992.csv")
write.csv(cbind(GEOID,ETc_hay_all_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1993.csv")
write.csv(cbind(GEOID,ETc_hay_all_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1994.csv")
write.csv(cbind(GEOID,ETc_hay_all_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1995.csv")
write.csv(cbind(GEOID,ETc_hay_all_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1996.csv")
write.csv(cbind(GEOID,ETc_hay_all_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1997.csv")
write.csv(cbind(GEOID,ETc_hay_all_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1998.csv")
write.csv(cbind(GEOID,ETc_hay_all_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_1999.csv")
write.csv(cbind(GEOID,ETc_hay_all_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_2000.csv")
write.csv(cbind(GEOID,ETc_hay_all_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_2001.csv")
write.csv(cbind(GEOID,ETc_hay_all_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_2002.csv")
write.csv(cbind(GEOID,ETc_hay_all_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_2003.csv")
write.csv(cbind(GEOID,ETc_hay_all_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_2004.csv")
write.csv(cbind(GEOID,ETc_hay_all_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_2005.csv")
write.csv(cbind(GEOID,ETc_hay_all_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_2006.csv")
write.csv(cbind(GEOID,ETc_hay_all_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_2007.csv")
write.csv(cbind(GEOID,ETc_hay_all_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_2008.csv")
write.csv(cbind(GEOID,ETc_hay_all_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_2009.csv")
write.csv(cbind(GEOID,ETc_hay_all_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_2010.csv")
write.csv(cbind(GEOID,ETc_hay_all_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_2011.csv")
write.csv(cbind(GEOID,ETc_hay_all_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_2012.csv")
write.csv(cbind(GEOID,ETc_hay_all_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hay_all_2013.csv")
ETc_hotpeppers_1950 <- ET0_1950*hotpeppers_kc_norm
ETc_hotpeppers_1951 <- ET0_1951*hotpeppers_kc_norm
ETc_hotpeppers_1952 <- ET0_1952*hotpeppers_kc_leap
ETc_hotpeppers_1953 <- ET0_1953*hotpeppers_kc_norm
ETc_hotpeppers_1954 <- ET0_1954*hotpeppers_kc_norm
ETc_hotpeppers_1955 <- ET0_1955*hotpeppers_kc_norm
ETc_hotpeppers_1956 <- ET0_1956*hotpeppers_kc_leap
ETc_hotpeppers_1957 <- ET0_1957*hotpeppers_kc_norm
ETc_hotpeppers_1958 <- ET0_1958*hotpeppers_kc_norm
ETc_hotpeppers_1959 <- ET0_1959*hotpeppers_kc_norm
ETc_hotpeppers_1960 <- ET0_1960*hotpeppers_kc_leap
ETc_hotpeppers_1961 <- ET0_1961*hotpeppers_kc_norm
ETc_hotpeppers_1962 <- ET0_1962*hotpeppers_kc_norm
ETc_hotpeppers_1963 <- ET0_1963*hotpeppers_kc_norm
ETc_hotpeppers_1964 <- ET0_1964*hotpeppers_kc_leap
ETc_hotpeppers_1965 <- ET0_1965*hotpeppers_kc_norm
ETc_hotpeppers_1966 <- ET0_1966*hotpeppers_kc_norm
ETc_hotpeppers_1967 <- ET0_1967*hotpeppers_kc_norm
ETc_hotpeppers_1968 <- ET0_1968*hotpeppers_kc_leap
ETc_hotpeppers_1969 <- ET0_1969*hotpeppers_kc_norm
ETc_hotpeppers_1970 <- ET0_1970*hotpeppers_kc_norm
ETc_hotpeppers_1971 <- ET0_1971*hotpeppers_kc_norm
ETc_hotpeppers_1972 <- ET0_1972*hotpeppers_kc_leap
ETc_hotpeppers_1973 <- ET0_1973*hotpeppers_kc_norm
ETc_hotpeppers_1974 <- ET0_1974*hotpeppers_kc_norm
ETc_hotpeppers_1975 <- ET0_1975*hotpeppers_kc_norm
ETc_hotpeppers_1976 <- ET0_1976*hotpeppers_kc_leap
ETc_hotpeppers_1977 <- ET0_1977*hotpeppers_kc_norm
ETc_hotpeppers_1978 <- ET0_1978*hotpeppers_kc_norm
ETc_hotpeppers_1979 <- ET0_1979*hotpeppers_kc_norm
ETc_hotpeppers_1980 <- ET0_1980*hotpeppers_kc_leap
ETc_hotpeppers_1981 <- ET0_1981*hotpeppers_kc_norm
ETc_hotpeppers_1982 <- ET0_1982*hotpeppers_kc_norm
ETc_hotpeppers_1983 <- ET0_1983*hotpeppers_kc_norm
ETc_hotpeppers_1984 <- ET0_1984*hotpeppers_kc_leap
ETc_hotpeppers_1985 <- ET0_1985*hotpeppers_kc_norm
ETc_hotpeppers_1986 <- ET0_1986*hotpeppers_kc_norm
ETc_hotpeppers_1987 <- ET0_1987*hotpeppers_kc_norm
ETc_hotpeppers_1988 <- ET0_1988*hotpeppers_kc_leap
ETc_hotpeppers_1989 <- ET0_1989*hotpeppers_kc_norm
ETc_hotpeppers_1990 <- ET0_1990*hotpeppers_kc_norm
ETc_hotpeppers_1991 <- ET0_1991*hotpeppers_kc_norm
ETc_hotpeppers_1992 <- ET0_1992*hotpeppers_kc_leap
ETc_hotpeppers_1993 <- ET0_1993*hotpeppers_kc_norm
ETc_hotpeppers_1994 <- ET0_1994*hotpeppers_kc_norm
ETc_hotpeppers_1995 <- ET0_1995*hotpeppers_kc_norm
ETc_hotpeppers_1996 <- ET0_1996*hotpeppers_kc_leap
ETc_hotpeppers_1997 <- ET0_1997*hotpeppers_kc_norm
ETc_hotpeppers_1998 <- ET0_1998*hotpeppers_kc_norm
ETc_hotpeppers_1999 <- ET0_1999*hotpeppers_kc_norm
ETc_hotpeppers_2000 <- ET0_2000*hotpeppers_kc_leap
ETc_hotpeppers_2001 <- ET0_2001*hotpeppers_kc_norm
ETc_hotpeppers_2002 <- ET0_2002*hotpeppers_kc_norm
ETc_hotpeppers_2003 <- ET0_2003*hotpeppers_kc_norm
ETc_hotpeppers_2004 <- ET0_2004*hotpeppers_kc_leap
ETc_hotpeppers_2005 <- ET0_2005*hotpeppers_kc_norm
ETc_hotpeppers_2006 <- ET0_2006*hotpeppers_kc_norm
ETc_hotpeppers_2007 <- ET0_2007*hotpeppers_kc_norm
ETc_hotpeppers_2008 <- ET0_2008*hotpeppers_kc_leap
ETc_hotpeppers_2009 <- ET0_2009*hotpeppers_kc_norm
ETc_hotpeppers_2010 <- ET0_2010*hotpeppers_kc_norm
ETc_hotpeppers_2011 <- ET0_2011*hotpeppers_kc_norm
ETc_hotpeppers_2012 <- ET0_2012*hotpeppers_kc_leap
ETc_hotpeppers_2013 <- ET0_2013*hotpeppers_kc_norm
write.csv(cbind(GEOID,ETc_hotpeppers_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1950.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1951.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1952.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1953.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1954.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1955.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1956.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1957.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1958.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1959.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1960.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1961.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1962.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1963.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1964.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1965.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1966.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1967.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1968.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1969.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1970.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1971.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1972.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1973.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1974.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1975.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1976.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1977.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1978.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1979.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1980.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1981.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1982.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1983.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1984.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1985.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1986.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1987.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1988.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1989.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1990.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1991.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1992.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1993.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1994.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1995.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1996.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1997.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1998.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_1999.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_2000.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_2001.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_2002.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_2003.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_2004.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_2005.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_2006.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_2007.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_2008.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_2009.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_2010.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_2011.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_2012.csv")
write.csv(cbind(GEOID,ETc_hotpeppers_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_hotpeppers_2013.csv")
ETc_lettuce_1950 <- ET0_1950*lettuce_kc_norm
ETc_lettuce_1951 <- ET0_1951*lettuce_kc_norm
ETc_lettuce_1952 <- ET0_1952*lettuce_kc_leap
ETc_lettuce_1953 <- ET0_1953*lettuce_kc_norm
ETc_lettuce_1954 <- ET0_1954*lettuce_kc_norm
ETc_lettuce_1955 <- ET0_1955*lettuce_kc_norm
ETc_lettuce_1956 <- ET0_1956*lettuce_kc_leap
ETc_lettuce_1957 <- ET0_1957*lettuce_kc_norm
ETc_lettuce_1958 <- ET0_1958*lettuce_kc_norm
ETc_lettuce_1959 <- ET0_1959*lettuce_kc_norm
ETc_lettuce_1960 <- ET0_1960*lettuce_kc_leap
ETc_lettuce_1961 <- ET0_1961*lettuce_kc_norm
ETc_lettuce_1962 <- ET0_1962*lettuce_kc_norm
ETc_lettuce_1963 <- ET0_1963*lettuce_kc_norm
ETc_lettuce_1964 <- ET0_1964*lettuce_kc_leap
ETc_lettuce_1965 <- ET0_1965*lettuce_kc_norm
ETc_lettuce_1966 <- ET0_1966*lettuce_kc_norm
ETc_lettuce_1967 <- ET0_1967*lettuce_kc_norm
ETc_lettuce_1968 <- ET0_1968*lettuce_kc_leap
ETc_lettuce_1969 <- ET0_1969*lettuce_kc_norm
ETc_lettuce_1970 <- ET0_1970*lettuce_kc_norm
ETc_lettuce_1971 <- ET0_1971*lettuce_kc_norm
ETc_lettuce_1972 <- ET0_1972*lettuce_kc_leap
ETc_lettuce_1973 <- ET0_1973*lettuce_kc_norm
ETc_lettuce_1974 <- ET0_1974*lettuce_kc_norm
ETc_lettuce_1975 <- ET0_1975*lettuce_kc_norm
ETc_lettuce_1976 <- ET0_1976*lettuce_kc_leap
ETc_lettuce_1977 <- ET0_1977*lettuce_kc_norm
ETc_lettuce_1978 <- ET0_1978*lettuce_kc_norm
ETc_lettuce_1979 <- ET0_1979*lettuce_kc_norm
ETc_lettuce_1980 <- ET0_1980*lettuce_kc_leap
ETc_lettuce_1981 <- ET0_1981*lettuce_kc_norm
ETc_lettuce_1982 <- ET0_1982*lettuce_kc_norm
ETc_lettuce_1983 <- ET0_1983*lettuce_kc_norm
ETc_lettuce_1984 <- ET0_1984*lettuce_kc_leap
ETc_lettuce_1985 <- ET0_1985*lettuce_kc_norm
ETc_lettuce_1986 <- ET0_1986*lettuce_kc_norm
ETc_lettuce_1987 <- ET0_1987*lettuce_kc_norm
ETc_lettuce_1988 <- ET0_1988*lettuce_kc_leap
ETc_lettuce_1989 <- ET0_1989*lettuce_kc_norm
ETc_lettuce_1990 <- ET0_1990*lettuce_kc_norm
ETc_lettuce_1991 <- ET0_1991*lettuce_kc_norm
ETc_lettuce_1992 <- ET0_1992*lettuce_kc_leap
ETc_lettuce_1993 <- ET0_1993*lettuce_kc_norm
ETc_lettuce_1994 <- ET0_1994*lettuce_kc_norm
ETc_lettuce_1995 <- ET0_1995*lettuce_kc_norm
ETc_lettuce_1996 <- ET0_1996*lettuce_kc_leap
ETc_lettuce_1997 <- ET0_1997*lettuce_kc_norm
ETc_lettuce_1998 <- ET0_1998*lettuce_kc_norm
ETc_lettuce_1999 <- ET0_1999*lettuce_kc_norm
ETc_lettuce_2000 <- ET0_2000*lettuce_kc_leap
ETc_lettuce_2001 <- ET0_2001*lettuce_kc_norm
ETc_lettuce_2002 <- ET0_2002*lettuce_kc_norm
ETc_lettuce_2003 <- ET0_2003*lettuce_kc_norm
ETc_lettuce_2004 <- ET0_2004*lettuce_kc_leap
ETc_lettuce_2005 <- ET0_2005*lettuce_kc_norm
ETc_lettuce_2006 <- ET0_2006*lettuce_kc_norm
ETc_lettuce_2007 <- ET0_2007*lettuce_kc_norm
ETc_lettuce_2008 <- ET0_2008*lettuce_kc_leap
ETc_lettuce_2009 <- ET0_2009*lettuce_kc_norm
ETc_lettuce_2010 <- ET0_2010*lettuce_kc_norm
ETc_lettuce_2011 <- ET0_2011*lettuce_kc_norm
ETc_lettuce_2012 <- ET0_2012*lettuce_kc_leap
ETc_lettuce_2013 <- ET0_2013*lettuce_kc_norm
write.csv(cbind(GEOID,ETc_lettuce_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1950.csv")
write.csv(cbind(GEOID,ETc_lettuce_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1951.csv")
write.csv(cbind(GEOID,ETc_lettuce_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1952.csv")
write.csv(cbind(GEOID,ETc_lettuce_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1953.csv")
write.csv(cbind(GEOID,ETc_lettuce_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1954.csv")
write.csv(cbind(GEOID,ETc_lettuce_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1955.csv")
write.csv(cbind(GEOID,ETc_lettuce_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1956.csv")
write.csv(cbind(GEOID,ETc_lettuce_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1957.csv")
write.csv(cbind(GEOID,ETc_lettuce_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1958.csv")
write.csv(cbind(GEOID,ETc_lettuce_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1959.csv")
write.csv(cbind(GEOID,ETc_lettuce_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1960.csv")
write.csv(cbind(GEOID,ETc_lettuce_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1961.csv")
write.csv(cbind(GEOID,ETc_lettuce_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1962.csv")
write.csv(cbind(GEOID,ETc_lettuce_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1963.csv")
write.csv(cbind(GEOID,ETc_lettuce_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1964.csv")
write.csv(cbind(GEOID,ETc_lettuce_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1965.csv")
write.csv(cbind(GEOID,ETc_lettuce_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1966.csv")
write.csv(cbind(GEOID,ETc_lettuce_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1967.csv")
write.csv(cbind(GEOID,ETc_lettuce_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1968.csv")
write.csv(cbind(GEOID,ETc_lettuce_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1969.csv")
write.csv(cbind(GEOID,ETc_lettuce_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1970.csv")
write.csv(cbind(GEOID,ETc_lettuce_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1971.csv")
write.csv(cbind(GEOID,ETc_lettuce_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1972.csv")
write.csv(cbind(GEOID,ETc_lettuce_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1973.csv")
write.csv(cbind(GEOID,ETc_lettuce_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1974.csv")
write.csv(cbind(GEOID,ETc_lettuce_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1975.csv")
write.csv(cbind(GEOID,ETc_lettuce_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1976.csv")
write.csv(cbind(GEOID,ETc_lettuce_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1977.csv")
write.csv(cbind(GEOID,ETc_lettuce_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1978.csv")
write.csv(cbind(GEOID,ETc_lettuce_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1979.csv")
write.csv(cbind(GEOID,ETc_lettuce_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1980.csv")
write.csv(cbind(GEOID,ETc_lettuce_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1981.csv")
write.csv(cbind(GEOID,ETc_lettuce_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1982.csv")
write.csv(cbind(GEOID,ETc_lettuce_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1983.csv")
write.csv(cbind(GEOID,ETc_lettuce_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1984.csv")
write.csv(cbind(GEOID,ETc_lettuce_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1985.csv")
write.csv(cbind(GEOID,ETc_lettuce_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1986.csv")
write.csv(cbind(GEOID,ETc_lettuce_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1987.csv")
write.csv(cbind(GEOID,ETc_lettuce_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1988.csv")
write.csv(cbind(GEOID,ETc_lettuce_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1989.csv")
write.csv(cbind(GEOID,ETc_lettuce_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1990.csv")
write.csv(cbind(GEOID,ETc_lettuce_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1991.csv")
write.csv(cbind(GEOID,ETc_lettuce_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1992.csv")
write.csv(cbind(GEOID,ETc_lettuce_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1993.csv")
write.csv(cbind(GEOID,ETc_lettuce_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1994.csv")
write.csv(cbind(GEOID,ETc_lettuce_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1995.csv")
write.csv(cbind(GEOID,ETc_lettuce_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1996.csv")
write.csv(cbind(GEOID,ETc_lettuce_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1997.csv")
write.csv(cbind(GEOID,ETc_lettuce_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1998.csv")
write.csv(cbind(GEOID,ETc_lettuce_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_1999.csv")
write.csv(cbind(GEOID,ETc_lettuce_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_2000.csv")
write.csv(cbind(GEOID,ETc_lettuce_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_2001.csv")
write.csv(cbind(GEOID,ETc_lettuce_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_2002.csv")
write.csv(cbind(GEOID,ETc_lettuce_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_2003.csv")
write.csv(cbind(GEOID,ETc_lettuce_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_2004.csv")
write.csv(cbind(GEOID,ETc_lettuce_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_2005.csv")
write.csv(cbind(GEOID,ETc_lettuce_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_2006.csv")
write.csv(cbind(GEOID,ETc_lettuce_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_2007.csv")
write.csv(cbind(GEOID,ETc_lettuce_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_2008.csv")
write.csv(cbind(GEOID,ETc_lettuce_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_2009.csv")
write.csv(cbind(GEOID,ETc_lettuce_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_2010.csv")
write.csv(cbind(GEOID,ETc_lettuce_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_2011.csv")
write.csv(cbind(GEOID,ETc_lettuce_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_2012.csv")
write.csv(cbind(GEOID,ETc_lettuce_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_lettuce_2013.csv")
ETc_nuts_1950 <- ET0_1950*nuts_kc_norm
ETc_nuts_1951 <- ET0_1951*nuts_kc_norm
ETc_nuts_1952 <- ET0_1952*nuts_kc_leap
ETc_nuts_1953 <- ET0_1953*nuts_kc_norm
ETc_nuts_1954 <- ET0_1954*nuts_kc_norm
ETc_nuts_1955 <- ET0_1955*nuts_kc_norm
ETc_nuts_1956 <- ET0_1956*nuts_kc_leap
ETc_nuts_1957 <- ET0_1957*nuts_kc_norm
ETc_nuts_1958 <- ET0_1958*nuts_kc_norm
ETc_nuts_1959 <- ET0_1959*nuts_kc_norm
ETc_nuts_1960 <- ET0_1960*nuts_kc_leap
ETc_nuts_1961 <- ET0_1961*nuts_kc_norm
ETc_nuts_1962 <- ET0_1962*nuts_kc_norm
ETc_nuts_1963 <- ET0_1963*nuts_kc_norm
ETc_nuts_1964 <- ET0_1964*nuts_kc_leap
ETc_nuts_1965 <- ET0_1965*nuts_kc_norm
ETc_nuts_1966 <- ET0_1966*nuts_kc_norm
ETc_nuts_1967 <- ET0_1967*nuts_kc_norm
ETc_nuts_1968 <- ET0_1968*nuts_kc_leap
ETc_nuts_1969 <- ET0_1969*nuts_kc_norm
ETc_nuts_1970 <- ET0_1970*nuts_kc_norm
ETc_nuts_1971 <- ET0_1971*nuts_kc_norm
ETc_nuts_1972 <- ET0_1972*nuts_kc_leap
ETc_nuts_1973 <- ET0_1973*nuts_kc_norm
ETc_nuts_1974 <- ET0_1974*nuts_kc_norm
ETc_nuts_1975 <- ET0_1975*nuts_kc_norm
ETc_nuts_1976 <- ET0_1976*nuts_kc_leap
ETc_nuts_1977 <- ET0_1977*nuts_kc_norm
ETc_nuts_1978 <- ET0_1978*nuts_kc_norm
ETc_nuts_1979 <- ET0_1979*nuts_kc_norm
ETc_nuts_1980 <- ET0_1980*nuts_kc_leap
ETc_nuts_1981 <- ET0_1981*nuts_kc_norm
ETc_nuts_1982 <- ET0_1982*nuts_kc_norm
ETc_nuts_1983 <- ET0_1983*nuts_kc_norm
ETc_nuts_1984 <- ET0_1984*nuts_kc_leap
ETc_nuts_1985 <- ET0_1985*nuts_kc_norm
ETc_nuts_1986 <- ET0_1986*nuts_kc_norm
ETc_nuts_1987 <- ET0_1987*nuts_kc_norm
ETc_nuts_1988 <- ET0_1988*nuts_kc_leap
ETc_nuts_1989 <- ET0_1989*nuts_kc_norm
ETc_nuts_1990 <- ET0_1990*nuts_kc_norm
ETc_nuts_1991 <- ET0_1991*nuts_kc_norm
ETc_nuts_1992 <- ET0_1992*nuts_kc_leap
ETc_nuts_1993 <- ET0_1993*nuts_kc_norm
ETc_nuts_1994 <- ET0_1994*nuts_kc_norm
ETc_nuts_1995 <- ET0_1995*nuts_kc_norm
ETc_nuts_1996 <- ET0_1996*nuts_kc_leap
ETc_nuts_1997 <- ET0_1997*nuts_kc_norm
ETc_nuts_1998 <- ET0_1998*nuts_kc_norm
ETc_nuts_1999 <- ET0_1999*nuts_kc_norm
ETc_nuts_2000 <- ET0_2000*nuts_kc_leap
ETc_nuts_2001 <- ET0_2001*nuts_kc_norm
ETc_nuts_2002 <- ET0_2002*nuts_kc_norm
ETc_nuts_2003 <- ET0_2003*nuts_kc_norm
ETc_nuts_2004 <- ET0_2004*nuts_kc_leap
ETc_nuts_2005 <- ET0_2005*nuts_kc_norm
ETc_nuts_2006 <- ET0_2006*nuts_kc_norm
ETc_nuts_2007 <- ET0_2007*nuts_kc_norm
ETc_nuts_2008 <- ET0_2008*nuts_kc_leap
ETc_nuts_2009 <- ET0_2009*nuts_kc_norm
ETc_nuts_2010 <- ET0_2010*nuts_kc_norm
ETc_nuts_2011 <- ET0_2011*nuts_kc_norm
ETc_nuts_2012 <- ET0_2012*nuts_kc_leap
ETc_nuts_2013 <- ET0_2013*nuts_kc_norm
write.csv(cbind(GEOID,ETc_nuts_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1950.csv")
write.csv(cbind(GEOID,ETc_nuts_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1951.csv")
write.csv(cbind(GEOID,ETc_nuts_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1952.csv")
write.csv(cbind(GEOID,ETc_nuts_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1953.csv")
write.csv(cbind(GEOID,ETc_nuts_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1954.csv")
write.csv(cbind(GEOID,ETc_nuts_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1955.csv")
write.csv(cbind(GEOID,ETc_nuts_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1956.csv")
write.csv(cbind(GEOID,ETc_nuts_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1957.csv")
write.csv(cbind(GEOID,ETc_nuts_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1958.csv")
write.csv(cbind(GEOID,ETc_nuts_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1959.csv")
write.csv(cbind(GEOID,ETc_nuts_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1960.csv")
write.csv(cbind(GEOID,ETc_nuts_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1961.csv")
write.csv(cbind(GEOID,ETc_nuts_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1962.csv")
write.csv(cbind(GEOID,ETc_nuts_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1963.csv")
write.csv(cbind(GEOID,ETc_nuts_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1964.csv")
write.csv(cbind(GEOID,ETc_nuts_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1965.csv")
write.csv(cbind(GEOID,ETc_nuts_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1966.csv")
write.csv(cbind(GEOID,ETc_nuts_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1967.csv")
write.csv(cbind(GEOID,ETc_nuts_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1968.csv")
write.csv(cbind(GEOID,ETc_nuts_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1969.csv")
write.csv(cbind(GEOID,ETc_nuts_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1970.csv")
write.csv(cbind(GEOID,ETc_nuts_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1971.csv")
write.csv(cbind(GEOID,ETc_nuts_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1972.csv")
write.csv(cbind(GEOID,ETc_nuts_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1973.csv")
write.csv(cbind(GEOID,ETc_nuts_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1974.csv")
write.csv(cbind(GEOID,ETc_nuts_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1975.csv")
write.csv(cbind(GEOID,ETc_nuts_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1976.csv")
write.csv(cbind(GEOID,ETc_nuts_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1977.csv")
write.csv(cbind(GEOID,ETc_nuts_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1978.csv")
write.csv(cbind(GEOID,ETc_nuts_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1979.csv")
write.csv(cbind(GEOID,ETc_nuts_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1980.csv")
write.csv(cbind(GEOID,ETc_nuts_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1981.csv")
write.csv(cbind(GEOID,ETc_nuts_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1982.csv")
write.csv(cbind(GEOID,ETc_nuts_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1983.csv")
write.csv(cbind(GEOID,ETc_nuts_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1984.csv")
write.csv(cbind(GEOID,ETc_nuts_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1985.csv")
write.csv(cbind(GEOID,ETc_nuts_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1986.csv")
write.csv(cbind(GEOID,ETc_nuts_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1987.csv")
write.csv(cbind(GEOID,ETc_nuts_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1988.csv")
write.csv(cbind(GEOID,ETc_nuts_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1989.csv")
write.csv(cbind(GEOID,ETc_nuts_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1990.csv")
write.csv(cbind(GEOID,ETc_nuts_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1991.csv")
write.csv(cbind(GEOID,ETc_nuts_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1992.csv")
write.csv(cbind(GEOID,ETc_nuts_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1993.csv")
write.csv(cbind(GEOID,ETc_nuts_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1994.csv")
write.csv(cbind(GEOID,ETc_nuts_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1995.csv")
write.csv(cbind(GEOID,ETc_nuts_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1996.csv")
write.csv(cbind(GEOID,ETc_nuts_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1997.csv")
write.csv(cbind(GEOID,ETc_nuts_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1998.csv")
write.csv(cbind(GEOID,ETc_nuts_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_1999.csv")
write.csv(cbind(GEOID,ETc_nuts_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_2000.csv")
write.csv(cbind(GEOID,ETc_nuts_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_2001.csv")
write.csv(cbind(GEOID,ETc_nuts_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_2002.csv")
write.csv(cbind(GEOID,ETc_nuts_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_2003.csv")
write.csv(cbind(GEOID,ETc_nuts_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_2004.csv")
write.csv(cbind(GEOID,ETc_nuts_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_2005.csv")
write.csv(cbind(GEOID,ETc_nuts_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_2006.csv")
write.csv(cbind(GEOID,ETc_nuts_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_2007.csv")
write.csv(cbind(GEOID,ETc_nuts_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_2008.csv")
write.csv(cbind(GEOID,ETc_nuts_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_2009.csv")
write.csv(cbind(GEOID,ETc_nuts_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_2010.csv")
write.csv(cbind(GEOID,ETc_nuts_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_2011.csv")
write.csv(cbind(GEOID,ETc_nuts_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_2012.csv")
write.csv(cbind(GEOID,ETc_nuts_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_nuts_2013.csv")
ETc_peaches_1950 <- ET0_1950*peaches_kc_norm
ETc_peaches_1951 <- ET0_1951*peaches_kc_norm
ETc_peaches_1952 <- ET0_1952*peaches_kc_leap
ETc_peaches_1953 <- ET0_1953*peaches_kc_norm
ETc_peaches_1954 <- ET0_1954*peaches_kc_norm
ETc_peaches_1955 <- ET0_1955*peaches_kc_norm
ETc_peaches_1956 <- ET0_1956*peaches_kc_leap
ETc_peaches_1957 <- ET0_1957*peaches_kc_norm
ETc_peaches_1958 <- ET0_1958*peaches_kc_norm
ETc_peaches_1959 <- ET0_1959*peaches_kc_norm
ETc_peaches_1960 <- ET0_1960*peaches_kc_leap
ETc_peaches_1961 <- ET0_1961*peaches_kc_norm
ETc_peaches_1962 <- ET0_1962*peaches_kc_norm
ETc_peaches_1963 <- ET0_1963*peaches_kc_norm
ETc_peaches_1964 <- ET0_1964*peaches_kc_leap
ETc_peaches_1965 <- ET0_1965*peaches_kc_norm
ETc_peaches_1966 <- ET0_1966*peaches_kc_norm
ETc_peaches_1967 <- ET0_1967*peaches_kc_norm
ETc_peaches_1968 <- ET0_1968*peaches_kc_leap
ETc_peaches_1969 <- ET0_1969*peaches_kc_norm
ETc_peaches_1970 <- ET0_1970*peaches_kc_norm
ETc_peaches_1971 <- ET0_1971*peaches_kc_norm
ETc_peaches_1972 <- ET0_1972*peaches_kc_leap
ETc_peaches_1973 <- ET0_1973*peaches_kc_norm
ETc_peaches_1974 <- ET0_1974*peaches_kc_norm
ETc_peaches_1975 <- ET0_1975*peaches_kc_norm
ETc_peaches_1976 <- ET0_1976*peaches_kc_leap
ETc_peaches_1977 <- ET0_1977*peaches_kc_norm
ETc_peaches_1978 <- ET0_1978*peaches_kc_norm
ETc_peaches_1979 <- ET0_1979*peaches_kc_norm
ETc_peaches_1980 <- ET0_1980*peaches_kc_leap
ETc_peaches_1981 <- ET0_1981*peaches_kc_norm
ETc_peaches_1982 <- ET0_1982*peaches_kc_norm
ETc_peaches_1983 <- ET0_1983*peaches_kc_norm
ETc_peaches_1984 <- ET0_1984*peaches_kc_leap
ETc_peaches_1985 <- ET0_1985*peaches_kc_norm
ETc_peaches_1986 <- ET0_1986*peaches_kc_norm
ETc_peaches_1987 <- ET0_1987*peaches_kc_norm
ETc_peaches_1988 <- ET0_1988*peaches_kc_leap
ETc_peaches_1989 <- ET0_1989*peaches_kc_norm
ETc_peaches_1990 <- ET0_1990*peaches_kc_norm
ETc_peaches_1991 <- ET0_1991*peaches_kc_norm
ETc_peaches_1992 <- ET0_1992*peaches_kc_leap
ETc_peaches_1993 <- ET0_1993*peaches_kc_norm
ETc_peaches_1994 <- ET0_1994*peaches_kc_norm
ETc_peaches_1995 <- ET0_1995*peaches_kc_norm
ETc_peaches_1996 <- ET0_1996*peaches_kc_leap
ETc_peaches_1997 <- ET0_1997*peaches_kc_norm
ETc_peaches_1998 <- ET0_1998*peaches_kc_norm
ETc_peaches_1999 <- ET0_1999*peaches_kc_norm
ETc_peaches_2000 <- ET0_2000*peaches_kc_leap
ETc_peaches_2001 <- ET0_2001*peaches_kc_norm
ETc_peaches_2002 <- ET0_2002*peaches_kc_norm
ETc_peaches_2003 <- ET0_2003*peaches_kc_norm
ETc_peaches_2004 <- ET0_2004*peaches_kc_leap
ETc_peaches_2005 <- ET0_2005*peaches_kc_norm
ETc_peaches_2006 <- ET0_2006*peaches_kc_norm
ETc_peaches_2007 <- ET0_2007*peaches_kc_norm
ETc_peaches_2008 <- ET0_2008*peaches_kc_leap
ETc_peaches_2009 <- ET0_2009*peaches_kc_norm
ETc_peaches_2010 <- ET0_2010*peaches_kc_norm
ETc_peaches_2011 <- ET0_2011*peaches_kc_norm
ETc_peaches_2012 <- ET0_2012*peaches_kc_leap
ETc_peaches_2013 <- ET0_2013*peaches_kc_norm
write.csv(cbind(GEOID,ETc_peaches_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1950.csv")
write.csv(cbind(GEOID,ETc_peaches_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1951.csv")
write.csv(cbind(GEOID,ETc_peaches_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1952.csv")
write.csv(cbind(GEOID,ETc_peaches_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1953.csv")
write.csv(cbind(GEOID,ETc_peaches_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1954.csv")
write.csv(cbind(GEOID,ETc_peaches_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1955.csv")
write.csv(cbind(GEOID,ETc_peaches_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1956.csv")
write.csv(cbind(GEOID,ETc_peaches_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1957.csv")
write.csv(cbind(GEOID,ETc_peaches_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1958.csv")
write.csv(cbind(GEOID,ETc_peaches_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1959.csv")
write.csv(cbind(GEOID,ETc_peaches_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1960.csv")
write.csv(cbind(GEOID,ETc_peaches_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1961.csv")
write.csv(cbind(GEOID,ETc_peaches_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1962.csv")
write.csv(cbind(GEOID,ETc_peaches_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1963.csv")
write.csv(cbind(GEOID,ETc_peaches_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1964.csv")
write.csv(cbind(GEOID,ETc_peaches_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1965.csv")
write.csv(cbind(GEOID,ETc_peaches_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1966.csv")
write.csv(cbind(GEOID,ETc_peaches_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1967.csv")
write.csv(cbind(GEOID,ETc_peaches_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1968.csv")
write.csv(cbind(GEOID,ETc_peaches_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1969.csv")
write.csv(cbind(GEOID,ETc_peaches_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1970.csv")
write.csv(cbind(GEOID,ETc_peaches_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1971.csv")
write.csv(cbind(GEOID,ETc_peaches_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1972.csv")
write.csv(cbind(GEOID,ETc_peaches_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1973.csv")
write.csv(cbind(GEOID,ETc_peaches_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1974.csv")
write.csv(cbind(GEOID,ETc_peaches_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1975.csv")
write.csv(cbind(GEOID,ETc_peaches_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1976.csv")
write.csv(cbind(GEOID,ETc_peaches_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1977.csv")
write.csv(cbind(GEOID,ETc_peaches_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1978.csv")
write.csv(cbind(GEOID,ETc_peaches_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1979.csv")
write.csv(cbind(GEOID,ETc_peaches_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1980.csv")
write.csv(cbind(GEOID,ETc_peaches_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1981.csv")
write.csv(cbind(GEOID,ETc_peaches_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1982.csv")
write.csv(cbind(GEOID,ETc_peaches_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1983.csv")
write.csv(cbind(GEOID,ETc_peaches_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1984.csv")
write.csv(cbind(GEOID,ETc_peaches_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1985.csv")
write.csv(cbind(GEOID,ETc_peaches_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1986.csv")
write.csv(cbind(GEOID,ETc_peaches_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1987.csv")
write.csv(cbind(GEOID,ETc_peaches_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1988.csv")
write.csv(cbind(GEOID,ETc_peaches_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1989.csv")
write.csv(cbind(GEOID,ETc_peaches_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1990.csv")
write.csv(cbind(GEOID,ETc_peaches_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1991.csv")
write.csv(cbind(GEOID,ETc_peaches_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1992.csv")
write.csv(cbind(GEOID,ETc_peaches_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1993.csv")
write.csv(cbind(GEOID,ETc_peaches_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1994.csv")
write.csv(cbind(GEOID,ETc_peaches_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1995.csv")
write.csv(cbind(GEOID,ETc_peaches_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1996.csv")
write.csv(cbind(GEOID,ETc_peaches_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1997.csv")
write.csv(cbind(GEOID,ETc_peaches_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1998.csv")
write.csv(cbind(GEOID,ETc_peaches_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_1999.csv")
write.csv(cbind(GEOID,ETc_peaches_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_2000.csv")
write.csv(cbind(GEOID,ETc_peaches_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_2001.csv")
write.csv(cbind(GEOID,ETc_peaches_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_2002.csv")
write.csv(cbind(GEOID,ETc_peaches_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_2003.csv")
write.csv(cbind(GEOID,ETc_peaches_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_2004.csv")
write.csv(cbind(GEOID,ETc_peaches_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_2005.csv")
write.csv(cbind(GEOID,ETc_peaches_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_2006.csv")
write.csv(cbind(GEOID,ETc_peaches_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_2007.csv")
write.csv(cbind(GEOID,ETc_peaches_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_2008.csv")
write.csv(cbind(GEOID,ETc_peaches_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_2009.csv")
write.csv(cbind(GEOID,ETc_peaches_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_2010.csv")
write.csv(cbind(GEOID,ETc_peaches_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_2011.csv")
write.csv(cbind(GEOID,ETc_peaches_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_2012.csv")
write.csv(cbind(GEOID,ETc_peaches_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_peaches_2013.csv")
ETc_pears_1950 <- ET0_1950*pears_kc_norm
ETc_pears_1951 <- ET0_1951*pears_kc_norm
ETc_pears_1952 <- ET0_1952*pears_kc_leap
ETc_pears_1953 <- ET0_1953*pears_kc_norm
ETc_pears_1954 <- ET0_1954*pears_kc_norm
ETc_pears_1955 <- ET0_1955*pears_kc_norm
ETc_pears_1956 <- ET0_1956*pears_kc_leap
ETc_pears_1957 <- ET0_1957*pears_kc_norm
ETc_pears_1958 <- ET0_1958*pears_kc_norm
ETc_pears_1959 <- ET0_1959*pears_kc_norm
ETc_pears_1960 <- ET0_1960*pears_kc_leap
ETc_pears_1961 <- ET0_1961*pears_kc_norm
ETc_pears_1962 <- ET0_1962*pears_kc_norm
ETc_pears_1963 <- ET0_1963*pears_kc_norm
ETc_pears_1964 <- ET0_1964*pears_kc_leap
ETc_pears_1965 <- ET0_1965*pears_kc_norm
ETc_pears_1966 <- ET0_1966*pears_kc_norm
ETc_pears_1967 <- ET0_1967*pears_kc_norm
ETc_pears_1968 <- ET0_1968*pears_kc_leap
ETc_pears_1969 <- ET0_1969*pears_kc_norm
ETc_pears_1970 <- ET0_1970*pears_kc_norm
ETc_pears_1971 <- ET0_1971*pears_kc_norm
ETc_pears_1972 <- ET0_1972*pears_kc_leap
ETc_pears_1973 <- ET0_1973*pears_kc_norm
ETc_pears_1974 <- ET0_1974*pears_kc_norm
ETc_pears_1975 <- ET0_1975*pears_kc_norm
ETc_pears_1976 <- ET0_1976*pears_kc_leap
ETc_pears_1977 <- ET0_1977*pears_kc_norm
ETc_pears_1978 <- ET0_1978*pears_kc_norm
ETc_pears_1979 <- ET0_1979*pears_kc_norm
ETc_pears_1980 <- ET0_1980*pears_kc_leap
ETc_pears_1981 <- ET0_1981*pears_kc_norm
ETc_pears_1982 <- ET0_1982*pears_kc_norm
ETc_pears_1983 <- ET0_1983*pears_kc_norm
ETc_pears_1984 <- ET0_1984*pears_kc_leap
ETc_pears_1985 <- ET0_1985*pears_kc_norm
ETc_pears_1986 <- ET0_1986*pears_kc_norm
ETc_pears_1987 <- ET0_1987*pears_kc_norm
ETc_pears_1988 <- ET0_1988*pears_kc_leap
ETc_pears_1989 <- ET0_1989*pears_kc_norm
ETc_pears_1990 <- ET0_1990*pears_kc_norm
ETc_pears_1991 <- ET0_1991*pears_kc_norm
ETc_pears_1992 <- ET0_1992*pears_kc_leap
ETc_pears_1993 <- ET0_1993*pears_kc_norm
ETc_pears_1994 <- ET0_1994*pears_kc_norm
ETc_pears_1995 <- ET0_1995*pears_kc_norm
ETc_pears_1996 <- ET0_1996*pears_kc_leap
ETc_pears_1997 <- ET0_1997*pears_kc_norm
ETc_pears_1998 <- ET0_1998*pears_kc_norm
ETc_pears_1999 <- ET0_1999*pears_kc_norm
ETc_pears_2000 <- ET0_2000*pears_kc_leap
ETc_pears_2001 <- ET0_2001*pears_kc_norm
ETc_pears_2002 <- ET0_2002*pears_kc_norm
ETc_pears_2003 <- ET0_2003*pears_kc_norm
ETc_pears_2004 <- ET0_2004*pears_kc_leap
ETc_pears_2005 <- ET0_2005*pears_kc_norm
ETc_pears_2006 <- ET0_2006*pears_kc_norm
ETc_pears_2007 <- ET0_2007*pears_kc_norm
ETc_pears_2008 <- ET0_2008*pears_kc_leap
ETc_pears_2009 <- ET0_2009*pears_kc_norm
ETc_pears_2010 <- ET0_2010*pears_kc_norm
ETc_pears_2011 <- ET0_2011*pears_kc_norm
ETc_pears_2012 <- ET0_2012*pears_kc_leap
ETc_pears_2013 <- ET0_2013*pears_kc_norm
write.csv(cbind(GEOID,ETc_pears_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1950.csv")
write.csv(cbind(GEOID,ETc_pears_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1951.csv")
write.csv(cbind(GEOID,ETc_pears_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1952.csv")
write.csv(cbind(GEOID,ETc_pears_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1953.csv")
write.csv(cbind(GEOID,ETc_pears_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1954.csv")
write.csv(cbind(GEOID,ETc_pears_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1955.csv")
write.csv(cbind(GEOID,ETc_pears_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1956.csv")
write.csv(cbind(GEOID,ETc_pears_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1957.csv")
write.csv(cbind(GEOID,ETc_pears_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1958.csv")
write.csv(cbind(GEOID,ETc_pears_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1959.csv")
write.csv(cbind(GEOID,ETc_pears_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1960.csv")
write.csv(cbind(GEOID,ETc_pears_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1961.csv")
write.csv(cbind(GEOID,ETc_pears_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1962.csv")
write.csv(cbind(GEOID,ETc_pears_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1963.csv")
write.csv(cbind(GEOID,ETc_pears_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1964.csv")
write.csv(cbind(GEOID,ETc_pears_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1965.csv")
write.csv(cbind(GEOID,ETc_pears_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1966.csv")
write.csv(cbind(GEOID,ETc_pears_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1967.csv")
write.csv(cbind(GEOID,ETc_pears_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1968.csv")
write.csv(cbind(GEOID,ETc_pears_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1969.csv")
write.csv(cbind(GEOID,ETc_pears_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1970.csv")
write.csv(cbind(GEOID,ETc_pears_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1971.csv")
write.csv(cbind(GEOID,ETc_pears_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1972.csv")
write.csv(cbind(GEOID,ETc_pears_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1973.csv")
write.csv(cbind(GEOID,ETc_pears_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1974.csv")
write.csv(cbind(GEOID,ETc_pears_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1975.csv")
write.csv(cbind(GEOID,ETc_pears_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1976.csv")
write.csv(cbind(GEOID,ETc_pears_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1977.csv")
write.csv(cbind(GEOID,ETc_pears_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1978.csv")
write.csv(cbind(GEOID,ETc_pears_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1979.csv")
write.csv(cbind(GEOID,ETc_pears_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1980.csv")
write.csv(cbind(GEOID,ETc_pears_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1981.csv")
write.csv(cbind(GEOID,ETc_pears_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1982.csv")
write.csv(cbind(GEOID,ETc_pears_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1983.csv")
write.csv(cbind(GEOID,ETc_pears_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1984.csv")
write.csv(cbind(GEOID,ETc_pears_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1985.csv")
write.csv(cbind(GEOID,ETc_pears_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1986.csv")
write.csv(cbind(GEOID,ETc_pears_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1987.csv")
write.csv(cbind(GEOID,ETc_pears_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1988.csv")
write.csv(cbind(GEOID,ETc_pears_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1989.csv")
write.csv(cbind(GEOID,ETc_pears_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1990.csv")
write.csv(cbind(GEOID,ETc_pears_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1991.csv")
write.csv(cbind(GEOID,ETc_pears_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1992.csv")
write.csv(cbind(GEOID,ETc_pears_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1993.csv")
write.csv(cbind(GEOID,ETc_pears_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1994.csv")
write.csv(cbind(GEOID,ETc_pears_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1995.csv")
write.csv(cbind(GEOID,ETc_pears_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1996.csv")
write.csv(cbind(GEOID,ETc_pears_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1997.csv")
write.csv(cbind(GEOID,ETc_pears_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1998.csv")
write.csv(cbind(GEOID,ETc_pears_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_1999.csv")
write.csv(cbind(GEOID,ETc_pears_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_2000.csv")
write.csv(cbind(GEOID,ETc_pears_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_2001.csv")
write.csv(cbind(GEOID,ETc_pears_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_2002.csv")
write.csv(cbind(GEOID,ETc_pears_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_2003.csv")
write.csv(cbind(GEOID,ETc_pears_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_2004.csv")
write.csv(cbind(GEOID,ETc_pears_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_2005.csv")
write.csv(cbind(GEOID,ETc_pears_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_2006.csv")
write.csv(cbind(GEOID,ETc_pears_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_2007.csv")
write.csv(cbind(GEOID,ETc_pears_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_2008.csv")
write.csv(cbind(GEOID,ETc_pears_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_2009.csv")
write.csv(cbind(GEOID,ETc_pears_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_2010.csv")
write.csv(cbind(GEOID,ETc_pears_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_2011.csv")
write.csv(cbind(GEOID,ETc_pears_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_2012.csv")
write.csv(cbind(GEOID,ETc_pears_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_pears_2013.csv")
ETc_plums_prunes_1950 <- ET0_1950*plums_prunes_kc_norm
ETc_plums_prunes_1951 <- ET0_1951*plums_prunes_kc_norm
ETc_plums_prunes_1952 <- ET0_1952*plums_prunes_kc_leap
ETc_plums_prunes_1953 <- ET0_1953*plums_prunes_kc_norm
ETc_plums_prunes_1954 <- ET0_1954*plums_prunes_kc_norm
ETc_plums_prunes_1955 <- ET0_1955*plums_prunes_kc_norm
ETc_plums_prunes_1956 <- ET0_1956*plums_prunes_kc_leap
ETc_plums_prunes_1957 <- ET0_1957*plums_prunes_kc_norm
ETc_plums_prunes_1958 <- ET0_1958*plums_prunes_kc_norm
ETc_plums_prunes_1959 <- ET0_1959*plums_prunes_kc_norm
ETc_plums_prunes_1960 <- ET0_1960*plums_prunes_kc_leap
ETc_plums_prunes_1961 <- ET0_1961*plums_prunes_kc_norm
ETc_plums_prunes_1962 <- ET0_1962*plums_prunes_kc_norm
ETc_plums_prunes_1963 <- ET0_1963*plums_prunes_kc_norm
ETc_plums_prunes_1964 <- ET0_1964*plums_prunes_kc_leap
ETc_plums_prunes_1965 <- ET0_1965*plums_prunes_kc_norm
ETc_plums_prunes_1966 <- ET0_1966*plums_prunes_kc_norm
ETc_plums_prunes_1967 <- ET0_1967*plums_prunes_kc_norm
ETc_plums_prunes_1968 <- ET0_1968*plums_prunes_kc_leap
ETc_plums_prunes_1969 <- ET0_1969*plums_prunes_kc_norm
ETc_plums_prunes_1970 <- ET0_1970*plums_prunes_kc_norm
ETc_plums_prunes_1971 <- ET0_1971*plums_prunes_kc_norm
ETc_plums_prunes_1972 <- ET0_1972*plums_prunes_kc_leap
ETc_plums_prunes_1973 <- ET0_1973*plums_prunes_kc_norm
ETc_plums_prunes_1974 <- ET0_1974*plums_prunes_kc_norm
ETc_plums_prunes_1975 <- ET0_1975*plums_prunes_kc_norm
ETc_plums_prunes_1976 <- ET0_1976*plums_prunes_kc_leap
ETc_plums_prunes_1977 <- ET0_1977*plums_prunes_kc_norm
ETc_plums_prunes_1978 <- ET0_1978*plums_prunes_kc_norm
ETc_plums_prunes_1979 <- ET0_1979*plums_prunes_kc_norm
ETc_plums_prunes_1980 <- ET0_1980*plums_prunes_kc_leap
ETc_plums_prunes_1981 <- ET0_1981*plums_prunes_kc_norm
ETc_plums_prunes_1982 <- ET0_1982*plums_prunes_kc_norm
ETc_plums_prunes_1983 <- ET0_1983*plums_prunes_kc_norm
ETc_plums_prunes_1984 <- ET0_1984*plums_prunes_kc_leap
ETc_plums_prunes_1985 <- ET0_1985*plums_prunes_kc_norm
ETc_plums_prunes_1986 <- ET0_1986*plums_prunes_kc_norm
ETc_plums_prunes_1987 <- ET0_1987*plums_prunes_kc_norm
ETc_plums_prunes_1988 <- ET0_1988*plums_prunes_kc_leap
ETc_plums_prunes_1989 <- ET0_1989*plums_prunes_kc_norm
ETc_plums_prunes_1990 <- ET0_1990*plums_prunes_kc_norm
ETc_plums_prunes_1991 <- ET0_1991*plums_prunes_kc_norm
ETc_plums_prunes_1992 <- ET0_1992*plums_prunes_kc_leap
ETc_plums_prunes_1993 <- ET0_1993*plums_prunes_kc_norm
ETc_plums_prunes_1994 <- ET0_1994*plums_prunes_kc_norm
ETc_plums_prunes_1995 <- ET0_1995*plums_prunes_kc_norm
ETc_plums_prunes_1996 <- ET0_1996*plums_prunes_kc_leap
ETc_plums_prunes_1997 <- ET0_1997*plums_prunes_kc_norm
ETc_plums_prunes_1998 <- ET0_1998*plums_prunes_kc_norm
ETc_plums_prunes_1999 <- ET0_1999*plums_prunes_kc_norm
ETc_plums_prunes_2000 <- ET0_2000*plums_prunes_kc_leap
ETc_plums_prunes_2001 <- ET0_2001*plums_prunes_kc_norm
ETc_plums_prunes_2002 <- ET0_2002*plums_prunes_kc_norm
ETc_plums_prunes_2003 <- ET0_2003*plums_prunes_kc_norm
ETc_plums_prunes_2004 <- ET0_2004*plums_prunes_kc_leap
ETc_plums_prunes_2005 <- ET0_2005*plums_prunes_kc_norm
ETc_plums_prunes_2006 <- ET0_2006*plums_prunes_kc_norm
ETc_plums_prunes_2007 <- ET0_2007*plums_prunes_kc_norm
ETc_plums_prunes_2008 <- ET0_2008*plums_prunes_kc_leap
ETc_plums_prunes_2009 <- ET0_2009*plums_prunes_kc_norm
ETc_plums_prunes_2010 <- ET0_2010*plums_prunes_kc_norm
ETc_plums_prunes_2011 <- ET0_2011*plums_prunes_kc_norm
ETc_plums_prunes_2012 <- ET0_2012*plums_prunes_kc_leap
ETc_plums_prunes_2013 <- ET0_2013*plums_prunes_kc_norm
write.csv(cbind(GEOID,ETc_plums_prunes_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1950.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1951.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1952.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1953.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1954.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1955.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1956.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1957.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1958.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1959.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1960.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1961.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1962.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1963.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1964.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1965.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1966.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1967.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1968.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1969.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1970.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1971.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1972.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1973.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1974.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1975.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1976.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1977.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1978.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1979.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1980.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1981.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1982.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1983.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1984.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1985.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1986.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1987.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1988.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1989.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1990.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1991.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1992.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1993.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1994.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1995.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1996.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1997.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1998.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_1999.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_2000.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_2001.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_2002.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_2003.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_2004.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_2005.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_2006.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_2007.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_2008.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_2009.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_2010.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_2011.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_2012.csv")
write.csv(cbind(GEOID,ETc_plums_prunes_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_plums_prunes_2013.csv")
ETc_raspberries_1950 <- ET0_1950*raspberries_kc_norm
ETc_raspberries_1951 <- ET0_1951*raspberries_kc_norm
ETc_raspberries_1952 <- ET0_1952*raspberries_kc_leap
ETc_raspberries_1953 <- ET0_1953*raspberries_kc_norm
ETc_raspberries_1954 <- ET0_1954*raspberries_kc_norm
ETc_raspberries_1955 <- ET0_1955*raspberries_kc_norm
ETc_raspberries_1956 <- ET0_1956*raspberries_kc_leap
ETc_raspberries_1957 <- ET0_1957*raspberries_kc_norm
ETc_raspberries_1958 <- ET0_1958*raspberries_kc_norm
ETc_raspberries_1959 <- ET0_1959*raspberries_kc_norm
ETc_raspberries_1960 <- ET0_1960*raspberries_kc_leap
ETc_raspberries_1961 <- ET0_1961*raspberries_kc_norm
ETc_raspberries_1962 <- ET0_1962*raspberries_kc_norm
ETc_raspberries_1963 <- ET0_1963*raspberries_kc_norm
ETc_raspberries_1964 <- ET0_1964*raspberries_kc_leap
ETc_raspberries_1965 <- ET0_1965*raspberries_kc_norm
ETc_raspberries_1966 <- ET0_1966*raspberries_kc_norm
ETc_raspberries_1967 <- ET0_1967*raspberries_kc_norm
ETc_raspberries_1968 <- ET0_1968*raspberries_kc_leap
ETc_raspberries_1969 <- ET0_1969*raspberries_kc_norm
ETc_raspberries_1970 <- ET0_1970*raspberries_kc_norm
ETc_raspberries_1971 <- ET0_1971*raspberries_kc_norm
ETc_raspberries_1972 <- ET0_1972*raspberries_kc_leap
ETc_raspberries_1973 <- ET0_1973*raspberries_kc_norm
ETc_raspberries_1974 <- ET0_1974*raspberries_kc_norm
ETc_raspberries_1975 <- ET0_1975*raspberries_kc_norm
ETc_raspberries_1976 <- ET0_1976*raspberries_kc_leap
ETc_raspberries_1977 <- ET0_1977*raspberries_kc_norm
ETc_raspberries_1978 <- ET0_1978*raspberries_kc_norm
ETc_raspberries_1979 <- ET0_1979*raspberries_kc_norm
ETc_raspberries_1980 <- ET0_1980*raspberries_kc_leap
ETc_raspberries_1981 <- ET0_1981*raspberries_kc_norm
ETc_raspberries_1982 <- ET0_1982*raspberries_kc_norm
ETc_raspberries_1983 <- ET0_1983*raspberries_kc_norm
ETc_raspberries_1984 <- ET0_1984*raspberries_kc_leap
ETc_raspberries_1985 <- ET0_1985*raspberries_kc_norm
ETc_raspberries_1986 <- ET0_1986*raspberries_kc_norm
ETc_raspberries_1987 <- ET0_1987*raspberries_kc_norm
ETc_raspberries_1988 <- ET0_1988*raspberries_kc_leap
ETc_raspberries_1989 <- ET0_1989*raspberries_kc_norm
ETc_raspberries_1990 <- ET0_1990*raspberries_kc_norm
ETc_raspberries_1991 <- ET0_1991*raspberries_kc_norm
ETc_raspberries_1992 <- ET0_1992*raspberries_kc_leap
ETc_raspberries_1993 <- ET0_1993*raspberries_kc_norm
ETc_raspberries_1994 <- ET0_1994*raspberries_kc_norm
ETc_raspberries_1995 <- ET0_1995*raspberries_kc_norm
ETc_raspberries_1996 <- ET0_1996*raspberries_kc_leap
ETc_raspberries_1997 <- ET0_1997*raspberries_kc_norm
ETc_raspberries_1998 <- ET0_1998*raspberries_kc_norm
ETc_raspberries_1999 <- ET0_1999*raspberries_kc_norm
ETc_raspberries_2000 <- ET0_2000*raspberries_kc_leap
ETc_raspberries_2001 <- ET0_2001*raspberries_kc_norm
ETc_raspberries_2002 <- ET0_2002*raspberries_kc_norm
ETc_raspberries_2003 <- ET0_2003*raspberries_kc_norm
ETc_raspberries_2004 <- ET0_2004*raspberries_kc_leap
ETc_raspberries_2005 <- ET0_2005*raspberries_kc_norm
ETc_raspberries_2006 <- ET0_2006*raspberries_kc_norm
ETc_raspberries_2007 <- ET0_2007*raspberries_kc_norm
ETc_raspberries_2008 <- ET0_2008*raspberries_kc_leap
ETc_raspberries_2009 <- ET0_2009*raspberries_kc_norm
ETc_raspberries_2010 <- ET0_2010*raspberries_kc_norm
ETc_raspberries_2011 <- ET0_2011*raspberries_kc_norm
ETc_raspberries_2012 <- ET0_2012*raspberries_kc_leap
ETc_raspberries_2013 <- ET0_2013*raspberries_kc_norm
write.csv(cbind(GEOID,ETc_raspberries_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1950.csv")
write.csv(cbind(GEOID,ETc_raspberries_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1951.csv")
write.csv(cbind(GEOID,ETc_raspberries_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1952.csv")
write.csv(cbind(GEOID,ETc_raspberries_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1953.csv")
write.csv(cbind(GEOID,ETc_raspberries_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1954.csv")
write.csv(cbind(GEOID,ETc_raspberries_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1955.csv")
write.csv(cbind(GEOID,ETc_raspberries_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1956.csv")
write.csv(cbind(GEOID,ETc_raspberries_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1957.csv")
write.csv(cbind(GEOID,ETc_raspberries_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1958.csv")
write.csv(cbind(GEOID,ETc_raspberries_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1959.csv")
write.csv(cbind(GEOID,ETc_raspberries_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1960.csv")
write.csv(cbind(GEOID,ETc_raspberries_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1961.csv")
write.csv(cbind(GEOID,ETc_raspberries_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1962.csv")
write.csv(cbind(GEOID,ETc_raspberries_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1963.csv")
write.csv(cbind(GEOID,ETc_raspberries_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1964.csv")
write.csv(cbind(GEOID,ETc_raspberries_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1965.csv")
write.csv(cbind(GEOID,ETc_raspberries_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1966.csv")
write.csv(cbind(GEOID,ETc_raspberries_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1967.csv")
write.csv(cbind(GEOID,ETc_raspberries_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1968.csv")
write.csv(cbind(GEOID,ETc_raspberries_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1969.csv")
write.csv(cbind(GEOID,ETc_raspberries_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1970.csv")
write.csv(cbind(GEOID,ETc_raspberries_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1971.csv")
write.csv(cbind(GEOID,ETc_raspberries_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1972.csv")
write.csv(cbind(GEOID,ETc_raspberries_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1973.csv")
write.csv(cbind(GEOID,ETc_raspberries_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1974.csv")
write.csv(cbind(GEOID,ETc_raspberries_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1975.csv")
write.csv(cbind(GEOID,ETc_raspberries_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1976.csv")
write.csv(cbind(GEOID,ETc_raspberries_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1977.csv")
write.csv(cbind(GEOID,ETc_raspberries_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1978.csv")
write.csv(cbind(GEOID,ETc_raspberries_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1979.csv")
write.csv(cbind(GEOID,ETc_raspberries_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1980.csv")
write.csv(cbind(GEOID,ETc_raspberries_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1981.csv")
write.csv(cbind(GEOID,ETc_raspberries_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1982.csv")
write.csv(cbind(GEOID,ETc_raspberries_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1983.csv")
write.csv(cbind(GEOID,ETc_raspberries_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1984.csv")
write.csv(cbind(GEOID,ETc_raspberries_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1985.csv")
write.csv(cbind(GEOID,ETc_raspberries_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1986.csv")
write.csv(cbind(GEOID,ETc_raspberries_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1987.csv")
write.csv(cbind(GEOID,ETc_raspberries_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1988.csv")
write.csv(cbind(GEOID,ETc_raspberries_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1989.csv")
write.csv(cbind(GEOID,ETc_raspberries_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1990.csv")
write.csv(cbind(GEOID,ETc_raspberries_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1991.csv")
write.csv(cbind(GEOID,ETc_raspberries_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1992.csv")
write.csv(cbind(GEOID,ETc_raspberries_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1993.csv")
write.csv(cbind(GEOID,ETc_raspberries_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1994.csv")
write.csv(cbind(GEOID,ETc_raspberries_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1995.csv")
write.csv(cbind(GEOID,ETc_raspberries_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1996.csv")
write.csv(cbind(GEOID,ETc_raspberries_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1997.csv")
write.csv(cbind(GEOID,ETc_raspberries_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1998.csv")
write.csv(cbind(GEOID,ETc_raspberries_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_1999.csv")
write.csv(cbind(GEOID,ETc_raspberries_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_2000.csv")
write.csv(cbind(GEOID,ETc_raspberries_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_2001.csv")
write.csv(cbind(GEOID,ETc_raspberries_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_2002.csv")
write.csv(cbind(GEOID,ETc_raspberries_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_2003.csv")
write.csv(cbind(GEOID,ETc_raspberries_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_2004.csv")
write.csv(cbind(GEOID,ETc_raspberries_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_2005.csv")
write.csv(cbind(GEOID,ETc_raspberries_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_2006.csv")
write.csv(cbind(GEOID,ETc_raspberries_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_2007.csv")
write.csv(cbind(GEOID,ETc_raspberries_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_2008.csv")
write.csv(cbind(GEOID,ETc_raspberries_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_2009.csv")
write.csv(cbind(GEOID,ETc_raspberries_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_2010.csv")
write.csv(cbind(GEOID,ETc_raspberries_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_2011.csv")
write.csv(cbind(GEOID,ETc_raspberries_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_2012.csv")
write.csv(cbind(GEOID,ETc_raspberries_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_raspberries_2013.csv")
ETc_rice_1950 <- ET0_1950*rice_kc_norm
ETc_rice_1951 <- ET0_1951*rice_kc_norm
ETc_rice_1952 <- ET0_1952*rice_kc_leap
ETc_rice_1953 <- ET0_1953*rice_kc_norm
ETc_rice_1954 <- ET0_1954*rice_kc_norm
ETc_rice_1955 <- ET0_1955*rice_kc_norm
ETc_rice_1956 <- ET0_1956*rice_kc_leap
ETc_rice_1957 <- ET0_1957*rice_kc_norm
ETc_rice_1958 <- ET0_1958*rice_kc_norm
ETc_rice_1959 <- ET0_1959*rice_kc_norm
ETc_rice_1960 <- ET0_1960*rice_kc_leap
ETc_rice_1961 <- ET0_1961*rice_kc_norm
ETc_rice_1962 <- ET0_1962*rice_kc_norm
ETc_rice_1963 <- ET0_1963*rice_kc_norm
ETc_rice_1964 <- ET0_1964*rice_kc_leap
ETc_rice_1965 <- ET0_1965*rice_kc_norm
ETc_rice_1966 <- ET0_1966*rice_kc_norm
ETc_rice_1967 <- ET0_1967*rice_kc_norm
ETc_rice_1968 <- ET0_1968*rice_kc_leap
ETc_rice_1969 <- ET0_1969*rice_kc_norm
ETc_rice_1970 <- ET0_1970*rice_kc_norm
ETc_rice_1971 <- ET0_1971*rice_kc_norm
ETc_rice_1972 <- ET0_1972*rice_kc_leap
ETc_rice_1973 <- ET0_1973*rice_kc_norm
ETc_rice_1974 <- ET0_1974*rice_kc_norm
ETc_rice_1975 <- ET0_1975*rice_kc_norm
ETc_rice_1976 <- ET0_1976*rice_kc_leap
ETc_rice_1977 <- ET0_1977*rice_kc_norm
ETc_rice_1978 <- ET0_1978*rice_kc_norm
ETc_rice_1979 <- ET0_1979*rice_kc_norm
ETc_rice_1980 <- ET0_1980*rice_kc_leap
ETc_rice_1981 <- ET0_1981*rice_kc_norm
ETc_rice_1982 <- ET0_1982*rice_kc_norm
ETc_rice_1983 <- ET0_1983*rice_kc_norm
ETc_rice_1984 <- ET0_1984*rice_kc_leap
ETc_rice_1985 <- ET0_1985*rice_kc_norm
ETc_rice_1986 <- ET0_1986*rice_kc_norm
ETc_rice_1987 <- ET0_1987*rice_kc_norm
ETc_rice_1988 <- ET0_1988*rice_kc_leap
ETc_rice_1989 <- ET0_1989*rice_kc_norm
ETc_rice_1990 <- ET0_1990*rice_kc_norm
ETc_rice_1991 <- ET0_1991*rice_kc_norm
ETc_rice_1992 <- ET0_1992*rice_kc_leap
ETc_rice_1993 <- ET0_1993*rice_kc_norm
ETc_rice_1994 <- ET0_1994*rice_kc_norm
ETc_rice_1995 <- ET0_1995*rice_kc_norm
ETc_rice_1996 <- ET0_1996*rice_kc_leap
ETc_rice_1997 <- ET0_1997*rice_kc_norm
ETc_rice_1998 <- ET0_1998*rice_kc_norm
ETc_rice_1999 <- ET0_1999*rice_kc_norm
ETc_rice_2000 <- ET0_2000*rice_kc_leap
ETc_rice_2001 <- ET0_2001*rice_kc_norm
ETc_rice_2002 <- ET0_2002*rice_kc_norm
ETc_rice_2003 <- ET0_2003*rice_kc_norm
ETc_rice_2004 <- ET0_2004*rice_kc_leap
ETc_rice_2005 <- ET0_2005*rice_kc_norm
ETc_rice_2006 <- ET0_2006*rice_kc_norm
ETc_rice_2007 <- ET0_2007*rice_kc_norm
ETc_rice_2008 <- ET0_2008*rice_kc_leap
ETc_rice_2009 <- ET0_2009*rice_kc_norm
ETc_rice_2010 <- ET0_2010*rice_kc_norm
ETc_rice_2011 <- ET0_2011*rice_kc_norm
ETc_rice_2012 <- ET0_2012*rice_kc_leap
ETc_rice_2013 <- ET0_2013*rice_kc_norm
write.csv(cbind(GEOID,ETc_rice_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1950.csv")
write.csv(cbind(GEOID,ETc_rice_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1951.csv")
write.csv(cbind(GEOID,ETc_rice_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1952.csv")
write.csv(cbind(GEOID,ETc_rice_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1953.csv")
write.csv(cbind(GEOID,ETc_rice_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1954.csv")
write.csv(cbind(GEOID,ETc_rice_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1955.csv")
write.csv(cbind(GEOID,ETc_rice_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1956.csv")
write.csv(cbind(GEOID,ETc_rice_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1957.csv")
write.csv(cbind(GEOID,ETc_rice_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1958.csv")
write.csv(cbind(GEOID,ETc_rice_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1959.csv")
write.csv(cbind(GEOID,ETc_rice_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1960.csv")
write.csv(cbind(GEOID,ETc_rice_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1961.csv")
write.csv(cbind(GEOID,ETc_rice_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1962.csv")
write.csv(cbind(GEOID,ETc_rice_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1963.csv")
write.csv(cbind(GEOID,ETc_rice_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1964.csv")
write.csv(cbind(GEOID,ETc_rice_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1965.csv")
write.csv(cbind(GEOID,ETc_rice_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1966.csv")
write.csv(cbind(GEOID,ETc_rice_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1967.csv")
write.csv(cbind(GEOID,ETc_rice_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1968.csv")
write.csv(cbind(GEOID,ETc_rice_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1969.csv")
write.csv(cbind(GEOID,ETc_rice_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1970.csv")
write.csv(cbind(GEOID,ETc_rice_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1971.csv")
write.csv(cbind(GEOID,ETc_rice_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1972.csv")
write.csv(cbind(GEOID,ETc_rice_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1973.csv")
write.csv(cbind(GEOID,ETc_rice_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1974.csv")
write.csv(cbind(GEOID,ETc_rice_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1975.csv")
write.csv(cbind(GEOID,ETc_rice_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1976.csv")
write.csv(cbind(GEOID,ETc_rice_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1977.csv")
write.csv(cbind(GEOID,ETc_rice_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1978.csv")
write.csv(cbind(GEOID,ETc_rice_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1979.csv")
write.csv(cbind(GEOID,ETc_rice_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1980.csv")
write.csv(cbind(GEOID,ETc_rice_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1981.csv")
write.csv(cbind(GEOID,ETc_rice_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1982.csv")
write.csv(cbind(GEOID,ETc_rice_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1983.csv")
write.csv(cbind(GEOID,ETc_rice_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1984.csv")
write.csv(cbind(GEOID,ETc_rice_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1985.csv")
write.csv(cbind(GEOID,ETc_rice_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1986.csv")
write.csv(cbind(GEOID,ETc_rice_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1987.csv")
write.csv(cbind(GEOID,ETc_rice_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1988.csv")
write.csv(cbind(GEOID,ETc_rice_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1989.csv")
write.csv(cbind(GEOID,ETc_rice_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1990.csv")
write.csv(cbind(GEOID,ETc_rice_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1991.csv")
write.csv(cbind(GEOID,ETc_rice_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1992.csv")
write.csv(cbind(GEOID,ETc_rice_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1993.csv")
write.csv(cbind(GEOID,ETc_rice_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1994.csv")
write.csv(cbind(GEOID,ETc_rice_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1995.csv")
write.csv(cbind(GEOID,ETc_rice_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1996.csv")
write.csv(cbind(GEOID,ETc_rice_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1997.csv")
write.csv(cbind(GEOID,ETc_rice_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1998.csv")
write.csv(cbind(GEOID,ETc_rice_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_1999.csv")
write.csv(cbind(GEOID,ETc_rice_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_2000.csv")
write.csv(cbind(GEOID,ETc_rice_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_2001.csv")
write.csv(cbind(GEOID,ETc_rice_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_2002.csv")
write.csv(cbind(GEOID,ETc_rice_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_2003.csv")
write.csv(cbind(GEOID,ETc_rice_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_2004.csv")
write.csv(cbind(GEOID,ETc_rice_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_2005.csv")
write.csv(cbind(GEOID,ETc_rice_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_2006.csv")
write.csv(cbind(GEOID,ETc_rice_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_2007.csv")
write.csv(cbind(GEOID,ETc_rice_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_2008.csv")
write.csv(cbind(GEOID,ETc_rice_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_2009.csv")
write.csv(cbind(GEOID,ETc_rice_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_2010.csv")
write.csv(cbind(GEOID,ETc_rice_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_2011.csv")
write.csv(cbind(GEOID,ETc_rice_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_2012.csv")
write.csv(cbind(GEOID,ETc_rice_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_rice_2013.csv")
ETc_spinach_1950 <- ET0_1950*spinach_kc_norm
ETc_spinach_1951 <- ET0_1951*spinach_kc_norm
ETc_spinach_1952 <- ET0_1952*spinach_kc_leap
ETc_spinach_1953 <- ET0_1953*spinach_kc_norm
ETc_spinach_1954 <- ET0_1954*spinach_kc_norm
ETc_spinach_1955 <- ET0_1955*spinach_kc_norm
ETc_spinach_1956 <- ET0_1956*spinach_kc_leap
ETc_spinach_1957 <- ET0_1957*spinach_kc_norm
ETc_spinach_1958 <- ET0_1958*spinach_kc_norm
ETc_spinach_1959 <- ET0_1959*spinach_kc_norm
ETc_spinach_1960 <- ET0_1960*spinach_kc_leap
ETc_spinach_1961 <- ET0_1961*spinach_kc_norm
ETc_spinach_1962 <- ET0_1962*spinach_kc_norm
ETc_spinach_1963 <- ET0_1963*spinach_kc_norm
ETc_spinach_1964 <- ET0_1964*spinach_kc_leap
ETc_spinach_1965 <- ET0_1965*spinach_kc_norm
ETc_spinach_1966 <- ET0_1966*spinach_kc_norm
ETc_spinach_1967 <- ET0_1967*spinach_kc_norm
ETc_spinach_1968 <- ET0_1968*spinach_kc_leap
ETc_spinach_1969 <- ET0_1969*spinach_kc_norm
ETc_spinach_1970 <- ET0_1970*spinach_kc_norm
ETc_spinach_1971 <- ET0_1971*spinach_kc_norm
ETc_spinach_1972 <- ET0_1972*spinach_kc_leap
ETc_spinach_1973 <- ET0_1973*spinach_kc_norm
ETc_spinach_1974 <- ET0_1974*spinach_kc_norm
ETc_spinach_1975 <- ET0_1975*spinach_kc_norm
ETc_spinach_1976 <- ET0_1976*spinach_kc_leap
ETc_spinach_1977 <- ET0_1977*spinach_kc_norm
ETc_spinach_1978 <- ET0_1978*spinach_kc_norm
ETc_spinach_1979 <- ET0_1979*spinach_kc_norm
ETc_spinach_1980 <- ET0_1980*spinach_kc_leap
ETc_spinach_1981 <- ET0_1981*spinach_kc_norm
ETc_spinach_1982 <- ET0_1982*spinach_kc_norm
ETc_spinach_1983 <- ET0_1983*spinach_kc_norm
ETc_spinach_1984 <- ET0_1984*spinach_kc_leap
ETc_spinach_1985 <- ET0_1985*spinach_kc_norm
ETc_spinach_1986 <- ET0_1986*spinach_kc_norm
ETc_spinach_1987 <- ET0_1987*spinach_kc_norm
ETc_spinach_1988 <- ET0_1988*spinach_kc_leap
ETc_spinach_1989 <- ET0_1989*spinach_kc_norm
ETc_spinach_1990 <- ET0_1990*spinach_kc_norm
ETc_spinach_1991 <- ET0_1991*spinach_kc_norm
ETc_spinach_1992 <- ET0_1992*spinach_kc_leap
ETc_spinach_1993 <- ET0_1993*spinach_kc_norm
ETc_spinach_1994 <- ET0_1994*spinach_kc_norm
ETc_spinach_1995 <- ET0_1995*spinach_kc_norm
ETc_spinach_1996 <- ET0_1996*spinach_kc_leap
ETc_spinach_1997 <- ET0_1997*spinach_kc_norm
ETc_spinach_1998 <- ET0_1998*spinach_kc_norm
ETc_spinach_1999 <- ET0_1999*spinach_kc_norm
ETc_spinach_2000 <- ET0_2000*spinach_kc_leap
ETc_spinach_2001 <- ET0_2001*spinach_kc_norm
ETc_spinach_2002 <- ET0_2002*spinach_kc_norm
ETc_spinach_2003 <- ET0_2003*spinach_kc_norm
ETc_spinach_2004 <- ET0_2004*spinach_kc_leap
ETc_spinach_2005 <- ET0_2005*spinach_kc_norm
ETc_spinach_2006 <- ET0_2006*spinach_kc_norm
ETc_spinach_2007 <- ET0_2007*spinach_kc_norm
ETc_spinach_2008 <- ET0_2008*spinach_kc_leap
ETc_spinach_2009 <- ET0_2009*spinach_kc_norm
ETc_spinach_2010 <- ET0_2010*spinach_kc_norm
ETc_spinach_2011 <- ET0_2011*spinach_kc_norm
ETc_spinach_2012 <- ET0_2012*spinach_kc_leap
ETc_spinach_2013 <- ET0_2013*spinach_kc_norm
write.csv(cbind(GEOID,ETc_spinach_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1950.csv")
write.csv(cbind(GEOID,ETc_spinach_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1951.csv")
write.csv(cbind(GEOID,ETc_spinach_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1952.csv")
write.csv(cbind(GEOID,ETc_spinach_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1953.csv")
write.csv(cbind(GEOID,ETc_spinach_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1954.csv")
write.csv(cbind(GEOID,ETc_spinach_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1955.csv")
write.csv(cbind(GEOID,ETc_spinach_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1956.csv")
write.csv(cbind(GEOID,ETc_spinach_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1957.csv")
write.csv(cbind(GEOID,ETc_spinach_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1958.csv")
write.csv(cbind(GEOID,ETc_spinach_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1959.csv")
write.csv(cbind(GEOID,ETc_spinach_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1960.csv")
write.csv(cbind(GEOID,ETc_spinach_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1961.csv")
write.csv(cbind(GEOID,ETc_spinach_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1962.csv")
write.csv(cbind(GEOID,ETc_spinach_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1963.csv")
write.csv(cbind(GEOID,ETc_spinach_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1964.csv")
write.csv(cbind(GEOID,ETc_spinach_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1965.csv")
write.csv(cbind(GEOID,ETc_spinach_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1966.csv")
write.csv(cbind(GEOID,ETc_spinach_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1967.csv")
write.csv(cbind(GEOID,ETc_spinach_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1968.csv")
write.csv(cbind(GEOID,ETc_spinach_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1969.csv")
write.csv(cbind(GEOID,ETc_spinach_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1970.csv")
write.csv(cbind(GEOID,ETc_spinach_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1971.csv")
write.csv(cbind(GEOID,ETc_spinach_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1972.csv")
write.csv(cbind(GEOID,ETc_spinach_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1973.csv")
write.csv(cbind(GEOID,ETc_spinach_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1974.csv")
write.csv(cbind(GEOID,ETc_spinach_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1975.csv")
write.csv(cbind(GEOID,ETc_spinach_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1976.csv")
write.csv(cbind(GEOID,ETc_spinach_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1977.csv")
write.csv(cbind(GEOID,ETc_spinach_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1978.csv")
write.csv(cbind(GEOID,ETc_spinach_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1979.csv")
write.csv(cbind(GEOID,ETc_spinach_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1980.csv")
write.csv(cbind(GEOID,ETc_spinach_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1981.csv")
write.csv(cbind(GEOID,ETc_spinach_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1982.csv")
write.csv(cbind(GEOID,ETc_spinach_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1983.csv")
write.csv(cbind(GEOID,ETc_spinach_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1984.csv")
write.csv(cbind(GEOID,ETc_spinach_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1985.csv")
write.csv(cbind(GEOID,ETc_spinach_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1986.csv")
write.csv(cbind(GEOID,ETc_spinach_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1987.csv")
write.csv(cbind(GEOID,ETc_spinach_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1988.csv")
write.csv(cbind(GEOID,ETc_spinach_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1989.csv")
write.csv(cbind(GEOID,ETc_spinach_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1990.csv")
write.csv(cbind(GEOID,ETc_spinach_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1991.csv")
write.csv(cbind(GEOID,ETc_spinach_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1992.csv")
write.csv(cbind(GEOID,ETc_spinach_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1993.csv")
write.csv(cbind(GEOID,ETc_spinach_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1994.csv")
write.csv(cbind(GEOID,ETc_spinach_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1995.csv")
write.csv(cbind(GEOID,ETc_spinach_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1996.csv")
write.csv(cbind(GEOID,ETc_spinach_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1997.csv")
write.csv(cbind(GEOID,ETc_spinach_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1998.csv")
write.csv(cbind(GEOID,ETc_spinach_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_1999.csv")
write.csv(cbind(GEOID,ETc_spinach_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_2000.csv")
write.csv(cbind(GEOID,ETc_spinach_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_2001.csv")
write.csv(cbind(GEOID,ETc_spinach_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_2002.csv")
write.csv(cbind(GEOID,ETc_spinach_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_2003.csv")
write.csv(cbind(GEOID,ETc_spinach_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_2004.csv")
write.csv(cbind(GEOID,ETc_spinach_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_2005.csv")
write.csv(cbind(GEOID,ETc_spinach_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_2006.csv")
write.csv(cbind(GEOID,ETc_spinach_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_2007.csv")
write.csv(cbind(GEOID,ETc_spinach_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_2008.csv")
write.csv(cbind(GEOID,ETc_spinach_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_2009.csv")
write.csv(cbind(GEOID,ETc_spinach_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_2010.csv")
write.csv(cbind(GEOID,ETc_spinach_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_2011.csv")
write.csv(cbind(GEOID,ETc_spinach_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_2012.csv")
write.csv(cbind(GEOID,ETc_spinach_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_spinach_2013.csv")
ETc_sugarbeet_1950 <- ET0_1950*sugarbeet_kc_norm
ETc_sugarbeet_1951 <- ET0_1951*sugarbeet_kc_norm
ETc_sugarbeet_1952 <- ET0_1952*sugarbeet_kc_leap
ETc_sugarbeet_1953 <- ET0_1953*sugarbeet_kc_norm
ETc_sugarbeet_1954 <- ET0_1954*sugarbeet_kc_norm
ETc_sugarbeet_1955 <- ET0_1955*sugarbeet_kc_norm
ETc_sugarbeet_1956 <- ET0_1956*sugarbeet_kc_leap
ETc_sugarbeet_1957 <- ET0_1957*sugarbeet_kc_norm
ETc_sugarbeet_1958 <- ET0_1958*sugarbeet_kc_norm
ETc_sugarbeet_1959 <- ET0_1959*sugarbeet_kc_norm
ETc_sugarbeet_1960 <- ET0_1960*sugarbeet_kc_leap
ETc_sugarbeet_1961 <- ET0_1961*sugarbeet_kc_norm
ETc_sugarbeet_1962 <- ET0_1962*sugarbeet_kc_norm
ETc_sugarbeet_1963 <- ET0_1963*sugarbeet_kc_norm
ETc_sugarbeet_1964 <- ET0_1964*sugarbeet_kc_leap
ETc_sugarbeet_1965 <- ET0_1965*sugarbeet_kc_norm
ETc_sugarbeet_1966 <- ET0_1966*sugarbeet_kc_norm
ETc_sugarbeet_1967 <- ET0_1967*sugarbeet_kc_norm
ETc_sugarbeet_1968 <- ET0_1968*sugarbeet_kc_leap
ETc_sugarbeet_1969 <- ET0_1969*sugarbeet_kc_norm
ETc_sugarbeet_1970 <- ET0_1970*sugarbeet_kc_norm
ETc_sugarbeet_1971 <- ET0_1971*sugarbeet_kc_norm
ETc_sugarbeet_1972 <- ET0_1972*sugarbeet_kc_leap
ETc_sugarbeet_1973 <- ET0_1973*sugarbeet_kc_norm
ETc_sugarbeet_1974 <- ET0_1974*sugarbeet_kc_norm
ETc_sugarbeet_1975 <- ET0_1975*sugarbeet_kc_norm
ETc_sugarbeet_1976 <- ET0_1976*sugarbeet_kc_leap
ETc_sugarbeet_1977 <- ET0_1977*sugarbeet_kc_norm
ETc_sugarbeet_1978 <- ET0_1978*sugarbeet_kc_norm
ETc_sugarbeet_1979 <- ET0_1979*sugarbeet_kc_norm
ETc_sugarbeet_1980 <- ET0_1980*sugarbeet_kc_leap
ETc_sugarbeet_1981 <- ET0_1981*sugarbeet_kc_norm
ETc_sugarbeet_1982 <- ET0_1982*sugarbeet_kc_norm
ETc_sugarbeet_1983 <- ET0_1983*sugarbeet_kc_norm
ETc_sugarbeet_1984 <- ET0_1984*sugarbeet_kc_leap
ETc_sugarbeet_1985 <- ET0_1985*sugarbeet_kc_norm
ETc_sugarbeet_1986 <- ET0_1986*sugarbeet_kc_norm
ETc_sugarbeet_1987 <- ET0_1987*sugarbeet_kc_norm
ETc_sugarbeet_1988 <- ET0_1988*sugarbeet_kc_leap
ETc_sugarbeet_1989 <- ET0_1989*sugarbeet_kc_norm
ETc_sugarbeet_1990 <- ET0_1990*sugarbeet_kc_norm
ETc_sugarbeet_1991 <- ET0_1991*sugarbeet_kc_norm
ETc_sugarbeet_1992 <- ET0_1992*sugarbeet_kc_leap
ETc_sugarbeet_1993 <- ET0_1993*sugarbeet_kc_norm
ETc_sugarbeet_1994 <- ET0_1994*sugarbeet_kc_norm
ETc_sugarbeet_1995 <- ET0_1995*sugarbeet_kc_norm
ETc_sugarbeet_1996 <- ET0_1996*sugarbeet_kc_leap
ETc_sugarbeet_1997 <- ET0_1997*sugarbeet_kc_norm
ETc_sugarbeet_1998 <- ET0_1998*sugarbeet_kc_norm
ETc_sugarbeet_1999 <- ET0_1999*sugarbeet_kc_norm
ETc_sugarbeet_2000 <- ET0_2000*sugarbeet_kc_leap
ETc_sugarbeet_2001 <- ET0_2001*sugarbeet_kc_norm
ETc_sugarbeet_2002 <- ET0_2002*sugarbeet_kc_norm
ETc_sugarbeet_2003 <- ET0_2003*sugarbeet_kc_norm
ETc_sugarbeet_2004 <- ET0_2004*sugarbeet_kc_leap
ETc_sugarbeet_2005 <- ET0_2005*sugarbeet_kc_norm
ETc_sugarbeet_2006 <- ET0_2006*sugarbeet_kc_norm
ETc_sugarbeet_2007 <- ET0_2007*sugarbeet_kc_norm
ETc_sugarbeet_2008 <- ET0_2008*sugarbeet_kc_leap
ETc_sugarbeet_2009 <- ET0_2009*sugarbeet_kc_norm
ETc_sugarbeet_2010 <- ET0_2010*sugarbeet_kc_norm
ETc_sugarbeet_2011 <- ET0_2011*sugarbeet_kc_norm
ETc_sugarbeet_2012 <- ET0_2012*sugarbeet_kc_leap
ETc_sugarbeet_2013 <- ET0_2013*sugarbeet_kc_norm
write.csv(cbind(GEOID,ETc_sugarbeet_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1950.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1951.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1952.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1953.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1954.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1955.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1956.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1957.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1958.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1959.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1960.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1961.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1962.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1963.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1964.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1965.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1966.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1967.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1968.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1969.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1970.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1971.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1972.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1973.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1974.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1975.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1976.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1977.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1978.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1979.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1980.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1981.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1982.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1983.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1984.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1985.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1986.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1987.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1988.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1989.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1990.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1991.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1992.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1993.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1994.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1995.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1996.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1997.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1998.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_1999.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_2000.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_2001.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_2002.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_2003.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_2004.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_2005.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_2006.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_2007.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_2008.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_2009.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_2010.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_2011.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_2012.csv")
write.csv(cbind(GEOID,ETc_sugarbeet_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sugarbeet_2013.csv")
ETc_sweetpeppers_1950 <- ET0_1950*sweetpeppers_kc_norm
ETc_sweetpeppers_1951 <- ET0_1951*sweetpeppers_kc_norm
ETc_sweetpeppers_1952 <- ET0_1952*sweetpeppers_kc_leap
ETc_sweetpeppers_1953 <- ET0_1953*sweetpeppers_kc_norm
ETc_sweetpeppers_1954 <- ET0_1954*sweetpeppers_kc_norm
ETc_sweetpeppers_1955 <- ET0_1955*sweetpeppers_kc_norm
ETc_sweetpeppers_1956 <- ET0_1956*sweetpeppers_kc_leap
ETc_sweetpeppers_1957 <- ET0_1957*sweetpeppers_kc_norm
ETc_sweetpeppers_1958 <- ET0_1958*sweetpeppers_kc_norm
ETc_sweetpeppers_1959 <- ET0_1959*sweetpeppers_kc_norm
ETc_sweetpeppers_1960 <- ET0_1960*sweetpeppers_kc_leap
ETc_sweetpeppers_1961 <- ET0_1961*sweetpeppers_kc_norm
ETc_sweetpeppers_1962 <- ET0_1962*sweetpeppers_kc_norm
ETc_sweetpeppers_1963 <- ET0_1963*sweetpeppers_kc_norm
ETc_sweetpeppers_1964 <- ET0_1964*sweetpeppers_kc_leap
ETc_sweetpeppers_1965 <- ET0_1965*sweetpeppers_kc_norm
ETc_sweetpeppers_1966 <- ET0_1966*sweetpeppers_kc_norm
ETc_sweetpeppers_1967 <- ET0_1967*sweetpeppers_kc_norm
ETc_sweetpeppers_1968 <- ET0_1968*sweetpeppers_kc_leap
ETc_sweetpeppers_1969 <- ET0_1969*sweetpeppers_kc_norm
ETc_sweetpeppers_1970 <- ET0_1970*sweetpeppers_kc_norm
ETc_sweetpeppers_1971 <- ET0_1971*sweetpeppers_kc_norm
ETc_sweetpeppers_1972 <- ET0_1972*sweetpeppers_kc_leap
ETc_sweetpeppers_1973 <- ET0_1973*sweetpeppers_kc_norm
ETc_sweetpeppers_1974 <- ET0_1974*sweetpeppers_kc_norm
ETc_sweetpeppers_1975 <- ET0_1975*sweetpeppers_kc_norm
ETc_sweetpeppers_1976 <- ET0_1976*sweetpeppers_kc_leap
ETc_sweetpeppers_1977 <- ET0_1977*sweetpeppers_kc_norm
ETc_sweetpeppers_1978 <- ET0_1978*sweetpeppers_kc_norm
ETc_sweetpeppers_1979 <- ET0_1979*sweetpeppers_kc_norm
ETc_sweetpeppers_1980 <- ET0_1980*sweetpeppers_kc_leap
ETc_sweetpeppers_1981 <- ET0_1981*sweetpeppers_kc_norm
ETc_sweetpeppers_1982 <- ET0_1982*sweetpeppers_kc_norm
ETc_sweetpeppers_1983 <- ET0_1983*sweetpeppers_kc_norm
ETc_sweetpeppers_1984 <- ET0_1984*sweetpeppers_kc_leap
ETc_sweetpeppers_1985 <- ET0_1985*sweetpeppers_kc_norm
ETc_sweetpeppers_1986 <- ET0_1986*sweetpeppers_kc_norm
ETc_sweetpeppers_1987 <- ET0_1987*sweetpeppers_kc_norm
ETc_sweetpeppers_1988 <- ET0_1988*sweetpeppers_kc_leap
ETc_sweetpeppers_1989 <- ET0_1989*sweetpeppers_kc_norm
ETc_sweetpeppers_1990 <- ET0_1990*sweetpeppers_kc_norm
ETc_sweetpeppers_1991 <- ET0_1991*sweetpeppers_kc_norm
ETc_sweetpeppers_1992 <- ET0_1992*sweetpeppers_kc_leap
ETc_sweetpeppers_1993 <- ET0_1993*sweetpeppers_kc_norm
ETc_sweetpeppers_1994 <- ET0_1994*sweetpeppers_kc_norm
ETc_sweetpeppers_1995 <- ET0_1995*sweetpeppers_kc_norm
ETc_sweetpeppers_1996 <- ET0_1996*sweetpeppers_kc_leap
ETc_sweetpeppers_1997 <- ET0_1997*sweetpeppers_kc_norm
ETc_sweetpeppers_1998 <- ET0_1998*sweetpeppers_kc_norm
ETc_sweetpeppers_1999 <- ET0_1999*sweetpeppers_kc_norm
ETc_sweetpeppers_2000 <- ET0_2000*sweetpeppers_kc_leap
ETc_sweetpeppers_2001 <- ET0_2001*sweetpeppers_kc_norm
ETc_sweetpeppers_2002 <- ET0_2002*sweetpeppers_kc_norm
ETc_sweetpeppers_2003 <- ET0_2003*sweetpeppers_kc_norm
ETc_sweetpeppers_2004 <- ET0_2004*sweetpeppers_kc_leap
ETc_sweetpeppers_2005 <- ET0_2005*sweetpeppers_kc_norm
ETc_sweetpeppers_2006 <- ET0_2006*sweetpeppers_kc_norm
ETc_sweetpeppers_2007 <- ET0_2007*sweetpeppers_kc_norm
ETc_sweetpeppers_2008 <- ET0_2008*sweetpeppers_kc_leap
ETc_sweetpeppers_2009 <- ET0_2009*sweetpeppers_kc_norm
ETc_sweetpeppers_2010 <- ET0_2010*sweetpeppers_kc_norm
ETc_sweetpeppers_2011 <- ET0_2011*sweetpeppers_kc_norm
ETc_sweetpeppers_2012 <- ET0_2012*sweetpeppers_kc_leap
ETc_sweetpeppers_2013 <- ET0_2013*sweetpeppers_kc_norm
write.csv(cbind(GEOID,ETc_sweetpeppers_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1950.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1951.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1952.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1953.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1954.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1955.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1956.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1957.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1958.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1959.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1960.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1961.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1962.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1963.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1964.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1965.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1966.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1967.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1968.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1969.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1970.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1971.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1972.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1973.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1974.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1975.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1976.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1977.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1978.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1979.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1980.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1981.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1982.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1983.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1984.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1985.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1986.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1987.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1988.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1989.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1990.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1991.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1992.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1993.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1994.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1995.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1996.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1997.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1998.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_1999.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_2000.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_2001.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_2002.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_2003.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_2004.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_2005.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_2006.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_2007.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_2008.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_2009.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_2010.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_2011.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_2012.csv")
write.csv(cbind(GEOID,ETc_sweetpeppers_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_sweetpeppers_2013.csv")
ETc_tobacco_1950 <- ET0_1950*tobacco_kc_norm
ETc_tobacco_1951 <- ET0_1951*tobacco_kc_norm
ETc_tobacco_1952 <- ET0_1952*tobacco_kc_leap
ETc_tobacco_1953 <- ET0_1953*tobacco_kc_norm
ETc_tobacco_1954 <- ET0_1954*tobacco_kc_norm
ETc_tobacco_1955 <- ET0_1955*tobacco_kc_norm
ETc_tobacco_1956 <- ET0_1956*tobacco_kc_leap
ETc_tobacco_1957 <- ET0_1957*tobacco_kc_norm
ETc_tobacco_1958 <- ET0_1958*tobacco_kc_norm
ETc_tobacco_1959 <- ET0_1959*tobacco_kc_norm
ETc_tobacco_1960 <- ET0_1960*tobacco_kc_leap
ETc_tobacco_1961 <- ET0_1961*tobacco_kc_norm
ETc_tobacco_1962 <- ET0_1962*tobacco_kc_norm
ETc_tobacco_1963 <- ET0_1963*tobacco_kc_norm
ETc_tobacco_1964 <- ET0_1964*tobacco_kc_leap
ETc_tobacco_1965 <- ET0_1965*tobacco_kc_norm
ETc_tobacco_1966 <- ET0_1966*tobacco_kc_norm
ETc_tobacco_1967 <- ET0_1967*tobacco_kc_norm
ETc_tobacco_1968 <- ET0_1968*tobacco_kc_leap
ETc_tobacco_1969 <- ET0_1969*tobacco_kc_norm
ETc_tobacco_1970 <- ET0_1970*tobacco_kc_norm
ETc_tobacco_1971 <- ET0_1971*tobacco_kc_norm
ETc_tobacco_1972 <- ET0_1972*tobacco_kc_leap
ETc_tobacco_1973 <- ET0_1973*tobacco_kc_norm
ETc_tobacco_1974 <- ET0_1974*tobacco_kc_norm
ETc_tobacco_1975 <- ET0_1975*tobacco_kc_norm
ETc_tobacco_1976 <- ET0_1976*tobacco_kc_leap
ETc_tobacco_1977 <- ET0_1977*tobacco_kc_norm
ETc_tobacco_1978 <- ET0_1978*tobacco_kc_norm
ETc_tobacco_1979 <- ET0_1979*tobacco_kc_norm
ETc_tobacco_1980 <- ET0_1980*tobacco_kc_leap
ETc_tobacco_1981 <- ET0_1981*tobacco_kc_norm
ETc_tobacco_1982 <- ET0_1982*tobacco_kc_norm
ETc_tobacco_1983 <- ET0_1983*tobacco_kc_norm
ETc_tobacco_1984 <- ET0_1984*tobacco_kc_leap
ETc_tobacco_1985 <- ET0_1985*tobacco_kc_norm
ETc_tobacco_1986 <- ET0_1986*tobacco_kc_norm
ETc_tobacco_1987 <- ET0_1987*tobacco_kc_norm
ETc_tobacco_1988 <- ET0_1988*tobacco_kc_leap
ETc_tobacco_1989 <- ET0_1989*tobacco_kc_norm
ETc_tobacco_1990 <- ET0_1990*tobacco_kc_norm
ETc_tobacco_1991 <- ET0_1991*tobacco_kc_norm
ETc_tobacco_1992 <- ET0_1992*tobacco_kc_leap
ETc_tobacco_1993 <- ET0_1993*tobacco_kc_norm
ETc_tobacco_1994 <- ET0_1994*tobacco_kc_norm
ETc_tobacco_1995 <- ET0_1995*tobacco_kc_norm
ETc_tobacco_1996 <- ET0_1996*tobacco_kc_leap
ETc_tobacco_1997 <- ET0_1997*tobacco_kc_norm
ETc_tobacco_1998 <- ET0_1998*tobacco_kc_norm
ETc_tobacco_1999 <- ET0_1999*tobacco_kc_norm
ETc_tobacco_2000 <- ET0_2000*tobacco_kc_leap
ETc_tobacco_2001 <- ET0_2001*tobacco_kc_norm
ETc_tobacco_2002 <- ET0_2002*tobacco_kc_norm
ETc_tobacco_2003 <- ET0_2003*tobacco_kc_norm
ETc_tobacco_2004 <- ET0_2004*tobacco_kc_leap
ETc_tobacco_2005 <- ET0_2005*tobacco_kc_norm
ETc_tobacco_2006 <- ET0_2006*tobacco_kc_norm
ETc_tobacco_2007 <- ET0_2007*tobacco_kc_norm
ETc_tobacco_2008 <- ET0_2008*tobacco_kc_leap
ETc_tobacco_2009 <- ET0_2009*tobacco_kc_norm
ETc_tobacco_2010 <- ET0_2010*tobacco_kc_norm
ETc_tobacco_2011 <- ET0_2011*tobacco_kc_norm
ETc_tobacco_2012 <- ET0_2012*tobacco_kc_leap
ETc_tobacco_2013 <- ET0_2013*tobacco_kc_norm
write.csv(cbind(GEOID,ETc_tobacco_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1950.csv")
write.csv(cbind(GEOID,ETc_tobacco_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1951.csv")
write.csv(cbind(GEOID,ETc_tobacco_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1952.csv")
write.csv(cbind(GEOID,ETc_tobacco_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1953.csv")
write.csv(cbind(GEOID,ETc_tobacco_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1954.csv")
write.csv(cbind(GEOID,ETc_tobacco_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1955.csv")
write.csv(cbind(GEOID,ETc_tobacco_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1956.csv")
write.csv(cbind(GEOID,ETc_tobacco_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1957.csv")
write.csv(cbind(GEOID,ETc_tobacco_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1958.csv")
write.csv(cbind(GEOID,ETc_tobacco_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1959.csv")
write.csv(cbind(GEOID,ETc_tobacco_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1960.csv")
write.csv(cbind(GEOID,ETc_tobacco_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1961.csv")
write.csv(cbind(GEOID,ETc_tobacco_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1962.csv")
write.csv(cbind(GEOID,ETc_tobacco_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1963.csv")
write.csv(cbind(GEOID,ETc_tobacco_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1964.csv")
write.csv(cbind(GEOID,ETc_tobacco_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1965.csv")
write.csv(cbind(GEOID,ETc_tobacco_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1966.csv")
write.csv(cbind(GEOID,ETc_tobacco_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1967.csv")
write.csv(cbind(GEOID,ETc_tobacco_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1968.csv")
write.csv(cbind(GEOID,ETc_tobacco_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1969.csv")
write.csv(cbind(GEOID,ETc_tobacco_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1970.csv")
write.csv(cbind(GEOID,ETc_tobacco_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1971.csv")
write.csv(cbind(GEOID,ETc_tobacco_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1972.csv")
write.csv(cbind(GEOID,ETc_tobacco_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1973.csv")
write.csv(cbind(GEOID,ETc_tobacco_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1974.csv")
write.csv(cbind(GEOID,ETc_tobacco_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1975.csv")
write.csv(cbind(GEOID,ETc_tobacco_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1976.csv")
write.csv(cbind(GEOID,ETc_tobacco_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1977.csv")
write.csv(cbind(GEOID,ETc_tobacco_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1978.csv")
write.csv(cbind(GEOID,ETc_tobacco_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1979.csv")
write.csv(cbind(GEOID,ETc_tobacco_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1980.csv")
write.csv(cbind(GEOID,ETc_tobacco_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1981.csv")
write.csv(cbind(GEOID,ETc_tobacco_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1982.csv")
write.csv(cbind(GEOID,ETc_tobacco_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1983.csv")
write.csv(cbind(GEOID,ETc_tobacco_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1984.csv")
write.csv(cbind(GEOID,ETc_tobacco_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1985.csv")
write.csv(cbind(GEOID,ETc_tobacco_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1986.csv")
write.csv(cbind(GEOID,ETc_tobacco_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1987.csv")
write.csv(cbind(GEOID,ETc_tobacco_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1988.csv")
write.csv(cbind(GEOID,ETc_tobacco_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1989.csv")
write.csv(cbind(GEOID,ETc_tobacco_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1990.csv")
write.csv(cbind(GEOID,ETc_tobacco_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1991.csv")
write.csv(cbind(GEOID,ETc_tobacco_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1992.csv")
write.csv(cbind(GEOID,ETc_tobacco_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1993.csv")
write.csv(cbind(GEOID,ETc_tobacco_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1994.csv")
write.csv(cbind(GEOID,ETc_tobacco_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1995.csv")
write.csv(cbind(GEOID,ETc_tobacco_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1996.csv")
write.csv(cbind(GEOID,ETc_tobacco_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1997.csv")
write.csv(cbind(GEOID,ETc_tobacco_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1998.csv")
write.csv(cbind(GEOID,ETc_tobacco_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_1999.csv")
write.csv(cbind(GEOID,ETc_tobacco_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_2000.csv")
write.csv(cbind(GEOID,ETc_tobacco_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_2001.csv")
write.csv(cbind(GEOID,ETc_tobacco_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_2002.csv")
write.csv(cbind(GEOID,ETc_tobacco_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_2003.csv")
write.csv(cbind(GEOID,ETc_tobacco_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_2004.csv")
write.csv(cbind(GEOID,ETc_tobacco_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_2005.csv")
write.csv(cbind(GEOID,ETc_tobacco_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_2006.csv")
write.csv(cbind(GEOID,ETc_tobacco_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_2007.csv")
write.csv(cbind(GEOID,ETc_tobacco_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_2008.csv")
write.csv(cbind(GEOID,ETc_tobacco_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_2009.csv")
write.csv(cbind(GEOID,ETc_tobacco_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_2010.csv")
write.csv(cbind(GEOID,ETc_tobacco_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_2011.csv")
write.csv(cbind(GEOID,ETc_tobacco_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_2012.csv")
write.csv(cbind(GEOID,ETc_tobacco_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_tobacco_2013.csv")
ETc_vegetable_all_1950 <- ET0_1950*vegetable_all_kc_norm
ETc_vegetable_all_1951 <- ET0_1951*vegetable_all_kc_norm
ETc_vegetable_all_1952 <- ET0_1952*vegetable_all_kc_leap
ETc_vegetable_all_1953 <- ET0_1953*vegetable_all_kc_norm
ETc_vegetable_all_1954 <- ET0_1954*vegetable_all_kc_norm
ETc_vegetable_all_1955 <- ET0_1955*vegetable_all_kc_norm
ETc_vegetable_all_1956 <- ET0_1956*vegetable_all_kc_leap
ETc_vegetable_all_1957 <- ET0_1957*vegetable_all_kc_norm
ETc_vegetable_all_1958 <- ET0_1958*vegetable_all_kc_norm
ETc_vegetable_all_1959 <- ET0_1959*vegetable_all_kc_norm
ETc_vegetable_all_1960 <- ET0_1960*vegetable_all_kc_leap
ETc_vegetable_all_1961 <- ET0_1961*vegetable_all_kc_norm
ETc_vegetable_all_1962 <- ET0_1962*vegetable_all_kc_norm
ETc_vegetable_all_1963 <- ET0_1963*vegetable_all_kc_norm
ETc_vegetable_all_1964 <- ET0_1964*vegetable_all_kc_leap
ETc_vegetable_all_1965 <- ET0_1965*vegetable_all_kc_norm
ETc_vegetable_all_1966 <- ET0_1966*vegetable_all_kc_norm
ETc_vegetable_all_1967 <- ET0_1967*vegetable_all_kc_norm
ETc_vegetable_all_1968 <- ET0_1968*vegetable_all_kc_leap
ETc_vegetable_all_1969 <- ET0_1969*vegetable_all_kc_norm
ETc_vegetable_all_1970 <- ET0_1970*vegetable_all_kc_norm
ETc_vegetable_all_1971 <- ET0_1971*vegetable_all_kc_norm
ETc_vegetable_all_1972 <- ET0_1972*vegetable_all_kc_leap
ETc_vegetable_all_1973 <- ET0_1973*vegetable_all_kc_norm
ETc_vegetable_all_1974 <- ET0_1974*vegetable_all_kc_norm
ETc_vegetable_all_1975 <- ET0_1975*vegetable_all_kc_norm
ETc_vegetable_all_1976 <- ET0_1976*vegetable_all_kc_leap
ETc_vegetable_all_1977 <- ET0_1977*vegetable_all_kc_norm
ETc_vegetable_all_1978 <- ET0_1978*vegetable_all_kc_norm
ETc_vegetable_all_1979 <- ET0_1979*vegetable_all_kc_norm
ETc_vegetable_all_1980 <- ET0_1980*vegetable_all_kc_leap
ETc_vegetable_all_1981 <- ET0_1981*vegetable_all_kc_norm
ETc_vegetable_all_1982 <- ET0_1982*vegetable_all_kc_norm
ETc_vegetable_all_1983 <- ET0_1983*vegetable_all_kc_norm
ETc_vegetable_all_1984 <- ET0_1984*vegetable_all_kc_leap
ETc_vegetable_all_1985 <- ET0_1985*vegetable_all_kc_norm
ETc_vegetable_all_1986 <- ET0_1986*vegetable_all_kc_norm
ETc_vegetable_all_1987 <- ET0_1987*vegetable_all_kc_norm
ETc_vegetable_all_1988 <- ET0_1988*vegetable_all_kc_leap
ETc_vegetable_all_1989 <- ET0_1989*vegetable_all_kc_norm
ETc_vegetable_all_1990 <- ET0_1990*vegetable_all_kc_norm
ETc_vegetable_all_1991 <- ET0_1991*vegetable_all_kc_norm
ETc_vegetable_all_1992 <- ET0_1992*vegetable_all_kc_leap
ETc_vegetable_all_1993 <- ET0_1993*vegetable_all_kc_norm
ETc_vegetable_all_1994 <- ET0_1994*vegetable_all_kc_norm
ETc_vegetable_all_1995 <- ET0_1995*vegetable_all_kc_norm
ETc_vegetable_all_1996 <- ET0_1996*vegetable_all_kc_leap
ETc_vegetable_all_1997 <- ET0_1997*vegetable_all_kc_norm
ETc_vegetable_all_1998 <- ET0_1998*vegetable_all_kc_norm
ETc_vegetable_all_1999 <- ET0_1999*vegetable_all_kc_norm
ETc_vegetable_all_2000 <- ET0_2000*vegetable_all_kc_leap
ETc_vegetable_all_2001 <- ET0_2001*vegetable_all_kc_norm
ETc_vegetable_all_2002 <- ET0_2002*vegetable_all_kc_norm
ETc_vegetable_all_2003 <- ET0_2003*vegetable_all_kc_norm
ETc_vegetable_all_2004 <- ET0_2004*vegetable_all_kc_leap
ETc_vegetable_all_2005 <- ET0_2005*vegetable_all_kc_norm
ETc_vegetable_all_2006 <- ET0_2006*vegetable_all_kc_norm
ETc_vegetable_all_2007 <- ET0_2007*vegetable_all_kc_norm
ETc_vegetable_all_2008 <- ET0_2008*vegetable_all_kc_leap
ETc_vegetable_all_2009 <- ET0_2009*vegetable_all_kc_norm
ETc_vegetable_all_2010 <- ET0_2010*vegetable_all_kc_norm
ETc_vegetable_all_2011 <- ET0_2011*vegetable_all_kc_norm
ETc_vegetable_all_2012 <- ET0_2012*vegetable_all_kc_leap
ETc_vegetable_all_2013 <- ET0_2013*vegetable_all_kc_norm
write.csv(cbind(GEOID,ETc_vegetable_all_1950), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1950.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1951), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1951.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1952), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1952.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1953), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1953.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1954), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1954.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1955), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1955.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1956), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1956.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1957), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1957.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1958), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1958.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1959), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1959.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1960), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1960.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1961), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1961.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1962), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1962.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1963), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1963.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1964), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1964.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1965), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1965.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1966), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1966.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1967), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1967.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1968), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1968.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1969), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1969.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1970), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1970.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1971), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1971.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1972), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1972.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1973), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1973.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1974), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1974.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1975), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1975.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1976), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1976.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1977), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1977.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1978), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1978.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1979), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1979.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1980), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1980.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1981), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1981.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1982), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1982.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1983), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1983.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1984), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1984.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1985), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1985.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1986), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1986.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1987), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1987.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1988), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1988.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1989), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1989.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1990), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1990.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1991), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1991.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1992), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1992.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1993), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1993.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1994), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1994.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1995), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1995.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1996), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1996.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1997), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1997.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1998), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1998.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_1999), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_1999.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_2000), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_2000.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_2001), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_2001.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_2002), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_2002.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_2003), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_2003.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_2004), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_2004.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_2005), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_2005.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_2006), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_2006.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_2007), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_2007.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_2008), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_2008.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_2009), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_2009.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_2010), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_2010.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_2011), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_2011.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_2012), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_2012.csv")
write.csv(cbind(GEOID,ETc_vegetable_all_2013), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/ETc/ETc_vegetable_all_2013.csv")



