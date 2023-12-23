create table car
(
    id                  bigint   not null,
    doors               smallint not null,
    kilometres          integer  not null,
    fuel                enum('Diesel', 'Petrol'),
    model               enum( 'SUV', 'SPORTS_CAR', 'COUPE', 'MINIVAN', 'CONVERTIBLE', 'HATCHBACK', 'SEDAN', 'PICKUP_TRUCK'),
    gear                enum('Automatic', 'Manual'),
    name                varchar(50),
    registration_number integer  not null,
    seats               smallint not null,
    dealer_id           bigint   not null,
    primary key (id)
);

create table customer
(
    id         bigint      not null,
    email      varchar(50) not null,
    first_name varchar(16),
    last_name  varchar(16),
    primary key (id)
);

create table dealer
(
    id         bigint      not null,
    email      varchar(50) not null,
    first_name varchar(16),
    last_name  varchar(16),
    primary key (id)
);


create table transaction
(
    id          bigint not null,
    date        datetime(6),
    car_id      bigint,
    customer_id bigint,
    dealer_id   bigint,
    primary key (id)
);

create table car_seq
(
    next_val bigint
);

create table customer_seq
(
    next_val bigint
);

create table dealer_seq
(
    next_val bigint
);

create table transaction_seq
(
    next_val bigint
);