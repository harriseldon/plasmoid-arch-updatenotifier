import QtQuick 2.0
import QtQuick.Layouts 1.0 as QtLayouts
import QtQuick.Controls 1.2
import org.kde.plasma.components 2.0 as PlasmaComponents

Item {
    id: pacmanPage

    width: childrenRect.width
    height: childrenRect.height

    property alias updatechecker: updatechecker.text
    property alias updatechecker_aur: updatechecker_aur.text
    property alias installationcommand: installationcommand.text

    QtLayouts.GridLayout {
        columns: 2

        PlasmaComponents.Label {
            //text: i18n("Update Checker: ")
            text: "UPDATE CHECKER: "
        }

        TextInput {
            id: updatechecker
        }

        PlasmaComponents.Label {
           text: i18n("Update Checker AUR: ")

        }
        TextInput {
          id: updatechecker_aur
        }

        PlasmaComponents.Label {
          text: i18n("Installation Command: ")
        }

        TextInput {
          id: installationcommand
        }

    }
}
