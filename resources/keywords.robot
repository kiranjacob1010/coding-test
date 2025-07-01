*** Settings ***
Resource          ../resources/locators.robot

* Variables *
${BaseURL}    http://localhost:3000/tasks
${BROWSER}        Chrome

* Keywords *

Create New Task
    [Arguments]     ${task}
    Open Browser    ${BaseURL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    ${NEWBUTTON}    3s
    Click Element    ${NEWBUTTON}
    Wait Until Page Contains Element    xpath=//input[@name='title']    5s
    Input Text      xpath=//input[@name='title']  ${task}
    Click Element   xpath=//button[@class='w-full bg-blue-500 text-white py-2 px-4 rounded-md hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-400 transition-colors duration-300']

