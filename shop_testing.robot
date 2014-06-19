*** Settings ***
Library           Selenium2Library
Library           Dialogs
Library           string
Library           RandomLibrary

*** Variables ***
${name}           Test
${phone}          test
${width}          1280
${height}         1024
${price}          ${EMPTY}
${price after}    ${EMPTY}
${shipping25}     25
${shipping100}    100

*** Test Cases ***
multiple purchases
    Open browser    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/    browser=chrome
    click element    //*[@id="menu"]/li[5]/a/div
    click element    //*[@id="instock_tab_975"]/tbody/tr[1]/td[1]/a[1]/img
    page should contain element    //*[@id="instock_tab_975"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[2]/input
    click element    //*[@id="instock_tab_975"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[2]/input
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[2]/div/form/table[2]/tbody/tr/td[1]/a/img
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[2]/div/form/table[2]/tbody/tr/td[1]/a/img
    click link    //*[@id="menu"]/li[5]/ul/li[1]/a
    click element    //*[@id="instock_tab_949"]/tbody/tr[1]/td[1]/a[1]/img
    page should contain element    //*[@id="instock_tab_949"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[2]/input
    click element    //*[@id="instock_tab_949"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[2]/input
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[2]/td[1]/a
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[3]/td[1]/a
    input text    //*[@id="isfindedit"]    маска
    click button    //*[@id="issearchbut"]
    click element    //*[@id="instock_tab_1410"]/tbody/tr[1]/td[1]/a[1]/img
    click element    //*[@id="instock_tab_1410"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[2]/input
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[2]/td[1]/a
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[3]/td[1]/a
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[4]/td[1]/a
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[2]/td[3]/b[2]/a/span
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[3]/td[3]/b[2]/a/span
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[4]/td[3]/b[2]/a/span
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[2]/div/form/table[2]/tbody/tr/td[2]/input
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    page should contain element    //*[@id="errmessfirst_name"]
    page should contain element    //*[@id="errmessphone"]
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[1]/a/img
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[2]/td[3]/b[1]/a/span
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[3]/td[3]/b[1]/a/span
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[4]/td[3]/b[1]/a/span
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[2]/div/form/table[2]/tbody/tr/td[2]/input
    input text    id=first_name    ${name}
    input text    id=phone    ${phone}
    click element    //*[@id="List1"]
    click element    //*[@id="List1"]/option[2]
    click element    //*[@id="List2"]
    click element    //*[@id="List2"]/option[3]
    click element    //*[@id="selectcitynp"]
    click element    //*[@id="selectcitynp"]/option[275]
    input text    //*[@id="iscontenttabl"]/tbody/tr[3]/td/table/tbody/tr/td[2]/textarea    test
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[5]
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[4]
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[6]/td[2]/a/img
    close all browsers

Multiple payment method 1.1
    Open browser    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/    browser=chrome
    set window size    ${width}    ${height}
    input text    //*[@id="isfindedit"]    смазка
    click button    //*[@id="issearchbut"]
    click element    //*[@id="instock_tab_561"]/tbody/tr[1]/td[1]/a[1]/img
    ${price}=    Get Text    //*[@id="instock_tab_561"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[1]/strong[1]
    Log    ${price}
    click element    //*[@id="instock_tab_561"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[2]/input
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[2]/td[1]/a
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[2]/div/form/table[2]/tbody/tr/td[2]/input
    input text    name=first_name    test
    input text    name=phone    test
    select from list    //*[@id="List1"]    1d
    wait until element is visible    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    page should contain    Оплата будет произведена наличными курьеру во время доставки заказа. Пожалуйста постарайтесь подготовить необходимую сумму без сдачи. После получения товара Вы должны убедиться в том, что Вы получили именно Ваш заказ и отдать курьеру необходимую сумму
    Comment    page should contain    Вы выбрали курьерскую доставку по Киеву. В ближайшее время наш менеджер свяжется с Вами, чтобы уточнить все детали касательно доставки.
    ${price after}=    evaluate    int(${price}+${shipping25})
    Log    ${price after}
    page should contain    ${price after}
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[6]/td[2]/a/img
    Close all browsers

Multiple payment method 1.2
    Open browser    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/    browser=chrome
    set window size    ${width}    ${height}
    input text    //*[@id="isfindedit"]    смазка
    click button    //*[@id="issearchbut"]
    click element    //*[@id="instock_tab_561"]/tbody/tr[1]/td[1]/a[1]/img
    ${price}=    Get Text    //*[@id="instock_tab_561"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[1]/strong[1]
    Log    ${price}
    click element    //*[@id="instock_tab_561"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[2]/input
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[2]/td[1]/a
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[2]/div/form/table[2]/tbody/tr/td[2]/input
    input text    name=first_name    test
    input text    name=phone    test
    select from list    //*[@id="List1"]    6d
    wait until element is visible    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    page should contain    Оплата будет произведена наличными курьеру во время доставки заказа. Пожалуйста постарайтесь подготовить необходимую сумму без сдачи. После получения товара Вы должны убедиться в том, что Вы получили именно Ваш заказ и отдать курьеру необходимую сумму
    page should contain    Вы выбрали доставку на склад Новой почты \ . Заказ будет доставлен в течении 1-5 дней (в зависимости от города). В ближайшее время наш менеджер свяжется с Вами, чтобы уточнить все детали касательно доставки.
    ${price after}=    evaluate    int(${price}+${shipping25})
    Log    ${price after}
    page should contain    ${price after}
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[6]/td[2]/a/img
    Close all browsers

