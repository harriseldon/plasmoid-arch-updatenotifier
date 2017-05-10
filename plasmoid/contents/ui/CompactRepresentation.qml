
import QtQuick 2.0
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.plasmoid 2.0

PlasmaCore.IconItem {

    anchors.fill: parent
    source: Plasmoid.icon

    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.MiddleButton
        onClicked: {
            if (mouse.button == Qt.MiddleButton) {
                main.action_updateSystem()
            } else {
                plasmoid.expanded = !plasmoid.expanded
            }
        }
    }
}
