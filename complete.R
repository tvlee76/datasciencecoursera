complete <- function(directory,id=1:332){
        
        #create a list of files
        filesD<-list.files(directory,full.names = TRUE)
        #create an empty data frame
        dat <- data.frame()
        
        for(i in id){
                #read in the file
                temp<- read.csv(filesD[i],header=TRUE)
                #delete rows that do not have complete cases
                temp<-na.omit(temp)
                
                #count all of the rows with complete cases
                nobs<-nrow(temp)
                
                #enumerate the complete cases by index
                dat<-rbind(dat,data.frame(i,nobs))
                
        }
        return(dat)
}