import QtQuick 2.15

Window {
    visible: true
    width: 640
    height: 480
    title: "My Qt App"

    Rectangle {
        width: 100
        height: 50
        color: "lightgray"
        radius: 10
        border.color: "black"
        border.width: 2
        anchors.centerIn: parent

        Text {
            text: "Click Me!"
            anchors.centerIn: parent
            font.pixelSize: 16
        }

        MouseArea {
            anchors.fill: parent
            onClicked: console.log("Button Clicked!")
        }
    }
}
