*** Settings ***
Library           Selenium2Library
Library           String
Library           ../../../../../Python27/Lib/AutoItLibrary-1.1/setup.py

*** Variables ***
${name}           Autotest
${phone}          Autotest
${width}          1280
${height}         1024
${price}          ${EMPTY}
${price after}    ${EMPTY}
${shipping25}     25
${shipping100}    100
${time}           ${EMPTY}
${shipping0}      0
${shipping}       ${EMPTY}

*** Test Cases ***
multiple purchases
    Open browser    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/    browser=chrome
    click link    Женское белье
    click element    //a [@href='http://www.isex.kiev.ua/product7095.html']
    select from list    name=sizecolor    9095
    click element    //input [@src='http://www.isex.kiev.ua/images/is_pdtobacketnew.gif']
    page should contain    Цвет: красный
    goto    http://www.isex.kiev.ua/
    input text    //*[@id="isfindedit"]    маска
    click button    //*[@id="issearchbut"]
    click element    //*[@id="instock_tab_1410"]/tbody/tr[1]/td[1]/a[1]/img
    click element    //*[@id="instock_tab_1410"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[2]/input
    page should contain    Цвет: красный
    page should contain    Чулки Opaque highs with satin bow (Размер: One size, Цвет: красный)
    page should contain    Латексная маска палача без разрезов
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[2]/td[3]/b[2]/a/span
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[2]/td[3]/b[1]/a/span
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[3]/td[3]/b[2]/a/span
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[2]/div/form/table[2]/tbody/tr/td[2]/input
    page should contain element    //*[@id="errmessfirst_name"]
    page should contain element    //*[@id="errmessphone"]
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[1]/a/img
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[2]/td[3]/b[2]/a/span
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[3]/td[3]/b[2]/a/span
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[3]/td[3]/b[1]/a/span
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

Shipping method 1
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
    input text    name=first_name    ${name}
    input text    name=phone    ${phone}
    select from list    //*[@id="List1"]    1d
    ${time}=    get time    time
    input text    //*[@id="iscontenttabl"]/tbody/tr[3]/td/table/tbody/tr/td[2]/textarea    ${time}
    wait until element is visible    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    page should contain    Оплата будет произведена наличными курьеру во время доставки заказа. Пожалуйста постарайтесь подготовить необходимую сумму без сдачи. После получения товара Вы должны убедиться в том, что Вы получили именно Ваш заказ и отдать курьеру необходимую сумму
    page should contain    Вы выбрали курьерскую доставку по Киеву. В ближайшее время наш менеджер свяжется с Вами, чтобы уточнить все детали касательно доставки.
    ${price after}=    evaluate    int(${price}+${shipping25})
    Log    ${price after}
    page should contain    ${price after}
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[6]/td[2]/a/img
    Close all browsers

Shipping method 2
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
    input text    name=first_name    ${name}
    input text    name=phone    ${phone}
    select from list    //*[@id="List1"]    6d
    ${time}=    get time    time
    input text    //*[@id="iscontenttabl"]/tbody/tr[3]/td/table/tbody/tr/td[2]/textarea    ${time}
    wait until element is visible    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    page should contain    Вы выбрали доставку на склад Новой почты \ . Заказ будет доставлен в течении 1-5 дней (в зависимости от города). В ближайшее время наш менеджер свяжется с Вами, чтобы уточнить все детали касательно доставки.
    page should contain    Для перечисления средств на банковскую карточку вам необходимо посетить любое отделение Приватбанка, также вы можете перечислить деньги с помощью системы Приват24. При оформлении платежа укажите следующую информацию:
    page should contain    Номер карточки: 1111 2222 3333 4444
    ${price after}=    evaluate    int(${price}+${shipping25})
    Log    ${price after}
    page should contain    ${price after}
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[6]/td[2]/a/img
    Close all browsers

