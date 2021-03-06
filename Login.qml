import QtQuick 2.9
import QtQuick.Window 2.12
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import Models 1.0

Item {
    id: loginView

    property var dataId: ""

    width: Math.min(450, Math.max(parent.width - 16, 150))
    height: parent.height - 300

    x: parent.width/2 - addNotaDialog.width/2
    y: parent.height/2 - addNotaDialog.height/2

    signal okPressed(string id, string email, string password)

    function setFields(data) {
        id = data.id
        emailField.text = data.email
        passwordField.text = data.password
    }
}
