document.addEventListener("turbo:load", () => {
  if (typeof gtag === 'function') {
    gtag('config', 'G-6NE7JN90XQ', {
      page_path: window.location.pathname
    });
  }
});
