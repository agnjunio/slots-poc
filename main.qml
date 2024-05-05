import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 2.12
import QtQuick.Window 2.12

ApplicationWindow {
    width: 320
    height: 240

    visible: true

    title: "Slots POC"

    background: Rectangle {
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#ffffff"
            }

            GradientStop {
                position: 1
                color: "#a0c1bbf9"
            }
        }
    }

    Rectangle {
        anchors.centerIn: parent

        color: "#10000000"

        width: 320
        height: 240

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 50

            spacing: 1

            Text {
                text: "Login"

                Layout.alignment: Qt.AlignHCenter
            }

            TextField {
                id: login

                Layout.fillWidth: true

                placeholderText: "Username"
            }

            TextField {
                id: password

                Layout.fillWidth: true

                placeholderText: "Password"
                echoMode: TextInput.Password
            }

            Button {
                text: "Login"

                Layout.fillWidth: true
            }
        }
    }
}
