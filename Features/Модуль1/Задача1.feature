﻿#language: ru

@tree

Функционал: Проверка расчета суммы документа Заказ 

Как администратор я хочу
Проверить расчета суммы документа 
чтобы не было ошибки   

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Проверка расчета суммы документа Заказ

* Открытие формы создание документа
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказ'
* Изменение количества и цены в таб. части
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000034' | 'Veko876N'     |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '500,00'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '1 000'
	И в таблице "Товары" я завершаю редактирование строки
	И элемент формы с именем "ТоварыИтогСумма" стал равен '500 000'
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '55'
	И в таблице "Товары" я завершаю редактирование строки
	И элемент формы с именем "ТоварыИтогСумма" стал равен '27 500'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '200,00'
	И в таблице "Товары" я завершаю редактирование строки
	И элемент формы с именем "ТоварыИтогСумма" стал равен '11 000'	

Сценарий: Добавлении Услуги в документ Заказ
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000038' | 'Ремонт'       |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '1'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я выбираю текущую строку
