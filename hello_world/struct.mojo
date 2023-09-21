fn main():
  let mine= Mypair(2,4)
  mine.dump()
  let calc=calculator(2,4,0)
  let z=calc.output()
  print (z)


struct Mypair:
    var first:Int
    var second:Int

    fn __init__ (inout self, first:Int, second:Int):
        self.first=first
        self.second=second
    fn dump(self):
        print (self.first,self.second)

struct calculator:
    var first:Int
    var second:Int
    var fn_name:String
    fn __init__ (inout self, a:Int, b:Int, fn_name:String):
        self.first=a
        self.second=b
        self.fn_name=fn_name
    fn add_fn (self)->Int:
        
        return self.first+self.second
    fn mul_fn (self)->Int:
        return self.first*self.second

    fn divide_fn(self)->Float32:
        let z= Float32(self.first) / Float32(self.second)
        return z
    fn output(self)->Float32:
        let out:Float32
        if self.fn_name =="+":
            out=calculator.add_fn(self)
        elif self.fn_name=="*":
            out=calculator.mul_fn(self)
        elif self.fn_name=="/":
            out=calculator.divide_fn(self)
        else :
            out=0
            print("No Operators!")
        return out






     

