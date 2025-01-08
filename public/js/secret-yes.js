document.addEventListener('click', function(event) {
    const REDIRECT_PROBABILITY = 0.01;

    if (event.target.closest('li') && Math.random() < REDIRECT_PROBABILITY) {
        console.log("HIHI");
        let randomIndex = Math.floor(Math.random() * REDIRECT_URLS.length);
        window.location.href = '/easter-egg';
    }
});
