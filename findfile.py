###create a window to support search function
# 其中pathschversion001 源码为：



#from time import *
import time
import os


"""
sfilename = input("Please input search filename :")
stimebg  = input("Please input search time begin :")
stimend  = input("Please input search time end :")
spath = input("Please input search on path :")
"""


fileres = []


ctime = time.strftime("%Y%m%d",time.localtime(time.time()))
def search(sfilename,stimebg,stimend,spath):
    #global ctime
    if(stimend[0] == '0'):
        stimend = ctime
        ###print("search time end change for :",stimend)


    #get curent time 
    curtime = ctime
    print("Curent time is :",curtime)


    
    #print(spath)
    os.chdir(spath)
    curpath = os.getcwd()
    print("You search path is :",os.getcwd())


    #save file searched in list
    global fileres


    listfile = os.listdir(spath)
    oldspath = spath
    
    #print('88listfile is :',listfile)
    for lfile in listfile:
        os.chdir(spath)
        tspath = curpath
        dirup = tspath+os.sep+lfile
        if(os.path.isfile(dirup)):
            ###print(lfile+': is a file')
            tsfiletime = time.strftime("%Y%m%d",time.localtime(os.path.getctime(dirup)))
            ###print(lfile+": create time is :",tsfiletime)
            if(lfile.find(sfilename)!= -1 and tsfiletime >stimebg and tsfiletime <= stimend):
                ###print("search file ok :",tspath+"\\"+lfile)
                fileres.append(tspath+"\\"+lfile)
        
        elif(os.path.isdir(dirup)):
            ###print(lfile+' is a dir')
            search(sfilename,stimebg,stimend,dirup)
        else:
            ###print(lfile+' I dont know This Type or ')
            pass
    """
    print("search result is :")
    for file in  fileres:
        print("file :",file)
    """
    #return fileres
    
"""
if __name__ =='__main__':
    file = search(sfilename,stimebg,stimend,spath)
    print(file)
"""

###create a window by tkinter
from tkinter import *
# from pathschversion001 import *

root = Tk()

"""
canvas = Canvas(root,width = 600,height = 400)
img = PhotoImage(file = 't01b24a8ad021f824a2.gif')
canvas.create_image(200,0,image = img,anchor = 'n')

canvas.pack(side= LEFT,expand =YES,fill = BOTH)
"""

key = [None]*5
e = [None]*5
resfile =[]


def frame(side):
    w= Frame(root,bg='#00FFAA')
    w.pack(side=side,expand = YES,fill = BOTH)
    return w


for i in range(5):
    key[i] = frame(TOP)
for i in range(5):
    e[i] = StringVar()

##deal with search action
def startsearch():
    global resfile
    resfile.clear()
    t.delete(0.0,END)
    search(e[2].get(),e[0].get(),e[1].get(),e[3].get())
    resfile = fileres
    for fileline in resfile:
        e[4].set(fileline)
        line =1.0
        t.insert(line,e[4].get()+'\n')
        
    
    
label = Label(key[0],text='Please input search start time:',bg='#00FFAA',height = 3)
label.pack(side = LEFT)
e[0] =StringVar()
entry = Entry(key[0],textvariable = e[0],bg='#FF00FF')
e[0].set('20160101')
entry.pack(side = RIGHT)


label = Label(key[1],text='Please input search end time:',bg='#00FFAA',height = 3)
label.pack(side = LEFT)
e[1] =StringVar()
entry = Entry(key[1],textvariable = e[1],bg='#FF00FF')
e[1].set('20160624')
entry.pack(side = RIGHT)


label = Label(key[2],text='Please input search file:',bg='#00FFAA',height = 3)
label.pack(side = LEFT)
e[2] =StringVar()
entry = Entry(key[2],textvariable = e[2],bg='#FF00FF')
e[2].set('file.py')
entry.pack(side = RIGHT)


label = Label(key[3],text='Please input search base path:',bg='#00FFAA',height = 3)
label.pack(side = LEFT)
e[3] =StringVar()
entry = Entry(key[3],textvariable = e[3],bg='#FF00FF')
e[3].set('.')
entry.pack(side = RIGHT)




button = Button(key[4],text = 'Search',width = 5,height = 3,command = startsearch,bg='yellow')
button.pack(side = LEFT)


t = Text(key[4],bg= '#00FF00')
t.pack(side = LEFT,expand = YES,fill = BOTH)


"""
e[4] =StringVar()
entry = Entry(key[4],textvariable = e[4],width= 5,borderwidth = 1,bg='#99FF00')
e[4].set('')
entry.pack(side = LEFT,expand = YES,fill = BOTH)
"""




root.geometry('600x400+650+250')
root.title('FileHere1.0')


def Info():
    msg=Tk()
    Message(msg,text = "\nVersion 1.0:\n***************\nSearch Suorpt:\n***************\n***************\nAppend on Time and Filename Key to Search:\n***************",fg = 'blue',width =300,justify = CENTER).pack()
    msg.geometry('300x200+750+400')
    msg.title('Version')
    msg.mainloop()


menu = Menu(root)
menu.add_command(label='About',command=Info)
root.config(menu=menu)

root.mainloop()



