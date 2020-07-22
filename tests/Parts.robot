*** Settings ***
Resource            ../resources/keywords.robot
Suite Setup          Setup Browser
Suite Teardown       End suite



*** Test Cases ***

PartsFinder    	   
	Appstate       	In The Swim Discount Pool Supplies - Swimming Pool Supply Store   
	ClickElement   	${PartsFinder}   
	VerifyText     	 Replacement Parts By Category   
	DropDown       	1. Category:   Cleaner Parts
	DropDown       	2. Brand:   Letro
	DropDown       	3. Model   Legend 4 Wheel 1996-Current
	VerifyText      Legend 4 Wheel 1996-Current
	LogScreenshot
	ClickText      	ADD TO CART	anchor=ZPEN6628	
	VerifyText	Your Shopping Cart     
	ClickText      	View Cart
	VerifyText	Shopping Cart
	CaptureIcon	//*[@id\="cart-mobile"]/tbody/tr[1]/td[1]/span/a/img
	${Item#}	GetText		//*[@id\="cart-mobile"]/tbody/tr[1]/td[3]
	LogScreenshot
