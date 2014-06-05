*** Settings ***
Library           Selenium2Library

*** Test Cases ***
purchase
    Open browser    http://www.isex.com.ua/    browser=chrome
    Input text    id=isfindedit    вибратор
    Click button    id=issearchbut
    Click image    //*[@id="instock_tab_11811"]/tbody/tr[1]/td[1]/a[1]/img
    Click image    //*[@id="instock_tab_11811"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[2]/input
    page should contain    Triple Play Vibrator Waterproof Purple
    page should contain    1939
    Click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[2]/div/form/table[2]/tbody/tr/td[2]/input
    Input text    id=first_name    Губолом
    Input text    id=phone    6666666
    click element    //*[@id="List1"]
    click element    //*[@id="List1"]/option[4]
    click element    //*[@id="List2"]
    click element    //*[@id="List2"]/option[3]
    Input text    name=cust_new_addr    Киев, ул. Глывоческая 40-х
    Click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    Click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[6]/td[2]/a/img
    Close browser
