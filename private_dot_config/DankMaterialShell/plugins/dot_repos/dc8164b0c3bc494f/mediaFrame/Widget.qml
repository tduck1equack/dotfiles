import QtQuick
import Quickshell
import qs.Common
import qs.Modules.Plugins

DesktopPluginComponent {
  id: root

  // Size constraints
  minWidth: 150
  minHeight: 100

  // Access saved settings via pluginData
  property string imagePath: pluginData.imagePath ?? ""
  property real backgroundOpacity: (pluginData.backgroundOpacity ?? 80) / 100
  property string imageFillMode: pluginData.fillMode ?? "PreserveAspectFit"

  Rectangle {
    anchors.fill: parent
    radius: Theme.cornerRadius
    color: Theme.withAlpha(Theme.surfaceContainer, root.backgroundOpacity)

    Image {
      id: image
      anchors.centerIn: parent
      height: parent.height
      source: imagePath
      fillMode: Image[imageFillMode]
      asynchronous: true
      cache: true
      visible: true
    }
  }
}
