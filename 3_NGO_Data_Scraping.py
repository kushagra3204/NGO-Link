import pandas as pd
import requests
from bs4 import BeautifulSoup

arr = []
Name_of_NGO = []
Registration_No_City_State = []
Address = []
Sectors_Working = []



for i in range(1, 50):
    url = "https://ngodarpan.gov.in/index.php/home/statewise_ngo/7608/24/"+str(i)+"?per_page=10"
    r = requests.get(url)
    soup = BeautifulSoup(r.text, "lxml")

    # np = soup.find("a", rel="next").get("href")
    # print(np)
    
    table_body= soup.find("tbody")
    table_rows = table_body.find_all("tr")

    # ***********************************************************
    # print('\n\nNames Of NGOs')
    for i in table_rows:
        names = i.find_next("a").text
        # names = i.find_all("td")[1].text
        Name_of_NGO.append(names)
    # print(Name_of_NGO)

    # ***********************************************************
    # print('\n\nRegistration Number, City and State')
    for j in table_rows:
        Reg = j.find_all("td")[2].text
        Registration_No_City_State.append(Reg)
    # print(Registration_No_City_State)

    # ***********************************************************
    # print('\n\nAddress')
    for j in table_rows:
        Add = j.find_all("td")[3].text
        Address.append(Add)
    # print(Address)

    # ***********************************************************
    # print('\n\nSector Working')
    for j in table_rows:
        Sector = j.select_one("td:last-of-type").text
        Sectors_Working.append(Sector)
    # print(Sectors_Working)
    
    # url = np
    # r = requests.get(url)
    # soup = BeautifulSoup(r.text, "lxml")



# ******************************************************************************************************
data = {
    "Name of NGOs " : Name_of_NGO, 
    "Registration Number/City and State" : Registration_No_City_State, 
    "Address Of NGOs" : Address, 
    "Sectors Working" : Sectors_Working 
}

# NumArr = []
# for i in range(1, 41):
#     NumArr.append(i)

df = pd.DataFrame(data)
# print(df)
df.to_csv("E:/Just Code/Web Scraping using Python/CSV Files/test2.csv")

    
