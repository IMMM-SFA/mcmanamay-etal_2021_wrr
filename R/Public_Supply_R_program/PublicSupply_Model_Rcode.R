
dat <- read.csv(file="E://EWN_KDF/Data/PublicSupply_Analysis/Melted_predictors/Merged_Template_Versions/Predictors_Response_Combined_noNAs.csv",header=TRUE)

#Predictors
#Year	AllDam	FedDam	SLU_Dam	WSDam	Aquifer_Perm			
#Pop	Ppt_Month_avg	Ppt_Annual_sum	Runoff	spauto_Gw				
#spauto_Sw	spauto_Tot	area_sqkm	Water	Developed	Mining			
#Barren	Dec_For	Eve_For	Mix_For	Grass	Shurb	Crop		
#Hay	Agr	Herb_wet	Wood_wet	Ice_snow	Mech_Dist_NF	Mech_Dist_PL		
#Mech_Dist_Priv	Water_p	Developed_p	Mining_p	Barren_p	Dec_For_p			
#Eve_For_p	Mix_For_p	Grass_p	Shurb_p	Crop_p	Hay_p	Agr_p	Herb_wet_p	
#Wood_wet_p	Ice_snow_p	Mech_Dist_NF_p	Mech_Dist_PL_p	Mech_Dist_Priv_p				

# Response
#ps.wgwfr	ps.wgwsa	ps.wgwto	ps.wswfr	ps.wswsa	ps.wswto	ps.wtofr	ps.wsato	ps.total


dat2 <- na.omit(dat)

library(randomForest)

fit.gwto <- randomForest(ps.wgwto ~ Year +	AllDam + FedDam	+ SLU_Dam +	WSDam	+ Aquifer_Perm +			
                         Pop	+ Ppt_Month_avg  +	Ppt_Annual_sum	+ Runoff+	spauto_Gw		+		
                         spauto_Sw +	spauto_Tot	+ area_sqkm	+ Water	+ Developed	+		
                         Barren	+ Dec_For	+ Eve_For	+ Mix_For	+ Agr, data=dat2)

RI.gwto <- cbind(fit.gwto$importance, fit.gwto$importanceSD)


AllDam2 <- log(dat2$AllDam + 1)
FedDam2 <- log(dat2$FedDam + 1)
SLU_Dam2 <- log(dat2$SLU_Dam + 1)
WSDam2 <- log(dat2$WSDam + 1)
Pop2 <- log(dat2$Pop + 1)
Water2 <- log(dat2$Water + 1)
Developed2 <- log(dat2$Developed + 1)
Barren2 <- log(dat2$Barren + 1)
Dec_For2 <- log(dat2$Dec_For + 1)
Eve_For2 <- log(dat2$Eve_For + 1)
Mix_For2 <- log(dat2$Mix_For + 1)
Agr2 <- log(dat2$Agr + 1)

ps.wgwto2 <- log(dat2$ps.wgwto + 1)
ps.wswto2 <- log(dat2$ps.wswto + 1)
ps.total2 <- log(dat2$ps.total + 1)


fit.gwto.2 <- randomForest(ps.wgwto2 ~ Year +	AllDam2 + FedDam2	+ SLU_Dam2 +	WSDam2	+ Aquifer_Perm +			
                           Pop2	+ Ppt_Month_avg  +	Ppt_Annual_sum	+ Runoff+	spauto_Gw		+		
                           spauto_Sw +	spauto_Tot	+ area_sqkm	+ Water2	+ Developed2	+		
                           Barren2	+ Dec_For2	+ Eve_For2	+ Mix_For2	+ Agr2, data=dat2)

RI.gwto.2 <- cbind(fit.gwto.2$importance, fit.gwto.2$importanceSD)

fit.swto <- randomForest(ps.wswto ~ Year +	AllDam + FedDam	+ SLU_Dam +	WSDam	+ Aquifer_Perm +			
                           Pop	+ Ppt_Month_avg  +	Ppt_Annual_sum	+ Runoff+	spauto_Gw		+		
                           spauto_Sw +	spauto_Tot	+ area_sqkm	+ Water	+ Developed	+		
                           Barren	+ Dec_For	+ Eve_For	+ Mix_For	+ Agr, data=dat2)

RI.swto <- cbind(fit.swto$importance, fit.swto$importanceSD)


fit.swto.2 <- randomForest(ps.wswto2 ~ Year +	AllDam2 + FedDam2	+ SLU_Dam2 +	WSDam2	+ Aquifer_Perm +			
                             Pop2	+ Ppt_Month_avg  +	Ppt_Annual_sum	+ Runoff+	spauto_Gw		+		
                             spauto_Sw +	spauto_Tot	+ area_sqkm	+ Water2	+ Developed2	+		
                             Barren2	+ Dec_For2	+ Eve_For2	+ Mix_For2	+ Agr2, data=dat2)


RI.swto.2 <- cbind(fit.swto.2$importance, fit.swto.2$importanceSD)



