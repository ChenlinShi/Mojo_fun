from python import Python

def main() :
    # try_python()
    let np = Python.import_module("numpy")
    let x=np.array([1,2,3])
    print(x)
    let a=re_try("a123b4567b") # right now, re is not working 2023.9.27
    print (a)


def try_python():
  let np = Python.import_module("numpy")
  let ar = np.arange(15).reshape(3, 5)
  print(ar)
  print(ar.shape) #  use def rather than fn to implement python code
    
def re_try(text:String):
  let tmp_text=text
  let re=Python.import_module("re")
  print (re)
  let matches = re.findall(r'a(.*?)b', tmp_text, flags=0)
  # print(matches)
  return matches








 