/*
 * Copyright 2014-2015 Riccardo Padovani <riccardo@rpadovani.com>
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

import QtQuick 2.2
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.1
import Bacon2D 1.0
import "../js/game.js" as Game

Scene {

    ColumnLayout {
        width: parent.width

        AboutText {
            text: "100Balls"
            font.pixelSize: units.gu(10)
            font.bold: true
        }
        AboutText {
            text: version
            font.pixelSize: units.gu(2)
        }

        Spacer {}

        MenuItem {
            anchors.horizontalCenter: parent.horizontalCenter
            text: i18n.tr("Arcade")

            onClicked: {
                game.gameType = 'arcade';
                Game.newGame();
            }
        }

        Spacer {}

        MenuItem {
            anchors.horizontalCenter: parent.horizontalCenter
            text: i18n.tr("Perfection")

            onClicked: {
                game.gameType = 'perfection';
                Game.newGame();
            }
        }

        Spacer {}

        MenuItem {
            anchors.horizontalCenter: parent.horizontalCenter
            text: i18n.tr("Time challenge")

            onClicked: {
                game.gameType = 'time';
                Game.newGame();
            }
        }
    }
}
