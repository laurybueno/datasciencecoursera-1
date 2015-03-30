---
title       : Gross Domestic Product App
subtitle    : Datascience Coursera Specialization - Developing Data Products
Author       : 
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, quiz, bootstrap, shiny, interactive] # {mathjax, quiz, bootstrap}
ext_widgets : {rCharts: [libraries/nvd3]}
mode        : selfcontained # {standalone, draft}
---





### Slide 1: 

### Synopsis:
This application was develop during the **Developing Data Products** Course, part of the Data Science Specialization.

With it, it's possible to plot and compare the Gross Domestic Product ($GDP$) by an  interactive selection of a list of $countries$ in a changeable range of $years$, and compare with 2 other related variables:

- $Population$

- $Life Expectancy$

- The application can be useful for **Exploratory Analysis** of the relation between the $GDP$ and other country variables.

- Further variables will be included in the next future.

---

### Slide 2:

**DataSet Description:** 
- Gapminder: http://www.gapminder.org/data/

- Original Data Set: http://www.stat.ubc.ca

**- Data Frame:** $1704$ observations - $6$ variables

**- Variable [country]:** numeric - $142$ countries

**- Variable [gdpPercap]:** numeric - measured in International Dollars

**- Variable [year]:** numeric - year between $1952$ - $2007$ (clustered each 5 years)

**- Variable [pop]:** numeric - Country Population

**- Variable [continent]:** character - Country Continent

**- Variable [lifeExp]:** numeric - Country Life Expectancy

---
### Slide 3:

Applications Outputs:

**- Plot 1:** $GDP - Country$ for the selected year range.

**- Plot 2:** 
<br/>
a. $pop - Country$ for the selected country and year range, the population.
<br/>
b. $lifExp - Country$ for the selected country and year range, the life expectancy.

---
### Slide 4:
### Procedure:

- Click on the following shortcut to run the app: 

https://a6111e.shinyapps.io/Assignment_Part1_files/ 

- On the left side of the App, select the country, through the $Country Select Input Field$.

- Down of the $Country Select Input Field$, establish the year range, through the $Slide Bar$ (between 1952 - 2007).

- On the right side of the App, select the 2nd variable to be plot, through the $Variable Select Input Field$ (population - life expectancy )

- The App updated the outputs, changing the country, year range or the country variable.

Further Information on GitHub: 

https://github.com/A6111E/datasciencecoursera/tree/master/Developing_Data_Products/Assignment_Part2 
