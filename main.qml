import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Particles 2.12


Window {
    id: root
    width: 500
    height: 500
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: id_main_rect
        anchors.fill: parent
        color: "black"

        Rectangle{
            id: id_bigger_wheel
            width: parent.width/4
            height: parent.width/4
            anchors.centerIn: parent
            radius: 100
            color: "red"
        }
        Rectangle{
            id: id_small_wheel
            width: parent.width/4 * 0.8
            height: parent.width/4 * 0.8
            anchors.centerIn: parent
            radius: 100

            Section{
                id: id_scetion_1
                sAngle: 0
                eAngle: Math.PI * 0.25
            }
            Section{
                id: id_scetion_2
                sAngle: Math.PI * 0.25
                eAngle: Math.PI * 0.5
            }
            Section{
                id: id_scetion_3
                sAngle: Math.PI * 0.5
                eAngle: Math.PI * 0.75
            }
            Section{
                id: id_scetion_4
                sAngle: Math.PI * 0.75
                eAngle: Math.PI * 1
            }
            Section{
                id: id_scetion_5
                sAngle: Math.PI * 1
                eAngle: Math.PI * 1.25
            }
            Section{
                id: id_scetion_6
                sAngle: Math.PI * 1.25
                eAngle: Math.PI * 1.5
            }
            Section{
                id: id_scetion_7
                sAngle: Math.PI * 1.5
                eAngle: Math.PI * 1.75
            }
            Section{
                id: id_scetion_8
                sAngle: Math.PI * 1.75
                eAngle: Math.PI * 2
                sectionColor: "red"
            }
        }
    }
}
