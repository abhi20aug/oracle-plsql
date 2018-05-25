SET define OFF

CREATE OR REPLACE PACKAGE BODY XXAA_NEAR_BY_PKG AUTHID CURRENT_USER
IS
   /***************************************************************************
   * File name       : XXAA_NEAR_BY_PKG.pkb
   * Author          : Abhishek Agrawal
   * Created         : 24-May-2018
   * Description     : 
   *+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   *  Date          Author          Version     Reason
   * +++++++++++   +++++++++++     +++++++++++ +++++++++++
   * 24-May-2018   Abhishek Sharma        1.0       Initial creation
   *****************************************************************************/
   /*FUNCTION fun_debug (
      pi_1   VARCHAR2 DEFAULT NULL
     ,pi_2   VARCHAR2 DEFAULT NULL
   )
      RETURN NUMBER
   IS
      PRAGMA AUTONOMOUS_TRANSACTION;
   BEGIN
      INSERT INTO xxmjf_debug_temp
           VALUES (pi_1
                  ,pi_2
                  );

      COMMIT;
      RETURN 0;
   END fun_debug;*/

   -- +====================================================================+
-- | Function Name:  fun_delivery_created                               |
-- |                                                                    |
-- | Description:                                                       |
-- |                                                                    |
-- |                                                                    |
-- |Change Record:                                                      |
-- |===============                                                     |
-- |Version    Date           Author             Remarks                |
-- |=======    ==========    =============      ========================|
-- |1.0        05-JAN-2014                       Initial Version         |
-- +====================================================================+

   function getWeather(
     p_location in location_rec
   ) 
   return weather_rec_tab 
    is
    begin
      --call api which gets data from location_rec and process and returns the wetather.
        --http://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22      
    end getWeather;
-- https://asktom.oracle.com/pls/apex/asktom.search?tag=need-to-call-restful-api-using-oracle-pl-sql

    FUNCTION registeruser (
        user_rec IN user_data%rowtype
    ) RETURN BOOLEAN;
    is
    begin
      
    end name;

END XXAA_NEAR_BY_PKG;