Shipping method 3
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
    input text    name=first_name    ${name}
    input text    name=phone    ${phone}
    select from list    //*[@id="List1"]    2d
    ${time}=    get time    time
    input text    //*[@id="iscontenttabl"]/tbody/tr[3]/td/table/tbody/tr/td[2]/textarea    ${time}
    wait until element is visible    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    Execute javascript    window.scrollTo(0,10000);
    sleep    1
    click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    page should contain    Для перечисления средств на банковскую карточку вам необходимо посетить любое отделение Приватбанка, также вы можете перечислить деньги с помощью системы Приват24. При оформлении платежа укажите следующую информацию:
    page should contain    Номер карточки: 1111 2222 3333 4444
    page should contain    Вы выбрали доставку на склад компании-перевозчика (Автолюкс, Интайм и др.). Заказ будет доставлен в течении 1-5 дней (в зависимости от города). В ближайшее время наш менеджер свяжется с Вами, чтобы уточнить все детали касательно доставки.
    ${price after}=    evaluate    int(${price}+${shipping25})
    Log    ${price after}
    page should contain    ${price after}
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[6]/td[2]/a/img
    Close all browsers

Shipping method 4
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
    input text    name=first_name    ${name}
    input text    name=phone    ${phone}
    select from list    //*[@id="List1"]    3d
    ${time}=    get time    time
    input text    //*[@id="iscontenttabl"]/tbody/tr[3]/td/table/tbody/tr/td[2]/textarea    ${time}
    wait until element is visible    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    page should contain    Для перечисления средств на банковскую карточку вам необходимо посетить любое отделение Приватбанка, также вы можете перечислить деньги с помощью системы Приват24. При оформлении платежа укажите следующую информацию:
    page should contain    Номер карточки: 1111 2222 3333 4444
    page should contain    Вы выбрали доставку курьером по адресу: Заказ будет доставлен в течении 1-5 дней (в зависимости от города). В ближайшее время наш менеджер свяжется с Вами, чтобы уточнить все детали касательно доставки.
    ${price after}=    evaluate    int(${price}+${shipping100})
    Log    ${price after}
    page should contain    ${price after}
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[6]/td[2]/a/img
    Close all browsers

Shipping method 5
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
    input text    name=first_name    ${name}
    input text    name=phone    ${phone}
    select from list    //*[@id="List1"]    4d
    Comment    select from list    //*[@id="List2"]    1
    ${time}=    get time    time
    input text    //*[@id="iscontenttabl"]/tbody/tr[3]/td/table/tbody/tr/td[2]/textarea    ${time}
    wait until element is visible    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    page should contain    Вы выбрали доставку через УкрПочту по адресу
    page should contain    Для перечисления средств на банковскую карточку вам необходимо посетить любое отделение Приватбанка, также вы можете перечислить деньги с помощью системы Приват24. При оформлении платежа укажите следующую информацию:
    page should contain    Номер карточки: 1111 2222 3333 4444
    page should contain    Заказ будет доставлен в течении 3-7 дней (в зависимости от города). В ближайшее время наш менеджер свяжется с Вами, чтобы уточнить все детали касательно доставки.
    ${price after}=    evaluate    int(${price}+${shipping25})
    Log    ${price after}
    page should contain    ${price after}
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[6]/td[2]/a/img
    Close all browsers

