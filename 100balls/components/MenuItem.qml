/*
 * Copyright 2014 Riccardo Padovani <riccardo@rpadovani.com>
 *
 * This file is part of 100balls.
 *
 * 100balls is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by 
 * the Free Software Foundation; version 3.
 *
 * 100balls is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0
import QtQuick.Layouts 1.1

Image {
    source: "../img/red_button02.png"
    property string text
    signal clicked

    Text {
        anchors.topMargin: units.gu(1)
        anchors.bottomMargin: units.gu(1)
        anchors.centerIn: parent

        font.bold: true
        font.pixelSize: parent.height * 0.5
        color: "white"
        horizontalAlignment: Text.AlignHCenter
        text: parent.text
    }

    MouseArea {
        anchors.fill: parent
        onClicked: parent.clicked()
    }
}
