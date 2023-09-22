from python import Python

def main() :
    try_python()
    let np = Python.import_module("numpy")
    let x=np.array([1,2,3])
    print(x)
def try_python():
  let np = Python.import_module("numpy")
  let ar = np.arange(15).reshape(3, 5)
  print(ar)
  print(ar.shape) #  use def rather than fn to implement python code
    




