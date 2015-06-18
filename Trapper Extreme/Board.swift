//
//  Board.swift
//  Trapper Extreme
//  Board encapsulates the game state of the board, implemented using 2d array of Generics
//  Created by Denis Thamrin on 18/06/2015.
//  Copyright (c) 2015 Denis Thamrin. All rights reserved.
//

import Foundation

class Board<T>{
    //Private setter
    private(set) var board: [[T?]]! = [[T?]]()
    
    let boardDimension: Int
    
    init(boardDimension:Int){
        self.boardDimension =  boardDimension
        for row in (0...boardDimension) {
            for column in (0...boardDimension) {
                self.board[row][column] = nil
            }
        }
    }
    
    // Index starts from 0,0 . x axis left to right,y axis up to down.
    // Need to add more constraint, such as piece must beeiter Black or White ???
    // If legal return true,else false
    func addPiece(piece:T!,x:Int, y:Int) -> Bool{
        if let isFree = self.board[x][y]{
            self.board[x][y] = piece
            return true
        } else {
            return false
        }
    }

}