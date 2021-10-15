import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../components"
Item {
    id:root
    Component.onCompleted: {
        // update data for climate
        //============update data for fan level=======================
        climateAreaId.fanLvData = "qrc:/Img/Climate/widget_climate_wind_level_0"+CLIMATE_CTRL.fan_level+".png";
        //============update data for driver's temperature============
        if (CLIMATE_CTRL.driver_temp == 16.5) {
            climateAreaId.seatDriverTem = "LOW"
        } else if (CLIMATE_CTRL.driver_temp == 31.5) {
            climateAreaId.seatDriverTem = "HIGH"
        } else {
            climateAreaId.seatDriverTem = CLIMATE_CTRL.driver_temp+"\xB0 C"
        }
        //============update data for passenger's temperature============
        if (CLIMATE_CTRL.passenger_temp == 16.5) {
            climateAreaId.seatPassTemp= "LOW"
        } else if (CLIMATE_CTRL.passenger_temp == 31.5) {
            climateAreaId.seatPassTemp = "HIGH"
        } else {
            climateAreaId.seatPassTemp = CLIMATE_CTRL.passenger_temp+"\xB0 C"
        }

        //============update data for auto mode========================
        if(CLIMATE_CTRL.auto_mode == 0)
        {
            climateAreaId.autoMode = "#1E90FF"
        }else if(CLIMATE_CTRL.auto_mode == 1)
        {
            climateAreaId.autoMode = "white"
        }
        //==============update data for sync mode====================
        if(CLIMATE_CTRL.sync_mode == 0)
        {
            climateAreaId.syncMode =  "#1E90FF"
        }else if(CLIMATE_CTRL.sync_mode == 1)
        {
            climateAreaId.syncMode = "white"
        }
        //====================update data for dirver wind direction==============
        if(CLIMATE_CTRL.driver_wind_mode == 0)
        {
            climateAreaId.fanDriverDown = "qrc:/Img/Climate/widget_climate_arrow_02_n.png"
            climateAreaId.fanDriverUp = "qrc:/Img/Climate/widget_climate_arrow_01_s_b.png"

        }else if(CLIMATE_CTRL.driver_wind_mode == 1)
        {
            climateAreaId.fanDriverDown = "qrc:/Img/Climate/widget_climate_arrow_02_s_b.png"
            climateAreaId.fanDriverUp = "qrc:/Img/Climate/widget_climate_arrow_01_n.png"
        }else if(CLIMATE_CTRL.driver_wind_mode == 2)
        {
            climateAreaId.fanDriverDown = "qrc:/Img/Climate/widget_climate_arrow_02_s_b.png"
            climateAreaId.fanDriverUp = "qrc:/Img/Climate/widget_climate_arrow_01_s_b.png"

        }
        //====================update data for passenger wind direction==============
        if(CLIMATE_CTRL.passenger_wind_mode == 0)
        {
            climateAreaId.fanPassDown = "qrc:/Img/Climate/widget_climate_arrow_02_n.png"
            climateAreaId.fanPassUp = "qrc:/Img/Climate/widget_climate_arrow_01_s_b.png"

        }else if(CLIMATE_CTRL.passenger_wind_mode ==1)
        {
            climateAreaId.fanPassDown = "qrc:/Img/Climate/widget_climate_arrow_02_s_b.png"
            climateAreaId.fanPassUp = "qrc:/Img/Climate/widget_climate_arrow_01_n.png"

        }else if(CLIMATE_CTRL.passenger_wind_mode ==2)
        {
            climateAreaId.fanPassDown = "qrc:/Img/Climate/widget_climate_arrow_02_s_b.png"
            climateAreaId.fanPassUp = "qrc:/Img/Climate/widget_climate_arrow_01_s_b.png"
        }
    }
    Image{
        anchors.fill: parent
        source: "qrc:/Img/bg_full.png"
    }
    StatusBar{
        id:headerAreaId
        width: parent.width
        height: 60
    }
    WidgetClimate{
        id:climateAreaId
        bgrOpacity: 0
        anchors.centerIn: parent
    }
}
