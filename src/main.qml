import Theme
import QtQuick 2.3

Window {
    visible: true

    width: 700
    height: 500

    title: qsTr("Login")

    Rectangle {
        id: root

        anchors.fill: parent

        color: Theme.background

        TextInput {
            id: login

            text: "Login"
            color: "#cccccc"

            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
