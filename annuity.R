###########################################################################################
# Functions for the calculation of the best estimate liability of an annuity
###########################################################################################
library(lubridate)



annuity<-function(policylist, demographicassumptions, economicassumptions){
   # policylist must be a data.frame with columns AGE_AT_ENTRY, GUARANTEE_PERIOD_M, DURATIONIF_M, ANNUITY_AMT_ANNUAL,
   # ANNUITY_FREQ, ESCALATION_PC, ESCALATION_FREQ, columns for underwriting
   
   # demographicassumptions must be a list that contains an element longevity
   # longetivy must contain columns for underwriting, AGE_LAST, CALENDAR_YEAR, MORT_FORCE
   # currently no allowance for a select period
   
   # economicassumptions must be a list that contains elements inflation and risk_free
   #  inflation and risk_free represents a term structure of interest rates in a data.frame 
   #  with column DF and DATE representing a discount factor and the date on which that discount factor applies
   
   # outputs a set of best estimate cashflows
   # outputs a set of 
}



annuity_demographic<-list()
   annuity_demographic$longevity<-data.frame(AGE_LAST = 55:120, 
                                             CALENDAR_YEAR = rep(2018, times=66),
                                             MORT_FORCE = (1:66)/100)
# add in a constant mortality improvement
   

economicassumptions<-list()
   economicassumptions$risk_free<-data.frame(DATE= dmy("31-12-2017") %m+% months(0:599),
                                             DF=exp(-0.06 * (0:599)/12))
   economicassumptions$inflation<-data.frame(DATE= dmy("31-12-2017") %m+% months(0:599),
                                             DF=exp(-0.04 * (0:599)/12))

# read in sample data from a text file