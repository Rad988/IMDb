*** Settings ***
Documentation       Search movies in the provided excel 
...                 Search for exact matches only 
...                 Extract rating, storyline, tagline, genres and top 5 reviews
...                 Save them to sqlite database (id, movie_name, ratings, storyline, 
...                 tagline, genres, review_1, review_2, review_3, review_4, review_5, status)
...                 Status : No exact match found if not found, otherwise success in status

Library    RPA.Browser.Selenium    auto_close=${FALSE}

*** Tasks ***
Search movies in provided excel
    Open the website
    Type and search movies
    
   


*** Keywords ***
Open the website
    Open Available Browser    https://www.imdb.com/

Type and search movies
    Input Text    xpath=//*[@id="suggestion-search"]    Halloween
    Press Keys    NONE    RETURN
    sleep     2
    Click Button    xpath=//*[@id="__next"]/main/div[2]/div[3]/section/div/div[2]/div[2]/section[1]/div[2]/div[2]/a[3]
    sleep    2
    Click Button    xpath= //*[contains(text(), "Exact matches")]
    