Payment method 1
    Open browser    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/    browser=chrome
    set window size    ${width}    ${height}
    input text    //*[@id="isfindedit"]    смазка
    click button    //*[@id="issearchbut"]
    click element    //*[@id="instock_tab_561"]/tbody/tr[1]/td[1]/a[1]/img
    ${text}=    get text    //*[@id="instock_tab_561"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[1]/strong[1]
    Comment    ${price}=    Get Text    //*[@id="instock_tab_561"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[1]/strong[1]
    set global variable    ${price}    ${text}
    click element    //*[@id="instock_tab_561"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[2]/input
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[2]/td[1]/a
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[2]/div/form/table[2]/tbody/tr/td[2]/input
    input text    name=first_name    ${name}
    input text    name=phone    ${phone}
    select from list    //*[@id="List1"]    1d
    select from list    //*[@id="List2"]    1
    ${time}=    get time    time
    input text    //*[@id="iscontenttabl"]/tbody/tr[3]/td/table/tbody/tr/td[2]/textarea    ${time}
    wait until element is visible    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    page should contain    Оплата будет произведена наличными курьеру во время доставки заказа. Пожалуйста постарайтесь подготовить необходимую сумму без сдачи. После получения товара Вы должны убедиться в том, что Вы получили именно Ваш заказ и отдать курьеру необходимую сумму
    Comment    Run keyword if    ${price} > 300    Close all browsers
    Comment    Run keyword if    ${price} < 300
    log    ${shipping}
    Comment    ${shipping}=    Set variable if    ${price}>300    0
    Comment    ${shipping}=    Set variable if    ${price}<300    25
    ${price after}=    evaluate    (${price} + ${shipping25})
    Log    ${price after}
    page should contain    ${price after}
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[6]/td[2]/a/img
    Close all browsers

Payment method 2
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
    input text    name=first_name    ${name}
    input text    name=phone    ${phone}
    select from list    //*[@id="List1"]    1d
    select from list    //*[@id="List2"]    2
    ${time}=    get time    time
    input text    //*[@id="iscontenttabl"]/tbody/tr[3]/td/table/tbody/tr/td[2]/textarea    ${time}
    wait until element is visible    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    page should contain    Для перечисления средств на банковскую карточку вам необходимо посетить любое отделение Приватбанка, также вы можете перечислить деньги с помощью системы Приват24. При оформлении платежа укажите следующую информацию:
    page should contain    Номер карточки: 1111 2222 3333 4444
    ${price after}=    evaluate    int(${price}+${shipping25})
    Log    ${price after}
    Comment    page should contain    ${price after}
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[6]/td[2]/a/img
    Close all browsers

Payment method 3
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
    input text    name=first_name    ${name}
    input text    name=phone    ${phone}
    select from list    //*[@id="List1"]    1d
    select from list    //*[@id="List2"]    4
    ${time}=    get time    time
    input text    //*[@id="iscontenttabl"]/tbody/tr[3]/td/table/tbody/tr/td[2]/textarea    ${time}
    wait until element is visible    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    page should contain    В ближайшее время с Вами свяжется наш менеджер и проинструктирует по поводу оплаты банковской картой
    ${price after}=    evaluate    int(${price}+${shipping25})
    Log    ${price after}
    Comment    page should contain    ${price after}
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[6]/td[2]/a/img
    Close all browsers

Payment method 4
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
    input text    name=first_name    ${name}
    input text    name=phone    ${phone}
    select from list    //*[@id="List1"]    6d
    select from list    //*[@id="List2"]    6
    ${time}=    get time    time
    input text    //*[@id="iscontenttabl"]/tbody/tr[3]/td/table/tbody/tr/td[2]/textarea    ${time}
    wait until element is visible    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    page should contain    Вы выбрали оплату наложеным платежем. В ближайшее время наш менеджер свяжется с Вами, чтобы уточнить все детали касательно доставки.
    page should contain    Вы выбрали доставку на склад Новой почты \ . Заказ будет доставлен в течении 1-5 дней (в зависимости от города). В ближайшее время наш менеджер свяжется с Вами, чтобы уточнить все детали касательно доставки.
    ${price after}=    evaluate    int(${price}+${shipping25})
    Log    ${price after}
    Comment    page should contain    ${price after}
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[6]/td[2]/a/img
    Close all browsers

