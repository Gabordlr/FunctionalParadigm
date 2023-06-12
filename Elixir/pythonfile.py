from djitellopy import Tello

tello = Tello()
tello.connect()

#hola como estas

tello.streamon()
frame_read = tello.get_frame_read()
# Print battery status
print("Battery status: ", tello.get_battery(),"s")

while True:
    respuesta = input("Direccion del dron ")
    lista = respuesta.split("-")


    if lista[0] == "w":
        tello.move_forward(int(lista[1]))

    elif lista[0] == "a":
        tello.move_left(int(lista[1]))

    elif lista[0] == "s":
        tello.move_back(int(lista[1]))

    elif lista[0] == "d":
        tello.move_right(int(lista[1]))

    elif lista[0] == "q":
        tello.rotate_counter_clockwise(int(lista[1]))

    elif lista[0] == "e":
        tello.rotate_clockwise(int(lista[1]))

    elif lista[0] == "x":
        tello.move_down(int(lista[1]))

    elif lista[0] == "z":
        tello.move_up(int(lista[1]))
        
    elif lista[0] == "f":
        tello.land()
    
    elif lista[0] == "p":
        tello.takeoff()
        
    elif lista[0] == "off":
        tello.land()
        tello.end()
        break
        
    else :
        print("Comando no reconocido")
        