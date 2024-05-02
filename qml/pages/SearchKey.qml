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
        spacing: 30
        RibbonText{
            text: qsTr('Key Search Result')
            font.pixelSize: 20
            Layout.alignment: Qt.AlignHCenter
        }

        RowLayout{
            ColumnLayout{
                spacing: 20
                RowLayout{
                    RibbonText{
                        text: 'a: '
                    }
                    RibbonLineEdit{
                        placeholderText: 'curvilinear coefficient'
                        readOnly: true
                        text: KeyDataManager.a
                        RibbonToolTip{
                            text: parent.placeholderText
                            visible: parent.hovered
                        }
                    }
                }
                RowLayout{
                    RibbonText{
                        text: 'b: '
                    }
                    RibbonLineEdit{
                        placeholderText: 'curvilinear coefficient'
                        readOnly: true
                        text: KeyDataManager.b
                        RibbonToolTip{
                            text: parent.placeholderText
                            visible: parent.hovered
                        }
                    }
                }
                RowLayout{
                    RibbonText{
                        text: 'q: '
                    }
                    RibbonLineEdit{
                        placeholderText: 'modulus of a finite field'
                        readOnly: true
                        text: KeyDataManager.q
                        RibbonToolTip{
                            text: parent.placeholderText
                            visible: parent.hovered
                        }
                    }
                }
                RowLayout{
                    RibbonText{
                        text: 'P_x: '
                    }
                    RibbonLineEdit{
                        placeholderText: 'base point'
                        readOnly: true
                        text: KeyDataManager.P_x
                        RibbonToolTip{
                            text: parent.placeholderText
                            visible: parent.hovered
                        }
                    }
                }
                RowLayout{
                    RibbonText{
                        text: 'P_y: '
                    }
                    RibbonLineEdit{
                        placeholderText: 'base point'
                        readOnly: true
                        text: KeyDataManager.P_y
                        RibbonToolTip{
                            text: parent.placeholderText
                            visible: parent.hovered
                        }
                    }
                }
                RowLayout{
                    RibbonText{
                        text: 'O_P: '
                    }
                    RibbonLineEdit{
                        placeholderText: 'the order of P'
                        readOnly: true
                        text: KeyDataManager.O_P
                        RibbonToolTip{
                            text: parent.placeholderText
                            visible: parent.hovered
                        }
                    }
                }
            }
            ColumnLayout{
                spacing: 20
                RowLayout{
                    RibbonText{
                        text: 'x: '
                    }
                    RibbonLineEdit{
                        placeholderText: 'your secret value'
                        readOnly: true
                        text: KeyDataManager.x
                        RibbonToolTip{
                            text: parent.placeholderText
                            visible: parent.hovered
                        }
                    }
                }
                RowLayout{
                    RibbonText{
                        text: 'Q_x: '
                    }
                    RibbonLineEdit{
                        placeholderText: 'point Q_x'
                        readOnly: true
                        text: KeyDataManager.Q_x
                        RibbonToolTip{
                            text: parent.placeholderText
                            visible: parent.hovered
                        }
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
                        RibbonToolTip{
                            text: parent.placeholderText
                            visible: parent.hovered
                        }
                    }
                }
                RowLayout{
                    RibbonText{
                        text: 'S: '
                    }
                    RibbonLineEdit{
                        placeholderText: 'your private key'
                        readOnly: true
                        text: KeyDataManager.S
                        RibbonToolTip{
                            text: parent.placeholderText
                            visible: parent.hovered
                        }
                    }
                }
                RowLayout{
                    RibbonText{
                        text: 'Pk_x: '
                    }
                    RibbonLineEdit{
                        placeholderText: 'point Pk_x'
                        readOnly: true
                        text: KeyDataManager.Pk_x
                        RibbonToolTip{
                            text: parent.placeholderText
                            visible: parent.hovered
                        }
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
                        RibbonToolTip{
                            text: parent.placeholderText
                            visible: parent.hovered
                        }
                    }
                }
            }
        }
    }
}