category verifying
    Open Browser    http://www.isex.com.ua/    browser=chrome
    click element    //*[@id="menu"]/li[1]/a/div
    xpath should match x times    //input[@type='image' and contains(@src,'is_buybutton.gif')]    10
    click element    //*[@id="instock_tab_95"]/tbody/tr[1]/td[1]/div/a/img
    wait until element is visible    //*[@id="hoverNav"]
    page should contain element    //*[@id="hoverNav"]
    page should contain image    //*[@id="lightboxImage"]
    click element    //*[@id="bottomNavClose"]/img
    sleep    0.4
    click element    //*[@id="menu"]/li[6]/a/div
    xpath should match x times    //input[@type='image' and contains(@src,'is_buybutton.gif')]    10
    click element    //*[@id="instock_tab_10173"]/tbody/tr[1]/td[1]/div/a/img
    wait until element is visible    //*[@id="hoverNav"]
    page should contain element    //*[@id="hoverNav"]
    click element    //*[@id="bottomNavClose"]/img
    sleep    0.4
    click element    //*[@id="menu"]/li[18]/a/div
    page should not contain element    //*[@id="instock_tab_5928"]/tbody/tr[1]/td[1]/a[1]/img
    page should not contain element    //*[@id="instock_tab_12291"]/tbody/tr[1]/td[1]/a[1]/img
    click link    все
    Execute javascript    window.scrollTo(0,5000);
    wait until page contains element    //*[@id="instock_tab_5928"]/tbody/tr[1]/td[1]/a[1]/img
    Execute javascript    window.scrollTo(0,5000);
    page should contain element    //*[@id="instock_tab_13014"]/tbody/tr[1]/td[1]/a[1]/img
    Execute javascript    window.scrollTo(0,5000);
    page should contain element    //*[@id="instock_tab_5928"]/tbody/tr[1]/td[1]/a[1]/img
    Execute javascript    window.scrollTo(0,10000);
    wait until page contains element    //*[@id="instock_tab_12291"]/tbody/tr[1]/td[1]/a[1]/img
    page should contain element    //*[@id="instock_tab_12291"]/tbody/tr[1]/td[1]/a[1]/img
    Execute javascript    window.scrollTo(0,5000);
    page should contain element    //*[@id="instock_tab_10641"]/tbody/tr[1]/td[1]/a[1]/img
    close all browsers

Continuously loading
    Open Browser    http://www.isex.com.ua/    browser=chrome
    input text    id=isfindedit    Вибратор
    Click button    //*[@id="issearchbut"]
    xpath should match x times    //input[@type='image' and contains(@src,'is_buybutton.gif')]    10
    Page should not contain    //*[@id="instock_tab_11819"]/tbody/tr[1]/td[1]/a[1]/img
    Page should not contain    //*[@id="instock_tab_11960"]/tbody/tr[1]/td[1]/a[1]/img
    Page should not contain    //*[@id="instock_tab_14569"]/tbody/tr[1]/td[1]/a[1]/img
    Page should not contain    //*[@id="instock_tab_12675"]/tbody/tr[1]/td[1]/a[1]/img
    Page should not contain    //*[@id="instock_tab_10950"]/tbody/tr[1]/td[1]/a[1]/img
    Page should not contain    //*[@id="instock_tab_5358"]/tbody/tr[1]/td[1]/a[1]/img
    Page should not contain    //*[@id="instock_tab_10738"]/tbody/tr[1]/td[1]/a[1]/img
    Page should not contain    //*[@id="instock_tab_12937"]/tbody/tr[1]/td[1]/a[1]/img
    click link    все
    Execute javascript    window.scrollTo(0,10000);
    wait until page contains element    //*[@id="instock_tab_11819"]/tbody/tr[1]/td[1]/a[1]/img
    Execute javascript    window.scrollTo(0,10000);
    wait until page contains element    //*[@id="instock_tab_11960"]/tbody/tr[1]/td[1]/a[1]/img
    Execute javascript    window.scrollTo(0,10000);
    wait until page contains element    //*[@id="instock_tab_14569"]/tbody/tr[1]/td[1]/a[1]/img
    Execute javascript    window.scrollTo(0,10000);
    sleep    2
    wait until page contains element    //*[@id="instock_tab_12675"]/tbody/tr[1]/td[1]/a[1]/img
    Execute javascript    window.scrollTo(0,10000);
    sleep    2
    wait until page contains element    //*[@id="instock_tab_10950"]/tbody/tr[1]/td[1]/a[1]/img
    Execute javascript    window.scrollTo(0,10000);
    sleep    2
    wait until page contains element    //*[@id="instock_tab_5358"]/tbody/tr[1]/td[1]/a[1]/img
    Execute javascript    window.scrollTo(0,10000);
    wait until page contains element    //*[@id="instock_tab_10738"]/tbody/tr[1]/td[1]/a[1]/img
    Execute javascript    window.scrollTo(0,15000);
    sleep    2
    Execute javascript    window.scrollTo(0,15000);
    wait until page contains element    //*[@id="instock_tab_12937"]/tbody/tr[1]/td[1]/a[1]/img
    close all browsers

