clear all
cd '~/data/'
use health.dta

*new variables
gen costs_avoid_per_illness = cost_avoidable_t / gagne_sum_t

gen cost_per_illness = cost_t / gagne_sum_t

gen ecost_per_illness = tm1_cost_emergency / gagne_sum_t

gen ecost_per_cillness = tm1_cost_emergency / tm1_gagne_sum

*tabulate data 
tabulate race, summarize(costs_avoid_per_illness)

tabulate race, summarize(cost_per_illness)

tabulate race, summarize(ecost_per_illness)

tabulate race, summarize(ecost_per_cillness)

*regress to assess significance 
regress costs_avoid_per_illness tm1_dem_black 

regress cost_per_illness tm1_dem_black

regress ecost_per_illness tm1_dem_black

regress ecost_per_cillness tm1_dem_black




