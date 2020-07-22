*** Settings ***
Resource            ../resources/keywords.robot
Suite Setup          Setup Browser
Suite Teardown       End suite



*** Test Cases ***

PartsFinder    	   
	Appstate       	In The Swim Discount Pool Supplies - Swimming Pool Supply Store   
	ClickElement   	${PartsFinder}   
	VerifyText     	SEARCH REPLACEMENT PARTS BY CATEGORY   
	DropDown       	1. Category:   Cleaner Parts
	DropDown       	2. Brand:   Letro
	DropDown       	3. Model   Legend 4 Wheel 1996-Current
	VerifyText     	LEGEND 4 WHEEL 1996-CURRENT   
	ClickText      	Add																		to cart     
	ClickText      	View						Cart (1)               
