CREATE OR REPLACE PACKAGE xxaa_near_by_pkg AUTHID current_user AS
--------------------------------------------------------------------------------------------
/*
 Created By    :  Abhishek Agrawal
 Creation Date :  24-May-2018
 File Name     :  XXAA_NEAR_BY_PKG.pks
 Description   : This script creates the specification of the package
                 XXAA_NEAR_BY_PKS
 Change History:
 Date                  Name                        Remarks
 -----------        ----------------       -------------------------------------
 24-May-2018       Abhishek Agrawal             Initial development.
 
 https://docs.oracle.com/database/121/SPATL/toc.htm
 */
------------------------------------------------------------------------------------------
  
    /*
    Application Design:
    --Display NearBy based on
        --Location
        --Season
        --Weather
        --Time
            Input:
                --Location
                -- Fetch Default from public api
                    --Season
                    --Weather
                    --Time
                    --

    --Registration
        -- New User
        -- Exisitng User Validation
        -- Merge with Phone No.
    -- Login 
        -- Based on User Name
            -- Input: UserName, 
        -- Based on OAuth?
        -- Based on fb/g+ etc
    -- Home Page
    -- Listing Page
    -- Order Data
    -- Recommandation
    */
    
    /*
    Need to list users which are valid for 
    */
    TYPE location_rec IS RECORD ( location_latitude NUMBER,location_longitude NUMBER );
    TYPE location_rec_tab IS TABLE OF location_rec INDEX BY BINARY_INTEGER;
    TYPE weather_rec IS RECORD ( day_time NUMBER, weather_condition NUMBER );
    TYPE weather_rec_tab IS TABLE OF weather_rec INDEX BY BINARY_INTEGER;

    --TYPE user_rec IS RECORD user_data%rowtype;
    TYPE user_rec_tab IS TABLE OF user_data%rowtype INDEX BY BINARY_INTEGER;

    
    gv_time date;
    gv_season VARCHAR2(50);
    
    FUNCTION getweather (
        p_location IN location_rec
    ) RETURN weather_rec_tab;

    FUNCTION getseason (
        p_location IN location_rec
    ) RETURN VARCHAR2;

    FUNCTION registeruser (
        user_rec IN user_data%rowtype
    ) RETURN BOOLEAN;

    FUNCTION loginvalidate (
        user_rec IN user_data%rowtype
    ) RETURN BOOLEAN;

    PROCEDURE userprofiledata (
        user_id    IN NUMBER,
        user_rec   OUT user_data%rowtype
    );

    PROCEDURE getuserdata (
        errbuf       OUT VARCHAR2,
        retcode      OUT NUMBER,
        p_sup_name   VARCHAR2,
        p_run_mode   VARCHAR2
    );

END xxaa_near_by_pkg;
/

SHOW ERRORS

EXIT