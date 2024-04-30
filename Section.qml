import QtQuick 2.0
import QtQml 2.12

Canvas {
    id: root
    x: dragged ? _sectionPath.x : 0
    y: dragged ? _sectionPath.y : 0
    width: 100
    height: 100

    property real sAngle: 0
    property real eAngle: 0
    property bool dragged: root_mouse_area.drag.active
    property string sectionColor: "yellow"

    onDraggedChanged: console.log("root.dragged: ",root.dragged)

    onPaint: {
        var ctx = getContext("2d");
        ctx.clearRect(0, 0, root.width, root.height);

        var centerX = root.width / 2;
        var centerY = root.height / 2;
        var radius = Math.min(centerX, centerY);
        var startAngle = sAngle
        var endAngle = eAngle
        var counterClockwise = false;

        ctx.beginPath();
        ctx.moveTo(centerX, centerY);
        ctx.arc(centerX, centerY, radius, startAngle, endAngle, counterClockwise);
        ctx.closePath();
        ctx.fillStyle = sectionColor;
        ctx.fill();
        ctx.lineWidth = 2;
        ctx.strokeStyle = "black";
        ctx.stroke();
    }
    MouseArea{
        id: root_mouse_area
        anchors.fill: parent
        drag.target: root
        onPositionChanged: _sectionPath.addCordinates(root.x,root.y)
        onReleased:_sectionPath.getCordinated()
    }
}
