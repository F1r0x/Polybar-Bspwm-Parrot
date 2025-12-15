# Polybar - Bspwm - Kali/Parrot

Entorno de trabajo personalizado en la distribución de Kali Linux o ParrotOS con Bspwm y Polybar. 


![Captura de pantalla 2022-09-29 205509](https://user-images.githubusercontent.com/103068924/193119275-30fdd026-2f28-4a2f-8c46-daf66c5dcf62.png)

![Captura de pantalla 2022-09-29 205421](https://user-images.githubusercontent.com/103068924/193119299-cc4edddb-f9c0-45a1-a399-21787dea78b1.png)

![Captura de pantalla 2022-09-29 205652](https://user-images.githubusercontent.com/103068924/193119305-2db1ebe0-9d89-4dd4-88bd-ab7d201887b9.png)


Para copiar la Polybar del entorno de trabajo, simplemente sustituir el archivo Polybar situando en ``/home/user/.config/polybar`` por el directorio 
Polybar del repositorio.
También podéis descargarlo directamente desde la terminal con:

    git clone https://github.com/F1r0x/Polybar-Bspwm-Parrot
    
Para añadir los módulos debemos de copiar la carpeta ``bin`` del repositorio dentro de la ruta ``/home/user/.config/``. En esta carpeta podéis guardar
futuros módulos.

## Función Settarget

El archivo ``targed`` es el encargado de almacenar la ``Ip`` y el ``nombre`` que se nos reportará en la Polybar. Esta herramienta está pensada para tener
visible en todo momento la Ip y el nombre de las máquinas de Hackthebox, Tryhackme, etc.

Para poder tener esta función activa simplemente tendremos que pegar la función en el archivo ``.bashrc`` o ``.zshrc`` dependiendo de si estamos utilizando una shell
Bash o Zsh. En mi caso uso ``Zsh``, así que nos dirigimos al archivo ``.zshrc``.

```

function settarget(){
    ip_address=$1
    machine_name=$2
    echo "$ip_address $machine_name" > /home/tuUsuario/.config/bin/target
}

```

Para ejecutar la función simplemente le especificamos la Ip y el nombre de la máquina:

    sudo settarget [Ip Máquina] [Nombre de la Máquina]

## Módulo Ethernet:

En el módulo que nos muestra nuestra Ip debemos de especificar el nombre de nuestra tarjeta de red. Lo podemos ver con el comando ``ifconfig``.
En el actual viene el ``enp0s3``. Simplemente lo cambiáis por el vuestro.


## Fondo de Pantalla:

Para añadir un fondo deberemos especificar la ruta de la imagen que queramos y modificarla en el siguiente comando. Para ello primero instalamos ``feh``:

    sudo apt install feh
    
Luego podemos utilizar el siguiente comando con vuestra ruta de la imagen:    

     feh --bg-fill /home/Usuario/Imágenes/WallpaperBspwm/debianwallpaperblue.jpg

Para que el fondo de pantalla se cargue de manera automática al iniciar el sistema tendremos que pegar el comando en nuestro archivo ``bspwmrc`` el
cual se encuentra en la ruta ``~/.config/bspwm/bspwmrc``. Una vez guardado al reiniciar deberíamos de tener el fondo de pantalla disponible.

# Galería:

<img width="1916" height="1078" alt="Captura de pantalla 2025-12-15 214535" src="https://github.com/user-attachments/assets/ae5215db-317e-489e-9c9d-943b0d77f683" />
<img width="1919" height="1077" alt="Captura de pantalla 2025-12-15 215141" src="https://github.com/user-attachments/assets/78597dd1-12f4-4c96-8390-fa75da76b06c" />
<img width="1917" height="1080" alt="Captura de pantalla 2025-12-15 214605" src="https://github.com/user-attachments/assets/04c94c72-7dfc-4048-97ef-08669d8a7b10" />
<img width="1919" height="1076" alt="Captura de pantalla 2025-12-15 214620" src="https://github.com/user-attachments/assets/2f8e03ef-96f9-493c-adf9-3285399ac71c" />
<img width="1918" height="1078" alt="Captura de pantalla 2025-12-15 214647" src="https://github.com/user-attachments/assets/9b2d4a42-011c-4904-8510-64497804ba2e" />
<img width="1918" height="1078" alt="Captura de pantalla 2025-12-15 214743" src="https://github.com/user-attachments/assets/5878adb8-caaa-4e29-99e8-d05870aff778" />
<img width="1918" height="1073" alt="Captura de pantalla 2025-12-15 215450" src="https://github.com/user-attachments/assets/d74ea094-4879-4a8b-a938-91415b5d8151" />
<img width="1920" height="1076" alt="Captura de pantalla 2025-12-15 223447" src="https://github.com/user-attachments/assets/6a344d49-80f8-494a-81e0-4f071e535dff" />


