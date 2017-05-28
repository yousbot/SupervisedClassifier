

# ----------------------------------------------------------------------------------------------------------------------- 
# 
#
#
#   Author          :    Youssef Sbai Idrissi
#   Maintainer      :    Youssef Sbai Idrissi
#   Github          :    https://github.com/postwittgenstein
#   Description     :    This is the Naive Bayesian Classifier algorithm. I prefered to let it open than to wrap 
#                        it into a package. You're free to use it and to share it. Enjoy !
#   Specification   :    The data in your data set should be set in the orde below :
#                         
#                           Name      Age       ...       Classe
#                           1         0         ...       sport
#                           0         1         ...       politique
#                         
#                        " Classe " must EXIST and be the LAST one in range for all the xlsx files. 
#                        And it may contain as much categories as you like ( in the unclassified excel it should be blank)
#                        All the data MUST be either " 0 "  or " 1 ", except for the "Classe"
#                        I didn't wrote the code that export the data to the excel file. It is the
#                        same from the ID3_Core code. 
#
#   
#   
#   NOTE            :    This page is set as an example of use.
#                        1 ) Import the source as : 
#                            > source("./NBc_Launch.R)
#                        2 ) Call the function, by giving in agument the source of Data to analyse :
#                            > NBc(classified_data_path = "./NBc/Data/NB_Sample_Data.xlsx", unclassfied_data_path = "./NBc/Data/NB_Sample_Unclassfied_Data.xlsx")
#
#
#
#   Data Sample     :    If you've extracted the file from my git source, you'll find a set of 
#                        sample data we've used in the class of DataMining. Here is the path : 
#                        
#                         Classified data   :  "./NBc/Data/NB_Sample_Data.xlsx"
#                         Unclassified data :  "./NBc/Data/NB_Sample_Unclassfied_Data.xlsx"#
#
#
# ----------------------------------------------------------------------------------------------------------------------- 


source("./NBc_Launch.R")

NBc(classified_data_path = "./NBc/Data/NB_Sample_Data.xlsx",
    unclassfied_data_path = "./NBc/Data/NB_Sample_Unclassfied_Data.xlsx")

