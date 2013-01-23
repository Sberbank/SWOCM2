db.calendar.remove();
db.calendar.save({name: 'Оперативка', description: '', start: new ISODate('2012-12-24T08:45:00.00+04:00'), end: new ISODate('2012-12-24T09:15:00.00+04:00'), priority: 1, accepted: true});
db.calendar.save({name: 'Холодные звонки', description: '', start: new ISODate('2012-12-24T09:30:00.00+04:00'), end: new ISODate('2012-12-24T12:00:00.00+04:00'), priority: 2, accepted: true});
db.calendar.save({name: 'Встреча с ОДО Лютик. Подписание договора и прочее', description: '', start: new ISODate('2012-12-24T12:00:00.00+04:00'), end: new ISODate('2012-12-24T13:00:00.00+04:00'), priority: 3, accepted: true});
db.calendar.save({name: 'Обед', description: '', start: new ISODate('2012-12-24T13:00:00.00+04:00'), end: new ISODate('2012-12-24T14:00:00.00+04:00'), priority: 0, accepted: true});
db.calendar.save({name: 'Встреча с ИП Фроловым В.Н.', description: '', start: new ISODate('2012-12-24T14:00:00.00+04:00'), end: new ISODate('2012-12-24T16:00:00.00+04:00'), priority: 4, accepted: false});
db.calendar.save({name: 'Подготовить раздаточный материал', description: '', start: new ISODate('2012-12-24T16:30:00.00+04:00'), end: new ISODate('2012-12-24T17:15:00.00+04:00'), priority: 3, accepted: true});
db.calendar.save({name: 'Контроль платежей', description: '', start: new ISODate('2012-12-24T17:15:00.00+04:00'), end: new ISODate('2012-12-24T17:55:00.00+04:00'), priority: 3, accepted: true});
db.calendar.save({name: 'План на завтра', description: '', start: new ISODate('2012-12-24T17:55:00.00+04:00'), end: new ISODate('2012-12-24T18:40:00.00+04:00'), priority: 1, accepted: true});



db.calendar.save({
    name: 'Большое понедельничное совещание', 
    description: '', 
    start: new ISODate('2012-12-25T08:45:00.00+04:00'), 
    end: new ISODate('2012-12-25T10:00:00.00+04:00'), 
    priority: 1, accepted: true
});
db.calendar.save({
    name: 'Холодные звонки', 
    description: '', 
    start: new ISODate('2012-12-25T11:00:00.00+04:00'), 
    end: new ISODate('2012-12-25T15:30:00.00+04:00'), 
    priority: 2, accepted: true
});
db.calendar.save({
    name: 'Работа в зале', 
    description: '', 
    start: new ISODate('2012-12-25T15:30:00.00+04:00'), 
    end: new ISODate('2012-12-25T17:00:00.00+04:00'), 
    priority: 3, accepted: true
});
db.calendar.save({
    name: 'План на завтра', 
    description: '', 
    start: new ISODate('2012-12-25T17:00:00.00+04:00'), 
    end: new ISODate('2012-12-25T18:00:00.00+04:00'), 
    priority: 1, accepted: true
});



db.calendar.save({
    name: 'Оперативка', 
    description: '', 
    start: new ISODate('2012-12-26T08:45:00.00+04:00'), 
    end: new ISODate('2012-12-26T09:30:00.00+04:00'), 
    priority: 1, accepted: true
});
db.calendar.save({
    name: 'Встреча с ИП Иванов', 
    description: '', 
    start: new ISODate('2012-12-26T10:00:00.00+04:00'), 
    end: new ISODate('2012-12-26T13:00:00.00+04:00'), 
    priority: 4, accepted: true
});
db.calendar.save({
    name: 'Обед', 
    description: '', 
    start: new ISODate('2012-12-26T13:00:00.00+04:00'), 
    end: new ISODate('2012-12-26T14:00:00.00+04:00'), 
    priority: 0, accepted: true
});
db.calendar.save({
    name: 'Выезды к клиентам', 
    description: '', 
    start: new ISODate('2012-12-26T14:00:00.00+04:00'), 
    end: new ISODate('2012-12-26T18:00:00.00+04:00'), 
    priority: 4, accepted: false 
});


db.calendar.save({
    name: 'Оперативка', 
    description: '', 
    start: new ISODate('2012-12-29T08:45:00.00+04:00'), 
    end: new ISODate('2012-12-29T09:30:00.00+04:00'), 
    priority: 1, 
    accepted: true
});
db.calendar.save({
    name: 'Холодные звонки', 
    description: '', 
    start: new ISODate('2012-12-29T10:00:00.00+04:00'), 
    end: new ISODate('2012-12-29T12:30:00.00+04:00'), 
    priority: 2, accepted: true
});
db.calendar.save({
    name: 'Встреча с ООО Лютик', 
    description: '', 
    start: new ISODate('2012-12-29T11:00:00.00+04:00'), 
    end: new ISODate('2012-12-29T13:00:00.00+04:00'), 
    priority: 4, accepted: false 
});
db.calendar.save({
    name: 'Обед', 
    description: '', 
    start: new ISODate('2012-12-29T13:00:00.00+04:00'), 
    end: new ISODate('2012-12-29T14:00:00.00+04:00'), 
    priority: 0, accepted: true
});
db.calendar.save({
    name: 'Подгтовка раздаточных материалов. Изучение новых продуктов', 
    description: '', 
    start: new ISODate('2012-12-29T14:00:00.00+04:00'), 
    end: new ISODate('2012-12-29T15:00:00.00+04:00'), 
    priority: 3, accepted: true 
});
db.calendar.save({
    name: 'План на завтра', 
    description: '', 
    start: new ISODate('2012-12-29T17:00:00.00+04:00'), 
    end: new ISODate('2012-12-29T18:00:00.00+04:00'), 
    priority: 1, accepted: true
});

