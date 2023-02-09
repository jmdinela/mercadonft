

function revealFunction() {
    //first we need to initialize our "sr" (scroll reveal)
    //do you know all the behaviors that will be the same for all animations? Just send it directly here, as in my case, the duration, the distance...

    window.sr = ScrollReveal({ duration: 1350, distance: '250px', easing: 'ease-out' });

    //here we can create infinite classes according to our needs
    //so first we declare the name of the class and pass the props to it
    //see the documentation and you are free to do anything you can think of about the scroll fade effect :)

    sr.reveal('.reveal-left', { origin: 'left', reset: false });
    sr.reveal('.reveal-top', { origin: 'top', reset: false });
    sr.reveal('.reveal-bottom', { origin: 'bottom', reset: false });
    sr.reveal('.reveal-right', { origin: 'right', reset: false });

    sr.reveal('.reveal-reset-true', { origin: 'bottom', reset: true });
    sr.reveal('.reveal-rotate', { origin: 'bottom', rotate: { x:1000, z:1000 }, reset: true });
    sr.reveal('.reveal-bottom-reset', { origin: 'bottom', reset: true });
}

//fist of all, on load we call our magic
window.addEventListener('load', function () {
    revealFunction();
});