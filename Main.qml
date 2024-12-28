import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Layouts 2.15

ApplicationWindow {
    visible:true
    width: 444
    height: 444
    title:"Image"

    Rectangle {
        width: 600
        height: 600
        color:"gray"
            ListView {
                anchors.fill: parent
                spacing:1
                model:ListModel {
                    ListElement { name:"Bluetooth"; photo:"file:///C:/Users/MUSTAFA%20OK/Desktop/PNGS/Bluetooth.png"} // your png way
                    ListElement { name:"Wifi"; photo:"file:///C:/Users/MUSTAFA%20OK/Desktop/PNGS/WiFi.png"} // your png way

                }
                delegate:Rectangle {
                    width:ListView.view.width
                    height: 50
                    border.color:"gray"
                    Image {
                             source:photo
                             width: 50
                             height: 50
                             anchors.left:parent.left
                             anchors.leftMargin: 10
                         }
                    Text {
                        text:name
                        font.pixelSize: 30
                        font.bold:true
                        anchors.centerIn:parent
                    }
                    Switch {
                        anchors.right:parent.right
                    }


                }
            }

    }


}

