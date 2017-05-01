import QtQuick 2.0
import QtQuick.Layouts 1.0 as QtLayouts
import QtQuick.Controls 1.2
import org.kde.plasma.components 2.0 as PlasmaComponents

Item {
    id: generalPage

    width: childrenRect.width
    height: childrenRect.height

    property alias pollinterval: spinbox.value

    QtLayouts.RowLayout {
        PlasmaComponents.Label {
            text: i18n("Polling interval: ")
        }

        SpinBox {
            id: spinbox

            suffix: i18ncp("Polling interval in minutes", "min", "min", value)
            minimumValue: 1
            maximumValue: 90
        }
    }
}