fit.ps.to.2 <- randomForest(ps.total2 ~ Year +	AllDam2 + FedDam2	+ SLU_Dam2 +	WSDam2	+ Aquifer_Perm +			
                             Pop2	+ Ppt_Month_avg  +	Ppt_Annual_sum	+ Runoff+	spauto_Gw		+		
                             spauto_Sw +	spauto_Tot	+ area_sqkm	+ Water2	+ Developed2	+		
                             Barren2	+ Dec_For2	+ Eve_For2	+ Mix_For2	+ Agr2, data=dat2)

RI.ps.to.2 <- cbind(fit.ps.to.2$importance, fit.ps.to.2$importanceSD)


write.csv(RI.gwto, file="E://EWN_KDF/Data/PublicSupply_Analysis/RelativeImportance_Gw_Tot.csv")
write.csv(RI.gwto.2, file="E://EWN_KDF/Data/PublicSupply_Analysis/RelativeImportance_Gw_Tot_2.csv")
write.csv(RI.swto, file="E://EWN_KDF/Data/PublicSupply_Analysis/RelativeImportance_Sw_Tot.csv")
write.csv(RI.swto.2, file="E://EWN_KDF/Data/PublicSupply_Analysis/RelativeImportance_Sw_Tot_2.csv")
write.csv(RI.ps.to.2, file="E://EWN_KDF/Data/PublicSupply_Analysis/RelativeImportance_PS_Tot.csv")

#Tried Boosted Regression Tree
library(gbm)

#example formula
  gbm(Y~X1+X2+X3+X4+X5+X6, # formula
      data=data, # dataset
      var.monotone=c(0,0,0,0,0,0), # -1: monotone decrease,
      # +1: monotone increase,
      # 0: no monotone restrictions
      distribution="gaussian", # see the help for other choices
      n.trees=1000, # number of trees
      shrinkage=0.05, # shrinkage or learning rate,
      # 0.001 to 0.1 usually work
      interaction.depth=3, # 1: additive model, 2: two-way interactions, etc.
      bag.fraction = 0.5, # subsampling fraction, 0.5 is probably best
      train.fraction = 0.5, # fraction of data for training,
      12 gbm
      # first train.fraction*N used for training
      n.minobsinnode = 10, # minimum total weight needed in each node
      cv.folds = 3, # do 3-fold cross-validation
      keep.data=TRUE, # keep a copy of the dataset with the object
      verbose=FALSE, # don't print out progress
      n.cores=1) # use only a single core (detecting #cores is
# error-prone, so avoided here)


  fit.gb.gwto <- gbm(ps.wgwto2 ~ Year +	AllDam2 + FedDam2	+ SLU_Dam2 +	WSDam2	+ Aquifer_Perm +			
                       Pop2	+ Ppt_Month_avg  +	Ppt_Annual_sum	+ Runoff+	spauto_Gw		+		
                       spauto_Sw +	spauto_Tot	+ area_sqkm	+ Water2	+ Developed2	+		
                       Barren2	+ Dec_For2	+ Eve_For2	+ Mix_For2	+ Agr2, data=dat2, 
                     var.monotone=c(1,1,1,1,1,0,1,0,0,0,0,0,0,1,1,1,0,0,0,0,0), n.trees=1000)
                
  
  fit.gb.gwto.2 <- gbm(ps.wgwto2 ~ Year +	AllDam2 + FedDam2	+ SLU_Dam2 +	WSDam2	+ Aquifer_Perm +			
                       Pop2	+ Ppt_Month_avg  +	Ppt_Annual_sum	+ Runoff+	spauto_Gw		+		
                       spauto_Sw +	spauto_Tot	+ area_sqkm	+ Water2	+ Developed2	+		
                       Barren2	+ Dec_For2	+ Eve_For2	+ Mix_For2	+ Agr2, data=dat2, 
                   n.trees=1000)            

  
  
fit <- predict(fit.gb.gwto.2, n.trees=1000, type="response")
fit <- as.data.frame(fit)


rss <- sum((fit - ps.wgwto2) ^ 2)
tss <- sum((ps.wgwto2 - mean(ps.wgwto2)) ^ 2)
rsq <- 1 - rss/tss


##Stacking GW and SW Data

dat.stack <- read.csv(file="E://EWN_KDF/Data/PublicSupply_Analysis/Melted_predictors/Merged_Template_Versions/Predictors_Response_Combined_Stacked_GW_SW.csv",header=TRUE)
dat.stack2 <- na.omit(dat.stack)
Response <- log(dat.stack2$Response + 1)

