
import QtQuick 2.0
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.plasmoid 2.0

Item {
  id: itemIcon
  PlasmaCore.IconItem {
      id: itemIconImage
      anchors.fill: parent
      anchors.margins: units.smallSpacing
      source: "package-new"
  }
  Rectangle {
    id: whitecircle
    width: packageCount.width + 6
    height: width
    radius: Math.round(width / 2 + 1)
    color: "White"
    opacity: 0.7
    visible: packageModel.count > 0
    anchors {
      right: parent.right
      top: parent.top
    }
  }
  Rectangle {
      id: circle
      width: packageCount.width + 4
      height: width
      radius: Math.round(width / 2)
      color: "Red"
      opacity: 0.7
      visible: packageModel.count > 0
      anchors {
          right: parent.right
          top: parent.top
      }
  }

  Text {
    id: packageCount
    text: packageModel.count
    font.pointSize: 8
    color: "White"
    anchors.centerIn: circle
    visible: circle.visible
  }

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
