*** Settings ***
Resource          resource.robot

*** Test Cases ***

# UAT-Lab7-001
Open Form
    Open Browser To Form Page

Record Success
    Input FirstName       Somsong
    Input LastName    Sandee
    Input Destination    Europe
    Input Contactperson    Sodsai Sandee
    Input Relationship    Mother
    Input Email    somsong@kkumail.com
    Input Phone    081-111-1234
    Click SubmitButton
    Welcome Page Should Be Open Complete
    [Teardown]    Close Browser