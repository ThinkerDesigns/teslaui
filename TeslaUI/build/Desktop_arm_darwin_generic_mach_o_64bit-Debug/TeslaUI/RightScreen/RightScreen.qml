import QtQuick 2.15
import QtLocation
import QtPositioning

Rectangle {
    id: rightScreen
    anchors {
        top: parent.top
        bottom: bottomBar.top
        right: parent.right
    }
    Plugin {
        id: mapPlugin
        name: "osm"
    }
    Map {
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(37.46, -122.14)
        zoomLevel: 14
    }

    width: parent.width * 2/3
}
