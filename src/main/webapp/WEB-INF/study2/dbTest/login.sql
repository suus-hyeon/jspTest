show tables;

select * from hoewon;

desc hoewon;

insert into hoewon (name) value ('씨톰');
insert into hoewon (name) value ('디톰');

update hoewon set address = '서울' where idx = 7;

delete from hoewon where idx = 8;
delete from hoewon where idx > 9;