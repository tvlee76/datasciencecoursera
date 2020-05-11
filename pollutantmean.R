pollutantmean <- function(directory, pollutant, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of  the pollutant for which we will calcultate the
        ## mean; either "sulfate" or "nitrate"
        
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)
        ## NOTE: Do not round the result
        
        filesD <- list.files(directory, full.names = TRUE) ##create a list of files
        dat <- data.frame() ##create an empty data frame

        #loop through the list of files until id is found
        for(i in id){  
                temp <- read.csv(filesD[i], header = TRUE) ##read in the file
                dat<-rbind(dat,temp) #add files to the main data frame
        }
        return(mean(dat[,pollutant],na.rm = TRUE)) ###find the mean of the pollutant, make sure you remove NA values
        
        }

