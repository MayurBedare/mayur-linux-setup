import Quickshell
import QtQuick

ShellRoot {
    PanelWindow {
        anchors {
            top: true
            left: true
            right: true
        }

        implicitHeight: 36

        Rectangle {
            anchors.fill: parent
            color: "#1e1e2e"

            Text {
                anchors.centerIn: parent
                text: "Mayur Shell v1"
                color: "#cba6f7"
                font.pixelSize: 16
            }
        }
    }
}
