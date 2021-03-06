export let sparklineOutputBinding = new Shiny.OutputBinding();

$.extend(sparklineOutputBinding, {
  find: function(scope) {
    return $(scope).find(".yonder-sparkline[id]");
  },
  getId: function(el) {
    return el.id;
  },
  renderValue: function(el, msg) {
    if (msg.data !== undefined) {
      let labels = el.getAttribute("data-labels");

      if (labels) {
        el.innerHTML = `${ msg.from }{${ msg.data.join(",") }}${ msg.to }`;
      } else {
        el.innerHTML = `{${ msg.data.join(",") }}`;
      }
    }
  },
  renderError: function(el, data) {

  },
  clearError: function(el) {

  }
});

Shiny.outputBindings.register(sparklineOutputBinding, "yonder.sparklineOutput");
