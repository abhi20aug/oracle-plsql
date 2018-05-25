SET DEFINE OFF

CREATE OR REPLACE PACKAGE xxmjf_om_cont_config
IS
   /*****************************************************************************************************
   * File name       : xxmjf_om_cont_config.pks
   * Author          : Arun Sharma
   * Created         : 26-Nov-2014
   * Description     : Used to Container Configuration
   *++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   *  Date          Author          Version     Reason
   * +++++++++++   +++++++++++     +++++++++++ +++++++++++
   * 26-Nov-2014   Arun Sharma        1.0       Initial creation
   ******************************************************************************************************/
   TYPE type_line_rec IS RECORD (
      i_order_line_id       NUMBER
     ,i_order_header_id     NUMBER
     ,i_order_number        NUMBER
     ,i_order_line_number   NUMBER
     ,i_inventory_item_id   NUMBER
     ,i_ordered_quantity    NUMBER
     ,i_split_quantity      NUMBER
     ,i_reuqest_date        DATE
   );

   TYPE type_line_tab IS TABLE OF type_line_rec
      INDEX BY BINARY_INTEGER;

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
-- |1.0        05-JAN-2014   IBM - Arun         Initial Version         |
-- +====================================================================+
   FUNCTION fun_delivery_created (
      p_header_id   IN   NUMBER
   )
      RETURN VARCHAR2;

-- +====================================================================+
-- | Function Name:  prc_autocreate_deliveries                          |
-- |                                                                    |
-- | Description:                                                       |
-- |                                                                    |
-- |                                                                    |
-- |Change Record:                                                      |
-- |===============                                                     |
-- |Version    Date           Author             Remarks                |
-- |=======    ==========    =============      ========================|
-- |1.0        05-JAN-2014   IBM - Arun         Initial Version         |
-- +====================================================================+
   PROCEDURE prc_autocreate_deliveries (
      p_delivery_detail_ids   IN       wsh_util_core.id_tab_type
     ,x_delivery_id           OUT      NUMBER
     ,x_return_status         OUT      VARCHAR2
     ,x_error_message         OUT      VARCHAR2
   );

-- +====================================================================+
-- | Function Name:  prc_assign_deliveries                              |
-- |                                                                    |
-- | Description:                                                       |
-- |                                                                    |
-- |                                                                    |
-- |Change Record:                                                      |
-- |===============                                                     |
-- |Version    Date           Author             Remarks                |
-- |=======    ==========    =============      ========================|
-- |1.0        05-JAN-2014   IBM - Arun         Initial Version         |
-- +====================================================================+
   PROCEDURE prc_assign_deliveries (
      p_delivery_id           IN       NUMBER
     ,p_delivery_detail_ids   IN       wsh_delivery_details_pub.id_tab_type
     ,x_return_status         OUT      VARCHAR2
     ,x_error_message         OUT      VARCHAR2
   );

-- +====================================================================+
-- | Function Name:  prc_unassign_deliveries                            |
-- |                                                                    |
-- | Description:                                                       |
-- |                                                                    |
-- |                                                                    |
-- |Change Record:                                                      |
-- |===============                                                     |
-- |Version    Date           Author             Remarks                |
-- |=======    ==========    =============      ========================|
-- |1.0        05-JAN-2014   IBM - Arun         Initial Version         |
-- +====================================================================+
   PROCEDURE prc_unassign_deliveries (
      p_delivery_id           IN       NUMBER
     ,p_delivery_detail_ids   IN       wsh_delivery_details_pub.id_tab_type
     ,x_return_status         OUT      VARCHAR2
     ,x_error_message         OUT      VARCHAR2
   );

-- +====================================================================+
-- | Function Name:  prc_cancel_order_line                              |
-- |                                                                    |
-- | Description:                                                       |
-- |                                                                    |
-- |                                                                    |
-- |Change Record:                                                      |
-- |===============                                                     |
-- |Version    Date           Author             Remarks                |
-- |=======    ==========    =============      ========================|
-- |1.0        05-JAN-2014   IBM - Arun         Initial Version         |
-- +====================================================================+
   PROCEDURE prc_cancel_order_line (
      p_user_id         IN       NUMBER
     ,p_org_id          IN       NUMBER
     ,p_header_id       IN       NUMBER
     ,p_line_id         IN       NUMBER
     ,p_qty             IN       NUMBER
     ,x_return_status   OUT      VARCHAR2
     ,x_error_message   OUT      VARCHAR2
   );

-- +====================================================================+
-- | Function Name:  prc_split_order_line                               |
-- |                                                                    |
-- | Description:                                                       |
-- |                                                                    |
-- |                                                                    |
-- |Change Record:                                                      |
-- |===============                                                     |
-- |Version    Date           Author             Remarks                |
-- |=======    ==========    =============      ========================|
-- |1.0        05-JAN-2014   IBM - Arun         Initial Version         |
-- +====================================================================+
   PROCEDURE prc_split_order_line (
      p_user_id         IN       NUMBER
     ,p_org_id          IN       NUMBER
     ,p_header_id       IN       NUMBER
     ,p_line_tbl        IN       type_line_tab
     ,x_return_status   OUT      VARCHAR2
     ,x_error_message   OUT      VARCHAR2
   );

-- +====================================================================+
-- | Function Name:  prc_update_order_line                              |
-- |                                                                    |
-- | Description:                                                       |
-- |                                                                    |
-- |                                                                    |
-- |Change Record:                                                      |
-- |===============                                                     |
-- |Version    Date           Author             Remarks                |
-- |=======    ==========    =============      ========================|
-- |1.0        05-JAN-2014   IBM - Arun         Initial Version         |
-- +====================================================================+
   PROCEDURE prc_update_order_line (
      p_user_id              IN       NUMBER
     ,p_org_id               IN       NUMBER
     ,p_header_id            IN       NUMBER
     ,p_line_id              IN       NUMBER
     ,p_quantity             IN       NUMBER DEFAULT NULL
     ,p_schedule_ship_date   IN       DATE DEFAULT NULL
     ,p_ship_method          IN       VARCHAR2 DEFAULT NULL
     ,x_return_status        OUT      VARCHAR2
     ,x_error_message        OUT      VARCHAR2
   );
END xxmjf_om_cont_config;
