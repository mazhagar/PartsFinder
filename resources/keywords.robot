*** Settings ***
Library             Dialogs
Library             QWeb
Library             String


*** Variables ***
${PartsFinder}				//*[@id\="body-wrapper"]/div/div[2]/div/div[6]/div[2]/div/div/a[1]/img
${BROWSER}                  chrome
${Empty}		0.00


*** Keywords ***
Setup Browser
    Open Browser    about:blank    ${BROWSER}
    
	
End suite
    Close All Browsers
    Sleep    2

Appstate
	[Documentation]    Appstate handler
	[Arguments]        ${state}
	${state}=            Convert To Lowercase    ${state}
	Run Keyword If      '${state}' == 'in the swim discount pool supplies - swimming pool supply store'
	...               In The Swim Discount Pool Supplies - Swimming Pool Supply Store

In The Swim Discount Pool Supplies - Swimming Pool Supply Store
	GoTo    https://its-stg-itsstore.sparkred.com/
  WriteText               cortzuser\t
  WriteText               p0o!0pen\n
