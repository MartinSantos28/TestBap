## Cloning the Repository

To get started with this project, you can clone it to your local machine using Git. Follow these steps:

1. Open your terminal.

2. Navigate to the directory where you want to clone the repository.

3. Use the following command to clone the repository: `git clone https://github.com/MartinSantos28/TestBap.git`

---
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

You don't have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn't feel obligated to use this feature. However, we understand that this tool wouldn't be useful if you couldn't customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

---

## Instructions for Setting Up Jenkins Pipeline and Deploying the Application

### Setting up Jenkins

1. Navigate to Jenkins and create a new job using default options.

   ![Jenkins Home](https://github.com/MartinSantos28/TestBap/blob/main/ReadMeImages/Jenkinshome.png)

2. Fill in the pipeline details, choosing "Pipeline" as the job type.

   ![Configure Task](https://github.com/MartinSantos28/TestBap/blob/main/ReadMeImages/ConfTarea.png)

3. Enable GitHub hook trigger for GITScm polling.

   ![Trigger Configuration](https://github.com/MartinSantos28/TestBap/blob/main/ReadMeImages/TriggerConf.png)

4. In the Pipeline section, select "Pipeline Script from SCM", choose Git, and enter your repository details.

   ![Git Configuration](https://github.com/MartinSantos28/TestBap/blob/main/ReadMeImages/GitConf.png)

   Ensure the main branch is selected and the Script path is set to Jenkinsfile.

5. Save the job and navigate to its page. Click "Build Now" to execute the pipeline.

   ![Task Home](https://github.com/MartinSantos28/TestBap/blob/main/ReadMeImages/TareaHome.png)

6. If configured correctly, the console output should resemble:

   ![Console Output](https://github.com/MartinSantos28/TestBap/blob/main/ReadMeImages/SalidaConsola.png)

### Configuring GitHub Webhook

1. In your GitHub repository, go to Settings -> Webhooks.

2. In the Payload URL field, enter your Jenkins URL followed by `/github-webhook/`.

   ![Webhook Configuration](https://github.com/MartinSantos28/TestBap/blob/main/ReadMeImages/Webhook.png)

3. Save your webhook. Test it by pushing to your repository. If configured correctly, you should see:

   ![Webhook Test](https://github.com/MartinSantos28/TestBap/blob/main/ReadMeImages/WebHookOk.png)

---
### Considerations

1. Please ensure that dependencies align with the specified Node.js version.
2. This application uses Heroku. If another technology is used, necessary adjustments in the Jenkinsfile should be considered.


---
### Links 

1. https://martinsantos-react.s3.amazonaws.com/index.html Using AWS S3
2. https://reacttechnicaltest-936171411409.herokuapp.com  Using Jenkins with Heroku

---
### Infrestructure Diagram
   ![Webhook Test](https://github.com/MartinSantos28/TestBap/blob/main/ReadMeImages/DiagramaDeInfraestructura.png)