#==================================================#
# File description #

#==================================================#


#### Libraries #### 

library(fbi)



#### Import data ####

# Setting start and end date of the analysis
start_date = "1960-01-01"
end_date = "2019-12-01"         # We might want to leave out the covid period


# Load the most recent fred-md dataset

# Load transformed data 
data = fredmd("https://files.stlouisfed.org/files/htdocs/fred-md/monthly/current.csv", 
              date_start = as.Date(start_date), date_end = as.Date(end_date))

# Load row data (in case we need them)
#data_raw = fredmd("https://files.stlouisfed.org/files/htdocs/fred-md/monthly/current.csv",
#                  date_start = as.Date(start_date), date_end = as.Date(end_date), 
#                  transform = FALSE)


var_desc = fredmd_description   

# Period
dates <- data$date

