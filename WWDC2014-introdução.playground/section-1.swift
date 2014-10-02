// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

for i in 0...100 {
  i * i
}

//let color = "blue"
// let attrStr = NSAttributedString(string: str, attributes: [NSForegroundColorAttributeName : color]?)

class DataSource: NSObject,UITableViewDataSource {
  
  func tableView(tableView: UITableView,
                  numberOfRowsInSection section: Int) -> Int  {
    return 4
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let row = indexPath.row
    let myStyle = UITableViewCellStyle.fromRaw(row)
    
    var tableViewCellStyle : UITableViewCellStyle = .Default
    if (myStyle != nil) {
      tableViewCellStyle = myStyle!
    }
    
    let cell = UITableViewCell(style: tableViewCellStyle, reuseIdentifier: nil)
    
    cell.textLabel?.text = "Text"
    
    return cell
  }
}

let ds = DataSource()
let tableView = UITableView(frame: CGRect(x:0,y:0,width:320,height:240), style: .Plain)

tableView.dataSource = ds

tableView.reloadData()
