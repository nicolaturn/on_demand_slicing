import tkinter as tk
from PIL import Image, ImageTk

# at the beginning all the buttons are setted too
butt1 = 0
butt2 = 0
butt3 = 0
butt4 = 0
dimx = 50
dimy = 60

r1 = None
r2 = None
r3 = None
r4 = None
r5 = None
r6 = None
r71 = None
r74 = None
r83 = None
r81 = None
r9 = None
r10 = None
r113 = None
r114 = None

t71 = None
t74 = None
t83 = None
t81 = None
t113 = None
t114 = None

# rettangoli
rettangoli = []

# Define the functions to be called when the buttons are clicked


def button1_clicked():
    global butt1
    global rettangoli
    global label1
    global image
    global r1, r2, r3, r4, r5, r6, r71, r8, r9, r10, r11, r81, t71, r74, t74, r83, t83, t81
    if butt1 == 0:
        print("ON 1")
        butt1 = 1
        button1["text"] = "OFF 1"

        label1.configure(text="Slice 1: attivo")

        r1 = canvas.create_rectangle(
            110, 23, 110+dimx, 23+dimy, fill="#4AFB2A", )
        rettangoli = [r1]  # store the square object in a list
        canvas.tag_lower(r1, image)

        r6 = canvas.create_rectangle(
            485, 45, 485+dimx, 45+dimy, fill="#4AFB2A", )
        rettangoli = [r6]  # store the square object in a list
        canvas.tag_lower(r6, image)

        if r74:
            canvas.delete(r74)
            r74 = None

            t74 = canvas.create_polygon(
                512+dimx, 140+dimy, 512+dimx, 140, 512, 140+dimy, fill="#FB7A63")
            rettangoli = [t74]  # store the square object in a list
            canvas.tag_lower(t74, image)

            t71 = canvas.create_polygon(
                512, 140, 512+dimx, 140, 512, 140+dimy, fill="#4AFB2A")
            rettangoli = [t71]  # store the square object in a list
            canvas.tag_lower(t71, image)

        else:
            r71 = canvas.create_rectangle(
                512, 140, 512+dimx, 140+dimy, fill="#4AFB2A", )
            rettangoli = [r71]  # store the square object in a list
            canvas.tag_lower(r71, image)
# ----------------

        if r83:
            canvas.delete(r83)
            r83 = None

            t83 = canvas.create_polygon(
                505+dimx, 235+dimy, 505+dimx, 235, 505, 235+dimy, fill="#B663FB")
            rettangoli = [t83]  # store the square object in a list
            canvas.tag_lower(t83, image)

            t81 = canvas.create_polygon(
                505, 235, 505+dimx, 235, 505, 235+dimy, fill="#4AFB2A")
            rettangoli = [t81]  # store the square object in a list
            canvas.tag_lower(t81, image)

        else:
            r81 = canvas.create_rectangle(
                505, 235, 505+dimx, 235+dimy, fill="#4AFB2A", )
            rettangoli = [r81]  # store the square object in a list
            canvas.tag_lower(r81, image)

    else:
        print("OFF 1")
        butt1 = 0
        button1["text"] = "ON 1"

        label1.configure(text="Slice 1: non attivo")

        canvas.delete(r1)
        canvas.delete(r6)

        if t71:
            canvas.delete(t71)
            t71 = None
            if t74:
                canvas.delete(t74)
                t74 = None
                r74 = canvas.create_rectangle(
                    512, 140, 512+dimx, 140+dimy, fill="#FB7A63", )
                rettangoli = [r74]  # store the square object in a list
                canvas.tag_lower(r74, image)

        else:
            canvas.delete(r71)
            r71 = None
# ---
        if t81:
            canvas.delete(t81)
            t81 = None
            if t83:
                canvas.delete(t83)
                t83 = None
                r83 = canvas.create_rectangle(
                    505, 235, 505+dimx, 235+dimy, fill="#B663FB", )
                rettangoli = [r83]  # store the square object in a list
                canvas.tag_lower(r83, image)

        else:
            canvas.delete(r81)
            r81 = None


