import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import RibbonUI

// Custom your MainView here
RibbonView{
    anchors.fill: parent
    property alias view: view
    SwipeView{
        id: view
        property alias item: loader.item
        Layout.fillHeight: true
        Layout.fillWidth: true
        spacing: 0
        Loader {
            id: loader
            source: {
                switch(view.currentIndex)
                {
                case 0:
                    return `../pages/Home.qml`
                case 1:
                    return `../pages/GenKey.qml`
                case 2:
                    return `../pages/SearchKey.qml`
                }
            }
        }
    }
}
