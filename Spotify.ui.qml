import QtQuick 2.15
import QtQuick.Controls 2.15
import QTtesti 1.0

Rectangle {
    id: window
    width: Constants.width
    height: Constants.height
    color: "#000000"
    border.color: "#00000000"
    border.width: 0

    Rectangle {
        id: header
        x: 0
        width: 390
        height: 64
        color: "#000000"
        border.color: "#00353535"
        border.width: 0
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 0

        Text {
            id: clock
            x: 163
            y: 15
            color: "#ffffff"
            text: qsTr("14:13")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 27
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            maximumLineCount: 1
            textFormat: Text.AutoText
            anchors.horizontalCenter: parent.horizontalCenter
            font.weight: Font.Bold
        }

        Button {
            id: appMenu
            width: 48
            height: 48
            text: qsTr("Button")
            anchors.left: parent.left
            anchors.top: parent.top
            display: AbstractButton.IconOnly
            flat: true
            highlighted: false
            anchors.topMargin: 7
            anchors.leftMargin: 7

            Image {
                id: image
                width: 40
                height: 40
                anchors.left: parent.left
                anchors.top: parent.top
                source: "images/appMenu.svg"
                anchors.leftMargin: 4
                anchors.topMargin: 4
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            id: battery
            x: 339
            y: 22
            width: 40
            height: 20
            color: "#000000"
            border.color: "#ffffff"
            border.width: 3

            ProgressBar {
                id: batteryIndicator
                anchors.fill: parent
                anchors.rightMargin: 7
                anchors.leftMargin: 7
                anchors.bottomMargin: 4
                anchors.topMargin: 4
                wheelEnabled: false
                smooth: false
                rotation: 180
                to: 100
                scale: 1
                value: 25
            }
        }

        Rectangle {
            id: headerSeparator
            height: 2
            color: "#3f3f3f"
            border.color: "#00000000"
            border.width: 0
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.rightMargin: 0
        }
    }

    Rectangle {
        id: footer
        x: 0
        width: 390
        height: 94
        color: "#000000"
        border.color: "#00000000"
        border.width: 0
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 0

        Row {
            id: recentApps
            anchors.fill: parent
            spacing: 29
            anchors.rightMargin: 27
            anchors.leftMargin: 27
            anchors.bottomMargin: 15
            anchors.topMargin: 17

            Button {
                id: recentSpotifyApp
                width: 62
                height: 62
                visible: true
                text: qsTr("Button")
                flat: true
                focusPolicy: Qt.ClickFocus
                padding: 0
                rightPadding: 0
                leftPadding: 0
                bottomPadding: 0
                topPadding: 0
                display: AbstractButton.IconOnly

                Image {
                    id: image1
                    x: 0
                    y: -6
                    width: 62
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    source: "images/spotify.svg"
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    fillMode: Image.PreserveAspectFit
                }
            }

            Button {
                id: recentStravaApp
                width: 62
                height: 62
                visible: true
                text: qsTr("Button")
                padding: 0
                topPadding: 0
                rightPadding: 0
                bottomPadding: 0
                leftPadding: 0
                focusPolicy: Qt.ClickFocus
                flat: true
                display: AbstractButton.IconOnly
                Image {
                    id: image2
                    x: 0
                    y: -6
                    width: 62
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    source: "images/strava.svg"
                    sourceSize.height: 62
                    sourceSize.width: 62
                    fillMode: Image.PreserveAspectFit
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                }
            }

            Button {
                id: recentGoogleMapsApp
                width: 62
                height: 62
                visible: true
                text: qsTr("Button")
                padding: 0
                topPadding: 0
                rightPadding: 0
                bottomPadding: 0
                leftPadding: 0
                focusPolicy: Qt.ClickFocus
                flat: true
                display: AbstractButton.IconOnly
                Image {
                    id: image3
                    x: 0
                    y: -6
                    width: 62
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    source: "images/google_maps.svg"
                    fillMode: Image.PreserveAspectFit
                    anchors.bottomMargin: 0
                    sourceSize.width: 62
                    sourceSize.height: 62
                    anchors.topMargin: 0
                }
            }

            Button {
                id: recentStorytelApp
                width: 62
                height: 62
                visible: true
                text: qsTr("Button")
                padding: 0
                topPadding: 0
                rightPadding: 0
                bottomPadding: 0
                leftPadding: 0
                focusPolicy: Qt.ClickFocus
                flat: true
                display: AbstractButton.IconOnly
                Image {
                    id: image4
                    x: 0
                    y: -6
                    width: 62
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    source: "images/storytel.svg"
                    fillMode: Image.PreserveAspectFit
                    anchors.bottomMargin: 0
                    sourceSize.width: 62
                    sourceSize.height: 62
                    anchors.topMargin: 0
                }
            }
        }

        Rectangle {
            id: recentSeparator
            height: 2
            color: "#3f3f3f"
            border.color: "#00000000"
            border.width: 0
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }
    }

    Rectangle {
        id: main
        color: "#00000000"
        border.color: "#00000000"
        border.width: 0
        anchors.fill: parent
        anchors.bottomMargin: 94
        anchors.topMargin: 64

        Column {
            id: spotifyControls
            anchors.fill: parent

            Rectangle {
                id: albumGraphic
                height: 380
                color: "#00000000"
                border.color: "#00000000"
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 0
                anchors.rightMargin: 0

                Image {
                    id: albumImage
                    x: 35
                    y: 92
                    width: 320
                    height: 320
                    anchors.verticalCenter: parent.verticalCenter
                    horizontalAlignment: Image.AlignHCenter
                    verticalAlignment: Image.AlignVCenter
                    source: "images/NWA_100Mile_CoverAr_Source_1000164381_1024x.jpg"
                    anchors.horizontalCenter: parent.horizontalCenter
                    sourceSize.height: 320
                    sourceSize.width: 320
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: artistAlbumSongInfo
                height: 100
                color: "#00000000"
                border.color: "#00000000"
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0

                Text {
                    id: artistInfo
                    x: 35
                    y: 0
                    width: 320
                    height: 30
                    color: "#ffffff"
                    text: qsTr("N.W.A")
                    anchors.top: parent.top
                    font.pixelSize: 27
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignBottom
                    anchors.topMargin: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.styleName: "Bold"
                }

                Text {
                    id: songInfo
                    x: 35
                    y: 70
                    width: 320
                    height: 30
                    color: "#ffffff"
                    text: qsTr("Real Niggaz")
                    anchors.bottom: parent.bottom
                    font.pixelSize: 27
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignBottom
                    anchors.bottomMargin: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.styleName: "Regular"
                }

                Text {
                    id: albumInfo
                    x: 35
                    y: 35
                    width: 320
                    height: 30
                    color: "#00afff"
                    text: qsTr("100 Miles and Runnin'")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 27
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignBottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.styleName: "Regular"
                }
                anchors.leftMargin: 0
            }

            Rectangle {
                id: playControls
                height: 145
                color: "#00000000"
                border.color: "#00000000"
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0

                Button {
                    id: playButton
                    width: 125
                    height: 125
                    opacity: 1
                    text: qsTr("Button")
                    anchors.verticalCenter: parent.verticalCenter
                    focusPolicy: Qt.ClickFocus
                    enabled: true
                    hoverEnabled: true
                    flat: true
                    display: AbstractButton.IconOnly
                    anchors.horizontalCenter: parent.horizontalCenter

                    Image {
                        id: playImage
                        visible: true
                        anchors.fill: parent
                        source: "images/play.svg"
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Button {
                    id: pauseButton
                    width: 125
                    height: 125
                    opacity: 1
                    text: qsTr("Button")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.verticalCenterOffset: 10
                    enabled: true
                    flat: true
                    anchors.horizontalCenter: parent.horizontalCenter
                    hoverEnabled: true
                    Image {
                        id: pauseImage
                        visible: true
                        anchors.fill: parent
                        source: "images/pause2.svg"
                        fillMode: Image.PreserveAspectFit
                    }
                    display: AbstractButton.IconOnly
                    focusPolicy: Qt.ClickFocus
                }

                Button {
                    id: previousButton
                    width: 50
                    height: 60
                    opacity: 1
                    text: qsTr("Button")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.verticalCenterOffset: 10
                    anchors.leftMargin: 35
                    enabled: true
                    flat: true
                    hoverEnabled: true
                    Image {
                        id: previousImage
                        opacity: 0.352
                        visible: true
                        anchors.fill: parent
                        source: "images/next-previous.svg"
                        fillMode: Image.PreserveAspectFit
                    }
                    display: AbstractButton.IconOnly
                    focusPolicy: Qt.ClickFocus
                }

                Button {
                    id: nextButton
                    width: 50
                    height: 60
                    opacity: 1
                    text: qsTr("Button")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.verticalCenterOffset: 10
                    anchors.rightMargin: 35
                    enabled: true
                    flat: true
                    hoverEnabled: true
                    Image {
                        id: nextImage
                        opacity: 0.352
                        visible: true
                        anchors.fill: parent
                        source: "images/next-previous.svg"
                        rotation: 180
                        fillMode: Image.PreserveAspectFit
                    }
                    display: AbstractButton.IconOnly
                    focusPolicy: Qt.ClickFocus
                }
            }

            Rectangle {
                id: playTimeIndicator
                height: 61
                color: "#00000000"
                border.color: "#00000000"
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0

                Text {
                    id: timePlayed
                    width: 50
                    height: 20
                    color: "#00afff"
                    text: qsTr("3.07")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    anchors.topMargin: 5
                    anchors.leftMargin: 35
                    font.styleName: "Regular"
                }

                Text {
                    id: timeRemaining
                    width: 50
                    height: 20
                    color: "#00afff"
                    text: qsTr("-1.54")
                    anchors.right: parent.right
                    anchors.top: parent.top
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignTop
                    anchors.rightMargin: 35
                    font.styleName: "Regular"
                    anchors.topMargin: 5
                }

                ProgressBar {
                    id: timePlayedIndicator
                    anchors.fill: parent
                    anchors.topMargin: 10
                    anchors.rightMargin: 35
                    anchors.leftMargin: 35
                    scale: 1
                    value: 25
                    smooth: false
                    wheelEnabled: false
                    rotation: 180
                    to: 100
                }
                anchors.leftMargin: 0
            }
        }
    }
}

/*##^##
Designer {
    D{i:0}D{i:22}D{i:24}D{i:25}D{i:23}D{i:28;invisible:true}D{i:32}D{i:34}D{i:27}D{i:37}
D{i:38}D{i:39}D{i:36}
}
##^##*/