def button2_clicked():
    global butt2
    global rettangoli
    global label2
    global image
    global r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11
    if butt2 == 0:
        print("ON 2")
        butt2 = 1
        button2["text"] = "OFF 2"

        label2.configure(text="Slice 2: attivo")

        r4 = canvas.create_rectangle(
            60, 263, 60+dimx, 263+dimy, fill="#2AEEFB", )
        rettangoli = [r4]  # store the square object in a list
        canvas.tag_lower(r4, image)

        r5 = canvas.create_rectangle(
            107, 320, 107+dimx, 320+dimy, fill="#2AEEFB", )
        rettangoli = [r5]  # store the square object in a list
        canvas.tag_lower(r5, image)

        r9 = canvas.create_rectangle(
            220, 362, 220+dimx, 362+dimy, fill="#2AEEFB", )
        rettangoli = [r9]  # store the square object in a list
        canvas.tag_lower(r9, image)

        r10 = canvas.create_rectangle(
            297, 370, 297+dimx, 370+dimy, fill="#2AEEFB", )
        rettangoli = [r10]  # store the square object in a list
        canvas.tag_lower(r10, image)

    else:
        print("OFF 2")
        butt2 = 0
        button2["text"] = "ON 2"

        label2.configure(text="Slice 2: non attivo")

        canvas.delete(r4)
        canvas.delete(r5)
        canvas.delete(r9)
        canvas.delete(r10)


def button3_clicked():
    global butt3
    global rettangoli
    global label3
    global image
    global r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r114, r83, r81, t81, t83, t113, t114, r113
    if butt3 == 0:
        print("ON 3")
        butt3 = 1
        button3["text"] = "OFF 3"

        label3.configure(text="Slice 3: attivo")

        r3 = canvas.create_rectangle(
            48, 178, 48+dimx, 178+dimy, fill="#B663FB", )
        rettangoli = [r3]  # store the square object in a list
        canvas.tag_lower(r3, image)

        # ----------------

        if r81:
            canvas.delete(r81)
            r81 = None

            t83 = canvas.create_polygon(
                505+dimx, 235+dimy, 505+dimx, 235, 505, 235+dimy, fill="#B663FB")
            rettangoli = [t83]  # store the square object in a list
            canvas.tag_lower(t83, image)

            t81 = canvas.create_polygon(
                505, 235, 505+dimx, 235, 505, 235+dimy, fill="#4AFB2A")
            rettangoli = [t81]  # store the square object in a list
            canvas.tag_lower(t81, image)

        else:
            r83 = canvas.create_rectangle(
                505, 235, 505+dimx, 235+dimy, fill="#B663FB", )
            rettangoli = [r83]  # store the square object in a list
            canvas.tag_lower(r83, image)

        # ---
        if r114:
            canvas.delete(r114)
            r114 = None

            t113 = canvas.create_polygon(
                372+dimx, 360+dimy, 371+dimx, 360, 372, 360+dimy, fill="#B663FB")
            rettangoli = [t113]  # store the square object in a list
            canvas.tag_lower(t113, image)

            t114 = canvas.create_polygon(
                372, 360, 372+dimx, 360, 372, 360+dimy, fill="#FB7A63")
            rettangoli = [t114]  # store the square object in a list
            canvas.tag_lower(t114, image)

        else:
            r113 = canvas.create_rectangle(
                372, 360, 372+dimx, 360+dimy, fill="#B663FB", )
            rettangoli = [r113]  # store the square object in a list
            canvas.tag_lower(r113, image)

    else:
        print("OFF 3")
        butt3 = 0
        button3["text"] = "ON 3"

        label3.configure(text="Slice 3: non attivo")

        canvas.delete(r3)

        if t83:
            canvas.delete(t83)
            t83 = None
            if t81:
                canvas.delete(t81)
                t81 = None
                r81 = canvas.create_rectangle(
                    505, 235, 505+dimx, 235+dimy, fill="#4AFB2A", )
                rettangoli = [r81]  # store the square object in a list
                canvas.tag_lower(r81, image)
        else:
            canvas.delete(r83)
            r83 = None

        if t113:
            canvas.delete(t113)
            t113 = None
            if t114:
                canvas.delete(t114)
                t114 = None
                r114 = canvas.create_rectangle(
                    372, 360, 372+dimx, 360+dimy, fill="#FB7A63", )
                rettangoli = [r114]  # store the square object in a list
                canvas.tag_lower(r114, image)

        else:
            canvas.delete(r113)
            r113 = None


