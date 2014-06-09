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
    Input text    id=email    koganqog@gmail.com
    click element    //*[@id="List1"]
    click element    //*[@id="List1"]/option[4]
    click element    //*[@id="List2"]
    click element    //*[@id="List2"]/option[3]
    Input text    name=cust_new_addr    Киев, ул. Глывоческая 40-х
    Click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    Click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[6]/td[2]/a/img
    Close all browsers
    Open Browser    https://mail.google.com    browser=googlechrome
    input text    name=Email    koganqog
    input text    name=Passwd    Asd!08201455
    click button    name=signIn
    input text    id=gbqfq    isex
    page should contain element    name=iSex.com.ua
    Close all browsers

filter
    Create webdriver    Chrome
    Open Browser    http://www.isex.com.ua/    browser=chrome
    click element    //*[@id="menu"]/li[2]/a/div
    drag and drop by offset    id=leftBegun_filter_trackbar_-1    100    0
    drag and drop by offset    id=leftBegun_filter_trackbar_11    25    0
    select checkbox    name=ftv_id_79
    select checkbox    name=ftv_id_130
    select checkbox    name=ftv_id_21
    Click image    //*[@id="filters"]/div[1]/input
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[2]/div/center/h1    loglevel=INFO
    page should contain link    http://www.isex.com.ua/dildos.html    loglevel=INFO
    click link    http://www.isex.com.ua/dildos.html
    Close all browsers
