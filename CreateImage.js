var component
function createImage(x,y, wid, hei, source){
    component = Qt.createComponent("AuImage.qml")
    if(component.status === Component.Ready || component.status === Component.Error)
        finishCreation(x,y, wid, hei, source)
    else
        component.statusChanged.connect(finishCreation)
}

function finishCreation(x,y, wid, hei, source){
    if(component.status === Component.Ready){
        var image = component.createObject(page, {"x": x, "y": y, "imgWid": wid, "imgHei": hei, "yourSource": source})
        if(image === null)
            console.log("error creating image")
    }else if(component.status === Component.Error)
        console.log("Error to load component: ", component.errorString())
}
