
library(imputeTS)
library(reshape)
        
GEOID <- alfalfa_w1$GEOID
GEOID <- as.data.frame(GEOID)

gw <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/surface_ground_percent/gw_perc_allyears.csv", header=TRUE)
sw <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/surface_ground_percent/sw_perc_allyears.csv", header=TRUE)

gw <- merge(gw, GEOID, by="GEOID")
sw <- merge(sw, GEOID, by="GEOID")

gw <- subset(gw, select=-c(X, GEOID))
sw <- subset(sw, select=-c(X, GEOID))

# read in annual water use files

alfalfa_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/alfalfa_w1.csv", header=TRUE)
almonds_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/almonds_w1.csv", header=TRUE)
apples_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/apples_w1.csv", header=TRUE)
apricots_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/apricots_w1.csv", header=TRUE)
avocadoes_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/avocadoes_w1.csv", header=TRUE)
barley_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/barley_w1.csv", header=TRUE)
berries_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/berries_w1.csv", header=TRUE)
blueberries_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/blueberries_w1.csv", header=TRUE)
buckwheat_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/buckwheat_w1.csv", header=TRUE)
cantaloup_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/cantaloup_w1.csv", header=TRUE)
cherries_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/cherries_w1.csv", header=TRUE)
citrus_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/citrus_w1.csv", header=TRUE)
corn_grain_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/corn_grain_w1.csv", header=TRUE)
corn_silage_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/corn_silage_w1.csv", header=TRUE)
cotton_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/cotton_w1.csv", header=TRUE)
cucumber_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/cucumber_w1.csv", header=TRUE)
grape_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/grape_w1.csv", header=TRUE)
hay_all_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/hay_all_w1.csv", header=TRUE)
hotpeppers_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/hotpeppers_w1.csv", header=TRUE)
lettuce_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/lettuce_w1.csv", header=TRUE)
oats_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/oats_w1.csv", header=TRUE)
peaches_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/peaches_w1.csv", header=TRUE)
peanuts_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/peanuts_w1.csv", header=TRUE)
pears_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/pears_w1.csv", header=TRUE)
plums_prunes_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/plums_prunes_w1.csv", header=TRUE)
potatoes_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/potatoes_w1.csv", header=TRUE)
raspberries_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/raspberries_w1.csv", header=TRUE)
rice_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/rice_w1.csv", header=TRUE)
rye_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/rye_w1.csv", header=TRUE)
snapbeans_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/snapbeans_w1.csv", header=TRUE)
sorghum_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/sorghum_w1.csv", header=TRUE)
sorghum_silage_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/sorghum_silage_w1.csv", header=TRUE)
soybean_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/soybean_w1.csv", header=TRUE)
spinach_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/spinach_w1.csv", header=TRUE)
strawberries_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/strawberries_w1.csv", header=TRUE)
sugarbeet_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/sugarbeet_w1.csv", header=TRUE)
sweetpeppers_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/sweetpeppers_w1.csv", header=TRUE)
sweet_potato_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/sweet_potato_w1.csv", header=TRUE)
tobacco_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/tobacco_w1.csv", header=TRUE)
tomatoes_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/tomatoes_w1.csv", header=TRUE)
vegetable_all_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/vegetable_all_w1.csv", header=TRUE)
watermelon_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/watermelon_w1.csv", header=TRUE)
wheat_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s1/wheat_w1.csv", header=TRUE)


### remove first 2 variables

alfalfa_w1 <-subset(alfalfa_w1, select=-c(X, GEOID))
almonds_w1 <-subset(almonds_w1, select=-c(X, GEOID))
apples_w1 <-subset(apples_w1, select=-c(X, GEOID))
apricots_w1 <-subset(apricots_w1, select=-c(X, GEOID))
avocadoes_w1 <-subset(avocadoes_w1, select=-c(X, GEOID))
barley_w1 <-subset(barley_w1, select=-c(X, GEOID))
berries_w1 <-subset(berries_w1, select=-c(X, GEOID))
blueberries_w1 <-subset(blueberries_w1, select=-c(X, GEOID))
buckwheat_w1 <-subset(buckwheat_w1, select=-c(X, GEOID))
cantaloup_w1 <-subset(cantaloup_w1, select=-c(X, GEOID))
cherries_w1 <-subset(cherries_w1, select=-c(X, GEOID))
citrus_w1 <-subset(citrus_w1, select=-c(X, GEOID))
corn_grain_w1 <-subset(corn_grain_w1, select=-c(X, GEOID))
corn_silage_w1 <-subset(corn_silage_w1, select=-c(X, GEOID))
cotton_w1 <-subset(cotton_w1, select=-c(X, GEOID))
cucumber_w1 <-subset(cucumber_w1, select=-c(X, GEOID))
grape_w1 <-subset(grape_w1, select=-c(X, GEOID))
hay_all_w1 <-subset(hay_all_w1, select=-c(X, GEOID))
hotpeppers_w1 <-subset(hotpeppers_w1, select=-c(X, GEOID))
lettuce_w1 <-subset(lettuce_w1, select=-c(X, GEOID))
oats_w1 <-subset(oats_w1, select=-c(X, GEOID))
peaches_w1 <-subset(peaches_w1, select=-c(X, GEOID))
peanuts_w1 <-subset(peanuts_w1, select=-c(X, GEOID))
pears_w1 <-subset(pears_w1, select=-c(X, GEOID))
plums_prunes_w1 <-subset(plums_prunes_w1, select=-c(X, GEOID))
potatoes_w1 <-subset(potatoes_w1, select=-c(X, GEOID))
raspberries_w1 <-subset(raspberries_w1, select=-c(X, GEOID))
rice_w1 <-subset(rice_w1, select=-c(X, GEOID))
rye_w1 <-subset(rye_w1, select=-c(X, GEOID))
snapbeans_w1 <-subset(snapbeans_w1, select=-c(X, GEOID))
sorghum_w1 <-subset(sorghum_w1, select=-c(X, GEOID))
sorghum_silage_w1 <-subset(sorghum_silage_w1, select=-c(X, GEOID))
soybean_w1 <-subset(soybean_w1, select=-c(X, GEOID))
spinach_w1 <-subset(spinach_w1, select=-c(X, GEOID))
strawberries_w1 <-subset(strawberries_w1, select=-c(X, GEOID))
sugarbeet_w1 <-subset(sugarbeet_w1, select=-c(X, GEOID))
sweetpeppers_w1 <-subset(sweetpeppers_w1, select=-c(X, GEOID))
sweet_potato_w1 <-subset(sweet_potato_w1, select=-c(X, GEOID))
tobacco_w1 <-subset(tobacco_w1, select=-c(X, GEOID))
tomatoes_w1 <-subset(tomatoes_w1, select=-c(X, GEOID))
vegetable_all_w1 <-subset(vegetable_all_w1, select=-c(X, GEOID))
watermelon_w1 <-subset(watermelon_w1, select=-c(X, GEOID))
wheat_w1 <-subset(wheat_w1, select=-c(X, GEOID))


