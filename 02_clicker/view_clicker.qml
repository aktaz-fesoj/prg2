import QtQuick 2.14
import QtQuick.Controls 2.14


Column {
    TextInput {
        // Bind the clickModel.count property to the text property of the QML element
        id: clickInput
        text: clickModel.count
    }
    Binding{
        target: clickModel
        property: "count"
        value: clickInput.text
    }
    Button {
        text: 'Plus 1'
        // Connect the clickModel.increase slot to the onClicked signal
        onClicked: clickModel.increase()
    }
    Button {
        text: 'Plus 10'
        // Connect the clickModel.increase slot to the onClicked signal
        onClicked: clickModel.plus_10()
    }
    Button {
        text: 'Reset'
        // Connect the clickModel.increase slot to the onClicked signal
        onClicked: clickModel.reset()
    }
}
