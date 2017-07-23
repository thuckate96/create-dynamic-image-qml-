import QtQuick 2.5

Item {
    property var yourSource: ""
    property int imgWid: 100
    property int imgHei: 150
    Image {
        id: image
        source: yourSource
        width: imgWid
        height: imgHei
        Drag.active: clicked.drag.active
        Drag.hotSpot.x: image.x
        Drag.hotSpot.y: image.y
        MouseArea{
            id: clicked
            anchors.fill: parent
            drag.target: parent

            onClicked: console.log(image)
        }
    }
}
