Create Database If Not Exists demo_spring  default character set utf8 collate utf8_general_ci;

create user If Not Exists nvd11@'%' identified by 'hsbc1234';

grant select,insert,update,delete,create,drop on demo_spring.* to nvd11;

flush  privileges;  -- immediately apply changes