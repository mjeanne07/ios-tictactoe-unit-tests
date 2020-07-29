//
//  GameBoardTests.swift
//  TicTacToeTests
//
//  Created by Morgan Smith on 7/27/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameBoardTests: XCTestCase {

    //Goal of this test is to make sure the board is empty right after its initialized
    //have to put "test" before the func name

    func testCreatingEmptyBoard() {
        let board = GameBoard()

        for x in 0..<3 {
            for y in 0..<3 {
                let square = board[(x,y)]
                // We assume the square is nil, becasue it has no X or O mark
                XCTAssert(square == nil)
                //same thing different code
                // XCTAssertNil(square)
            }
        }

    }

    func testPlacingMarks() {
        var board = GameBoard()

        XCTAssertNoThrow(try board.place(mark: .x, on: (0,0)))

        let zeroZeroMark = board[(0,0)]
        XCTAssert(zeroZeroMark == .x)

        for x in 0..<3 {
            for y in 0..<3 {
                if x == 0 && y == 0 {
                    XCTAssert(board[(x, y)] == .x, "Expected x mark at 0,0")
                    continue
                }
                XCTAssert(board[(x, y)] == nil)
            }
        }

        XCTAssertThrowsError(try board.place(mark: .x, on: (0,0)))
    }
}
