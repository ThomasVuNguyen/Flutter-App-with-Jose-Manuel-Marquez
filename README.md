An application built while taking Jose Manuel Marquez's Flutter course as an effort to further develop comfySSH

1. Universal theming
![img.png](img.png)
2. Init & Dispose
![img_1.png](img_1.png)
These are the 2 functions working when a new class is initialized & disposed of. My plan is to use this to optimize by data saving operation for comfySSH App.
3. Stateful widget
This will help the "Card" creation and information storing in each app session much faster than having to constantly save to & fetch from memory.
4. Layout with sizedbox & padding
![img_2.png](img_2.png)
5. Moving between pages (cleaner than my previous implementation)
![img_3.png](img_3.png)
6. This allows for default "back" button too
![img_4.png](img_4.png)
7. Refactoring for clean code
![img_5.png](img_5.png)
Note to self: Flutter & Android Studio just refactors so nicely
8. Reusable components
![img_6.png](img_6.png)
First create a dart file as components
![img_7.png](img_7.png)
And use it like a widget with properties
![img_8.png](img_8.png)
Also, an example of a custom component without property needed (shape, icon, etc.)
9. Extended + ListView = proper list scrolling
![img_9.png](img_9.png)
10. Extract a freakin' widget
![img_10.png](img_10.png)
This way you can clean up & organize your code. Just another reason to love Flutter & Android Studio