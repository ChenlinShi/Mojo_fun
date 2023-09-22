
from python import Python
let np = Python.import_module("numpy")
ar = np.arange(15).reshape(3, 5)
print(ar)
print(ar.shape) # dont know why this is not working
    




