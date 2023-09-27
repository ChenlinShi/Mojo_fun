from python import Python
from python.object import PythonObject
def main():
  print (find_targer_sum([1,2,3],4))
  


def find_targer_sum (list,target): # divide and conquer
    var length:Int= list.__len__().__index__()
    let list_copy=list
    if length % 2!=0:
        list_copy.append(0)
        length+=1
        print (length)
    half_length=length//2
    for i in range (half_length):
        for j in range(half_length, length):
            if list[i] + list[j] == target:
                return [i, j]

def find_targer_sum_dict(list,target)-> PythonObject: # using dictionary # right now it is not working
    seen=Python.dict()
    let length:Int= list.__len__().__index__()
    for i in range (length):
        var num_of_list = list[i]
        var complement_of_tar = target - num_of_list
        if complement_of_tar in seen:
            return [seen[complement_of_tar], i]
        seen[num_of_list] = i
    return []



    
    
