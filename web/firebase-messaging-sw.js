importScripts('https://www.gstatic.com/firebasejs/11.0.2/firebase-app-compat.js');
importScripts('https://www.gstatic.com/firebasejs/11.0.2/firebase-messaging-compat.js');

const firebaseConfig = {
    apiKey: "AIzaSyBSb1vTvDDQM8G5w_GcuDV2M62e3k7OjjQ",
    authDomain: "aawaj-ed235.firebaseapp.com",
    projectId: "aawaj-ed235",
    storageBucket: "aawaj-ed235.firebasestorage.app",
    messagingSenderId: "752012306490",
    appId: "1:752012306490:web:5b3ba9b08f1c42fd3c6d03",
    measurementId: "G-WSH5ZB2LEH"
};

firebase.initializeApp(firebaseConfig);
const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((message) => {
    console.log("onBackgroundMessage", message);
});