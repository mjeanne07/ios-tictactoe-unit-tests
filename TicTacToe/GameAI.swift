//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {
    // check vertical for wins
        // check each column for all three marks being the same player as teh parameter to the function
    for x in 0..<3 {
        var markCount = 0
        for y in 0..<3 {
            if board[(x, y)] == player {
                markCount += 1
            }
        }

        if markCount == 3 {
            //they won
            return true
        }
    }


    // check horizontals for wins

    for y in 0..<3 {
        var markCount = 0

        for x in 0..<3 {
            if board[(x,y)] == player {
                markCount += 1
            }
        }

        if markCount == 3 {
            return true
        }



    // check diagonals for wins

  let lefToRight = [((0,1), (1,1), (2,2))]
  var leftMarkCount = 0
    for coordinate in lefToRight {
        if board[coordinate] == player {
            leftMarkCount += 1
        }
    }

    if leftMarkCount == 3 {
        return true
    }



    return false
}
}
