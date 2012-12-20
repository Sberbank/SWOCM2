db.calendar.remove();
db.calendar.save({name: 'Оперативка', description: '', start: new ISODate('2012-12-14T08:45:00.00+04:00'), end: new ISODate('2012-12-14T09:15:00.00+04:00'), priority: 1, accepted: true});
db.calendar.save({name: 'Холодные звонки', description: '', start: new ISODate('2012-12-14T09:30:00.00+04:00'), end: new ISODate('2012-12-14T12:00:00.00+04:00'), priority: 2, accepted: true});
db.calendar.save({name: 'Встреча с ОДО Лютик. Подписание договора и прочее', description: '', start: new ISODate('2012-12-14T12:00:00.00+04:00'), end: new ISODate('2012-12-14T13:00:00.00+04:00'), priority: 3, accepted: true});
db.calendar.save({name: 'Обед', description: '', start: new ISODate('2012-12-14T13:00:00.00+04:00'), end: new ISODate('2012-12-14T14:00:00.00+04:00'), priority: 0, accepted: true});
db.calendar.save({name: 'Встреча с ИП Фроловым В.Н.', description: '', start: new ISODate('2012-12-14T14:00:00.00+04:00'), end: new ISODate('2012-12-14T16:00:00.00+04:00'), priority: 4, accepted: false});
db.calendar.save({name: 'Холодные звонки 15шт', description: '', start: new ISODate('2012-12-14T15:00:00.00+04:00'), end: new ISODate('2012-12-14T16:30:00.00+04:00'), priority: 2, accepted: true});
db.calendar.save({name: 'Подготовить раздаточный материал', description: '', start: new ISODate('2012-12-14T16:30:00.00+04:00'), end: new ISODate('2012-12-14T17:15:00.00+04:00'), priority: 3, accepted: true});
db.calendar.save({name: 'Контроль платежей', description: '', start: new ISODate('2012-12-14T17:15:00.00+04:00'), end: new ISODate('2012-12-14T17:55:00.00+04:00'), priority: 3, accepted: true});
db.calendar.save({name: 'План на завтра', description: '', start: new ISODate('2012-12-14T17:55:00.00+04:00'), end: new ISODate('2012-12-14T18:40:00.00+04:00'), priority: 1, accepted: true});



db.calendar.save({
    name: 'Большое понедельничное совещание', 
    description: '', 
    start: new ISODate('2012-12-17T08:45:00.00+04:00'), 
    end: new ISODate('2012-12-17T10:00:00.00+04:00'), 
    priority: 1, accepted: true
});
db.calendar.save({
    name: 'Холодные звонки', 
    description: '', 
    start: new ISODate('2012-12-17T11:00:00.00+04:00'), 
    end: new ISODate('2012-12-17T15:30:00.00+04:00'), 
    priority: 2, accepted: true
});
db.calendar.save({
    name: 'Работа в зале', 
    description: '', 
    start: new ISODate('2012-12-17T15:30:00.00+04:00'), 
    end: new ISODate('2012-12-17T17:00:00.00+04:00'), 
    priority: 3, accepted: true
});
db.calendar.save({
    name: 'План на завтра', 
    description: '', 
    start: new ISODate('2012-12-17T17:00:00.00+04:00'), 
    end: new ISODate('2012-12-17T18:00:00.00+04:00'), 
    priority: 1, accepted: true
});



db.calendar.save({
    name: 'Оперативка', 
    description: '', 
    start: new ISODate('2012-12-18T08:45:00.00+04:00'), 
    end: new ISODate('2012-12-18T09:30:00.00+04:00'), 
    priority: 1, accepted: true
});
db.calendar.save({
    name: 'Встреча с ИП Иванов', 
    description: '', 
    start: new ISODate('2012-12-18T10:00:00.00+04:00'), 
    end: new ISODate('2012-12-18T13:00:00.00+04:00'), 
    priority: 4, accepted: true
});
db.calendar.save({
    name: 'Обед', 
    description: '', 
    start: new ISODate('2012-12-18T13:00:00.00+04:00'), 
    end: new ISODate('2012-12-18T14:00:00.00+04:00'), 
    priority: 0, accepted: true
});
db.calendar.save({
    name: 'Выезды к клиентам', 
    description: '', 
    start: new ISODate('2012-12-18T14:00:00.00+04:00'), 
    end: new ISODate('2012-12-18T18:00:00.00+04:00'), 
    priority: 4, accepted: false 
});


db.calendar.save({
    name: 'Оперативка', 
    description: '', 
    start: new ISODate('2012-12-19T08:45:00.00+04:00'), 
    end: new ISODate('2012-12-19T09:30:00.00+04:00'), 
    priority: 1, 
    accepted: true
});
db.calendar.save({
    name: 'Холодные звонки', 
    description: '', 
    start: new ISODate('2012-12-19T10:00:00.00+04:00'), 
    end: new ISODate('2012-12-19T12:30:00.00+04:00'), 
    priority: 2, accepted: true
});
db.calendar.save({
    name: 'Встреча с ООО Лютик', 
    description: '', 
    start: new ISODate('2012-12-19T11:00:00.00+04:00'), 
    end: new ISODate('2012-12-19T13:00:00.00+04:00'), 
    priority: 4, accepted: false 
});
db.calendar.save({
    name: 'Обед', 
    description: '', 
    start: new ISODate('2012-12-19T13:00:00.00+04:00'), 
    end: new ISODate('2012-12-19T14:00:00.00+04:00'), 
    priority: 0, accepted: true
});
db.calendar.save({
    name: 'Подгтовка раздаточных материалов. Изучение новых продуктов', 
    description: '', 
    start: new ISODate('2012-12-19T14:00:00.00+04:00'), 
    end: new ISODate('2012-12-19T15:00:00.00+04:00'), 
    priority: 3, accepted: true 
});
db.calendar.save({
    name: 'План на завтра', 
    description: '', 
    start: new ISODate('2012-12-19T17:00:00.00+04:00'), 
    end: new ISODate('2012-12-19T18:00:00.00+04:00'), 
    priority: 1, accepted: true
});
