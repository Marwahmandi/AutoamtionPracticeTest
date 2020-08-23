*** Settings ***
Library    SeleniumLibrary 
Variables   ../PageObjects/Locators.py

*** Keywords ***

#User can create an account
Open the browser
    [Arguments]    ${Url_Site}  ${Browser}
    Open Browser    ${Url_Site}  ${Browser}
    Maximize Browser Window
    
Click Sign_In
    Click Link    ${btn_Sign_In}     
   # Click Button       
    
Enter e_mail address
    [Arguments]    ${E_mail_Adress}  
    Input Text    ${txt_Email_Adress}    ${E_mail_Adress}   
    
Click Create Account
    Click Button    ${btn_Create_Account}  
    Sleep   3
    
Select the title
    [Arguments]    ${Title}
    Select Radio Button    ${radioB_Title}    ${Title}
    Radio Button Should Be Set To    ${radioB_Title}     ${Title} 
    
Enter First Name
    [Arguments]    ${First_Name}
    Input Text    ${txt_First_Name}     ${First_Name}    
    
Enter Last Name
    [Arguments]    ${Last_Name}
    Input Text    ${txt_Last_Name}     ${Last_Name} 
    
Verify Email
     [Arguments]    ${E_mail_Adress} 
     ${email_picked}=          Get Value    ${txt_Email}
    Should Be Equal    ${email_picked}     ${E_mail_Adress} 
    
 Enter Password
    [Arguments]    ${Password}
    Input Text    ${txt_Password}     ${Password}  
    
Select Date of Birth
    [Arguments]    ${Date}  ${Month}  ${Year}
    Select From List By Value    ${drp_Date}    ${Date} 
    Select From List By Value    ${drp_Month}    ${Month} 
    Select From List By Value    ${drp_Year}    ${Year} 
    
Select Sing Up for our newsletter
    Select Checkbox   ${chBox_Sign_Up}
    
Select Receive special offers from our partners
    Select Checkbox    ${chBox_Optin}
    
Enter your address information
    [Arguments]   ${Add_FirstName}  ${Add_LastName}  ${Comapny}  ${Adress1}  ${Adress2}  ${City}  ${State}  ${PostalCode}  ${Country}  ${Additional_Info}  ${HomePhone}  ${MobilePhone}  ${Alias}
    Input Text    ${txt_Adress_First_Name }   ${Add_FirstName}
    Input Text    ${txt_Adress_Last_Name }   ${Add_LastName} 
    Input Text    ${txt_Company }   ${Comapny}   
    Input Text    ${txt_Adress1 }   ${Adress1}  
    Input Text    ${txt_Adress2 }   ${Adress2} 
    Input Text    ${txt_City }   ${City}  
    Select From List By Value    ${drp_State}    ${State}
    Input Text    ${txt_Postal_Code }   ${PostalCode} 
    Select From List By Value    ${drp_Country}    ${Country}
    Input Text    ${txt_Add_Information }   ${Additional_Info} 
    Input Text    ${txt_Home_Phone }   ${HomePhone} 
    Input Text    ${txt_Mobile_Phone }   ${MobilePhone} 
    Input Text    ${txt_Alias }   ${Alias}
 
Click On the registration button
    Click Button  ${btn_Register}  
    
Close the browser
   Close Browser 
   
#User can login keywords

Enter Login Email
    [Arguments]     ${Login_Email_Adress}  
    Input Text     ${txt_Login_Email_Adress}    ${Login_Email_Adress} 
         
Enter Login Password
    [Arguments]     ${Login_Password}  
    Input Text     ${txt_Login_Password}    ${Login_Password}    
    
Click on the SignIn button
    Click Button    ${btn_Login_Sign_In}  
    
Verify the successfull authentication
    Page Should Contain    My account       
   
#'User can add a product in the cart' keywords 
Click on the tab Women
    Click Link    ${link_Women}   
   
Click on Add To Cart
  Mouse Over    ${container_hover}
  Wait Until Element Is Visible     ${link_AddToCart}     
  Click Link    ${link_AddToCart} 
 #Click 
        
#User can checkout keywords
Click on checkout buttons
    Click Link    ${btn_Proceed_to_checkout1}  
    Click Link    ${btn_Proceed_to_checkout2}  
    Click Button  ${btn_Proceed_to_checkout3} 
    Select Checkbox    ${chBox_Agreement}
    Click Button  ${btn_Proceed_to_checkout4} 
    Click Link    ${link_Pay_By_Bank_Wire}    
    Click Button    ${btn_Confirm_My_Order} 
    Page Should Contain    Your order on My Store is complete  
    
         
#Go to orders
Click on Orders
    Click Link    ${link_BackToOrders} 
    Page Should Contain    Order history     
				
    
       


   