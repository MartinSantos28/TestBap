# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can't go back!**

If you aren't satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you're on your own.

You don't have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn't feel obligated to use this feature. However we understand that this tool wouldn't be useful if you couldn't customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: [https://facebook.github.io/create-react-app/docs/code-splitting](https://facebook.github.io/create-react-app/docs/code-splitting)

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `npm run build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)
"# TestBap" 


### Instrucciones para ejecutar pipeline y desplegar la aplicacion 

En esta seccion veremos como configurar una pipeline de Jenkins para desplegar nuestra app

Como primer paso ingresaremos a Jenkins, despues de haber configurado con las opciones predeterminadas de Jenkins ingresaremos al apartado de nueva tarea 

![Vista home de jenkins](https://github.com/MartinSantos28/TestBap/blob/main/ReadMeImages/Jenkinshome.png)

Para despues ingresar los datos de nuestra pipeline, el nombre puede ser cualquiera, pero debemos asegurarnos de escoger la opcion de pipeline como tarea 

![Vista home de jenkins](https://github.com/MartinSantos28/TestBap/blob/main/ReadMeImages/ConfTarea.png)

Para la siguiente parte, nos desplazaremos hasta la opcion que dice GitHub hook trigger for GITScm polling, marcaremos la casilla, como se muestra en la imagen 

![Vista home de jenkins](https://github.com/MartinSantos28/TestBap/blob/main/ReadMeImages/TriggerConf.png)

Nos desplazaremos a la parte de pipeline, donde escogeremos la opcion de Pipilene Script from SCM, en la casilla de SCM seleccionamos GIT para despues ingresar el repositorio de nuestro proyecto 

![Vista home de jenkins](https://github.com/MartinSantos28/TestBap/blob/main/ReadMeImages/GitConf.png)

Seleccionamos la rama main y dejamos el Script path en Jenkinsfile 

![Vista home de jenkins](https://github.com/MartinSantos28/TestBap/blob/main/ReadMeImages/FinalConf.png)

Le daremos en el boton de guardar, lo cual nos va a redirigir a la pagina de la tarea, en esa pantalla, con el boton de Construir ahora, vamos a ejecutar la pipeline 

![Vista home de jenkins](https://github.com/MartinSantos28/TestBap/blob/main/ReadMeImages/TareaHome.png)

Si todo esta bien configurado, nuestra salida de la consola de ejecucion debe de verse asi : 
![Vista home de jenkins](https://github.com/MartinSantos28/TestBap/blob/main/ReadMeImages/SalidaConsola.png)

### GitHub-WebHook 

Para terminar nuestro trabajo configuraremos el webhook de github, para que cada vez que hagamos un push, si todo esta bien, se active la pipeline de manera automatica 

En nuestro repositorio, iremos a la seccion de Setting -> Webhooks
En la seccion de Payload Url, pondremos la url de nuestro jenkins junto con /github-webhoo/ es importante tener en cuenta que debe de estar de esta forma.
![Vista home de jenkins](https://github.com/MartinSantos28/TestBap/blob/main/ReadMeImages/WebHook.png)

Guardaremos nuestro webhook y para realizar la prueba de que todo esta bien, debemos de hacer un push.
Si las configuraciones son correctas, veremos lo siguiente 

![Vista home de jenkins](https://github.com/MartinSantos28/TestBap/blob/main/ReadMeImages/WebHookOk.png)

