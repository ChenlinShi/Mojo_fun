fn main():
    # var x:Int =1
    # x+=1
    # print (x)
    var z=0 # type declaration or initialization
    z=add(1,2)
    print (z)
    var x=1
    var y=2
    z=add_inout(x,y)
    print (z)
    do_math()
    mojo()
    mojo_2()

fn do_math():
    let x:Int = 1 # unmutable
    let y =2 
    print (x+y)

fn add (x:Int, y:Int)-> Int: # value in function is immutable by default
    return x+y

fn add_inout (inout x:Int, inout y:Int)-> Int: 
    x+=1
    y+=1
    return x+y

fn set_fire(owned text: String) -> String: # owned means the value is owned by the function, values will be copied
    text += "🔥"
    return text

fn mojo ():
    let a : String = "mojo"
    let b = set_fire(a)
    print (a) # a will not be changed
    print (b)

fn mojo_2 ():
    let a : String = "mojo"
    let b = set_fire(a^) # ^ will destory the local variable, a will be eliminated
    print (b)