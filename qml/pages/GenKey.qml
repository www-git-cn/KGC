import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import RibbonUI
import KGCAPP

Item {
    height: content.height + content.anchors.margins * 2
    RibbonButton{
        anchors{
            topMargin: 5
            bottom: parent.bottom
            bottomMargin: 5
            left: parent.left
            leftMargin: content.anchors.margins
        }
        icon_source: RibbonIcons.ArrowReply
        show_bg: false
        text: qsTr('Return to Home')
        onClicked: view.currentIndex = 0
        show_tooltip: false
    }

    ColumnLayout{
        id: content
        anchors{
            centerIn: parent
            margins: 10
        }
        spacing: 20
        RibbonText{
            text: qsTr('Key Generate Result')
            font.pixelSize: 20
            Layout.alignment: Qt.AlignHCenter
        }
        ColumnLayout{
            RibbonText{
                text: qsTr('Your secret value:')
            }
            RowLayout{
                RibbonText{
                    text: 'x: '
                }
                RibbonTextEdit{
                    placeholderText: 'your secret value'
                    readOnly: true
                    text: KeyDataManager.x
                }
            }
        }
        ColumnLayout{
            RibbonText{
                text: qsTr('Your public key:')
            }
            RowLayout{
                RibbonText{
                    text: 'Q_x: '
                }
                RibbonLineEdit{
                    placeholderText: 'point Q_x'
                    readOnly: true
                    text: KeyDataManager.Q_x
                }
            }
            RowLayout{
                RibbonText{
                    text: 'Q_y: '
                }
                RibbonLineEdit{
                    placeholderText: 'point Q_y'
                    readOnly: true
                    text: KeyDataManager.Q_y
                }
            }
        }
        ColumnLayout{
            RibbonText{
                text: qsTr('Your private key:')
            }
            RowLayout{
                RibbonText{
                    text: 'S: '
                }
                RibbonTextEdit{
                    placeholderText: 'your private key'
                    readOnly: true
                    text: KeyDataManager.S
                }
            }
        }
        ColumnLayout{
            RibbonText{
                text: qsTr('Your KGC public key:')
            }
            RowLayout{
                RibbonText{
                    text: 'Pk_x: '
                }
                RibbonLineEdit{
                    placeholderText: 'point Pk_x'
                    readOnly: true
                    text: KeyDataManager.Pk_x
                }
            }
            RowLayout{
                RibbonText{
                    text: 'Pk_y: '
                }
                RibbonLineEdit{
                    placeholderText: 'point Pk_y'
                    readOnly: true
                    text: KeyDataManager.Pk_y
                }
            }
        }
    }
}
