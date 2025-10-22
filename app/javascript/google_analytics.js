// Google Analytics (GA4) safe loader for Rails + Turbo

(function loadGoogleAnalytics() {
  try {
    // Only load once
    if (!window.dataLayer) {
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      window.gtag = gtag;

      const script = document.createElement('script');
      script.async = true;
      script.src = 'https://www.googletagmanager.com/gtag/js?id=G-6NE7JN90XQ';
      document.head.appendChild(script);

      gtag('js', new Date());
      gtag('config', 'G-6NE7JN90XQ');
    }
  } catch (error) {
    console.warn("Google Analytics failed to initialize:", error);
  }
})();

// Track page views when navigating with Turbo
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
