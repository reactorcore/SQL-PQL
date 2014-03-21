class StaticPagesController < ApplicationController

  class SQLView
    attr_accessor :id, :title, :content, :query, :answer
  end


  def index
  end

  def section_one
    @section_title = '1. The SELECT command'

    # Question 1
    ex1_view = SQLView.new
    ex1_view.id = 'ex1'
    ex1_view.title = 'Example 1'
    ex1_view.content = 'To display just the country name and population, replace the * with "name, population"'
    ex1_view.query = "SELECT\nname, population\nFROM\nworld"

    q1_view = SQLView.new
    q1_view.id = 'q1'
    q1_view.title = 'Question 1'
    q1_view.content = 'Display the name and area from table "world."'
    q1_view.answer = "SELECT\nname, area\nFROM\nworld"

    ex_q1 = [ex1_view, q1_view]

    # Question 2
    ex2_view = SQLView.new
    ex2_view.id = 'ex2'
    ex2_view.title = 'Example 2'
    ex2_view.content = 'The query shows the population density (population/area) for each country where the area is over 5,000,000 km2.'
    ex2_view.query = "SELECT\nname, population/area\nFROM\nworld\nWHERE\narea > 5000000"

    q2_view = SQLView.new
    q2_view.id = 'q2'
    q2_view.title = 'Question 2'
    q2_view.content = 'Show the per capita gdp (gdp/population) for each country where the area is over 5,000,000 km2'
    q2_view.answer = "SELECT\nname, gdp/population\nFROM\nworld\nWHERE\narea > 5000000"

    ex_q2 = [ex2_view, q2_view]

    # Question 3
    ex3_view = SQLView.new
    ex3_view.id = 'ex3'
    ex3_view.title = 'Example 3'
    ex3_view.content = 'We use AND to ensure that two or more conditions hold true. The example shows the countries where the population is small and the gdp is high.'
    ex3_view.query = "SELECT\nname , region\nFROM world\nWHERE\npopulation < 2000000 AND gdp > 5000000000"

    q3_view = SQLView.new
    q3_view.id = 'q3'
    q3_view.title = 'Question 3'
    q3_view.content = 'Lets find the richest small countries. Show the name and region where the area is less then 2,000 km2 and the gdp is more than $5,000,000,000'
    q3_view.answer = "SELECT\nname, region\nFROM\nworld\nWHERE\narea < 2000 AND gdp > 5000000000"

    ex_q3 = [ex3_view, q3_view]

    # Question 4
    ex4_view = SQLView.new
    ex4_view.id = 'ex4'
    ex4_view.title = 'Example 4'
    ex4_view.content = "The keyword IN allows us to check if an item is in a list. The example shows the name and population for the countries 'Ireland', 'Iceland' and 'Denmark'"
    ex4_view.query = "SELECT\nname, population\nFROM\nworld\nWHERE\nname IN ('Ireland', 'Iceland', 'Denmark')"

    q4_view = SQLView.new
    q4_view.id = 'q4'
    q4_view.title = 'Question 4'
    q4_view.content = "Show the name and population for 'China', 'Vietnam', 'Japan'"
    q4_view.answer = "SELECT\nname, population\nFROM\nworld\nWHERE\nname IN ('China', 'Vietnam', 'Japan')"

    ex_q4 = [ex4_view, q4_view]

    #Question 5
    ex5_view = SQLView.new
    ex5_view.id = 'ex5'
    ex5_view.title = 'Example 5'
    ex5_view.content = "What are the countries beginning with 'D'? The word LIKE permits pattern matching. % is the wildcard. The examples shows countries beginning with 'D'."
    ex5_view.query = "SELECT\nname\nFROM\nworld\nWHERE\nname LIKE 'D%'"

    q5a_view = SQLView.new
    q5a_view.id = 'q5a'
    q5a_view.title = 'Question 5A'
    q5a_view.content = "Show only the name of each country that begins with 'S'."
    q5a_view.answer = "SELECT\nname\nFROM\nworld\nWHERE\nname LIKE 'S%'"

    q5b_view = SQLView.new
    q5b_view.id = 'q5b'
    q5b_view.title = 'Question 5B'
    q5b_view.content = "Show the name and region of each country that begins with 'T' and ends with a 'n'."
    q5b_view.answer = "SELECT\nname, region\nFROM\nworld\nWHERE\nname LIKE 'T%n'"

    ex_q5 = [ex5_view, q5a_view, q5b_view]

    # Question 6
    ex6_view = SQLView.new
    ex6_view.id = 'ex6'
    ex6_view.title = 'Example 6'
    ex6_view.content = "Which countries are not too small and not too big? BETWEEN allows range checking - note that it is inclusive."
    ex6_view.query = "SELECT\nname, area\nFROM\nworld\nWHERE\narea BETWEEN 207600 AND 244820"

    q6a_view = SQLView.new
    q6a_view.id = 'q6a'
    q6a_view.title = 'Question 6A'
    q6a_view.content = "Lets find all the small countries where the area is between 10,000 km2 and 50,000 km2. List the name and area."
    q6a_view.answer = "SELECT\nname, population\nFROM\nworld\nWHERE\narea BETWEEN 10000 AND 50000"
    
    q6b_view = SQLView.new
    q6b_view.id = 'q6b'
    q6b_view.title = 'Question 6B'
    q6b_view.content = "List the country names and population where the population is between 35 million and 75 million. Display the population in millions please."
    q6b_view.answer = "SELECT\nname, population/1000000\nFROM\nworld\nWHERE\npopulation BETWEEN 35000000 AND 75000000"
   
    ex_q6 = [ex6_view, q6a_view, q6b_view]


    @ex_qs = [ex_q1, ex_q2, ex_q3, ex_q4, ex_q5, ex_q6]

    render :section_view
  end

  def section_two
    @section_title = '2. The SELECT command'

    # Question 1
    ex1_view = SQLView.new
    ex1_view.id = 'ex1'
    ex1_view.title = 'Example 1'
    ex1_view.content = 'To display just the country name and population, replace the * with "name, population"'
    ex1_view.query = "SELECT\nname, population\nFROM\nworld"

    q1_view = SQLView.new
    q1_view.id = 'q1'
    q1_view.title = 'Question 1'
    q1_view.content = 'Display the name and area from table "world."'
    q1_view.answer = "SELECT\nname, area\nFROM\nworld"

    ex_q1 = [ex1_view, q1_view]

    # Question 2
    ex2_view = SQLView.new
    ex2_view.id = 'ex2'
    ex2_view.title = 'Example 2'
    ex2_view.content = 'The query shows the population density population/area for each country where the area is over 5,000,000 km2.'
    ex2_view.query = "SELECT\nname, population/area\nFROM\nworld\nWHERE\narea > 5000000"

    q2_view = SQLView.new
    q2_view.id = 'q2'
    q2_view.title = 'Question 2'
    q2_view.content = 'Show the per capita gdp: gdp/population for each country where the area is over 5,000,000 km2'
    q2_view.answer = "SELECT\nname, gdp/population\nFROM\nworld\nWHERE\narea > 5000000"

    ex_q2 = [ex2_view, q2_view]

    # Question 3
    ex3_view = SQLView.new
    ex3_view.id = 'ex3'
    ex3_view.title = 'Example 3'
    ex3_view.content = 'We use AND to ensure that two or more conditions hold true. The example shows the countries where the population is small and the gdp is high.'
    ex3_view.query = "SELECT\nname , region\nFROM world\nWHERE population < 2000000\nAND gdp > 5000000000"

    q3_view = SQLView.new
    q3_view.id = 'q3'
    q3_view.title = 'Question 3'
    q3_view.content = 'Show the name and continent where the area is less then 2000 and the gdp is more than 5000000000'
    q3_view.answer = ""

    ex_q3 = [ex3_view, q3_view]

    # Question 4
    ex4_view = SQLView.new
    ex4_view.id = 'ex4'
    ex4_view.title = 'Example 4'
    ex4_view.content = "Checking a list The word IN allows us to check if an item is in a list. The example shows the name and population for the countries 'Ireland', 'Iceland' and 'Denmark'"
    ex4_view.query = "SELECT\nname, population\nFROM\nworld\nWHERE\nname IN ('Ireland', 'Iceland', 'Denmark')"

    q4_view = SQLView.new
    q4_view.id = 'q4'
    q4_view.title = 'Question 4'
    q4_view.content = "Show the name and the population for 'China', 'Vietnam', 'Japan'"
    q4_view.answer = ""

    ex_q4 = [ex4_view, q4_view]

    #Question 5
    ex5_view = SQLView.new
    ex5_view.id = 'ex5'
    ex5_view.title = 'Example 5'
    ex5_view.content = 'What are the countries beginning with D? The word LIKE permits pattern matching - % is the wildcard. The examples shows countries beginning with D'
    ex5_view.query = "SELECT\nname\nFROM\nworld\nWHERE\nname LIKE 'D%'"

    q5_view = SQLView.new
    q5_view.id = 'q5'
    q5_view.title = 'Question 5'
    q5_view.content = "Show each country that begins with G"
    q5_view.answer = ""

    ex_q5 = [ex5_view, q5_view]

    # Question 6
    ex6_view = SQLView.new
    ex6_view.id = 'ex6'
    ex6_view.title = 'Example 6'
    ex6_view.content = "Which countries are not too small and not too big? BETWEEN allows range checking - note that it is inclusive."
    ex6_view.query = "SELECT\nname, area\nFROM\nworld\nWHERE\narea BETWEEN 207600 AND 244820"

    q6_view = SQLView.new
    q6_view.id = 'q6'
    q6_view.title = 'Question 6'
    q6_view.content = "Show the area in 1000 square km. Show area/1000 instead of area"
    q6_view.answer = ""

    ex_q6 = [ex6_view, q6_view]


    @ex_qs = [ex_q1, ex_q2, ex_q3, ex_q4, ex_q5, ex_q6]

    render :section_view
  end

end