w1_sum =	alfalfa_w1 +	almonds_w1 +	apples_w1 +	apricots_w1 +	avocadoes_w1 +	barley_w1 +	berries_w1 +	blueberries_w1 +	buckwheat_w1 +	cantaloup_w1 +	cherries_w1 +	citrus_w1 +	corn_grain_w1 +	corn_silage_w1 +	cotton_w1 +	cucumber_w1 +	grape_w1 +	hay_all_w1 +	hotpeppers_w1 +	lettuce_w1 +	oats_w1 +	peaches_w1 +	peanuts_w1 +	pears_w1 +	plums_prunes_w1 +	potatoes_w1 +	raspberries_w1 +	rice_w1 +	rye_w1 +	snapbeans_w1 +	sorghum_w1 +	sorghum_silage_w1 +	soybean_w1 +	spinach_w1 +	strawberries_w1 +	sugarbeet_w1 +	sweetpeppers_w1 +	sweet_potato_w1 +	tobacco_w1 +	tomatoes_w1 +	vegetable_all_w1 +	watermelon_w1 +	wheat_w1
write.csv(cbind(GEOID,w1_sum), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w1_sum.csv")


## read in second version files


alfalfa_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/alfalfa_w1.csv", header=TRUE)
almonds_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/almonds_w1.csv", header=TRUE)
apples_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/apples_w1.csv", header=TRUE)
apricots_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/apricots_w1.csv", header=TRUE)
avocadoes_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/avocadoes_w1.csv", header=TRUE)
barley_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/barley_w1.csv", header=TRUE)
berries_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/berries_w1.csv", header=TRUE)
blueberries_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/blueberries_w1.csv", header=TRUE)
buckwheat_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/buckwheat_w1.csv", header=TRUE)
cantaloup_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/cantaloup_w1.csv", header=TRUE)
cherries_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/cherries_w1.csv", header=TRUE)
citrus_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/citrus_w1.csv", header=TRUE)
corn_grain_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/corn_grain_w1.csv", header=TRUE)
corn_silage_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/corn_silage_w1.csv", header=TRUE)
cotton_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/cotton_w1.csv", header=TRUE)
cucumber_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/cucumber_w1.csv", header=TRUE)
grape_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/grape_w1.csv", header=TRUE)
hay_all_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/hay_all_w1.csv", header=TRUE)
hotpeppers_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/hotpeppers_w1.csv", header=TRUE)
lettuce_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/lettuce_w1.csv", header=TRUE)
oats_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/oats_w1.csv", header=TRUE)
peaches_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/peaches_w1.csv", header=TRUE)
peanuts_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/peanuts_w1.csv", header=TRUE)
pears_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/pears_w1.csv", header=TRUE)
plums_prunes_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/plums_prunes_w1.csv", header=TRUE)
potatoes_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/potatoes_w1.csv", header=TRUE)
raspberries_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/raspberries_w1.csv", header=TRUE)
rice_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/rice_w1.csv", header=TRUE)
rye_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/rye_w1.csv", header=TRUE)
snapbeans_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/snapbeans_w1.csv", header=TRUE)
sorghum_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/sorghum_w1.csv", header=TRUE)
sorghum_silage_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/sorghum_silage_w1.csv", header=TRUE)
soybean_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/soybean_w1.csv", header=TRUE)
spinach_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/spinach_w1.csv", header=TRUE)
strawberries_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/strawberries_w1.csv", header=TRUE)
sugarbeet_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/sugarbeet_w1.csv", header=TRUE)
sweetpeppers_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/sweetpeppers_w1.csv", header=TRUE)
sweet_potato_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/sweet_potato_w1.csv", header=TRUE)
tobacco_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/tobacco_w1.csv", header=TRUE)
tomatoes_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/tomatoes_w1.csv", header=TRUE)
vegetable_all_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/vegetable_all_w1.csv", header=TRUE)
watermelon_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/watermelon_w1.csv", header=TRUE)
wheat_w2 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/s2/wheat_w1.csv", header=TRUE)


# subset files

alfalfa_w2 <-subset(alfalfa_w2, select=-c(X, GEOID))
almonds_w2 <-subset(almonds_w2, select=-c(X, GEOID))
apples_w2 <-subset(apples_w2, select=-c(X, GEOID))
apricots_w2 <-subset(apricots_w2, select=-c(X, GEOID))
avocadoes_w2 <-subset(avocadoes_w2, select=-c(X, GEOID))
barley_w2 <-subset(barley_w2, select=-c(X, GEOID))
berries_w2 <-subset(berries_w2, select=-c(X, GEOID))
blueberries_w2 <-subset(blueberries_w2, select=-c(X, GEOID))
buckwheat_w2 <-subset(buckwheat_w2, select=-c(X, GEOID))
cantaloup_w2 <-subset(cantaloup_w2, select=-c(X, GEOID))
cherries_w2 <-subset(cherries_w2, select=-c(X, GEOID))
citrus_w2 <-subset(citrus_w2, select=-c(X, GEOID))
corn_grain_w2 <-subset(corn_grain_w2, select=-c(X, GEOID))
corn_silage_w2 <-subset(corn_silage_w2, select=-c(X, GEOID))
cotton_w2 <-subset(cotton_w2, select=-c(X, GEOID))
cucumber_w2 <-subset(cucumber_w2, select=-c(X, GEOID))
grape_w2 <-subset(grape_w2, select=-c(X, GEOID))
hay_all_w2 <-subset(hay_all_w2, select=-c(X, GEOID))
hotpeppers_w2 <-subset(hotpeppers_w2, select=-c(X, GEOID))
lettuce_w2 <-subset(lettuce_w2, select=-c(X, GEOID))
oats_w2 <-subset(oats_w2, select=-c(X, GEOID))
peaches_w2 <-subset(peaches_w2, select=-c(X, GEOID))
peanuts_w2 <-subset(peanuts_w2, select=-c(X, GEOID))
pears_w2 <-subset(pears_w2, select=-c(X, GEOID))
plums_prunes_w2 <-subset(plums_prunes_w2, select=-c(X, GEOID))
potatoes_w2 <-subset(potatoes_w2, select=-c(X, GEOID))
raspberries_w2 <-subset(raspberries_w2, select=-c(X, GEOID))
rice_w2 <-subset(rice_w2, select=-c(X, GEOID))
rye_w2 <-subset(rye_w2, select=-c(X, GEOID))
snapbeans_w2 <-subset(snapbeans_w2, select=-c(X, GEOID))
sorghum_w2 <-subset(sorghum_w2, select=-c(X, GEOID))
sorghum_silage_w2 <-subset(sorghum_silage_w2, select=-c(X, GEOID))
soybean_w2 <-subset(soybean_w2, select=-c(X, GEOID))
spinach_w2 <-subset(spinach_w2, select=-c(X, GEOID))
strawberries_w2 <-subset(strawberries_w2, select=-c(X, GEOID))
sugarbeet_w2 <-subset(sugarbeet_w2, select=-c(X, GEOID))
sweetpeppers_w2 <-subset(sweetpeppers_w2, select=-c(X, GEOID))
sweet_potato_w2 <-subset(sweet_potato_w2, select=-c(X, GEOID))
tobacco_w2 <-subset(tobacco_w2, select=-c(X, GEOID))
tomatoes_w2 <-subset(tomatoes_w2, select=-c(X, GEOID))
vegetable_all_w2 <-subset(vegetable_all_w2, select=-c(X, GEOID))
watermelon_w2 <-subset(watermelon_w2, select=-c(X, GEOID))
wheat_w2 <-subset(wheat_w2, select=-c(X, GEOID))



w2_sum =	alfalfa_w2 +	almonds_w2 +	apples_w2 +	apricots_w2 +	avocadoes_w2 +	barley_w2 +	berries_w2 +	blueberries_w2 +	buckwheat_w2 +	cantaloup_w2 +	cherries_w2 +	citrus_w2 +	corn_grain_w2 +	corn_silage_w2 +	cotton_w2 +	cucumber_w2 +	grape_w2 +	hay_all_w2 +	hotpeppers_w2 +	lettuce_w2 +	oats_w2 +	peaches_w2 +	peanuts_w2 +	pears_w2 +	plums_prunes_w2 +	potatoes_w2 +	raspberries_w2 +	rice_w2 +	rye_w2 +	snapbeans_w2 +	sorghum_w2 +	sorghum_silage_w2 +	soybean_w2 +	spinach_w2 +	strawberries_w2 +	sugarbeet_w2 +	sweetpeppers_w2 +	sweet_potato_w2 +	tobacco_w2 +	tomatoes_w2 +	vegetable_all_w2 +	watermelon_w2 +	wheat_w2
write.csv(cbind(GEOID,w2_sum), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w2_sum.csv")



### read in version 3 files


alfalfa_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/alfalfa_w1p.csv", header=TRUE)
almonds_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/almonds_w1p.csv", header=TRUE)
apples_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/apples_w1p.csv", header=TRUE)
apricots_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/apricots_w1p.csv", header=TRUE)
avocadoes_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/avocadoes_w1p.csv", header=TRUE)
barley_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/barley_w1p.csv", header=TRUE)
berries_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/berries_w1p.csv", header=TRUE)
blueberries_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/blueberries_w1p.csv", header=TRUE)
buckwheat_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/buckwheat_w1p.csv", header=TRUE)
cantaloup_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/cantaloup_w1p.csv", header=TRUE)
cherries_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/cherries_w1p.csv", header=TRUE)
citrus_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/citrus_w1p.csv", header=TRUE)
corn_grain_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/corn_grain_w1p.csv", header=TRUE)
corn_silage_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/corn_silage_w1p.csv", header=TRUE)
cotton_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/cotton_w1p.csv", header=TRUE)
cucumber_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/cucumber_w1p.csv", header=TRUE)
grape_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/grape_w1p.csv", header=TRUE)
hay_all_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/hay_all_w1p.csv", header=TRUE)
hotpeppers_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/hotpeppers_w1p.csv", header=TRUE)
lettuce_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/lettuce_w1p.csv", header=TRUE)
oats_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/oats_w1p.csv", header=TRUE)
peaches_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/peaches_w1p.csv", header=TRUE)
peanuts_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/peanuts_w1p.csv", header=TRUE)
pears_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/pears_w1p.csv", header=TRUE)
plums_prunes_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/plums_prunes_w1p.csv", header=TRUE)
potatoes_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/potatoes_w1p.csv", header=TRUE)
raspberries_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/raspberries_w1p.csv", header=TRUE)
rice_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/rice_w1p.csv", header=TRUE)
rye_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/rye_w1p.csv", header=TRUE)
snapbeans_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/snapbeans_w1p.csv", header=TRUE)
sorghum_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/sorghum_w1p.csv", header=TRUE)
sorghum_silage_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/sorghum_silage_w1p.csv", header=TRUE)
soybean_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/soybean_w1p.csv", header=TRUE)
spinach_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/spinach_w1p.csv", header=TRUE)
strawberries_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/strawberries_w1p.csv", header=TRUE)
sugarbeet_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/sugarbeet_w1p.csv", header=TRUE)
sweetpeppers_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/sweetpeppers_w1p.csv", header=TRUE)
sweet_potato_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/sweet_potato_w1p.csv", header=TRUE)
tobacco_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/tobacco_w1p.csv", header=TRUE)
tomatoes_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/tomatoes_w1p.csv", header=TRUE)
vegetable_all_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/vegetable_all_w1p.csv", header=TRUE)
watermelon_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/watermelon_w1p.csv", header=TRUE)
wheat_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp1/wheat_w1p.csv", header=TRUE)


# subset files

alfalfa_w1p <-subset(alfalfa_w1p, select=-c(X, GEOID))
almonds_w1p <-subset(almonds_w1p, select=-c(X, GEOID))
apples_w1p <-subset(apples_w1p, select=-c(X, GEOID))
apricots_w1p <-subset(apricots_w1p, select=-c(X, GEOID))
avocadoes_w1p <-subset(avocadoes_w1p, select=-c(X, GEOID))
barley_w1p <-subset(barley_w1p, select=-c(X, GEOID))
berries_w1p <-subset(berries_w1p, select=-c(X, GEOID))
blueberries_w1p <-subset(blueberries_w1p, select=-c(X, GEOID))
buckwheat_w1p <-subset(buckwheat_w1p, select=-c(X, GEOID))
cantaloup_w1p <-subset(cantaloup_w1p, select=-c(X, GEOID))
cherries_w1p <-subset(cherries_w1p, select=-c(X, GEOID))
citrus_w1p <-subset(citrus_w1p, select=-c(X, GEOID))
corn_grain_w1p <-subset(corn_grain_w1p, select=-c(X, GEOID))
corn_silage_w1p <-subset(corn_silage_w1p, select=-c(X, GEOID))
cotton_w1p <-subset(cotton_w1p, select=-c(X, GEOID))
cucumber_w1p <-subset(cucumber_w1p, select=-c(X, GEOID))
grape_w1p <-subset(grape_w1p, select=-c(X, GEOID))
hay_all_w1p <-subset(hay_all_w1p, select=-c(X, GEOID))
hotpeppers_w1p <-subset(hotpeppers_w1p, select=-c(X, GEOID))
lettuce_w1p <-subset(lettuce_w1p, select=-c(X, GEOID))
oats_w1p <-subset(oats_w1p, select=-c(X, GEOID))
peaches_w1p <-subset(peaches_w1p, select=-c(X, GEOID))
peanuts_w1p <-subset(peanuts_w1p, select=-c(X, GEOID))
pears_w1p <-subset(pears_w1p, select=-c(X, GEOID))
plums_prunes_w1p <-subset(plums_prunes_w1p, select=-c(X, GEOID))
potatoes_w1p <-subset(potatoes_w1p, select=-c(X, GEOID))
raspberries_w1p <-subset(raspberries_w1p, select=-c(X, GEOID))
rice_w1p <-subset(rice_w1p, select=-c(X, GEOID))
rye_w1p <-subset(rye_w1p, select=-c(X, GEOID))
snapbeans_w1p <-subset(snapbeans_w1p, select=-c(X, GEOID))
sorghum_w1p <-subset(sorghum_w1p, select=-c(X, GEOID))
sorghum_silage_w1p <-subset(sorghum_silage_w1p, select=-c(X, GEOID))
soybean_w1p <-subset(soybean_w1p, select=-c(X, GEOID))
spinach_w1p <-subset(spinach_w1p, select=-c(X, GEOID))
strawberries_w1p <-subset(strawberries_w1p, select=-c(X, GEOID))
sugarbeet_w1p <-subset(sugarbeet_w1p, select=-c(X, GEOID))
sweetpeppers_w1p <-subset(sweetpeppers_w1p, select=-c(X, GEOID))
sweet_potato_w1p <-subset(sweet_potato_w1p, select=-c(X, GEOID))
tobacco_w1p <-subset(tobacco_w1p, select=-c(X, GEOID))
tomatoes_w1p <-subset(tomatoes_w1p, select=-c(X, GEOID))
vegetable_all_w1p <-subset(vegetable_all_w1p, select=-c(X, GEOID))
watermelon_w1p <-subset(watermelon_w1p, select=-c(X, GEOID))
wheat_w1p <-subset(wheat_w1p, select=-c(X, GEOID))


w1p_sum =	alfalfa_w1p +	almonds_w1p +	apples_w1p +	apricots_w1p +	avocadoes_w1p +	barley_w1p +	berries_w1p +	blueberries_w1p +	buckwheat_w1p +	cantaloup_w1p +	cherries_w1p +	citrus_w1p +	corn_grain_w1p +	corn_silage_w1p +	cotton_w1p +	cucumber_w1p +	grape_w1p +	hay_all_w1p +	hotpeppers_w1p +	lettuce_w1p +	oats_w1p +	peaches_w1p +	peanuts_w1p +	pears_w1p +	plums_prunes_w1p +	potatoes_w1p +	raspberries_w1p +	rice_w1p +	rye_w1p +	snapbeans_w1p +	sorghum_w1p +	sorghum_silage_w1p +	soybean_w1p +	spinach_w1p +	strawberries_w1p +	sugarbeet_w1p +	sweetpeppers_w1p +	sweet_potato_w1p +	tobacco_w1p +	tomatoes_w1p +	vegetable_all_w1p +	watermelon_w1p +	wheat_w1p
write.csv(cbind(GEOID,w1p_sum), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w1p_sum.csv")


#####  read in version 4 file:

alfalfa_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/alfalfa_w1p.csv", header=TRUE)
almonds_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/almonds_w1p.csv", header=TRUE)
apples_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/apples_w1p.csv", header=TRUE)
apricots_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/apricots_w1p.csv", header=TRUE)
avocadoes_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/avocadoes_w1p.csv", header=TRUE)
barley_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/barley_w1p.csv", header=TRUE)
berries_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/berries_w1p.csv", header=TRUE)
blueberries_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/blueberries_w1p.csv", header=TRUE)
buckwheat_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/buckwheat_w1p.csv", header=TRUE)
cantaloup_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/cantaloup_w1p.csv", header=TRUE)
cherries_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/cherries_w1p.csv", header=TRUE)
citrus_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/citrus_w1p.csv", header=TRUE)
corn_grain_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/corn_grain_w1p.csv", header=TRUE)
corn_silage_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/corn_silage_w1p.csv", header=TRUE)
cotton_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/cotton_w1p.csv", header=TRUE)
cucumber_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/cucumber_w1p.csv", header=TRUE)
grape_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/grape_w1p.csv", header=TRUE)
hay_all_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/hay_all_w1p.csv", header=TRUE)
hotpeppers_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/hotpeppers_w1p.csv", header=TRUE)
lettuce_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/lettuce_w1p.csv", header=TRUE)
oats_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/oats_w1p.csv", header=TRUE)
peaches_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/peaches_w1p.csv", header=TRUE)
peanuts_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/peanuts_w1p.csv", header=TRUE)
pears_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/pears_w1p.csv", header=TRUE)
plums_prunes_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/plums_prunes_w1p.csv", header=TRUE)
potatoes_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/potatoes_w1p.csv", header=TRUE)
raspberries_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/raspberries_w1p.csv", header=TRUE)
rice_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/rice_w1p.csv", header=TRUE)
rye_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/rye_w1p.csv", header=TRUE)
snapbeans_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/snapbeans_w1p.csv", header=TRUE)
sorghum_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/sorghum_w1p.csv", header=TRUE)
sorghum_silage_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/sorghum_silage_w1p.csv", header=TRUE)
soybean_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/soybean_w1p.csv", header=TRUE)
spinach_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/spinach_w1p.csv", header=TRUE)
strawberries_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/strawberries_w1p.csv", header=TRUE)
sugarbeet_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/sugarbeet_w1p.csv", header=TRUE)
sweetpeppers_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/sweetpeppers_w1p.csv", header=TRUE)
sweet_potato_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/sweet_potato_w1p.csv", header=TRUE)
tobacco_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/tobacco_w1p.csv", header=TRUE)
tomatoes_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/tomatoes_w1p.csv", header=TRUE)
vegetable_all_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/vegetable_all_w1p.csv", header=TRUE)
watermelon_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/watermelon_w1p.csv", header=TRUE)
wheat_w2p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/sp2/wheat_w1p.csv", header=TRUE)


### subset files

alfalfa_w2p <-subset(alfalfa_w2p, select=-c(X, GEOID))
almonds_w2p <-subset(almonds_w2p, select=-c(X, GEOID))
apples_w2p <-subset(apples_w2p, select=-c(X, GEOID))
apricots_w2p <-subset(apricots_w2p, select=-c(X, GEOID))
avocadoes_w2p <-subset(avocadoes_w2p, select=-c(X, GEOID))
barley_w2p <-subset(barley_w2p, select=-c(X, GEOID))
berries_w2p <-subset(berries_w2p, select=-c(X, GEOID))
blueberries_w2p <-subset(blueberries_w2p, select=-c(X, GEOID))
buckwheat_w2p <-subset(buckwheat_w2p, select=-c(X, GEOID))
cantaloup_w2p <-subset(cantaloup_w2p, select=-c(X, GEOID))
cherries_w2p <-subset(cherries_w2p, select=-c(X, GEOID))
citrus_w2p <-subset(citrus_w2p, select=-c(X, GEOID))
corn_grain_w2p <-subset(corn_grain_w2p, select=-c(X, GEOID))
corn_silage_w2p <-subset(corn_silage_w2p, select=-c(X, GEOID))
cotton_w2p <-subset(cotton_w2p, select=-c(X, GEOID))
cucumber_w2p <-subset(cucumber_w2p, select=-c(X, GEOID))
grape_w2p <-subset(grape_w2p, select=-c(X, GEOID))
hay_all_w2p <-subset(hay_all_w2p, select=-c(X, GEOID))
hotpeppers_w2p <-subset(hotpeppers_w2p, select=-c(X, GEOID))
lettuce_w2p <-subset(lettuce_w2p, select=-c(X, GEOID))
oats_w2p <-subset(oats_w2p, select=-c(X, GEOID))
peaches_w2p <-subset(peaches_w2p, select=-c(X, GEOID))
peanuts_w2p <-subset(peanuts_w2p, select=-c(X, GEOID))
pears_w2p <-subset(pears_w2p, select=-c(X, GEOID))
plums_prunes_w2p <-subset(plums_prunes_w2p, select=-c(X, GEOID))
potatoes_w2p <-subset(potatoes_w2p, select=-c(X, GEOID))
raspberries_w2p <-subset(raspberries_w2p, select=-c(X, GEOID))
rice_w2p <-subset(rice_w2p, select=-c(X, GEOID))
rye_w2p <-subset(rye_w2p, select=-c(X, GEOID))
snapbeans_w2p <-subset(snapbeans_w2p, select=-c(X, GEOID))
sorghum_w2p <-subset(sorghum_w2p, select=-c(X, GEOID))
sorghum_silage_w2p <-subset(sorghum_silage_w2p, select=-c(X, GEOID))
soybean_w2p <-subset(soybean_w2p, select=-c(X, GEOID))
spinach_w2p <-subset(spinach_w2p, select=-c(X, GEOID))
strawberries_w2p <-subset(strawberries_w2p, select=-c(X, GEOID))
sugarbeet_w2p <-subset(sugarbeet_w2p, select=-c(X, GEOID))
sweetpeppers_w2p <-subset(sweetpeppers_w2p, select=-c(X, GEOID))
sweet_potato_w2p <-subset(sweet_potato_w2p, select=-c(X, GEOID))
tobacco_w2p <-subset(tobacco_w2p, select=-c(X, GEOID))
tomatoes_w2p <-subset(tomatoes_w2p, select=-c(X, GEOID))
vegetable_all_w2p <-subset(vegetable_all_w2p, select=-c(X, GEOID))
watermelon_w2p <-subset(watermelon_w2p, select=-c(X, GEOID))
wheat_w2p <-subset(wheat_w2p, select=-c(X, GEOID))



w2p_sum =	alfalfa_w2p +	almonds_w2p +	apples_w2p +	apricots_w2p +	avocadoes_w2p +	barley_w2p +	berries_w2p +	blueberries_w2p +	buckwheat_w2p +	cantaloup_w2p +	cherries_w2p +	citrus_w2p +	corn_grain_w2p +	corn_silage_w2p +	cotton_w2p +	cucumber_w2p +	grape_w2p +	hay_all_w2p +	hotpeppers_w2p +	lettuce_w2p +	oats_w2p +	peaches_w2p +	peanuts_w2p +	pears_w2p +	plums_prunes_w2p +	potatoes_w2p +	raspberries_w2p +	rice_w2p +	rye_w2p +	snapbeans_w2p +	sorghum_w2p +	sorghum_silage_w2p +	soybean_w2p +	spinach_w2p +	strawberries_w2p +	sugarbeet_w2p +	sweetpeppers_w2p +	sweet_potato_w2p +	tobacco_w2p +	tomatoes_w2p +	vegetable_all_w2p +	watermelon_w2p +	wheat_w2p
write.csv(cbind(GEOID,w2p_sum), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w2p_sum.csv")




### read in total files

w1_sum <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w1_sum.csv", header=TRUE)
w1p_sum <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w1p_sum.csv", header=TRUE)
w2_sum <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w2_sum.csv", header=TRUE)
w2p_sum <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w2p_sum.csv", header=TRUE)


w1_sum <- w1_sum[c(-1)]
w1p_sum <- w1p_sum[c(-1)]
w2_sum <- w2_sum[c(-1)]
w2p_sum <- w2p_sum[c(-1)]

w1_sum <- t(w1_sum)
w1_sum <- ts(w1_sum)
w1_sum <- na.interpolation(w1_sum, option="spline")
w1_sum <- t(w1_sum)
w1_sum[w1_sum < 0] <- 0
w1_sum <- as.data.frame(w1_sum)
w1_sum_sw <-w1_sum*sw
w1_sum_gw <-w1_sum*gw
write.csv(cbind(GEOID, w1_sum), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w1_sum_all.csv")
write.csv(cbind(GEOID, w1_sum_sw), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w1_sum_sw.csv")
write.csv(cbind(GEOID, w1_sum_gw), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w1_sum_gw.csv")


w2_sum <- t(w2_sum)
w2_sum <- ts(w2_sum)
w2_sum <- na.interpolation(w2_sum, option="spline")
w2_sum <- t(w2_sum)
w2_sum[w2_sum < 0] <- 0
w2_sum <- as.data.frame(w2_sum)
w2_sum_sw <-w2_sum*sw
w2_sum_gw <-w2_sum*gw
write.csv(cbind(GEOID, w2_sum), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w2_sum_all.csv")
write.csv(cbind(GEOID, w2_sum_sw), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w2_sum_sw.csv")
write.csv(cbind(GEOID, w2_sum_gw), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w2_sum_gw.csv")


w1p_sum <- t(w1p_sum)
w1p_sum <- ts(w1p_sum)
w1p_sum <- na.interpolation(w1p_sum, option="spline")
w1p_sum <- t(w1p_sum)
w1p_sum[w1p_sum < 0] <- 0
w1p_sum <- as.data.frame(w1p_sum)
w1p_sum_sw <-w1p_sum*sw
w1p_sum_gw <-w1p_sum*gw
write.csv(cbind(GEOID, w1p_sum), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w1p_sum_all.csv")
write.csv(cbind(GEOID, w1p_sum_sw), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w1p_sum_sw.csv")
write.csv(cbind(GEOID, w1p_sum_gw), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w1p_sum_gw.csv")


w2p_sum <- t(w2p_sum)
w2p_sum <- ts(w2p_sum)
w2p_sum <- na.interpolation(w2p_sum, option="spline")
w2p_sum <- t(w2p_sum)
w2p_sum[w2p_sum < 0] <- 0
w2p_sum <- as.data.frame(w2p_sum)
w2p_sum_sw <-w2p_sum*sw
w2p_sum_gw <-w2p_sum*gw
write.csv(cbind(GEOID, w2p_sum), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w2p_sum_all.csv")
write.csv(cbind(GEOID, w2p_sum_sw), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w2p_sum_sw.csv")
write.csv(cbind(GEOID, w2p_sum_gw), file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w2p_sum_gw.csv")





########  create Melted datasets

##read in files

w1_sum <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w1_sum_all.csv", header=TRUE)
w1_sum_gw <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w1_sum_gw.csv", header=TRUE) 
w1_sum_sw <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w1_sum_sw.csv", header=TRUE)


w1p_sum <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w1p_sum_all.csv", header=TRUE)
w1p_sum_gw <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w1p_sum_gw.csv", header=TRUE) 
w1p_sum_sw <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w1p_sum_sw.csv", header=TRUE)

w2_sum <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w2_sum_all.csv", header=TRUE)
w2_sum_gw <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w2_sum_gw.csv", header=TRUE) 
w2_sum_sw <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w2_sum_sw.csv", header=TRUE)

w2p_sum <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w2p_sum_all.csv", header=TRUE)
w2p_sum_gw <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w2p_sum_gw.csv", header=TRUE) 
w2p_sum_sw <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/w2p_sum_sw.csv", header=TRUE)


#melt datasets

w1_melt <- melt(w1_sum, id=c("FIPS"))
w1_gw_melt <- melt(w1_sum_gw, id=c("FIPS"))
w1_sw_melt <- melt(w1_sum_sw, id=c("FIPS"))

w1p_melt <- melt(w1p_sum, id=c("FIPS"))
w1p_gw_melt <- melt(w1p_sum_gw, id=c("FIPS"))
w1p_sw_melt <- melt(w1p_sum_sw, id=c("FIPS"))

w2_melt <- melt(w2_sum, id=c("FIPS"))
w2_gw_melt <- melt(w2_sum_gw, id=c("FIPS"))
w2_sw_melt <- melt(w2_sum_sw, id=c("FIPS"))

w2p_melt <- melt(w2p_sum, id=c("FIPS"))
w2p_gw_melt <- melt(w2p_sum_gw, id=c("FIPS"))
w2p_sw_melt <- melt(w2p_sum_sw, id=c("FIPS"))



## bind melted datsets


irrig_melt_all <- cbind(w1_melt, w1_gw_melt, w1_sw_melt, w1p_melt, w1p_gw_melt, w1p_sw_melt, w2_melt, w2_gw_melt, w2_sw_melt, w2p_melt, w2p_gw_melt, w2p_sw_melt)

write.csv(irrig_melt_all, file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/water_use/annual/totals/melted_datasets/irrigation_all_ann_acrefeet.csv")





### golf datasets

golf_w1 <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/annual_use/golf_w1.csv", header=TRUE)
golf_w1_gw <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/annual_use/golf_w1_gw.csv", header=TRUE)
golf_w1_sw <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/annual_use/golf_w1_sw.csv", header=TRUE)
golf_w1p <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/annual_use/golf_w1p.csv", header=TRUE)
golf_w1p_gw <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/annual_use/golf_w1p_gw.csv", header=TRUE)
golf_w1p_sw <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/annual_use/golf_w1p_sw.csv", header=TRUE)


golf_w1 <- subset(golf_w1, select=-c(FIPS))
golf_w1 <- t(golf_w1)
golf_w1 <- ts(golf_w1)
golf_w1 <- na.interpolation(golf_w1, option="spline")
golf_w1 <- t(golf_w1)
golf_w1[golf_w1<0] <- 0
golf_w1 <- as.data.frame(golf_w1)
colnames(golf_w1) <- c(	"X1950",	"X1951",	"X1952",	"X1953",	"X1954",	"X1955",	"X1956",	"X1957",	"X1958",	"X1959",	"X1960",	"X1961",	"X1962",	"X1963",	"X1964",	"X1965",	"X1966",	"X1967",	"X1968",	"X1969",	"X1970",	"X1971",	"X1972",	"X1973",	"X1974",	"X1975",	"X1976",	"X1977",	"X1978",	"X1979",	"X1980",	"X1981",	"X1982",	"X1983",	"X1984",	"X1985",	"X1986",	"X1987",	"X1988",	"X1989",	"X1990",	"X1991",	"X1992",	"X1993",	"X1994",	"X1995",	"X1996",	"X1997",	"X1998",	"X1999",	"X2000",	"X2001",	"X2002",	"X2003",	"X2004",	"X2005",	"X2006",	"X2007",	"X2008",	"X2009",	"X2010",	"X2011",	"X2012",	"X2013",	"X2014",	"X2015",	"X2016")
golf_w1 <- cbind(GEOID, golf_w1)
golf_w1_m <- melt(golf_w1, id=c("GEOID"))


golf_w1_gw <- subset(golf_w1_gw, select=-c(FIPS))
golf_w1_gw <- t(golf_w1_gw)
golf_w1_gw <- ts(golf_w1_gw)
golf_w1_gw <- na.interpolation(golf_w1_gw, option="spline")
golf_w1_gw <- t(golf_w1_gw)
golf_w1_gw[golf_w1_gw<0] <- 0
golf_w1_gw <- as.data.frame(golf_w1_gw)
colnames(golf_w1_gw) <- c("X1950",	"X1951",	"X1952",	"X1953",	"X1954",	"X1955",	"X1956",	"X1957",	"X1958",	"X1959",	"X1960",	"X1961",	"X1962",	"X1963",	"X1964",	"X1965",	"X1966",	"X1967",	"X1968",	"X1969",	"X1970",	"X1971",	"X1972",	"X1973",	"X1974",	"X1975",	"X1976",	"X1977",	"X1978",	"X1979",	"X1980",	"X1981",	"X1982",	"X1983",	"X1984",	"X1985",	"X1986",	"X1987",	"X1988",	"X1989",	"X1990",	"X1991",	"X1992",	"X1993",	"X1994",	"X1995",	"X1996",	"X1997",	"X1998",	"X1999",	"X2000",	"X2001",	"X2002",	"X2003",	"X2004",	"X2005",	"X2006",	"X2007",	"X2008",	"X2009",	"X2010",	"X2011",	"X2012",	"X2013",	"X2014",	"X2015",	"X2016")
golf_w1_gw <- cbind(GEOID, golf_w1_gw)
golf_w1__gw_m <- melt(golf_w1_gw, id=c("GEOID"))


golf_w1_sw <- subset(golf_w1_sw, select=-c(FIPS))
golf_w1_sw <- t(golf_w1_sw)
golf_w1_sw <- ts(golf_w1_sw)
golf_w1_sw <- na.interpolation(golf_w1_sw, option="spline")
golf_w1_sw <- t(golf_w1_sw)
golf_w1_sw[golf_w1_sw<0] <- 0
golf_w1_sw <- as.data.frame(golf_w1_sw)
colnames(golf_w1_sw) <- c("X1950",	"X1951",	"X1952",	"X1953",	"X1954",	"X1955",	"X1956",	"X1957",	"X1958",	"X1959",	"X1960",	"X1961",	"X1962",	"X1963",	"X1964",	"X1965",	"X1966",	"X1967",	"X1968",	"X1969",	"X1970",	"X1971",	"X1972",	"X1973",	"X1974",	"X1975",	"X1976",	"X1977",	"X1978",	"X1979",	"X1980",	"X1981",	"X1982",	"X1983",	"X1984",	"X1985",	"X1986",	"X1987",	"X1988",	"X1989",	"X1990",	"X1991",	"X1992",	"X1993",	"X1994",	"X1995",	"X1996",	"X1997",	"X1998",	"X1999",	"X2000",	"X2001",	"X2002",	"X2003",	"X2004",	"X2005",	"X2006",	"X2007",	"X2008",	"X2009",	"X2010",	"X2011",	"X2012",	"X2013",	"X2014",	"X2015",	"X2016")
golf_w1_sw <- cbind(GEOID, golf_w1_sw)
golf_w1__sw_m <- melt(golf_w1_sw, id=c("GEOID"))



golf_w1p <- subset(golf_w1p, select=-c(FIPS))
golf_w1p <- t(golf_w1p)
golf_w1p <- ts(golf_w1p)
golf_w1p <- na.interpolation(golf_w1p, option="spline")
golf_w1p <- t(golf_w1p)
golf_w1p[golf_w1p<0] <- 0
golf_w1p <- as.data.frame(golf_w1p)
colnames(golf_w1p) <- c(	"X1950",	"X1951",	"X1952",	"X1953",	"X1954",	"X1955",	"X1956",	"X1957",	"X1958",	"X1959",	"X1960",	"X1961",	"X1962",	"X1963",	"X1964",	"X1965",	"X1966",	"X1967",	"X1968",	"X1969",	"X1970",	"X1971",	"X1972",	"X1973",	"X1974",	"X1975",	"X1976",	"X1977",	"X1978",	"X1979",	"X1980",	"X1981",	"X1982",	"X1983",	"X1984",	"X1985",	"X1986",	"X1987",	"X1988",	"X1989",	"X1990",	"X1991",	"X1992",	"X1993",	"X1994",	"X1995",	"X1996",	"X1997",	"X1998",	"X1999",	"X2000",	"X2001",	"X2002",	"X2003",	"X2004",	"X2005",	"X2006",	"X2007",	"X2008",	"X2009",	"X2010",	"X2011",	"X2012",	"X2013",	"X2014",	"X2015",	"X2016")
golf_w1p <- cbind(GEOID, golf_w1p)
golf_w1p_m <- melt(golf_w1p, id=c("GEOID"))


golf_w1p_gw <- subset(golf_w1p_gw, select=-c(FIPS))
golf_w1p_gw <- t(golf_w1p_gw)
golf_w1p_gw <- ts(golf_w1p_gw)
golf_w1p_gw <- na.interpolation(golf_w1p_gw, option="spline")
golf_w1p_gw <- t(golf_w1p_gw)
golf_w1p_gw[golf_w1p_gw<0] <- 0
golf_w1p_gw <- as.data.frame(golf_w1p_gw)
colnames(golf_w1p_gw) <- c("X1950",	"X1951",	"X1952",	"X1953",	"X1954",	"X1955",	"X1956",	"X1957",	"X1958",	"X1959",	"X1960",	"X1961",	"X1962",	"X1963",	"X1964",	"X1965",	"X1966",	"X1967",	"X1968",	"X1969",	"X1970",	"X1971",	"X1972",	"X1973",	"X1974",	"X1975",	"X1976",	"X1977",	"X1978",	"X1979",	"X1980",	"X1981",	"X1982",	"X1983",	"X1984",	"X1985",	"X1986",	"X1987",	"X1988",	"X1989",	"X1990",	"X1991",	"X1992",	"X1993",	"X1994",	"X1995",	"X1996",	"X1997",	"X1998",	"X1999",	"X2000",	"X2001",	"X2002",	"X2003",	"X2004",	"X2005",	"X2006",	"X2007",	"X2008",	"X2009",	"X2010",	"X2011",	"X2012",	"X2013",	"X2014",	"X2015",	"X2016")
golf_w1p_gw <- cbind(GEOID, golf_w1p_gw)
golf_w1p__gw_m <- melt(golf_w1p_gw, id=c("GEOID"))


golf_w1p_sw <- subset(golf_w1p_sw, select=-c(FIPS))
golf_w1p_sw <- t(golf_w1p_sw)
golf_w1p_sw <- ts(golf_w1p_sw)
golf_w1p_sw <- na.interpolation(golf_w1p_sw, option="spline")
golf_w1p_sw <- t(golf_w1p_sw)
golf_w1p_sw[golf_w1p_sw<0] <- 0
golf_w1p_sw <- as.data.frame(golf_w1p_sw)
colnames(golf_w1p_sw) <- c("X1950",	"X1951",	"X1952",	"X1953",	"X1954",	"X1955",	"X1956",	"X1957",	"X1958",	"X1959",	"X1960",	"X1961",	"X1962",	"X1963",	"X1964",	"X1965",	"X1966",	"X1967",	"X1968",	"X1969",	"X1970",	"X1971",	"X1972",	"X1973",	"X1974",	"X1975",	"X1976",	"X1977",	"X1978",	"X1979",	"X1980",	"X1981",	"X1982",	"X1983",	"X1984",	"X1985",	"X1986",	"X1987",	"X1988",	"X1989",	"X1990",	"X1991",	"X1992",	"X1993",	"X1994",	"X1995",	"X1996",	"X1997",	"X1998",	"X1999",	"X2000",	"X2001",	"X2002",	"X2003",	"X2004",	"X2005",	"X2006",	"X2007",	"X2008",	"X2009",	"X2010",	"X2011",	"X2012",	"X2013",	"X2014",	"X2015",	"X2016")
golf_w1p_sw <- cbind(GEOID, golf_w1p_sw)
golf_w1p__sw_m <- melt(golf_w1p_sw, id=c("GEOID"))



## bind melted datsets
golf_w1_m
golf_w1__gw_m
golf_w1__sw_m
golf_w1p_m
golf_w1p__gw_m 
golf_w1p__sw_m


golf_melt_all <- cbind(golf_w1_m, golf_w1__gw_m, golf_w1__sw_m, golf_w1p_m, golf_w1p__gw_m, golf_w1p__sw_m)
  
write.csv(golf_melt_all, file="E://EWN_KDF/Data/Irrigation_Analysis/New_daily_data/golf_irrigation/annual_use/melted/golf_all_ann_acrefeet.csv")




####### pair with usgs data

irrig_co <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/Total_irrigation/version2/crop&golf_all_ann_mgd.csv", header=TRUE)
irrig_st <- read.csv(file="E://EWN_KDF/Data/Irrigation_Analysis/Total_irrigation/version2/crop&golf_all_ann_mgd_state.csv", header=TRUE)

irrig_usgs_co <- read.csv(file="E://EWN_KDF/Data/USGS_Data/usgs_co_irrig.csv", header=TRUE)
irrig_usgs_st <- read.csv(file="E://EWN_KDF/Data/USGS_Data/usgs_st_irrig.csv", header=TRUE)
irrig_usgs_co$FIPS_Year <- irrig_usgs_co$fips_year

irrig_co_all <- merge(irrig_co, irrig_usgs_co, by="FIPS_Year", all.x=TRUE)
irrig_st_all <- merge(irrig_st, irrig_usgs_st, by="state_year", all.x=TRUE)

write.csv(irrig_co_all, file="E://EWN_KDF/Data/Irrigation_Analysis/Total_irrigation/version2/crop&golf_all_mgd_usgs_county.csv")
write.csv(irrig_st_all, file="E://EWN_KDF/Data/Irrigation_Analysis/Total_irrigation/version2/crop&golf_all_mgd_usgs_state.csv")


