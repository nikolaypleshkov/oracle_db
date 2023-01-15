-- Функционална част

-- 1. Разработка на модул за добавяне, премахване, променяне и
-- извеждане (CRUD) на потребители (клиенти).
CREATE OR REPLACE PACKAGE customers_pkg AS

    TYPE customer_info_type IS RECORD (
        first_name VARCHAR2(255),
        surname VARCHAR2(255),
        additional_name VARCHAR2(255),
        address VARCHAR2(255),
        mobile_phone VARCHAR2(255),
        email VARCHAR2(255)
    );
    -- добавяне на нов клиент
    PROCEDURE add_customer (first_name VARCHAR2, surname VARCHAR2, additional_name VARCHAR2, address VARCHAR2, mobile_phone VARCHAR2, email VARCHAR2);
    -- променяне на съществуващ клиент
    PROCEDURE update_customer (customer_id NUMBER, first_name VARCHAR2, surname VARCHAR2, additional_name VARCHAR2, address VARCHAR2, mobile_phone VARCHAR2, email VARCHAR2);
    -- премахване на клиент
    PROCEDURE delete_customer (customer_id NUMBER);

    FUNCTION get_customer (customer_id NUMBER) RETURN customer_info_type;

END customers_pkg;

    CREATE OR REPLACE PACKAGE BODY customers_pkg AS
    -- добавяне на нов клиент
    PROCEDURE add_customer (first_name VARCHAR2, surname VARCHAR2, additional_name VARCHAR2, address VARCHAR2, mobile_phone VARCHAR2, email VARCHAR2)
    AS
    BEGIN
        INSERT INTO Customers (first_name, surname,additional_name, address, mobile_phone, email)
        VALUES (first_name, surname, additional_name, address, mobile_phone, email);
        COMMIT;
    END add_customer;

    FUNCTION get_customer (id NUMBER)
    RETURN customer_info_type
    AS
        customer_info customer_info_type;
    BEGIN
        SELECT first_name, surname, additional_name, address, mobile_phone, email
        INTO customer_info
        FROM Customers
        WHERE id = customer_id;
        RETURN customer_info;
    END get_customer;

    -- премахване на клиент
    PROCEDURE remove_customer (id NUMBER)
    AS
    BEGIN
        DELETE FROM Customers
        WHERE id = customer_id;
        COMMIT;
    END remove_customer;

    -- променяне на съществуващ клиент
    PROCEDURE modify_customer (id NUMBER, first_name VARCHAR2, surname VARCHAR2, additional_name VARCHAR2, address VARCHAR2, mobile_phone VARCHAR2, email VARCHAR2)
    AS
    BEGIN
        UPDATE Customers
        SET first_name = first_name, surname = surname, additional_name = additional_name, address = address, mobile_phone = mobile_phone, email = email
        WHERE id = customer_id;
        COMMIT;
    END modify_customer;
END customers_pkg;


-- 2. Разработка на модул за добавяне, премахване, променяне и
-- извеждане (CRUD) на сметки.
CREATE OR REPLACE PACKAGE accounts_pkg AS

    TYPE account_info_type IS RECORD (
        account_number VARCHAR2(255),
        balance NUMBER,
        currency VARCHAR2(255)
    );

    -- добавяне на нова сметка
    PROCEDURE add_account (account_number VARCHAR2, balance NUMBER, currency VARCHAR2);

    FUNCTION get_account (account_number VARCHAR2) RETURN account_info_type;

    -- премахване на сметка
    PROCEDURE remove_account (account_number VARCHAR2);

    -- променяне на съществуваща сметка
    PROCEDURE modify_account (account_number VARCHAR2, balance NUMBER, currency VARCHAR2);

END accounts_pkg;

    CREATE OR REPLACE PACKAGE BODY accounts_pkg AS

    -- добавяне на нова сметка
    PROCEDURE add_account (account_number VARCHAR2, balance NUMBER, currency VARCHAR2)
    AS
    BEGIN
        INSERT INTO Accounts (account_number, balance, currency)
        VALUES (account_number, balance, currency);
        COMMIT;
    END add_account;

    FUNCTION get_account (account_number VARCHAR2)
    RETURN account_info_type
    AS
        account_info account_info_type;
    BEGIN
        SELECT account_number, balance, currency
        INTO account_info
        FROM Accounts
        WHERE account_number = account_number;
        RETURN account_info;
    END get_account;

    -- премахване на сметка
    PROCEDURE remove_account (account_number VARCHAR2)
    AS
    BEGIN
        DELETE FROM Accounts
        WHERE account_number = account_number;
        COMMIT;
    END remove_account;

    -- променяне на съществуваща сметка
    PROCEDURE modify_account (account_number VARCHAR2, balance NUMBER, currency VARCHAR2)
    AS
    BEGIN
        UPDATE Accounts
        SET balance = balance, currency = currency
        WHERE account_number = account_number;
        COMMIT;
    END modify_account;

END accounts_pkg;


-- 5. Да се имплементира начин проследяване на промените един от модулите.
-- за целта ще използвам отделна LOGS таблица, която ще следи за промени в другите таблици
CREATE TABLE LOGS (
    id NUMBER,
    table_name VARCHAR2(255),
    action VARCHAR2(255),
    pk_value VARCHAR2(255),
    old_data CLOB,
    new_data CLOB,
    change_date TIMESTAMP
);

-- Tригери за автоматично вмъкване на данни в таблицата LOGS, когато се правят промени в други таблици.

CREATE OR REPLACE TRIGGER CUSTOMERS_INSERT_LOGS
AFTER INSERT ON Customers
FOR EACH ROW
DECLARE
    new_data CLOB;
BEGIN
    new_data := sys.dbms_debug_vc2coll(to_char(:new.first_name) || ',' || to_char(:new.surname)|| ',' || to_char(:new.additional_name) || ',' || to_char(:new.address) || ',' || to_char(:new.mobile_phone) || ',' || to_char(:new.email));
    INSERT INTO LOGS (table_name, action, pk_value, new_data, change_date)
    VALUES ('Customers', 'INSERT', to_char(:new.customer_id), new_data, systimestamp);
END;

CREATE OR REPLACE TRIGGER CUSTOMERS_UPDATE_LOGS
AFTER UPDATE ON Customers
FOR EACH ROW
DECLARE
    old_data CLOB;
    updated_data CLOB;
BEGIN
    old_data := sys.dbms_debug_vc2coll(to_char(:old.first_name) || ',' || to_char(:old.surname) || ',' || to_char(:old.additional_name) || ',' || to_char(:old.address) || ',' || to_char(:old.mobile_phone) || ',' || to_char(:old.email));
    updated_data := sys.dbms_debug_vc2coll(to_char(:new.first_name) || ',' || to_char(:new.surname) || ',' || to_char(:new.additional_name) || ',' || to_char(:new.address) || ',' || to_char(:new.mobile_phone) || ',' || to_char(:new.email));
    INSERT INTO LOGS (table_name, action, pk_value, new_data, change_date)
    VALUES ('Customers', 'UPDATE', to_char(:new.customer_id), new_data, systimestamp);
END;
