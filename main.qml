import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480

    visible: true

    title: qsTr("Login")

    Rectangle {
        id: root

        anchors.fill: parent

        TextInput {
            id: login

            text: "Login"
            color: "#cccccc"

            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
