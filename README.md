# Polybar-Bspwm-Parrot

Entorno de trabajo personalizado en la distribución de ParrotOS con Bspwm y Polybar. 


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

Para añadir un fondo deberemos especificar la ruta de la imagen que queramos y modificarla en el siguiente comando.

     feh --bg-fill /home/Usuario/Imágenes/WallpaperBspwm/debianwallpaperblue.jpg

Para que el fondo de pantalla se cargue de manera automática al iniciar el sistema tendremos que pegar el comando en nuestro archivo ``bspwmrc`` el
cual se encuentra en la ruta ``~/.config/bspwm/bspwmrc``. Una vez guardado al reiniciar deberíamos de tener el fondo de pantalla disponible.





