import QtQuick
import qs.Common
import qs.Modules.Plugins

PluginSettings {
  id: root
  pluginId: "mediaFrame"

  SliderSetting {
    settingKey: "backgroundOpacity"
    label: I18n.tr("Background Opacity")
    defaultValue: 50
    minimum: 0
    maximum: 100
    unit: "%"
  }

  StringSetting {
    settingKey: "imagePath"
    label: I18n.tr("Path to Image")
    description: I18n.tr("Path to the image you want to display")
    placeholder: ""
    defaultValue: ""
  }

  SelectionSetting {
    settingKey: "fillMode"
    label: I18n.tr("Fill mode")
    description: I18n.tr("Fill mode used for the image")
    options: [
      {label: I18n.tr("Stretch"), value: "Stretch"},
      {label: I18n.tr("Preserve Aspect Ration (Fit)"), value: "PreserveAspectFit"},
      {label: I18n.tr("Preserve Aspect Ratio (Crop)"), value: "PreserveAspectCrop"},
      {label: I18n.tr("Tile"), value: "Tile"},
      {label: I18n.tr("Tile Vertically"), value: "TileVertically"},
      {label: I18n.tr("Tile Horizontally"), value: "TileHorizontally"},
      {label: I18n.tr("No transform"), value: "Pad"}
    ]
    defaultValue: "PreserveAspectFit"
  }
}
