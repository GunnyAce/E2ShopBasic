;E2ShopBasic
;functions
;selects a Menu based on the mapped coordinates on the respective class
navigate(Men:="",step1:="",step2:=""){
  E2ShopIsActive()
  if Men is space
    Command := new Menu()
  if Men is not space
  {
  Command := new %Men%()
  mouseclick,,Command.getX(),Command.getY()
  sleep, 300
  }
  sleep, 200
  msgbox,,, Step 1
  if step1 is not space
  {
  mouseclick,,Command[step1].getButtonX(),Command[step1].getButtonY()
  sleep, 400
  }
  msgbox,,, Step 2
  if step2 is not space
  {
  mouseclick,,Command[step2].getButtonX(),Command[step2].getButtonY()
  return
  }
}
;Main Classes
Class Menu extends Button{
  xCoord := 1
  yCoord := 1
  NewB := new Button("110","105")
  EditB := new Button("110","205")
  DeleteB := new Button("110","305")
  OkayB := new Button("1304","104")
  newX:=110
  newY:=105
  editX:=110
  editY:=205
  deleteX:=110
  deleteY:=305
  getX()
  {
    return this.xCoord
  }
  setX(x)
  {
    this.xCoord := x
  }
  getY()
  {
    return this.yCoord
  }
  setY(y)
  {
    this.yCoord := y
  }
}
;Menus
Class Estimating extends Menu {
  xCoord := 170
  yCoord := 353
}
Class CustomerQuotes extends Menu {
  xCoord:=409
  yCoord:=353
}
Class Orders extends Menu {
  xCoord:=648
  yCoord:=353
}
Class Shipments extends Menu {
  xCoord:=917
  yCoord:=353
}
Class VendorRFQs extends Menu {
  xCoord:=122
  yCoord:=615
}
Class VendorPos extends Menu {
  xCoord:=350
  yCoord:=615
}
Class Receiving extends Menu {
  xCoord:=350
  yCoord:=779
}
Class vendorInvoices extends Menu {
  xCoord:=350
  yCoord:=935
}
Class Inventory extends Menu {
  xCoord:=570
  yCoord:=612
}
class Button{
  ButtonX :=""
  ButtonY :=""
  __New(x,y){
    this.ButtonX := x
    this.ButtonY := y
  }
  getButtonX(){
    return this.ButtonX
  }
  getButtonY(){
    return this.ButtonY
  }
}
createItems(myList:=""){
  if myList is space
    getList("masterList")
  sleep, 200
  if myList is space
    return
  Loop, Parse, myList, n'
  {
    if A_Loopfield is space
      continue

  }
}

#include C:\Users\nicole\AHK\AHK\AutoHotkey.ahk