Multiple payment method 1.3
    Open browser    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/    browser=chrome
    set window size    ${width}    ${height}
    input text    //*[@id="isfindedit"]    смазка
    click button    //*[@id="issearchbut"]
    click element    //*[@id="instock_tab_561"]/tbody/tr[1]/td[1]/a[1]/img
    ${price}=    Get Text    //*[@id="instock_tab_561"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[1]/strong[1]
    Log    ${price}
    click element    //*[@id="instock_tab_561"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[2]/input
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[2]/td[1]/a
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[2]/div/form/table[2]/tbody/tr/td[2]/input
    input text    name=first_name    test
    input text    name=phone    test
    select from list    //*[@id="List1"]    2d
    wait until element is visible    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    page should contain    Оплата будет произведена наличными курьеру во время доставки заказа. Пожалуйста постарайтесь подготовить необходимую сумму без сдачи. После получения товара Вы должны убедиться в том, что Вы получили именно Ваш заказ и отдать курьеру необходимую сумму
    page should contain    Вы выбрали доставку на склад компании-перевозчика (Автолюкс, Интайм и др.). Заказ будет доставлен в течении 1-5 дней (в зависимости от города). В ближайшее время наш менеджер свяжется с Вами, чтобы уточнить все детали касательно доставки.
    ${price after}=    evaluate    int(${price}+${shipping25})
    Log    ${price after}
    page should contain    ${price after}
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[6]/td[2]/a/img
    Close all browsers

Multiple payment method 1.4
    Open browser    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/    browser=chrome
    set window size    ${width}    ${height}
    input text    //*[@id="isfindedit"]    смазка
    click button    //*[@id="issearchbut"]
    click element    //*[@id="instock_tab_561"]/tbody/tr[1]/td[1]/a[1]/img
    ${price}=    Get Text    //*[@id="instock_tab_561"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[1]/strong[1]
    Log    ${price}
    click element    //*[@id="instock_tab_561"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[2]/input
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[2]/td[1]/a
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[2]/div/form/table[2]/tbody/tr/td[2]/input
    input text    name=first_name    test
    input text    name=phone    test
    select from list    //*[@id="List1"]    3d
    wait until element is visible    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    page should contain    Оплата будет произведена наличными курьеру во время доставки заказа. Пожалуйста постарайтесь подготовить необходимую сумму без сдачи. После получения товара Вы должны убедиться в том, что Вы получили именно Ваш заказ и отдать курьеру необходимую сумму
    page should contain    Вы выбрали доставку курьером по адресу: Заказ будет доставлен в течении 1-5 дней (в зависимости от города). В ближайшее время наш менеджер свяжется с Вами, чтобы уточнить все детали касательно доставки.
    ${price after}=    evaluate    int(${price}+${shipping100})
    Log    ${price after}
    page should contain    ${price after}
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[6]/td[2]/a/img
    Close all browsers

Multiple payment method 1.5
    Open browser    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/    browser=chrome
    set window size    ${width}    ${height}
    input text    //*[@id="isfindedit"]    смазка
    click button    //*[@id="issearchbut"]
    click element    //*[@id="instock_tab_561"]/tbody/tr[1]/td[1]/a[1]/img
    ${price}=    Get Text    //*[@id="instock_tab_561"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[1]/strong[1]
    Log    ${price}
    click element    //*[@id="instock_tab_561"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[2]/input
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[2]/td[1]/a
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[2]/div/form/table[2]/tbody/tr/td[2]/input
    input text    name=first_name    test
    input text    name=phone    test
    select from list    //*[@id="List1"]    4d
    wait until element is visible    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    page should contain    Вы выбрали доставку через УкрПочту по адресу
    page should contain    Оплата будет произведена наличными курьеру во время доставки заказа. Пожалуйста постарайтесь подготовить необходимую сумму без сдачи. После получения товара Вы должны убедиться в том, что Вы получили именно Ваш заказ и отдать курьеру необходимую сумму
    page should contain    Заказ будет доставлен в течении 3-7 дней (в зависимости от города). В ближайшее время наш менеджер свяжется с Вами, чтобы уточнить все детали касательно доставки.
    ${price after}=    evaluate    int(${price}+${shipping25})
    Log    ${price after}
    page should contain    ${price after}
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[6]/td[2]/a/img
    Close all browsers

