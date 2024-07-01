//
//  Bank.swift
//  WB
//
//  Created by Al Stark on 01.07.2024.
//

import Foundation

final class BankAccount {
    private var balanceValue: Double = 0
    var name: String
    
    var balance: Double {
        get {
            return balanceValue
        }
        set(newBalance) {
            print("баланс до обновления \(balance) на счете \(name)")
            balanceValue = newBalance
            print("текущий баланс \(balance) на счете \(name)")
        }
    }
    
    init(name: String, balance: Double = 0) {
        self.name = name
        self.balance = balance
    }
    
    func withdraw(sum: Double) -> Double {
        if sum > balance {
            print("не хватает средств")
            return 0
        }
        balance -= sum
        return sum
    }
    
    func add(sum: Double) {
        balance += sum
    }
}


final class Bank {
    var accounts: [String: BankAccount] = [:]
    
    func addAccount(account: BankAccount) {
        if accounts[account.name] != nil {
            print("счет с таким названием существует")
            return
        }
        accounts[account.name] = account
    }
    
    func transfer(from: String, to: String, amount: Double) {
        guard var fromAccount = accounts[from],
              var toAccount = accounts[to] else {
            print("таких счетов/счета нет")
            return
        }
        toAccount.add(sum: fromAccount.withdraw(sum: amount))
    }
    
    func printBalance(for bankAccount: String) {
        if let bankAccount = accounts[bankAccount] {
            print("\(bankAccount.balance)")
        } else {
            print("таких счетов/счета нет")
        }
    }
}