def button4_clicked():
    global butt4
    global rettangoli
    global label4
    global image
    global r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r113, r74, r114, r71, t74, t71, t113, t114
    if butt4 == 0:
        print("ON 4")
        butt4 = 1
        button4["text"] = "OFF 4"

        label4.configure(text="Slice 4: attivo")

        if r71:
            canvas.delete(r71)
            r71 = None

            t74 = canvas.create_polygon(
                512+dimx, 140+dimy, 512+dimx, 140, 512, 140+dimy, fill="#FB7A63")
            rettangoli = [t74]  # store the square object in a list
            canvas.tag_lower(t74, image)

            t71 = canvas.create_polygon(
                512, 140, 512+dimx, 140, 512, 140+dimy, fill="#4AFB2A")
            rettangoli = [t71]  # store the square object in a list
            canvas.tag_lower(t71, image)

        else:
            r74 = canvas.create_rectangle(
                512, 140, 512+dimx, 140+dimy, fill="#FB7A63", )
            rettangoli = [r74]  # store the square object in a list
            canvas.tag_lower(r74, image)

        if r113:
            canvas.delete(r113)
            r113 = None

            t113 = canvas.create_polygon(
                372+dimx, 360+dimy, 371+dimx, 360, 372, 360+dimy, fill="#B663FB")
            rettangoli = [t113]  # store the square object in a list
            canvas.tag_lower(t113, image)

            t114 = canvas.create_polygon(
                372, 360, 372+dimx, 360, 372, 360+dimy, fill="#FB7A63")
            rettangoli = [t114]  # store the square object in a list
            canvas.tag_lower(t114, image)

        else:
            r114 = canvas.create_rectangle(
                372, 360, 372+dimx, 360+dimy, fill="#FB7A63", )
            rettangoli = [r114]  # store the square object in a list
            canvas.tag_lower(r114, image)

    else:
        print("OFF 4")
        butt4 = 0

        button4["text"] = "ON 4"

        label4.configure(text="Slice 4: non attivo")

        if t74:
            canvas.delete(t74)
            t74 = None
            if t71:
                canvas.delete(t71)
                t71 = None
                r71 = canvas.create_rectangle(
                    512, 140, 512+dimx, 140+dimy, fill="#4AFB2A", )
                rettangoli = [r71]  # store the square object in a list
                canvas.tag_lower(r71, image)

        else:
            canvas.delete(r74)
            r74 = None

        if t114:
            canvas.delete(t114)
            t114 = None
            if t113:
                canvas.delete(t113)
                t113 = None
                r113 = canvas.create_rectangle(
                    372, 360, 372+dimx, 360+dimy, fill="#B663FB", )
                rettangoli = [r113]  # store the square object in a list
                canvas.tag_lower(r113, image)

        else:
            canvas.delete(r114)
            r114 = None


# Create the window
window = tk.Tk()
window.title("on demand slicing")
window.geometry("600x600")

# Load the image
image = Image.open("images/topologytrans.png")
photo = ImageTk.PhotoImage(image)

canvas = tk.Canvas(window, width=image.size[0], height=image.size[1])
canvas.pack()
image = canvas.create_image(0, 0, anchor=tk.NW, image=photo)

# Create the buttons and associate them with the functions
# Create the buttons and associate them with the functions
button1 = tk.Button(window, text="ON 1", command=button1_clicked)
button1.pack(side=tk.LEFT, padx=10, pady=5)

button2 = tk.Button(window, text="ON 2", command=button2_clicked)
button2.pack(side=tk.LEFT, padx=10, pady=5)

button3 = tk.Button(window, text="ON 3", command=button3_clicked)
button3.pack(side=tk.LEFT, padx=10, pady=5)

button4 = tk.Button(window, text="ON 4", command=button4_clicked)
button4.pack(side=tk.LEFT, padx=10, pady=5)

label1 = tk.Label(window, text="Slice 1: non attivo")
label1.pack(side=tk.TOP, padx=10, pady=5)

label2 = tk.Label(window, text="Slice 2: non attivo")
label2.pack(side=tk.TOP, padx=10, pady=5)

label3 = tk.Label(window, text="Slice 3: non attivo")
label3.pack(side=tk.TOP, padx=10, pady=5)

label4 = tk.Label(window, text="Slice 4: non attivo")
label4.pack(side=tk.TOP, padx=10, pady=5)

# Start the window
window.mainloop()
