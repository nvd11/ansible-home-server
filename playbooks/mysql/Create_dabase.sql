Create Database If Not Exists demo_spring  default character set utf8 collate utf8_general_ci;
Create Database If Not Exists demo_cloud_order  default character set utf8 collate utf8_general_ci;
Create Database If Not Exists demo_cloud_user  default character set utf8 collate utf8_general_ci;

create user If Not Exists cloud_order@'%' identified by 'hsbc1234';
create user If Not Exists cloud_user@'%' identified by 'hsbc1234';
create user If Not Exists nvd11@'%' identified by 'hsbc1234';

grant select,insert,update,delete,create,drop on demo_spring.* to nvd11;
grant select,insert,update,delete,create,drop on demo_cloud_order.* to cloud_order;
grant select,insert,update,delete,create,drop on demo_cloud_user.* to cloud_user;

flush  privileges;  -- immediately apply changes