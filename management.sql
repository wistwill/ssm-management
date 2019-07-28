prompt PL/SQL Developer Export Tables for user SSM
prompt Created by zkq on 2019年7月28日
set feedback off
set define off

prompt Disabling triggers for MEMBER...
alter table MEMBER disable all triggers;
prompt Disabling triggers for PRODUCT...
alter table PRODUCT disable all triggers;
prompt Disabling triggers for ORDERS...
alter table ORDERS disable all triggers;
prompt Disabling triggers for TRAVELLER...
alter table TRAVELLER disable all triggers;
prompt Disabling triggers for ORDER_TRAVELLER...
alter table ORDER_TRAVELLER disable all triggers;
prompt Disabling triggers for PERMISSION...
alter table PERMISSION disable all triggers;
prompt Disabling triggers for ROLE...
alter table ROLE disable all triggers;
prompt Disabling triggers for ROLE_PERMISSION...
alter table ROLE_PERMISSION disable all triggers;
prompt Disabling triggers for SYSLOG...
alter table SYSLOG disable all triggers;
prompt Disabling triggers for USERS...
alter table USERS disable all triggers;
prompt Disabling triggers for USERS_ROLE...
alter table USERS_ROLE disable all triggers;
prompt Disabling foreign key constraints for ORDERS...
alter table ORDERS disable constraint SYS_C0011383;
alter table ORDERS disable constraint SYS_C0011384;
prompt Disabling foreign key constraints for ORDER_TRAVELLER...
alter table ORDER_TRAVELLER disable constraint SYS_C0011387;
alter table ORDER_TRAVELLER disable constraint SYS_C0011388;
prompt Disabling foreign key constraints for ROLE_PERMISSION...
alter table ROLE_PERMISSION disable constraint SYS_C0011398;
alter table ROLE_PERMISSION disable constraint SYS_C0011399;
prompt Disabling foreign key constraints for USERS_ROLE...
alter table USERS_ROLE disable constraint SYS_C0011394;
alter table USERS_ROLE disable constraint SYS_C0011395;
prompt Deleting USERS_ROLE...
delete from USERS_ROLE;
commit;
prompt Deleting USERS...
delete from USERS;
commit;
prompt Deleting SYSLOG...
delete from SYSLOG;
commit;
prompt Deleting ROLE_PERMISSION...
delete from ROLE_PERMISSION;
commit;
prompt Deleting ROLE...
delete from ROLE;
commit;
prompt Deleting PERMISSION...
delete from PERMISSION;
commit;
prompt Deleting ORDER_TRAVELLER...
delete from ORDER_TRAVELLER;
commit;
prompt Deleting TRAVELLER...
delete from TRAVELLER;
commit;
prompt Deleting ORDERS...
delete from ORDERS;
commit;
prompt Deleting PRODUCT...
delete from PRODUCT;
commit;
prompt Deleting MEMBER...
delete from MEMBER;
commit;
prompt Loading MEMBER...
insert into MEMBER (id, name, nickname, phonenum, email)
values ('E61D65F673D54F68B0861025C69773DB', '张三', '小三', '18888888888', 'zs@163.com');
commit;
prompt 1 records loaded
prompt Loading PRODUCT...
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('676C5BD1D35E429A8C2E114939C5685A', 'itcast-002', '北京三日游', '北京', to_timestamp('10-10-2018 10:10:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 1200, '不错的旅行', 1);
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('12B7ABF2A4C544568B0A7C69F36BF8B7', 'itcast-003', '上海五日游', '上海', to_timestamp('25-04-2018 14:30:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 1800, '魔都我来了', 0);
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('9F71F01CB448476DAFB309AA6DF9497F', 'itcast-001', '北京三日游', '北京', to_timestamp('10-10-2018 10:10:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 1200, '不错的旅行', 1);
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('8A605B9B72A54114A51479A4A49417C6', '1122331123123', '西安兵马俑', '西安', to_timestamp('16-07-2019 10:50:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 1200, '一起观赏大秦风情', 1);
commit;
prompt 4 records loaded
prompt Loading ORDERS...
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('0E7231DC797C486290E8713CA3C6ECCC', '12345', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('5DC6A48DD4E94592AE904930EA866AFA', '54321', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('2FF351C4AC744E2092DCF08CFD314420', '67890', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('A0657832D93E4B10AE88A2D4B70B1A28', '98765', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('E4DD4C45EED84870ABA83574A801083E', '11111', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('96CC8BD43C734CC2ACBFF09501B4DD5D', '22222', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('55F9AF582D5A4DB28FB4EC3199385762', '33333', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('CA005CF1BE3C4EF68F88ABC7DF30E976', '44444', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('3081770BC3984EF092D9E99760FDABDE', '55555', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
commit;
prompt 9 records loaded
prompt Loading TRAVELLER...
insert into TRAVELLER (id, name, sex, phonenum, credentialstype, credentialsnum, travellertype)
values ('3FE27DF2A4E44A6DBC5D0FE4651D3D3E', '张龙', '男', '13333333333', 0, '123456789009876543', 0);
insert into TRAVELLER (id, name, sex, phonenum, credentialstype, credentialsnum, travellertype)
values ('EE7A71FB6945483FBF91543DBE851960', '张小龙', '男', '15555555555', 0, '987654321123456789', 1);
commit;
prompt 2 records loaded
prompt Loading ORDER_TRAVELLER...
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('0E7231DC797C486290E8713CA3C6ECCC', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('2FF351C4AC744E2092DCF08CFD314420', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('3081770BC3984EF092D9E99760FDABDE', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('55F9AF582D5A4DB28FB4EC3199385762', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('5DC6A48DD4E94592AE904930EA866AFA', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('96CC8BD43C734CC2ACBFF09501B4DD5D', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('A0657832D93E4B10AE88A2D4B70B1A28', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('CA005CF1BE3C4EF68F88ABC7DF30E976', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('E4DD4C45EED84870ABA83574A801083E', 'EE7A71FB6945483FBF91543DBE851960');
commit;
prompt 9 records loaded
prompt Loading PERMISSION...
insert into PERMISSION (id, permissionname, url)
values ('F29EE5EC1BCB44359CF2AA24D8DC6965', 'role deleteRole', '/role/deleteRole.do');
insert into PERMISSION (id, permissionname, url)
values ('B027FBF41E90456F93A496007A124F9D', 'role findById', '/role/findById.do');
insert into PERMISSION (id, permissionname, url)
values ('7BB161BA85F8427BA23533EC0C819770', 'role addPermissionToRole', '/role/addPermissionToRole.do');
insert into PERMISSION (id, permissionname, url)
values ('5480099534E14AB192E6B09F16E9A8AA', 'role addPermissionToRole', '/role/addPermissionToRole.do');
insert into PERMISSION (id, permissionname, url)
values ('574ECD09D27346968971A5A866F75FE8', 'role findRoleByIdAndAllPermission', '/role/findRoleByIdAndAllPermission.do');
insert into PERMISSION (id, permissionname, url)
values ('0A6530DB424C456C81CFAE271BF0E3BC', 'role save', '/role/save.do');
commit;
prompt 6 records loaded
prompt Loading ROLE...
insert into ROLE (id, rolename, roledesc)
values ('227327A1D28D436FB6D5204615E8BFF1', 'VISITOR', '游客');
insert into ROLE (id, rolename, roledesc)
values ('243807716A6943349592704519C6D650', 'ADMIN', '管理员');
insert into ROLE (id, rolename, roledesc)
values ('1114', 'USER', '普通用户');
commit;
prompt 3 records loaded
prompt Loading ROLE_PERMISSION...
insert into ROLE_PERMISSION (permissionid, roleid)
values ('0A6530DB424C456C81CFAE271BF0E3BC', '243807716A6943349592704519C6D650');
insert into ROLE_PERMISSION (permissionid, roleid)
values ('5480099534E14AB192E6B09F16E9A8AA', '243807716A6943349592704519C6D650');
insert into ROLE_PERMISSION (permissionid, roleid)
values ('574ECD09D27346968971A5A866F75FE8', '243807716A6943349592704519C6D650');
insert into ROLE_PERMISSION (permissionid, roleid)
values ('7BB161BA85F8427BA23533EC0C819770', '243807716A6943349592704519C6D650');
insert into ROLE_PERMISSION (permissionid, roleid)
values ('B027FBF41E90456F93A496007A124F9D', '243807716A6943349592704519C6D650');
insert into ROLE_PERMISSION (permissionid, roleid)
values ('F29EE5EC1BCB44359CF2AA24D8DC6965', '243807716A6943349592704519C6D650');
commit;
prompt 6 records loaded
prompt Loading SYSLOG...
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('00116C05E6D74CF9BA77E8E0F983387A', to_timestamp('27-07-2019 14:06:43.147000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 22, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('D1416F6E2DF640FCB96223BB77C538C9', to_timestamp('27-07-2019 14:07:01.685000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 150, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('932FEA6FBE3B4244AFE271CE11F3E9DC', to_timestamp('27-07-2019 14:07:01.872000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 4, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('5B46523A8E6F4DA7AEFC70CA59B4F8FE', to_timestamp('27-07-2019 14:07:08.965000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 6, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('0FC74CEB9FAA454DA957834EC17A8FA4', to_timestamp('27-07-2019 14:07:21.798000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 51, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('EE4617B7D6B24EF6A2DA738DB333F737', to_timestamp('27-07-2019 14:07:25.282000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 7, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('5ED3D12D613C4ACBB1BC132BD1E9C7F5', to_timestamp('27-07-2019 14:07:25.298000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 2, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('CA8E44BFD3CE4E95923115080305861F', to_timestamp('27-07-2019 14:07:27.057000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 5, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('B79BDC429B484F589BC45E7A85C0F42B', to_timestamp('27-07-2019 14:07:31.113000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 4, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A7F7B6F3C7884652BBEC6D472110FD5C', to_timestamp('27-07-2019 14:07:39.920000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 13, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('87EB864CBB6E486D82D0B69383C81F9B', to_timestamp('27-07-2019 14:07:45.097000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 15, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('FB9BA74EFF3349DEAEB5772287EFF461', to_timestamp('27-07-2019 14:07:45.124000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('B7ADBA0D9945464099CFD436516EC0F6', to_timestamp('27-07-2019 14:07:58.462000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 2, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F31A2B10F4644759A7106DB59818E5AE', to_timestamp('27-07-2019 14:08:00.183000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 4, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('49F57CEF44DB4DC9B2EB54CC2BD1470E', to_timestamp('27-07-2019 14:08:06.942000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 6, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('49251B8525AF42AC87A7902A41DCA30C', to_timestamp('27-07-2019 14:08:32.375000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E177F916080D47CEB9267402B9CF4ED1', to_timestamp('27-07-2019 14:09:58.643000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 15, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E19EE570E4A14D88865078515DFE9F48', to_timestamp('27-07-2019 14:09:58.672000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 3, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('32CA872F97FF4F85A1C44C8C21655F8F', to_timestamp('27-07-2019 14:11:12.655000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F6DDEBD32C0F4969855C78E8EE198D95', to_timestamp('27-07-2019 14:11:18.247000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 2, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A6D27841E60F48E4968A79DBD00DFB04', to_timestamp('27-07-2019 14:12:51.719000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('09BDE05BB4FF47549DBEA719A43A31D3', to_timestamp('27-07-2019 14:12:52.782000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('22D097973CA5404AB36883FE24CA1DBB', to_timestamp('27-07-2019 14:13:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('71D2F7BF287F4319B57EE9A90402AB01', to_timestamp('27-07-2019 14:13:21.966000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 5, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('8B783B2D206A4E3DBED2485CE18005A3', to_timestamp('27-07-2019 14:16:30.955000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 2, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('439E9DECD1B84317AF8930E67A629690', to_timestamp('27-07-2019 14:16:33.442000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 8, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('C1FED44DBD5344D0993F7D8854F68E84', to_timestamp('27-07-2019 14:17:50.292000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 7, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('734F7C39E8CD45CD81137DEC88CA755A', to_timestamp('27-07-2019 14:18:33.944000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 2, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('15E03C82B3B74E6099F0AF30ADD4DF28', to_timestamp('27-07-2019 14:18:41.644000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A490B4E002004489A25DFDE4CA38FCD4', to_timestamp('27-07-2019 15:08:14.097000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 5, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('752A1BFDC5B642BDA8FC2EA110F1C4C0', to_timestamp('27-07-2019 15:08:49.955000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 3, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('4158E5AA4F7942EAAD094912E871A894', to_timestamp('27-07-2019 15:10:41.959000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 3, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1427806828CA4670A5EF6692E9065A1A', to_timestamp('27-07-2019 15:10:44.241000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 67, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9B478DA411164D10820B8107C7044803', to_timestamp('27-07-2019 15:11:45.545000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 4, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('3EDAABE580A948448EEDE6BA85DF9B75', to_timestamp('27-07-2019 15:12:36.616000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 17, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('318CD4EAD9924DC2BB105D251F6C074F', to_timestamp('27-07-2019 15:12:54.903000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 5, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('81E3536C76C44A94B315108BD990D10F', to_timestamp('27-07-2019 15:12:59.050000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 2, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('AA108D58B5E94066AAA42E737AF1F860', to_timestamp('27-07-2019 15:13:15.226000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 325, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7AA9A1B5907B4DD192D7DC481D9C386C', to_timestamp('27-07-2019 15:13:53.035000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 103, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('6CDF82934CDE434897F84888F4B85E0E', to_timestamp('27-07-2019 15:15:09.565000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 9, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('6BC46CF391D94A0E9213D727D3D3798D', to_timestamp('27-07-2019 15:15:15.959000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 7, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E4CDAF8CF602486B8658D8DE1DC3E31C', to_timestamp('27-07-2019 15:15:30.223000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 5, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('03F023923DFE4F62A74B723B9FEEACD6', to_timestamp('27-07-2019 15:15:33.617000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 2, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('8D9465A0248C4058B7716FD5A5F992A4', to_timestamp('27-07-2019 15:17:34.669000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 30, '[类名] com.sszkq.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('CACE712AB25B428CBA21E97CCFCB3B85', to_timestamp('27-07-2019 15:23:44.959000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 3, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7A5659306FAE428188584D9E1659975A', to_timestamp('27-07-2019 15:23:57.762000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 12, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E339C3908CA84006AA3670A3A6E26271', to_timestamp('27-07-2019 15:24:16.397000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 9, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('D8063C5D3BAA46FEAB85753429B102FB', to_timestamp('26-07-2019 21:51:20.337000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 11, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('55DAA84ECB32486A8DF422650943F9D2', to_timestamp('26-07-2019 21:51:23.631000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 3, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('031630B93A7D40368F2E02701C577A8D', to_timestamp('26-07-2019 21:51:29.209000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9B64C275CAF44BABBEEF3D0EC8497229', to_timestamp('26-07-2019 21:51:36.330000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 23, '[类名] com.sszkq.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('0C2FE14616CE4C49A8670902B1872BCC', to_timestamp('26-07-2019 21:51:10.382000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 14, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('DDA88F8F9D7C49C2B329A5F89338C59E', to_timestamp('26-07-2019 21:51:15.925000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 12, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('712379E73C98407A9F573CDAA05297A7', to_timestamp('27-07-2019 14:07:11.886000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 4, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('205C962A3593432282D7A76E27DD7DF2', to_timestamp('27-07-2019 14:07:13.368000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 7, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('0F4442B2D91D48E68A69824E66687C1F', to_timestamp('27-07-2019 14:07:19.422000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 2, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('15F6F45EEF7E464E9B9DFA559221EFB0', to_timestamp('27-07-2019 14:08:08.475000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 5, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1C00B7E6F93749B286C38D6849A6CF9A', to_timestamp('27-07-2019 14:08:11.888000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F16898BAB66D4DAD8F73974BEF543CC8', to_timestamp('27-07-2019 14:08:32.342000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 23, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7A17E7ACF36543E09BEDC80856E9CEEB', to_timestamp('27-07-2019 14:11:23.849000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 8, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('216C0F180D9C465B932B2CD49ECE69C2', to_timestamp('27-07-2019 14:12:10.835000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 97, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('58A29198701C4793938A95A07094D25F', to_timestamp('27-07-2019 14:12:10.942000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 2, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F511911D09FF48E085554CBB40B7DEE1', to_timestamp('27-07-2019 14:12:18.463000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 21, '[类名] com.sszkq.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('529BDBECBCC74B8B8B51BF0301B517D7', to_timestamp('27-07-2019 14:12:36.088000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 6, '[类名] com.sszkq.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('87DB57110B8E42A0B8A7D70223061A86', to_timestamp('27-07-2019 14:12:40.594000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 64, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A4578B25AB5C41BCA2FF601297634538', to_timestamp('27-07-2019 14:12:47.428000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 145, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9DDD3E692BE34787B8BFF3B15CEA37C3', to_timestamp('27-07-2019 14:12:50.294000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 7, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('252E2A9D3A4C4478BE89E2FD126375F8', to_timestamp('27-07-2019 14:12:55.960000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 15, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('718A53504A2B4E32B8A5CE5E2D7F9EA9', to_timestamp('27-07-2019 14:13:07.222000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 51, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('149287058EC1487ABD65325364051C22', to_timestamp('27-07-2019 14:17:53.091000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 11, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('13BDC3B696B242B49357FA70782874ED', to_timestamp('27-07-2019 14:17:55.038000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 2, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E95ED1E8E6DB4BF1B2BDE417643AFFDE', to_timestamp('27-07-2019 14:18:04.243000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 3, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('3897E757F3E34485B49302145419C689', to_timestamp('27-07-2019 14:18:43.174000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 5, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('2764507BFF734B2980D8F5D5034C24BA', to_timestamp('27-07-2019 14:18:45.353000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('DF1FC9B8F4FA49D0A3CBBDF9CA1010F3', to_timestamp('27-07-2019 14:19:47.299000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 22, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('82CD650636AF4C4181036050A5789C9F', to_timestamp('27-07-2019 15:24:16.421000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 3, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('4721C21C71A74898AE7D22A77CDB23D8', to_timestamp('27-07-2019 16:52:26.143000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 25, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F25806B516024A2E98FF2357C392E771', to_timestamp('27-07-2019 17:14:23.791000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 5, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('4FE2A73D433346A9BFC56BAC1981AC18', to_timestamp('27-07-2019 17:14:25.907000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 5, '[类名] com.sszkq.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('220BF37208794135B69EABECC5467536', to_timestamp('27-07-2019 17:14:27.662000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 3, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A75CC0719DF847EE821057F8314CC53B', to_timestamp('27-07-2019 17:14:29.688000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 18, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('8D22996F55C74557B4E3D84B2B1141A6', to_timestamp('27-07-2019 17:14:32.815000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 5, '[类名] com.sszkq.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('08C0C02B97894FB89D3D1D95BEB8B733', to_timestamp('27-07-2019 17:14:35.986000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 2, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('576F487A5F584C9980C34480641563ED', to_timestamp('27-07-2019 17:14:39.044000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 1, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('C4AAE6ADA1344A07AB4673B8F5A1970E', to_timestamp('27-07-2019 17:14:50.999000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 3, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('21A1CC10A7734BEAA9D8A3BC88BAD890', to_timestamp('27-07-2019 17:14:53.794000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 2, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A86BF74635CB45DCB23CBCA19601A6D3', to_timestamp('27-07-2019 17:15:16.762000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 4, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('4DFD6638D6CA4CFE9A1251DD3C2264F1', to_timestamp('27-07-2019 17:15:19.673000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 3, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('5FD57C50F31549CA8288EFBEFABF5BBC', to_timestamp('27-07-2019 17:15:21.359000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 9, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A8AFE3D3452B4828BD5CDFF333B40D30', to_timestamp('27-07-2019 17:15:25.236000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 2, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('C17B231B1FC24963A10047966E8EC33B', to_timestamp('27-07-2019 17:15:26.856000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 12, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('AF20D6C8CC5D430BBD436C247F829673', to_timestamp('27-07-2019 17:15:35.285000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 2, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A9D79FF4C6E54F11944752BA3A4F9A8A', to_timestamp('27-07-2019 17:15:41.340000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 3, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F46F55961F764F1C8957D99FB404322E', to_timestamp('27-07-2019 14:25:51.262000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 9, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('8B7C4D3E52FB4F01A49A65042FD32611', to_timestamp('27-07-2019 14:26:01.045000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 3, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('6C8D1A7F9B3744FC95D766055B5653C3', to_timestamp('27-07-2019 14:26:03.867000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 13, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1D233AA706214B7F983C3B56A58910C7', to_timestamp('27-07-2019 14:26:10.989000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 14, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('6357831232B142E4BB1C5AD8388F230F', to_timestamp('27-07-2019 14:27:24.217000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 3, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7169FE4F7C3448D5B7F6E8B9C67B628F', to_timestamp('27-07-2019 14:27:26.671000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 3, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('493AA5840F5B46B6A8B8419288631289', to_timestamp('27-07-2019 14:27:27.551000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 3, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
commit;
prompt 100 records committed...
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A587D732FF354898BCFF612D917600D7', to_timestamp('27-07-2019 14:27:28.350000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 3, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('76F22D45A79147A9A045F22267C37455', to_timestamp('27-07-2019 14:27:29.117000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 5, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('0920EE7D507C44A4923DB0B376989FA7', to_timestamp('27-07-2019 14:36:38.843000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 7, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('B8E33DFAF8344F54922848252DB694E7', to_timestamp('27-07-2019 14:36:51.856000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 8, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7ED2E6E8A0AF469BB06AC4949DFF5BB9', to_timestamp('27-07-2019 14:41:19.317000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 5, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('72885289B2084DECAC76B2758D647103', to_timestamp('27-07-2019 14:41:20.092000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 5, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('D254F2FC275E459C8206A165345B05F6', to_timestamp('27-07-2019 14:41:22.339000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 5, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('71DA2822EA734ED7869983F905AFF7CA', to_timestamp('27-07-2019 14:41:23.573000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 5, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9CDF4E2207084CD4854414087025D5ED', to_timestamp('27-07-2019 14:58:49.610000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 8, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('CFF28A59BAC543238303ACCE52739A07', to_timestamp('27-07-2019 14:58:51.683000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 5, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('2926BE9E8A2B48E4B28AA11BDE66266C', to_timestamp('27-07-2019 14:58:52.726000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E1A0CD82F4AD4664B298CCBB2419A32B', to_timestamp('27-07-2019 14:58:53.236000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 5, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('CE51D784F69842779278BF07391C73A6', to_timestamp('27-07-2019 14:58:54.601000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 4, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('FDE69D62140A48EC95AD6008338F645D', to_timestamp('27-07-2019 14:58:55.590000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('AAA7E98F7BEB432F8DF95ABDC8052EC4', to_timestamp('27-07-2019 14:58:56.538000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('2E70E1042877450BAB6D085746AAEF73', to_timestamp('27-07-2019 14:58:57.661000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 5, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('EEB0CB95C57546DCBDF8BB5031E43212', to_timestamp('27-07-2019 14:59:02.690000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('01E1E21129E045DA80CA84FCFE771512', to_timestamp('27-07-2019 14:59:04.953000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('54F600F1253F4FACBFB0CF9E16233962', to_timestamp('27-07-2019 14:59:18.984000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 7, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E156A94AD8474D798DB02AD299285278', to_timestamp('27-07-2019 14:59:27.019000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 4, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('AF82131F718F4AB3A59E745DFE714393', to_timestamp('27-07-2019 15:00:29.861000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('50127749206C4EFF9960A9BED329574F', to_timestamp('27-07-2019 15:00:36.964000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 4, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('5AEDF117652E43359D22D30AF9D39609', to_timestamp('27-07-2019 15:01:13.556000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('47E8F344D27D4836AE70C3905F87AB84', to_timestamp('27-07-2019 15:01:20.443000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 7, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('943C5851A0B54CF48BC0220633D1A5F2', to_timestamp('27-07-2019 15:01:36.980000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('3825AD7768B64CB29A3BBBAB5A855F0E', to_timestamp('27-07-2019 15:03:53.552000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('98C90BB2ACE7447EA6C53BF141BB4E50', to_timestamp('27-07-2019 15:03:54.949000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('0E995E74CB0249AC8589A451F441B735', to_timestamp('27-07-2019 15:04:43.710000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('94350CFCBF90469DA762DC32B9D84F08', to_timestamp('27-07-2019 15:04:50.990000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 2, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('867CDBCD9FC74EF18319977E27DBB3E2', to_timestamp('27-07-2019 15:04:53.119000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 5, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('8B5E9D98893240BB95861FA6CAA5E238', to_timestamp('27-07-2019 15:05:00.526000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 2, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('B960938213224718A8CF6ED9C8477FFD', to_timestamp('27-07-2019 15:24:21.619000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 11, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F4B2DE1D3C6242C5BF081C395536CB51', to_timestamp('27-07-2019 15:24:51.578000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 2, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('930E5870F5004635BF1E4A46E96D3E47', to_timestamp('27-07-2019 15:24:58.406000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 5, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('069C753734304C62859E472EAD13606E', to_timestamp('27-07-2019 15:25:09.978000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 2, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('EF76530A5BF747F69E74D5641C8833A8', to_timestamp('27-07-2019 15:25:15.732000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 3, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('0739B9522EA44078A7D7E95B379D50FB', to_timestamp('27-07-2019 15:29:25.304000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 4, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('2D36E47681924264AFEBBF0F73510A21', to_timestamp('27-07-2019 15:30:53.704000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 1, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('EAA49248527C4157B7850FE859B12762', to_timestamp('27-07-2019 15:32:08.503000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 3, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('4A55A74BA7B34F4B97ADF4CFBAB8D428', to_timestamp('27-07-2019 15:25:26.179000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 3, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F323D4914AF54A0887DB25FB591BA019', to_timestamp('27-07-2019 15:25:39.744000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('11905CA7E8C44427B220A7B700F4B7B3', to_timestamp('27-07-2019 15:25:41.475000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 3, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('167A213E030544569C919A30A3E80DC5', to_timestamp('27-07-2019 15:25:43.466000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E3447BAA765D48AD8F88900EF9EE2A04', to_timestamp('27-07-2019 15:28:41.806000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 3, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('EAAF00DDA5234B3CB62CD5FD5B009F4A', to_timestamp('27-07-2019 15:28:49.823000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 7, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F9A774C8D5014396839A517E37281ED9', to_timestamp('27-07-2019 15:28:54.358000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 4, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('0C472C47D63F46ACB97590AFCADA5411', to_timestamp('27-07-2019 15:32:08.538000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 1, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('81430F191F544D549F88159BFEF139C4', to_timestamp('27-07-2019 15:32:43.362000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 2, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7D25A05658AC4EBEB071832A6232E237', to_timestamp('27-07-2019 15:32:43.394000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 1, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('6FF72E6FABF448499262A2FA9E65826B', to_timestamp('27-07-2019 15:33:00.815000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 3, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9E756A9CC08840F0A9B0BBAFBA7CB7D5', to_timestamp('27-07-2019 15:24:24.457000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('4361CF833ED043B5A485E7C23CCA5FDD', to_timestamp('27-07-2019 15:25:23.486000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('FAE4D3ECA2CF4ACEB444A39341EEBB6B', to_timestamp('27-07-2019 15:33:00.832000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 2, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('0C90F558A082485C89FB7313318D1181', to_timestamp('27-07-2019 15:33:50.208000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 3, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('32903A1EF0E44E028DF3E30E01003A34', to_timestamp('27-07-2019 15:33:50.236000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 3, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A3DD9694A0A24863AD0F8EB6DCF63B0F', to_timestamp('27-07-2019 15:34:06.093000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 3, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('6F7D6EF94AA44AAD9BC8DA2603577F15', to_timestamp('27-07-2019 15:34:06.110000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 4, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('87CD09D8C4524CB8A2A1B11664BDDEF1', to_timestamp('27-07-2019 15:34:22.101000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 3, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('825785AFFC944A8EAEB9AB4CAEB2D658', to_timestamp('27-07-2019 15:34:22.112000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 1, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('60AEAC4795804830BDCE63C44D0216AB', to_timestamp('27-07-2019 15:34:28.976000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 2, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F37B114C8E4C49C38FBC8BF37B001F38', to_timestamp('27-07-2019 15:36:51.788000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 3, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('5A18CF35F2224BE5B63FD431131CD971', to_timestamp('27-07-2019 15:36:54.690000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('3249E0A0957B491AB2D635A9EDCC0290', to_timestamp('27-07-2019 15:36:58.203000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 6, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('ABD3D386CE9447BE99EBDC365E1D0202', to_timestamp('27-07-2019 15:37:02.692000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 1, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('177119FA3D5041CF8FFE62C9EC9E926A', to_timestamp('27-07-2019 15:37:04.555000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 4, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E2B6820A6DE747B7BC0B69E3A4C5C218', to_timestamp('27-07-2019 15:37:25.086000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9D5BC3EFC7FC4A409DC0760D6A1182E7', to_timestamp('27-07-2019 15:37:34.028000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 7, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('2197794A76A04BDABA46D96269074949', to_timestamp('27-07-2019 15:37:36.409000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('EB1E9527BC31415AA6837D7BFB9EB5E3', to_timestamp('27-07-2019 15:37:37.439000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 4, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('55E22571FEF34DE19660E889B0A9640D', to_timestamp('27-07-2019 15:37:44.159000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('4A3958EBAE8B4696A52D4AA889DAEE2F', to_timestamp('27-07-2019 15:37:47.005000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 2, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('DC57578B4AB144C79BEEB74AAAE025C3', to_timestamp('27-07-2019 15:39:37.873000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 8, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1C0508404F1F44DFAD8AA93B15085044', to_timestamp('27-07-2019 15:39:40.322000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('2F9EF24B302548DDAD595119A4B197FC', to_timestamp('27-07-2019 15:39:52.408000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 17, '[类名] com.sszkq.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('50757394CECF43F1A403CBD5E14D1A7B', to_timestamp('27-07-2019 15:40:05.170000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 4, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F1B0E6417F2C4F0FA1F40978D1668DA6', to_timestamp('27-07-2019 15:40:31.858000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 16, '[类名] com.sszkq.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('586D566553574214A2910F771C58D2DF', to_timestamp('27-07-2019 16:39:31.795000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 9, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('635A62E5CFA543FEBE1C891C02C9A7B4', to_timestamp('27-07-2019 16:52:26.214000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 6, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('8C42A83233584CFCA34F53E6FA59D962', to_timestamp('27-07-2019 17:10:53.568000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 16, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('8F3C615BC1924CEE86AC5B6F1926F659', to_timestamp('27-07-2019 17:10:59.074000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 19, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7B597897128B42A7B36AFF6C33A9E4A0', to_timestamp('27-07-2019 17:11:12.355000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 4, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('84FE74657BB84B0D836474EFB352EFB2', to_timestamp('27-07-2019 17:11:15.491000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 23, '[类名] com.sszkq.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E6AAC0E22A5B442A97340E43B3F6469F', to_timestamp('27-07-2019 17:11:22.903000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 8, '[类名] com.sszkq.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('2B240808186D4CBC8A8A4D3EDAE5B891', to_timestamp('27-07-2019 17:11:25.251000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 15, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('D462B98A8DC24255898236E65123189E', to_timestamp('27-07-2019 17:14:20.608000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 4, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('2E238026C2FC4A3A96626D79E608238F', to_timestamp('26-07-2019 21:50:58.540000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 23, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E205014BA5EC48728DFC84B19E475F53', to_timestamp('27-07-2019 14:25:46.903000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 20, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9598F62ED4CD47A29180DA2A66269A29', to_timestamp('27-07-2019 14:28:04.961000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 3, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1368F88407E34A4191B1EC5618689660', to_timestamp('27-07-2019 14:28:12.390000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 62, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('2A6B0022AACC4DBCAD3385BA45AABB03', to_timestamp('27-07-2019 14:28:19.422000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 8, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('CD7203B51A9B49C39A95F8D35193D552', to_timestamp('27-07-2019 14:28:21.411000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('70568FCBDA824E44A2E1AE728A5DA8A6', to_timestamp('27-07-2019 14:29:14.972000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 11, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('CB3447289C524199A03CB22E7F8E93B7', to_timestamp('27-07-2019 14:32:36.607000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 3, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7EA19558609A4BB0B73D9FF4DBF23C37', to_timestamp('27-07-2019 14:32:44.020000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 9, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('56C3DD6805B943B3A83FC7058794559B', to_timestamp('27-07-2019 14:36:11.174000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 8, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('8E1865C9EE4D4145BF04E3C084B08802', to_timestamp('27-07-2019 14:36:29.422000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('0582E50CD9E64110804A09D0BEA1B2AF', to_timestamp('27-07-2019 14:37:22.163000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 9, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('AF75DF7FDABC4ADF93C099CD818A940F', to_timestamp('27-07-2019 14:37:52.183000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 7, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E609D9255D5443618250FE5D2EE49F69', to_timestamp('27-07-2019 14:38:05.975000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 7, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F7EF98D30C4F402087E9B89F883F76B5', to_timestamp('27-07-2019 14:41:11.756000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 8, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
commit;
prompt 200 records committed...
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('0D23C4C238E443CFB99D5F90933200AE', to_timestamp('27-07-2019 14:41:12.720000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 5, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('68C296D3EB944DA590A208262E481559', to_timestamp('27-07-2019 14:41:15.679000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 5, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('2B97C219BE7942FC8DA9396FC2B2F271', to_timestamp('27-07-2019 14:41:16.891000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('5464773E62EE4F3EB00F614F072A4F1A', to_timestamp('27-07-2019 14:41:17.687000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('93249AF6110F4E4FBB819E523C4164AF', to_timestamp('27-07-2019 14:41:18.686000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 8, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('625BCF3BFC874D02A7936C1C2E7C449C', to_timestamp('27-07-2019 14:41:21.200000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('562E99EDEDF34450ADC3D7302E676865', to_timestamp('27-07-2019 14:41:24.630000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('DE55A558106B44C0BDA0EDC80AF76F7E', to_timestamp('27-07-2019 14:55:15.346000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('63DFE8C4D9174C34ACBF643A41601E02', to_timestamp('27-07-2019 14:55:23.310000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('84CF8E0841344A5494FFE1B8C6855504', to_timestamp('27-07-2019 14:56:07.951000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('FF2A3F9ABF7A4291B1EC2E5747D28839', to_timestamp('27-07-2019 15:01:45.319000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 4, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('4C363DE8AF304BF4937D9ACCBC9D9A40', to_timestamp('27-07-2019 15:01:50.848000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 7, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1AC5B93FE2E140459B6580213A8EF2D5', to_timestamp('27-07-2019 15:03:38.616000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 5, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('AC9E1F37BD8F4ADB8E90F5AEAC6B7884', to_timestamp('27-07-2019 15:03:48.115000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 4, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('07C1FE1CA10E4966A67B8BA33D13E861', to_timestamp('27-07-2019 15:03:50.106000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('278545D55B584B7FB4B8522E0A2F3A93', to_timestamp('27-07-2019 15:03:52.280000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 3, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('B29950D78BE4441094C7C47272F60969', to_timestamp('27-07-2019 15:07:03.573000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 26, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('25BEBA7BE035475AB4E00196A3AC5AFF', to_timestamp('27-07-2019 15:09:00.471000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 2, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('07142AB07DA64EF191688E46A4EB8DDC', to_timestamp('27-07-2019 15:10:20.588000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 46, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('02E394FEB17E4CE682D73729FF915AE9', to_timestamp('27-07-2019 15:10:20.675000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 7, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('66BC502410E44688A41F654919A0AC68', to_timestamp('27-07-2019 15:12:43.046000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 10, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('5936DCBBC23648CBAA1997776F115AD3', to_timestamp('27-07-2019 15:12:53.152000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 3, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('CA77EF400AFA49579360CBBE9EC6FE11', to_timestamp('27-07-2019 15:13:53.164000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 3, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('18E4B95A02864D3093058F2503C5BFA0', to_timestamp('27-07-2019 15:15:17.469000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 5, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('6C27D1F24ACB4FADAF000203591C82F2', to_timestamp('27-07-2019 15:15:19.506000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 3, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('67948C49E0C74155BE4938E72635299D', to_timestamp('27-07-2019 15:15:21.106000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 6, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A1451D5673404F3AB177D98FE4B57B58', to_timestamp('27-07-2019 15:15:27.142000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 5, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('55A3E1A4B9B84284BA9EB7B43A3F9719', to_timestamp('27-07-2019 15:15:27.176000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 2, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('2022A40469AA4456A764907FE727C398', to_timestamp('27-07-2019 15:15:38.226000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 21, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('DCC9B0D81BF04FF2B127E64C987CAD3B', to_timestamp('27-07-2019 15:17:29.773000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 2, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1C625F8B60C04D15B140106DC73329EC', to_timestamp('27-07-2019 15:24:12.313000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 3, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1BC1255FD1A845D99465E306244923D1', to_timestamp('27-07-2019 15:24:12.346000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 3, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9CEBE12C877B4ED187BD02224836F711', to_timestamp('27-07-2019 18:01:50.809000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 6, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('4D3D5CFDD285453398841771852D344B', to_timestamp('27-07-2019 18:01:54.596000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 11, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('CABB4B75D1394510BF09B645D8B7E764', to_timestamp('27-07-2019 18:01:58.881000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 5, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('3E3F4046ADE04335A55DCDF7FF3C2CE5', to_timestamp('27-07-2019 18:02:28.743000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 3, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('3335AE5982E3460D8341404FD3AAFA2D', to_timestamp('27-07-2019 18:02:30.845000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 5, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9591567D28E54D73A16000A1503C1551', to_timestamp('27-07-2019 18:02:34.277000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 4, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('6060DA254BC2436283F928D50D62829D', to_timestamp('27-07-2019 18:02:36.512000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 65, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('29E3A26E196B449A80781AEB9C0DB747', to_timestamp('27-07-2019 18:02:58.089000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 7, '[类名] com.sszkq.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('D368512304E94E5AB19C6C18CB7E97F5', to_timestamp('27-07-2019 18:03:08.877000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 9, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('78E36510BEC843BAA4B3D11548F18D83', to_timestamp('27-07-2019 18:03:13.241000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 19, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('376E3A6EC48E4831BBE703255D865527', to_timestamp('27-07-2019 18:17:13.393000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 16, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('85E3E0C8031A4A949AB57EE008BFAB26', to_timestamp('27-07-2019 18:17:19.416000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 7, '[类名] com.sszkq.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('6E1E072DEA78478DA48FCEF9963CDE41', to_timestamp('27-07-2019 17:15:43.775000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 4, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7428826DA0DD42EFA4B5B79DA7D2B060', to_timestamp('27-07-2019 17:15:47.625000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 3, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F90468BA65774E93AB87B132EC1C27D2', to_timestamp('27-07-2019 17:15:53.071000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 4, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('ECB20E6EEF2E45998B4F133024A271E7', to_timestamp('27-07-2019 17:15:55.323000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 3, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1976D2D85783442EAD87B00235BEBBA5', to_timestamp('27-07-2019 17:15:58.104000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('3F6BA924AB0E43D19064C591DD1970DC', to_timestamp('27-07-2019 17:16:01.648000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 3, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('D1CC546F8B7E43AA8FCBF77DA70C833A', to_timestamp('27-07-2019 17:16:03.386000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 2, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9B17D493851241C9B3EEA772989A8A0D', to_timestamp('27-07-2019 17:16:04.931000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 3, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('ED483D6D7B054A98AE23534190306F8F', to_timestamp('27-07-2019 17:16:07.488000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 5, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F8BD0AF5C3A149EFAE650FA4B2228805', to_timestamp('27-07-2019 17:16:11.552000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 2, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('8E515E6CEC674C9AA9A116CFDE47D207', to_timestamp('27-07-2019 17:16:20.123000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 11, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('2B93712E47CE450E94BF08B3E05937F9', to_timestamp('27-07-2019 17:16:22.682000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 3, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('71FD25C8829C4B9F997C8B02E4D80EC3', to_timestamp('27-07-2019 17:16:38.967000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 2, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('24624D9AAFD34EAEBC42ABAB0419DD1C', to_timestamp('27-07-2019 17:16:44.966000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 5, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9FF571D778D74C89BDA01D81FF1C763C', to_timestamp('27-07-2019 17:16:48.101000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 7, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('DCECAC84A8F1487FA561A1FBEE3862F8', to_timestamp('27-07-2019 17:16:50.510000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 11, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('96A18138B0294A2B9C946F1C3EA02E95', to_timestamp('27-07-2019 17:17:03.906000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 7, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('102D8ECD642C4E6D8B2C9C25155030F6', to_timestamp('27-07-2019 17:17:06.254000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('307CD56B2D7A4620A637EA30F8F08340', to_timestamp('27-07-2019 17:17:56.005000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 5, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('28BCBC95EEFD48BF97B1C6D0606F040F', to_timestamp('27-07-2019 17:17:58.233000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 5, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A1DB990D2D4243B9B9DA86F29A8B605E', to_timestamp('27-07-2019 17:17:59.869000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 14, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('CFC36AE63D284E16B43471C4265C6424', to_timestamp('27-07-2019 17:18:01.781000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 7, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('B88E1FF1E00A481B9B405B79F5279529', to_timestamp('27-07-2019 17:18:04.216000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E6F0683A1C044227838F2D0A7B045668', to_timestamp('27-07-2019 17:18:06.829000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 8, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('85830CA9226246E79B98478AEA41EBF0', to_timestamp('27-07-2019 17:18:18.696000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/product/findAll.do', 4, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('5BADD8C8F5AA45F59335CC2DEF718A10', to_timestamp('27-07-2019 17:18:28.137000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 1, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('FB4F92FF24DB46279DD263B469EEB49D', to_timestamp('27-07-2019 17:38:18.768000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'zhangsan', '0:0:0:0:0:0:0:1', '/product/findAll.do', 27, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('2B941BD0376041D09718DB56DCED5267', to_timestamp('27-07-2019 17:43:14.793000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'zhangsan', '0:0:0:0:0:0:0:1', '/product/findAll.do', 31, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('FAB1759F65214850BE8CC9A23E6EE389', to_timestamp('27-07-2019 17:44:13.984000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'zhangsan', '0:0:0:0:0:0:0:1', '/product/findAll.do', 4, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('3A03433E8E984D5FBAEF02B0D126EDCC', to_timestamp('27-07-2019 17:44:26.506000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'zhangsan', '0:0:0:0:0:0:0:1', '/product/findAll.do', 4, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('81EC255D118B446C8A65141584F37354', to_timestamp('27-07-2019 17:47:39.669000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'zhangsan', '0:0:0:0:0:0:0:1', '/product/findAll.do', 6, '[类名] com.sszkq.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F7723286279A464B87B5B3458DAAB512', to_timestamp('27-07-2019 18:17:16.564000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 5, '[类名] com.sszkq.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('C5C6EDA8811B43008380B0DB1E1C2DC0', to_timestamp('27-07-2019 18:17:31.420000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 5, '[类名] com.sszkq.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('6D043EE9A46840F3A1F335DEE04F564A', to_timestamp('27-07-2019 18:01:09.571000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 22, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('711687A66A5F4B23A992F0E7C9EB7C81', to_timestamp('27-07-2019 18:02:02.366000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 9, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9DC84CD76B144E8B9B5EF5D0041C3A63', to_timestamp('27-07-2019 18:02:06.203000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/user/findAll.do', 6, '[类名] com.sszkq.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E322DC082D694D1CA5640C16F7DE611B', to_timestamp('27-07-2019 18:02:16.049000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 13, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('3A4DE823622744C7AE2EF849B96133D0', to_timestamp('27-07-2019 18:02:24.663000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/role/findAll.do', 4, '[类名] com.sszkq.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('8FEF0FE553AD4CB8888C20D5BE95DF0F', to_timestamp('27-07-2019 18:02:39.190000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 5, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F165B1D759B0429FA6731B995930A255', to_timestamp('27-07-2019 18:02:40.139000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 4, '[类名] com.sszkq.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('BD63F04B8F7C461E8BF85E13ADC7412F', to_timestamp('27-07-2019 18:02:42.462000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 30, '[类名] com.sszkq.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('FF60BAC02E884C8989ED5C4F164DE4B6', to_timestamp('27-07-2019 18:02:56.016000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 9, '[类名] com.sszkq.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('06FE956D8E21460FA665E59D3403FC5B', to_timestamp('27-07-2019 18:03:02.380000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 10, '[类名] com.sszkq.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('FF3AFB7822A14AC598CAE7B53BA62868', to_timestamp('27-07-2019 18:03:15.351000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hello', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] com.sszkq.controller.OrdersController[方法名] findAll');
commit;
prompt 288 records loaded
prompt Loading USERS...
insert into USERS (id, email, username, password, phonenum, status)
values ('2A7B1526437F47C8B27278CB1DF92C03', '1322922785@qq.com', 'zhangsan', '$2a$10$QaThyvOYhLLxQ63HNWHDiuXw1R/gtgNJKUiTY2iTFFVc.A8dESwiW', '12312331231', 1);
insert into USERS (id, email, username, password, phonenum, status)
values ('4624D18689184A80AE9B852A7D00E901', 'qwe@qq.com', 'lisi', '$2a$10$tpbFYU2gBCEZevej2FeLJexG2Jh.pZycrE0ZerARp3VBl1CDgjYTS', '213123123', 1);
insert into USERS (id, email, username, password, phonenum, status)
values ('11-33-44', 'hello@163.com', 'hello', '$2a$10$tJHudmJh6MRPdiL7mv0yfe0nZJbDHuhl7sSTnqNC4DauMik9ppi4K', '12312312311', 1);
commit;
prompt 3 records loaded
prompt Loading USERS_ROLE...
insert into USERS_ROLE (userid, roleid)
values ('11-33-44', '1114');
insert into USERS_ROLE (userid, roleid)
values ('11-33-44', '243807716A6943349592704519C6D650');
insert into USERS_ROLE (userid, roleid)
values ('2A7B1526437F47C8B27278CB1DF92C03', '1114');
insert into USERS_ROLE (userid, roleid)
values ('4624D18689184A80AE9B852A7D00E901', '227327A1D28D436FB6D5204615E8BFF1');
commit;
prompt 4 records loaded
prompt Enabling foreign key constraints for ORDERS...
alter table ORDERS enable constraint SYS_C0011383;
alter table ORDERS enable constraint SYS_C0011384;
prompt Enabling foreign key constraints for ORDER_TRAVELLER...
alter table ORDER_TRAVELLER enable constraint SYS_C0011387;
alter table ORDER_TRAVELLER enable constraint SYS_C0011388;
prompt Enabling foreign key constraints for ROLE_PERMISSION...
alter table ROLE_PERMISSION enable constraint SYS_C0011398;
alter table ROLE_PERMISSION enable constraint SYS_C0011399;
prompt Enabling foreign key constraints for USERS_ROLE...
alter table USERS_ROLE enable constraint SYS_C0011394;
alter table USERS_ROLE enable constraint SYS_C0011395;
prompt Enabling triggers for MEMBER...
alter table MEMBER enable all triggers;
prompt Enabling triggers for PRODUCT...
alter table PRODUCT enable all triggers;
prompt Enabling triggers for ORDERS...
alter table ORDERS enable all triggers;
prompt Enabling triggers for TRAVELLER...
alter table TRAVELLER enable all triggers;
prompt Enabling triggers for ORDER_TRAVELLER...
alter table ORDER_TRAVELLER enable all triggers;
prompt Enabling triggers for PERMISSION...
alter table PERMISSION enable all triggers;
prompt Enabling triggers for ROLE...
alter table ROLE enable all triggers;
prompt Enabling triggers for ROLE_PERMISSION...
alter table ROLE_PERMISSION enable all triggers;
prompt Enabling triggers for SYSLOG...
alter table SYSLOG enable all triggers;
prompt Enabling triggers for USERS...
alter table USERS enable all triggers;
prompt Enabling triggers for USERS_ROLE...
alter table USERS_ROLE enable all triggers;

set feedback on
set define on
prompt Done
