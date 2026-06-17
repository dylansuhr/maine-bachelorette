(function () {
  var params = new URLSearchParams(window.location.search);
  if (params.get('internal') === 'true') localStorage.setItem('internal_traffic', 'true');
  if (params.get('internal') === 'false') localStorage.removeItem('internal_traffic');

  var isInternal = localStorage.getItem('internal_traffic') === 'true';
  gtag('config', 'G-39ZPH9LR93', isInternal ? { traffic_type: 'internal' } : {});
})();
