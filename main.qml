import QtQuick 2.5
import QtQuick.Window 2.2
import "CreateImage.js" as CreImage
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Rectangle{
        id: page
        height: parent.height
        width: parent.width
        Component.onCompleted: {
            CreImage.createImage(100, 100, 200, 300, "images/a7.png")
            CreImage.createImage(100, 0, 100, 200, "images/a6.png")
        }
    }

}
