import QtQuick 2.0
import QtQuick.Controls 2.3

Item {
    id: root
    property double value: 0.0
    property double fromValue: 0.25
    property double toValue: 0.75
    signal generated(int value)
    width: 300
    height: 175

    function updateDisplay() {
        label.text = Math.round(rangeSlider.first.value * 100) + " to " + Math.round(rangeSlider.second.value * 100)
    }


    Column {
        id: column
        spacing: 10
        anchors.fill: parent

        Label {
            id: label

            text: qsTr("Label")
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 15
            font.bold: true
        }

        RangeSlider {
            id: rangeSlider
            anchors.horizontalCenter: parent.horizontalCenter
            second.value: 0.75
            first.value: 0.25

            first.onValueChanged: updateDisplay()
            second.onValueChanged: updateDisplay()
        }

        Button {
            id: button
            text: qsTr("Generate")
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: {
                //Generate the random number
                console.log("From: " + rangeSlider.first.value)
                console.log("To: " + rangeSlider.second.value)

                var min = rangeSlider.first.value * 100
                var max = rangeSlider.second.value * 100

                var total = Math.floor(Math.random() * (max - min + 1) + min);
                console.log(total)
                generated(total)
            }
        }
    }



}

/*##^##
Designer {
    D{i:1;anchors_height:400;anchors_width:200}
}
##^##*/
