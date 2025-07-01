*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/keywords.robot

*** Test Cases ***
Create New To Do And Verify Default Status
    [Documentation]    Create a new To Do and check its status defaults to Not Done
    Create New Task  Automation_Task1
   



