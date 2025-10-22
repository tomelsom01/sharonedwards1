// Load Google Analytics safely and work with Turbo

// Load the GA script once
(function loadGoogleAnalytics() {
  try {
    if (!window.dataLayer) {
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      window.gtag = gtag;
      gtag('js', new Date());
      gtag('config', 'G-6NE7JN90XQ');

      const script = document.createElement('script');
      script.async = true;
      script.src = 'https://www.googletagmanager.com/gtag/js?id=G-6NE7JN90XQ';
      document.head.appendChild(script);
    }
  } catch (error) {
    console.warn("Google Analytics failed to initialize:", error);
  }
})();

// Send pageview on Turbo navigation
document.addEventListener("turbo:load", () => {
  try {
    if (typeof gtag === 'function') {
      gtag('config', 'G-6NE7JN90XQ', {
        page_path: window.location.pathname
      });
    }
  } catch (error) {
    console.warn("GA pageview failed:", error);
  }
});
