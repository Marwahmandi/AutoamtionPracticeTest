*** Settings ***
Library    SeleniumLibrary    
Resource    ../Ressources/AcceptanceTestsKeywords.robot

*** Variables ***
${URL}  http://automationpractice.com/index.php
${Browser}  Chrome
${E_mail_Adress}  rrr@gmail.com
${Title}  2
${First_Name}  Mary
${Last_Name}   Mop
${Password}   123ml
${Date}  20
${Month}  3
${Year}  1992
${Add_FirstName}  Mary
${Add_LastName}   Mop
${Comapny}    company
${Adress1}    add1
${Adress2}    add2
${City}       Paris
${State}    52
${PostalCode}   50000
${Country}     21
${Additional_Info}  addInfo
${HomePhone}    0782789240
${MobilePhone}    0782456240
${Alias}        aliasExample
${Login_Email_Adress}  rrr@gmail.com
 ${Login_Password}     123ml

*** Test Cases ***
User can create an account
    Open the browser  ${URL}  ${Browser}
    Click Sign_In
    Enter e_mail address  ${E_mail_Adress}  
    Click Create Account
    Select the title  ${Title}
    Enter First Name  ${First_Name} 
    Enter Last Name   ${Last_Name}
    Verify Email      ${E_mail_Adress} 
    Enter Password    ${Password}
    Select Date of Birth  ${Date}  ${Month}  ${Year}
    Select Sing Up for our newsletter
    Select Receive special offers from our partners
    Enter your address information   ${Add_FirstName}  ${Add_LastName}   ${Comapny}   ${Adress1}  ${Adress2}  ${City}  ${State}  ${PostalCode}  ${Country}  ${Additional_Info}  ${HomePhone}  ${MobilePhone}  ${Alias}
    Click On the registration button
   
    
User can login
    Enter Login Email   ${Login_Email_Adress} 
    Enter Login Password   ${Login_Password}
    Click on the SignIn button
    Verify the successfull authentication
   # Close the browser
   
User can add a product in the cart
    Click on the tab Women
    Click on Add To Cart
   
    
User can checkout
    Click on checkout buttons

User can see the order listed in his profile
    Click on Orders    
