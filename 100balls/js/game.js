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

function launchGlass() {
    var newGlass = glass.createObject(gameScene);
    newGlass.x = gameScene.width;
    newGlass.y = gameScene.height - units.gu(20);
}

function newGame() {
    score = 0;
    for (var i = 0; i < 10; i++) {
        for (var j = 0; j < 10; j++) {
            var newBox = ball.createObject(gameScene);
            newBox.x = gameScene.width / 2 - units.gu(10)+ units.gu(1.5*j);
            newBox.y = units.gu(1.5*i) - units.gu(1);
        }
    }
    game.pushScene(gameScene);
    game.gameState = Bacon2D.Running;
    launchGlass();
}

function restartGame() {
    endGame();
    newGame();
}

function endGame() {
    game.gameState = Bacon2D.Paused;
    pause = false;
    game.currentScene = endMenu;
    endMenu.score = score;

    if (score > settings.highScore && gameType === 'arcade') {
        settings.highScore = score;
    }
    if (score > settings.perfectionScore && gameType === 'perfection') {
        settings.perfectionScore = score;
    }
    if (score > settings.timeScore && gameType === 'time') {
        settings.timeScore = score;
    }

    numberOfBalls = 100;
    score = 0;
    level = 1;
    velocity = units.gu(0.3);
    glassScore = 1;
    remTime = 100;
}