Multiple payment method 2.3
    Open browser    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/    browser=chrome
    set window size    ${width}    ${height}
    input text    //*[@id="isfindedit"]    смазка
    click button    //*[@id="issearchbut"]
    click element    //*[@id="instock_tab_561"]/tbody/tr[1]/td[1]/a[1]/img
    ${price}=    Get Text    //*[@id="instock_tab_561"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[1]/strong[1]
    Log    ${price}
    click element    //*[@id="instock_tab_561"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[2]/input
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[2]/td[1]/a
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[2]/div/form/table[2]/tbody/tr/td[2]/input
    input text    name=first_name    test
    input text    name=phone    test
    select from list    //*[@id="List1"]    4d
    select from list    //*[@id="List2"]    4
    wait until element is visible    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    page should contain    В ближайшее время с Вами свяжется наш менеджер и проинструктирует по поводу оплаты банковской картой
    ${price after}=    evaluate    int(${price}+${shipping25})
    Log    ${price after}
    page should contain    ${price after}
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[6]/td[2]/a/img
    Close all browsers

filter
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

exclusive balls
    Open Browser    http://www.isex.com.ua/    browser=chrome
    click element    //*[@id="menu"]/li[17]/a/div
    click element    //*[@id="menu"]/li[17]/ul/li[1]/a
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[4]/div/table/tbody/tr/td[1]/span/a[3]
    page should contain element    //*[@id="instock_tab_3670"]/tbody/tr[1]/td[2]/div[1]/b/a
    page should contain element    //*[@id="instock_tab_10689"]/tbody/tr[1]/td[2]/div[1]/b/a
    page should contain element    //*[@id="instock_tab_8884"]/tbody/tr[1]/td[2]/div[1]/b/a
    page should contain element    //*[@id="instock_tab_11822"]/tbody/tr[1]/td[2]/div[1]/b/a
    page should contain element    //*[@id="instock_tab_13225"]/tbody/tr[1]/td[2]/div[1]/b/a
    page should contain element    //*[@id="instock_tab_12704"]/tbody/tr[1]/td[2]/div[1]/b/a
    get count    Эксклюзивные вагинальные шарики    вагинальные шарики

comment
    Open Browser    http://www.isex.com.ua/    browser=chrome
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/div[3]/div/ul/li[1]/a
    page should contain link    http://www.isex.com.ua/reviews.html
    page should contain    Отзывы о магазине
    page should contain element    //*[@id="comm_name"]
    page should contain element    //*[@id="comm_email"]
    page should contain element    //*[@id="comm_text"]
    page should contain element    //*[@id="reviewsblock"]/div/div[2]/form/div[2]/input
    Close all browsers

english support
    Open Browser    http://www.isex.com.ua/    browser=chrome
    click image    http://www.isex.com.ua/images/ensupport.png
    page should contain    English support    loglevel=INFO
    page should contain    We provide english speaking support via email only. Please do not hesitate to contact us    loglevel=INFO
    page should contain link    help@isex.com.ua    \    loglevel=INFO
    Close all browsers

russian support
    Open Browser    http://www.isex.com.ua/    browser=chrome
    click link    http://www.isex.com.ua/help.html
    page should contain    Помощь и контакты    loglevel=INFO
    page should contain    Мы постарались сделать процесс выбора и доставки товара простым и быстрым. Но мы работаем над этим дальше, ежедневно улучшая качество сервиса. Мы стараемся учитывать все ваши пожелания и критику. Если у вас есть таковые, или вы хотите задать любой вопрос – мы с радостью выслушаем вас. \    loglevel=INFO
    page should contain    3610336    loglevel=INFO
    page should contain    1650640    loglevel=INFO
    page should contain    579508697    loglevel=INFO
    page should contain link    help@isex.com.ua    \    loglevel=INFO
    page should contain    Понедельник-Пятница    loglevel=INFO
    page should contain    Заказы сделанные на выходных обрабатываются в понедельник.    loglevel=INFO
    page should contain    Пожалуйста, не стесняйтесь задавать нам любые вопросы. Мы с радостью ответим на них.    loglevel=INFO
    Close all browsers

exclusive vibrators
    Open Browser    http://www.isex.com.ua/    browser=chrome
    click element    //*[@id="menu"]/li[1]/a/div
    click element    //*[@id="menu"]/li[1]/ul/li[1]/a
    page should contain    Эксклюзивные вибраторы - это не просто секс-игрушки
    Click element    name=order
    page should contain element    //*[@id="instock_tab_4265"]/tbody/tr[1]/td[1]/div[2]
    page should contain element    //*[@id="instock_tab_8891"]/tbody/tr[1]/td[1]/a[1]/img
    page should contain element    //*[@id="instock_tab_8918"]/tbody/tr[1]/td[1]/a[1]/img
    page should contain element    //*[@id="instock_tab_3675"]/tbody/tr[1]/td[1]/a[1]/img
    page should contain element    //*[@id="instock_tab_7965"]/tbody/tr[1]/td[1]/a[1]/img
    page should contain element    //*[@id="instock_tab_11112"]/tbody/tr[1]/td[1]/a[1]/img
    page should contain element    //*[@id="instock_tab_10698"]/tbody/tr[1]/td[1]/a[1]/img
    close all browsers
