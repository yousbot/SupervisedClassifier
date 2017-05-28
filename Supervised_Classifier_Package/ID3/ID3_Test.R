


# -------------------------------------------------------------------------------------------------------- 
# 
#
#
#   Author          :    Youssef Sbai Idrissi
#   Maintainer      :    Youssef Sbai Idrissi
#   Github          :    https://github.com/postwittgenstein
#   Description     :    This is the ID3 Algorithm, i prefered to let it open than to wrap 
#                        it into a package. You're free to use it and to share it. Enjoy !
#   Specification   :    The data in your data set should be set in the orde below :
#                         
#                           Name      Age       ...       Classe
#                           Youssef   21        ...       Oui
#                           Alla      22        ...       Non
#                         
#                        " Classe " must EXIST and be the LAST one in range. 
#                        And it should contain either "yes" or "no" value. 
#                        If you want to change the output file, make sure that the sheet is 
#                        called : TestSheet. Or change it in the code if "ID3_Core.R" as you wish.
#
#   
#   
#   NOTE            :    This page is set as an example of use.
#                        1 ) Import the source as : 
#                            > source("./ID3_Launch.R)
#                        2 ) Call the function, by giving in agument the source of Data to analyse :
#                            > ID3(input = "./ID3/Data/Health_DataMining_Sample_Data.xlsx")
#
#
#   Data Sample     :    If you've extracted the file from my git source, you'll find a set of 
#                        sample data we've used in the class of DataMining. Here is the path : 
#                        
#                         "./ID3/Data/Weather_DataMining_Sample_Data.xlsx"
#                         "./ID3/Data/Health_DataMining_Sample_Data.xlsx")
#                         "./ID3/Data/TD_DataMining_Sample_Data.xlsx")
#
#
#
# -------------------------------------------------------------------------------------------------------- 





source("./ID3_Launch.R")
ID3(input = "./ID3/Data/Health_DataMining_Sample_Data.xlsx")


