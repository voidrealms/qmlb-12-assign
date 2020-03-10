import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        id: column
        width: 300
        height: 237
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Genie {
            id: genie
            onGenerated: label.text = value
        }

        Label {
            id: label
            text: qsTr("No Number Yet...")
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 25
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
