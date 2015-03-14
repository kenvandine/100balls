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
import Ubuntu.Components 1.1

Rectangle {
    id: menuBar
    //color: "transparent"
    color: "black"
    //opacity: 0.8
    height: childrenRect.height
    property var game

    Item {
        anchors.fill: parent

        MenuIcon {
            anchors {
                left: parent.left
                bottom: parent.bottom
            }
            source: "../img/menuList.png"
            visible: game.currentScene !== chooseGame
            onClicked: {
                game.currentScene = chooseGame;
            }
        }

        MenuIcon {
            anchors {
                right: aboutIcon.left
                bottom: parent.bottom
            }
            source: "../img/question.png"
            visible: game.currentScene !== tutorial
            onClicked: {
                game.currentScene = tutorial;
            }
        }

        MenuIcon {
            id: aboutIcon
            anchors {
                right: parent.right
                bottom: parent.bottom
            }
            source: "../img/information.png"
            visible: game.currentScene !== about
            onClicked: {
                game.currentScene = about;
            }
        }
    }
}


