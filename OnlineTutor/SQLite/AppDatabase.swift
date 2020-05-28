//
//  AppDatabase.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/29/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import Foundation
import SQLite3

class AppDatabase {
    
    var db : OpaquePointer?
    static let shareIntsance = AppDatabase()
    
    func createDataBase(){
        let fileURL = try!  FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("database.sqlite")
        
        
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK{
            print("error opening database")
            return
        }
        
        if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS testResult (id INTEGER PRIMARY KEY AUTOINCREMENT, totalQuestion TEXT, totalCorrect TEXT)", nil, nil, nil) != SQLITE_OK{
            let errorMessage = String(cString: sqlite3_errmsg(db)!)
            
            print("error creating table",errorMessage)
            return
        }
    }
    
    func insertIntoDb(totalQuestion: String, totalCorrect: String){
        //date gernerator
        createDataBase()
        let insertData = "INSERT INTO testResult (totalQuestion, totalCorrect) VALUES ('\(totalQuestion)', '\(totalCorrect)');"
        
        var insertStatement: OpaquePointer? = nil
        if sqlite3_prepare_v2(db, insertData, -1, &insertStatement, nil) == SQLITE_OK {
            if sqlite3_step(insertStatement) == SQLITE_DONE{
                print("sucessfully inserted")
            }
            else{
                print("couldnot insert")
            }
        }else {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert: \(errmsg)")
            print("UPDATE statement could not be prepared")
        }
    }
    
    func fetchDataFromTableForNotCompleted() -> [TestResult]{
        createDataBase()
        var testData  = [TestResult]()

        var stmt:OpaquePointer?

        //        let queryString = "SELECT * FROM DiagnosticLists where priority != 0  AND priority_from_device = 1 AND status = 0;"
        let queryString = "SELECT * FROM testResult;"

        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert: \(errmsg)")
            return testData
        }
        while(sqlite3_step(stmt) == SQLITE_ROW){
            let id = sqlite3_column_int(stmt, 0)
            let totalQuestion = String(cString: sqlite3_column_text(stmt, 1))
            let totalCorrect = String(cString: sqlite3_column_text(stmt, 2))
            let totalIncorrect = Int(totalQuestion)! - Int(totalCorrect)!
            
            
//            sqliteData.append(SqliteObject.init(id: Int(id), firstname: firstname, details: details, date: date))
            testData.append(
                TestResult.init(
                    id: Int(id),
                    totalQuestion: totalQuestion,
                    totalCorrect: totalCorrect,
                    totalIncorrect: String(totalIncorrect)
                )
            )
        }
        return testData
    }
}