AllDam3 <- log(dat.stack2$AllDam + 1)
FedDam3 <- log(dat.stack2$FedDam + 1)
SLU_Dam3 <- log(dat.stack2$SLU_Dam + 1)
WSDam3 <- log(dat.stack2$WSDam + 1)
Pop3 <- log(dat.stack2$Pop + 1)
Water3 <- log(dat.stack2$Water + 1)
Developed3 <- log(dat.stack2$Developed + 1)
Barren3 <- log(dat.stack2$Barren + 1)
Dec_For3 <- log(dat.stack2$Dec_For + 1)
Eve_For3 <- log(dat.stack2$Eve_For + 1)
Mix_For3 <- log(dat.stack2$Mix_For + 1)
Agr3 <- log(dat.stack2$Agr + 1)


fit.stack <- randomForest(Response ~ Type + Year +	AllDam3 + FedDam3	+ SLU_Dam3 +	WSDam3	+ Aquifer_Perm +			
                              Pop3	+ Ppt_Month_avg  +	Ppt_Annual_sum	+ Runoff+	spauto_Gw		+		
                              spauto_Sw +	spauto_Tot	+ area_sqkm	+ Water3	+ Developed3	+		
                              Barren3	+ Dec_For3	+ Eve_For3	+ Mix_For3	+ Agr3, data=dat.stack2)

#####
####Remove Year


fit.gwto.x <- randomForest(ps.wgwto2 ~ AllDam2 + FedDam2	+ SLU_Dam2 +	WSDam2	+ Aquifer_Perm +			
                             Pop2	+ Ppt_Month_avg  +	Ppt_Annual_sum	+ Runoff+	spauto_Gw		+		
                             spauto_Sw +	spauto_Tot	+ area_sqkm	+ Water2	+ Developed2	+		
                             Barren2	+ Dec_For2	+ Eve_For2	+ Mix_For2	+ Agr2, data=dat2)

RI.gwto.x <- cbind(fit.gwto.x$importance, fit.gwto.x$importanceSD)


fit.swto.x <- randomForest(ps.wswto2 ~ AllDam2 + FedDam2	+ SLU_Dam2 +	WSDam2	+ Aquifer_Perm +			
                             Pop2	+ Ppt_Month_avg  +	Ppt_Annual_sum	+ Runoff+	spauto_Gw		+		
                             spauto_Sw +	spauto_Tot	+ area_sqkm	+ Water2	+ Developed2	+		
                             Barren2	+ Dec_For2	+ Eve_For2	+ Mix_For2	+ Agr2, data=dat2)

RI.swto.x <- cbind(fit.swto.x$importance, fit.swto.x$importanceSD)


fit.ps.to.x <- randomForest(ps.total2 ~ AllDam2 + FedDam2	+ SLU_Dam2 +	WSDam2	+ Aquifer_Perm +			
                              Pop2	+ Ppt_Month_avg  +	Ppt_Annual_sum	+ Runoff+	spauto_Gw		+		
                              spauto_Sw +	spauto_Tot	+ area_sqkm	+ Water2	+ Developed2	+		
                              Barren2	+ Dec_For2	+ Eve_For2	+ Mix_For2	+ Agr2, data=dat2)

RI.ps.to.x <- cbind(fit.ps.to.x$importance, fit.ps.to.x$importanceSD)

write.csv(RI.gwto.x, file="E://EWN_KDF/Data/PublicSupply_Analysis/RelativeImportance_Gw_Tot_X.csv")
write.csv(RI.swto.x, file="E://EWN_KDF/Data/PublicSupply_Analysis/RelativeImportance_Sw_Tot_X.csv")


################
##########
### Prediction

pdat <- read.csv(file="E://EWN_KDF/Data/PublicSupply_Analysis/Melted_predictors/Merged_Template_Versions/Predictors_all_final.csv",header=TRUE)

pdat$AllDam2 <- log(pdat$AllDam + 1)
pdat$FedDam2 <- log(pdat$FedDam + 1)
pdat$SLU_Dam2 <- log(pdat$SLU_Dam + 1)
pdat$WSDam2 <- log(pdat$WSDam + 1)
pdat$Pop2 <- log(pdat$Pop + 1)
pdat$Water2 <- log(pdat$Water + 1)
pdat$Developed2 <- log(pdat$Developed + 1)
pdat$Barren2 <- log(pdat$Barren + 1)
pdat$Dec_For2 <- log(pdat$Dec_For + 1)
pdat$Eve_For2 <- log(pdat$Eve_For + 1)
pdat$Mix_For2 <- log(pdat$Mix_For + 1)
pdat$Agr2 <- log(pdat$Agr + 1)

p.gwto.x <- predict(fit.gwto.x, pdat, type="response")
p.swto.x <- predict(fit.swto.x, pdat, type="response")
p.psto.x <- predict(fit.ps.to.x, pdat, type="response")

write.csv(p.gwto.x, file="E://EWN_KDF/Data/PublicSupply_Analysis/Predicted_GW_Total.csv")
write.csv(p.swto.x, file="E://EWN_KDF/Data/PublicSupply_Analysis/Predicted_SW_Total.csv")
write.csv(p.psto.x, file="E://EWN_KDF/Data/PublicSupply_Analysis/Predicted_PS_Total.csv")