Few pictures for goods
    Open Browser    http://www.isex.com.ua/    browser=chrome
    set window size    ${width}    ${height}
    click element    //*[@id="menu"]/li[2]/a/div
    click element    //*[@id="menu"]/li[2]/ul/li[1]/a
    click element    //*[@id="instock_tab_6845"]/tbody/tr[1]/td[1]/a[1]/img
    click element    //*[@id="light_id"]
    wait until element is visible    //*[@id="hoverNav"]
    page should contain element    //*[@id="hoverNav"]
    page should contain image    http://www.isex.com.ua/products_pictures/resized/06845-2.jpg-500-200.jpg
    click image    //*[@id="bottomNavClose"]/img
    sleep    0.4
    click element    //*[@id="instock_tab_6845"]/tbody/tr[3]/td[1]/div[2]/div/ul/li[6]/a/img
    click element    //*[@id="light_id"]
    wait until element is visible    //*[@id="hoverNav"]
    page should contain element    //*[@id="hoverNav"]
    page should contain image    http://www.isex.com.ua/products_pictures/resized/06845-4.jpg-240-600.jpg
    click image    //*[@id="bottomNavClose"]/img
    sleep    0.4
    page should contain element    //*[@id="related"]
    page should contain element    //*[@id="related"]/div/ul/li[5]/a/div
    page should contain element    //*[@id="related"]/div/ul/li[6]/a/div
    page should contain element    //*[@id="related"]/div/ul/li[7]/a/div
    click element    //*[@id="related"]/a[2]
    sleep    1
    page should contain element    //*[@id="related"]/div/ul/li[9]/a/div
    page should contain element    //*[@id="related"]/div/ul/li[10]/a/div
    page should contain element    //*[@id="related"]/div/ul/li[12]/a/div
    click element    //*[@id="related"]/a[1]
    sleep    1
    page should contain element    //*[@id="recommend"]
    page should contain element    //*[@id="recommend"]/div/ul/li[5]/a/div
    page should contain element    //*[@id="recommend"]/div/ul/li[8]/a/div
    click element    //*[@id="recommend"]/a[2]
    sleep    1
    page should contain element    //*[@id="recommend"]/div/ul/li[11]/a/div
    page should contain element    //*[@id="recommend"]/div/ul/li[12]/a/div
    click element    //*[@id="recommend"]/a[1]
    sleep    1
    Comment    Close all browsers

