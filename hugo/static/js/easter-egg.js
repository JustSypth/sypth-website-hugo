document.addEventListener('click', function(event) {
    const REDIRECT_PROBABILITY = 0.99;

    if (event.target.closest('li') && Math.random() < REDIRECT_PROBABILITY) {
        console.log("Easter egg!");
        window.location.href = '/easter-egg';
    }
});
