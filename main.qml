import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: "My Qt App"

    Button {
        text: "Click Me!"
        anchors.centerIn: parent
        onClicked: console.log("Button Clicked!")
    }
}
