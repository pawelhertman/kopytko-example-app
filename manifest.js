const baseManifest = require('@dazn/kopytko-packager/base-manifest.js');

module.exports = {
  ...baseManifest,
  title: 'Kopytko Example App',
  ui_resolutions: 'fhd',
  bs_const: {
    RALE: true,
  },
}
