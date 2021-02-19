*** Settings ***
Documentation   Just a small demo and test
Library           SeleniumLibrary
Library           OperatingSystem
Test Setup      Get Admin Url
Test Teardown	Close Browser

*** Test Cases ***

Browse Content Item
	[Tags]  DEMO
    Go To Content Site
    Open First Item	
 
   
*** Keywords ***
Get Admin Url
    
   ${admin_url} =   Run  ${ADMIN_URL}
   Set Test Variable   ${admin_url}
      
Go To Content Site
	Open Browser  ${admin_url}  ${BROWSER}
	Sleep   5
	Go To   https://helfi.docker.sh/fi/user/1
	Sleep   5
	Wait Until Keyword Succeeds  3x  200ms  Click Button  //button[contains(text(), 'Accept all cookies')]
	Sleep   5
	Wait Until Keyword Succeeds  3x  200ms  Click Element  //li[contains(@class, 'menu-item menu-item__system-admin_content')]
	
Open First Item
	Sleep   5
	Wait Until Keyword Succeeds  5x  200ms  Click Element  //a[contains(@href, '/fi/hero-ilman-kuvaa-tasattu-keskelle')]
	Sleep   5
    Capture Page Screenshot