Watched
    Open Browser    http://www.isex.com.ua/    browser=chrome
    set window size    ${width}    ${height}
    click element    //*[@id="menu"]/li[10]/a/div
    click element    //*[@id="menu"]/li[10]/ul/li[3]/a
    click element    //*[@id="instock_tab_5262"]/tbody/tr[1]/td[1]/a[1]/img
    click element    //*[@id="light_id"]
    wait until element is visible    //*[@id="hoverNav"]
    page should contain element    //*[@id="hoverNav"]
    page should contain image    http://www.isex.com.ua/products_pictures/resized/29100391700.jpg-600-589.jpg
    click image    //*[@id="bottomNavClose"]/img
    sleep    0.4
    click element    //*[@id="related"]/div/ul/li[8]/a/div
    click element    //*[@id="recommend"]/div/ul/li[6]/a/div
    click element    //*[@id="related"]/div/ul/li[7]/a/div
    click element    //*[@id="related"]/div/ul/li[5]/a/div
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[3]/div[1]/div[2]/ul/li[3]/a
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[3]/div[1]/div[2]/ul/li[4]/a
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[3]/div[1]/div[1]
    sleep    1
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[3]/div[1]/div[2]/ul/li[5]
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[3]/div[1]/div[2]/ul/li[6]/a/img
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[3]/div[1]/div[3]
    sleep    1

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
    ${count}=    get count    //*[@id="scrdown"]    //*[@id="*"]/tbody
    log    ${count}
    close all browsers

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
    page should contain element    //*[@id="instock_tab_7965"]/tbody/tr[1]/td[1]/a[1]/img
    page should contain element    //*[@id="instock_tab_11112"]/tbody/tr[1]/td[1]/a[1]/img
    page should contain element    //*[@id="instock_tab_10698"]/tbody/tr[1]/td[1]/a[1]/img
    close all browsers

admin
    Open browser    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/admin.php    browser=chrome
    set window size    ${width}    ${height}
    input text    name=login    admin
    input password    name=password    111
    click element    //input [@type='submit' and \ @value="Login"]
    click element    //a [@href='admin.php?dpt=catalog' and @class='mainsection']
    page should contain element    //a [@href="admin.php?dpt=catalog&sub=products_categories&categoryID=0" and @class='bold']
    click element    //a [@href="admin.php?dpt=catalog&sub=products_categories&categoryID=63"]
    Wait until element is visible    //a [@href="javascript:open_window('category.php?w=-1',500,700);"]
    click element    //a [@href="javascript:open_window('category.php?w=-1',500,700);"]
    sleep    1
    select window    title=Категории
    wait until element is visible    //select [@name="parent"]
    select from list    //select [@name="parent"]    63
    input text    name=name    autotest
    select checkbox    name=enabled
    input text    name=desc    Automate regression testing description
    input text    name=keywords    Вибраторы, эксклюзивные вибраторы
    click element    //input [@type='submit' and @value='Сохранить']
    click element    //a [@href='javascript:window.close();']
    sleep    1
    select window    title=iSex-kiev.com.ua
    click link    Эксклюзивные вибраторы
    click link    autotest
    ${var0}=    get location
    log    ${var0}
    ${position}=    Get substring    ${var0}    -3
    click element    //a [@href="javascript:open_window('products.php',550,600);"]
    sleep    1
    select window    title=Товары
    Select from list    //select [@name='categoryID']    ${position}
    input text    name=name    Black Overlord
    input text    name=inprice_0    666
    select from list    name=incash_0    2
    input text    name=spprice_0    1337
    select from list    name=instock    100
    select from list    name=type_diller    8
    click element    //input [@type='submit' and @value='Сохранить']
    select window    title=iSex-kiev.com.ua
    page should contain    Black Overlord
    page should contain element    //input [@type='text' and@value='1337']
    page should contain element    //input [@type='text' and@value='666']
    page should contain    Loveyourself
    Click element    //img [@src='images/backend/button_delete.gif']
    sleep    1
    confirm action
    page should not contain    Black Overlord
    page should not contain element    //input [@type='text' and@value='1337']
    page should not contain element    //input [@type='text' and@value='666']
    page should not contain    Loveyourself
    click element    //a [@class='small' and @href="javascript:open_window('category.php?c_id=${position}&w=63',500,700);"]
    select window    title=Категории
    sleep    1
    click element    //input [@type='button' and @value='Удалить']
    confirm action
    select window    title=iSex-kiev.com.ua
    sleep    2
    page should not contain    autotest
    Close all browsers

