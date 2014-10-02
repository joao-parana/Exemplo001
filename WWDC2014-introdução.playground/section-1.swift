// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// LOOP para teste
for i in 0...100 {
  i * i
}

//let color = "blue"
// let attrStr = NSAttributedString(string: str, 
//                   attributes: [NSForegroundColorAttributeName : color]?)

// Criando uma fonte de dado para uma TableView () 

class DataSource: NSObject, UITableViewDataSource {
  
  var array = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5",
               "Item 6", "Item 7", "Item 8", "Item 9"]
  
  func tableView(tableView: UITableView,
                  numberOfRowsInSection section: Int) -> Int  {
    return array.count
  }
  
  func tableView(tableView: UITableView,
          cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let row = indexPath.row
    let myStyle = UITableViewCellStyle.fromRaw(row % 4)
    
    var tableViewCellStyle : UITableViewCellStyle = .Default
    if (myStyle != nil) {
      tableViewCellStyle = myStyle!
    }
    
    let cell = UITableViewCell(style: tableViewCellStyle, reuseIdentifier: "Cell")
    
    cell.textLabel?.text = array[indexPath.row]
    
    return cell
  }
}

let ds = DataSource()
// criando a TableView
var myFrame = CGRect(x:0, y:0, width:320, height:460)
let tableView = UITableView(frame: myFrame, style: .Plain)

// Associando a Fonte de Tado com a View para exibir na tela
tableView.dataSource = ds

tableView.reloadData()

// -----

// Persistência
let persistence = NSUserDefaults.standardUserDefaults()

// Verificando se existe o elemento

let existe: AnyObject? = persistence.objectForKey("myName")
if (existe == nil) {
  // Não existe o elemento então devo criar
  persistence.setObject("João", forKey: "myName")
  persistence.synchronize()
}

persistence.objectForKey("myName")

persistence.setObject("Jorge", forKey: "myName")
persistence.synchronize()

persistence.objectForKey("myName")





