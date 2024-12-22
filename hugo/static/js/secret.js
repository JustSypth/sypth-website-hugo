document.addEventListener('click', function(event) {
    const REDIRECT_PROBABILITY = 0.01;
    const REDIRECT_URLS = ['/easter-eggs/ml08xo', '/easter-eggs/cma3qb', '/easter-eggs/ti4o7z', '/easter-eggs/mhzt1b'];

    if (event.target.closest('li') && Math.random() < REDIRECT_PROBABILITY) {
        let randomIndex = Math.floor(Math.random() * REDIRECT_URLS.length);
        window.location.href = REDIRECT_URLS[randomIndex];
    }
});