Order changing and canceling
    Open browser    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/    browser=chrome
    set window size    ${width}    ${height}
    input text    //*[@id="isfindedit"]    смазка
    click button    //*[@id="issearchbut"]
    click element    //*[@id="instock_tab_561"]/tbody/tr[1]/td[1]/a[1]/img
    click element    //*[@id="instock_tab_561"]/tbody/tr[3]/td[2]/form/table/tbody/tr/td[2]/input
    page should contain element    //*[@id="iscontenttabl"]/tbody/tr[2]/td/table/tbody/tr[2]/td[1]/a
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[2]/div/form/table[2]/tbody/tr/td[2]/input
    input text    name=first_name    ${name}
    input text    name=phone    ${phone}
    select from list    //*[@id="List1"]    1d
    wait until element is visible    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    click image    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div[1]/div/form/table[4]/tbody/tr/td[2]/input
    ${order.pre}=    get text    //h1 [@class='isfont17']
    ${order.after}=    get substring    ${order.pre}    12    24
    click element    //*[@id="iscontenttabl"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/div/table/tbody/tr[6]/td[2]/a/img
    Go to    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/reports.php
    input text    name=login    admin
    input password    name=password    111
    click element    //input [@type='submit' and \ @value="Login"]
    ${dd}=    Get time
    ${date}=    get Substring    ${dd}    0    10
    input text    name=StartAnotherDate    ${date}
    input text    name=search    ${order.after}
    click element    //input [@type='submit' and @value='показать']
    page should contain    ${order.after}
    click element    //td [@align='center' and @class='celss' and @width='75']
    input text    name=addnewprod    7839
    click element    //input [@type='submit' and @value='Добавить']
    input text    name=countprod_1_07839    5
    click element    //input [@type='submit' and @value='Сохранить']
    page should contain    добавление товара: товар <07839> добавлен в заказ
    page should contain    изменено количества товара с 1 шт на 5 шт 07839
    textfield value should be    //input [@type='text' and @name='countprod_1_07839']    5
    ${order.litle.pre}=    get location
    ${order.litle.after}=    get substring    ${order.litle.pre}    -5
    ${goods.additional}=    get value    //input [@type='hidden' and @name='orderunikid_1_07839']
    click element    //a [@href="javascript:confirmDelete('','Удалить ?','reports.php?page=orders&action=edit&id=${order.litle.after}&proddel=07839&pcodeid=0&unkid=${goods.additional}');"]
    confirm action
    page should contain    удаление товара: товар <07839> удален из заказа
    select from list    name=status    11
    click element    //input [@type='submit' and @value='Сохранить']
    get selected list value    name=status
    list selection should be    name=status    11
    click element    //input [@type='button' and @value='Вернуться']
    input text    name=search    ${order.after}
    page should contain    нал. нова почта
    click element    //td [@align='center' and @class='celss' and @width='75']
    select from list    name=status    10
    click element    //input [@type='submit' and @value='Сохранить']
    list selection should be    name=status    10
    page should contain    статус был изменён на ОТМЕНЁН(ЛОЖНЫЙ ЗАКАЗ)
    close all browsers

Meta generation
    open browser    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/vibrators.html?&show_all=yes    browser=ff
    page should contain element    //meta [@name='robots' and @content='noindex,follow']
    go to    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/vibrators/exclusive.html?&show_all=yes
    page should contain element    //meta [@name='robots' and @content='noindex,follow']
    go to    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/search.html?searchstring=asdasdasd&x=0&y=0
    page should contain element    //meta [@name='robots' and @content='noindex,follow']
    go to    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/vibrators.html?gclid=Cj0KEQjwxZieBRDegZuj9rzLt_ABEiQASqRd-gfiOEDw-aHlE-xtfIT8Tag6EVsjSC39gPF0Ii0E6PsaAsuq8P8HAQ
    page should contain element    //meta [@name='robots' and @content='noindex,follow']
    go to    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/vacuum-pomps.html?x=35&y=10&filter_start_-1=116&filter_stop_-1=4060&filter_start_11=5&filter_stop_11=58&filter_start_12=6.7&filter_stop_12=15&ftv_id_158=on&filter_search=1
    page should contain element    //meta [@name='robots' and @content='noindex,follow']
    go to    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/helpen.html
    page should contain element    //meta [@name='robots' and @content='noindex,follow']
    close all browsers

