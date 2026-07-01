import QtQuick
import QtQuick.Controls
import org.kde.plasma.plasmoid
import QMLTermWidget 2.0

PlasmoidItem {
    id: root

    implicitWidth: 800
    implicitHeight: 500

    preferredRepresentation: fullRepresentation

    fullRepresentation: Item {

        QMLTermWidget {
            id: terminal
            anchors.fill: parent

            font.family: "Monospace"
            font.pointSize: 12
            colorScheme: "DarkPastels"

            session: QMLTermSession {
                id: btopSession
                shellProgram: "/usr/bin/btop"
                shellProgramArgs: []
                initialWorkingDirectory: "$HOME"

                onFinished: btopSession.startShellProgram()
            }

            Component.onCompleted: {
                btopSession.startShellProgram()
                terminal.forceActiveFocus()
            }

            QMLTermScrollbar {
                terminal: terminal
                width: 6
                Rectangle {
                    anchors.fill: parent
                    color: "#888"
                    radius: 3
                    opacity: parent.opacity
                }
            }
        }
    }
}
