const baseManifest = require('@dazn/kopytko-packager/base-manifest.js');

module.exports = {
  ...baseManifest,
  title: 'Kopytko Example App',
  ui_resolutions: 'fhd',
  bs_const: {
    RALE: true,
  },
  // custom fields
  apiKey: 'v1ScjEY6SAX3t4j5CGqCOQ==Y36n59YCgjbHBesa',
}
