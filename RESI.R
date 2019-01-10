RESI_R <- read.csv("RESI-JS.csv", header=TRUE)
perfplus_bio <- RESI_R[,c("ID", "DBN", "FN", "LN", "RACE", "SEX", "GL", "DOB", "ADM.DTE")]
names(perfplus_bio) <- c("student_code", "school_code", "first_name", "last_name","race_code", "gender_code", "grade_code", "birthdate", "beg_date")

#numeric date needs to be converted to character in order to be reformatted
perfplus_bio$birthdate=as.character(as.numeric(perfplus_bio$birthdate))
perfplus_bio$birthdate <- format(as.Date(perfplus_bio$birthdate, format="%Y%m%d"), "%m/%d/%Y")
perfplus_bio$beg_date=as.character(as.numeric(perfplus_bio$beg_date))
perfplus_bio$beg_date <- format(as.Date(perfplus_bio$beg_date, format="%Y%m%d"), "%m/%d/%Y")

#three NA columns are added according to Perfplus Student Data File Definition
perfplus_bio$middle_initial <- NA
perfplus_bio$state_student_code <- NA
perfplus_bio$end_date <- NA
str(perfplus_bio)
write.csv(perfplus_bio, "perfplus_bio.csv")






