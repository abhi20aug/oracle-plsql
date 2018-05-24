select * from  PROD_DATA;
select * from  USER_DATA;
select * from  SUPPLIER_DATA;

--Approach:
/*
explore nearby


*/

-- craete a rest api / create a plsql package to login authentication?
-- 

--create a function to identify stores in vicinity of user location?
CREATE or replace FUNCTION getstoredata (
    p_pincode     VARCHAR2,
    p_user_lat    VARCHAR2,
    p_user_long   VARCHAR2
) return ref_cursor 
is 

cursor c_getstoredata (v_lat, v_long)
is
select * from supplier_data where 


begin 
--


exception
when others then
null;
end getstoredata;