Color/size selection
    [Documentation]    Selection of color/size in category afterwards selection in commodity.
    Open browser    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/    browser=chrome
    input text    id=isfindedit    Вибратор Lelo Elise 2
    click button    id=issearchbut
    select from list    name=sizecolor    22004
    click image    http://www.isex.kiev.ua/images/is_buybutton.gif

Recall
    Open browser    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/    browser=chrome
    set window size    ${width}    ${height}
    input text    //*[@id="isfindedit"]    смазка
    click button    //*[@id="issearchbut"]
    click element    //*[@id="instock_tab_561"]/tbody/tr[1]/td[1]/a[1]/img
    click link    Перезвоните мне!
    input text    name=i_want_name    Autotest
    input text    name=i_want_phone    Autotest
    click image    http://www.isex.kiev.ua/images/is_pdcallmy.gif
    go to    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/reports.php
    input text    name=login    admin
    input password    name=password    111
    click element    //input [@type='submit' and \ @value="Login"]
    select from list    name=page    callme
    ${dd}=    Get time
    ${date}=    get Substring    ${dd}    0    10
    input text    name=StartAnotherDate    ${date}
    click element    //input [@type='submit' and @value='показать']
    click link    смотреть/изменить
    select from list    name=enabled    1
    click element    //input [@type='submit' and @value='Сохранить']
    click element    //input [@type='button' and @value='Вернуться']
    page should contain    выполнен
    close all browsers

Discount
    Open browser    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/    browser=chrome
    set window size    ${width}    ${height}
    input text    //*[@id="isfindedit"]    смазка
    click button    //*[@id="issearchbut"]
    click element    //*[@id="instock_tab_561"]/tbody/tr[1]/td[1]/a[1]/img
    click link    Нашли дешевле?
    input text    name=discont_link    Autotest
    input text    name=discont_name    Autotest
    input text    name=discont_phone    Autotest
    click image    http://www.isex.kiev.ua/images/is_discont.gif
    go to    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/reports.php
    input text    name=login    admin
    input password    name=password    111
    click element    //input [@type='submit' and \ @value="Login"]
    select from list    name=page    discont
    ${dd}=    Get time
    ${date}=    get Substring    ${dd}    0    10
    input text    name=StartAnotherDate    ${date}
    click element    //input [@type='submit' and @value='показать']
    click link    смотреть/изменить
    select from list    name=enabled    1
    click element    //input [@type='submit' and @value='Сохранить']
    click element    //input [@type='button' and @value='Вернуться']
    page should contain    выполнен
    close all browsers

Comment review
    Open browser    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/    browser=chrome
    set window size    ${width}    ${height}
    click link    http://www.isex.kiev.ua/reviews.html
    input text    name=name    Autotest
    input text    name=text    Autotest
    click image    http://www.isex.kiev.ua/images/is_comment.gif
    go to    http://testisex:TeLdmFi[76v_@www.isex.kiev.ua/reports.php
    input text    name=login    admin
    input password    name=password    111
    click element    //input [@type='submit' and \ @value="Login"]
    select from list    name=page    reviews
    ${dd}=    Get time
    ${date}=    get Substring    ${dd}    0    10
    input text    name=StartAnotherDate    ${date}
    click element    //input [@type='submit' and @value='показать']
    click link    Изменить
    select from list    name=enable    1
    input text    //textarea [@name='text' and @class='callmecomments']    Autotest ${date}
    click element    //input [@type='submit' and @value='Сохранить']
    click element    //input [@type='button' and @value='Назад']
    go to    http://www.isex.kiev.ua/reviews.html
    page should contain    Autotest ${date}
    go to    http://www.isex.kiev.ua/reports.php?page=reviews&action=show&option=start
    select radio button    status    all
    click element    //input [@type='submit' and @value='показать']
    click element    //img [@src='/images/backend/action_delete.gif' and @alt='удалить']
    go to    http://www.isex.kiev.ua/reviews.html
    page should not contain    Autotest ${date}
    close all browsers
