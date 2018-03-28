INSERT INTO `kps`.`coin` (`name`) VALUES ('bitcoin'),('etherium');
select * from coin;

INSERT INTO `kps`.`risk` (`name`) VALUES ('high'),('middle'),('low');
select * from risk;

INSERT INTO `kps`.`bitpred` (`timestamp`,`premium`) VALUES (201800000,4);
INSERT INTO `kps`.`bitpred` (`timestamp`,`premium`) VALUES (201800001,3);
INSERT INTO `kps`.`bitpred` (`timestamp`,`premium`) VALUES (201800002,2);
INSERT INTO `kps`.`bitpred` (`timestamp`,`premium`) VALUES (201800003,2.5);
select * from bitpred;

INSERT INTO `kps`.`member` (`id`,`pw`,`email`,`agree`,`risk_no`) VALUES ('sample1','sample','sample1@kps.com', 'yes',(select no from risk where name='high'));
INSERT INTO `kps`.`member` (`id`,`pw`,`email`,`agree`,`risk_no`) VALUES ('sample2','sample','sample2@kps.com', 'no',(select no from risk where name='middle'));
INSERT INTO `kps`.`member` (`id`,`pw`,`email`,`agree`,`risk_no`) VALUES ('sample3','sample','sample3@kps.com', 'no',(select no from risk where name='low'));
INSERT INTO `kps`.`member` (`id`,`pw`,`email`,`agree`,`risk_no`) VALUES ('sample4','sample','sample4@kps.com', 'yes',(select no from risk where name='middle'));
INSERT INTO `kps`.`member` (`id`,`pw`,`email`,`agree`,`risk_no`) VALUES ('sample5','sample','sample5@kps.com', 'yes',(select no from risk where name='low'));
INSERT INTO `kps`.`member` (`id`,`pw`,`email`,`agree`,`risk_no`) VALUES ('hychoi508','hychoi508','hychoi508@gmail.com', 'yes', (select no from risk where name='high'));

select * from member;


INSERT INTO `kps`.`alarm` (`member_no`,`coin_no`,`percent`) VALUES (1, (select no from coin where name='bitcoin'), 5.0);
INSERT INTO `kps`.`alarm` (`member_no`,`coin_no`,`percent`) VALUES (1, (select no from coin where name='bitcoin'), 4.0);
INSERT INTO `kps`.`alarm` (`member_no`,`coin_no`,`percent`) VALUES (1, (select no from coin where name='bitcoin'), 3.0);
INSERT INTO `kps`.`alarm` (`member_no`,`coin_no`,`percent`) VALUES (1, (select no from coin where name='etherium'),5.0);
INSERT INTO `kps`.`alarm` (`member_no`,`coin_no`,`percent`) VALUES (1, (select no from coin where name='etherium'),0.0);
INSERT INTO `kps`.`alarm` (`member_no`) VALUES (2);
INSERT INTO `kps`.`alarm` (`member_no`) VALUES (3);
INSERT INTO `kps`.`alarm` (`member_no`,`coin_no`,`percent`) VALUES ((select no from member where id='hychoi508'), (select no from coin where name='etherium'),5.0);
select * from alarm;