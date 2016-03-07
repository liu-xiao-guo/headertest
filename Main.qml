import QtQuick 2.4
import Ubuntu.Components 1.3

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    id: main
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "headertest.liu-xiao-guo"

    width: units.gu(100)
    height: units.gu(85)

    Page {
        id: page
        title: "headertest"
        header: Item { visible:false }

        Column {
            spacing: units.gu(1)
            anchors {
                margins: units.gu(2)
                fill: parent
            }

            Button {
                objectName: "button"
                width: parent.width

                text: i18n.tr("Tap me!")

                onClicked: {
                    main.headerColor = "red"
                    main.backgroundColor = "blue"
                    main.footerColor = "yellow"
                    page.header.visible = false
                }
            }
        }
    }
}

