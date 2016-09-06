;E2ShopBasic
;selects a Menu based on the mapped coordinates on the respective class
navigate(Men)
{
  if Men is space
    return
  E2ShopIsActive()
  Command := new %Men%()
  mouseclick,,Command.getX(),Command.getY()
  return
}

Class Menu {
  xCoord := 1
  yCoord := 1
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
  xCoord:=170
  yCoord:=353
}


#include C:\Users\nicole\AHK\AHK\AutoHotkey.ahk
