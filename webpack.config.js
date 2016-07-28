var webpack = require('webpack');

module.exports = {
  entry: {
    canvas_clock: './assets/javascripts/canvas_clock.coffee',
    css_clock: './assets/javascripts/css_clock.coffee'
  },
  output: {
    path: './public/javascripts',
    filename: '[name].bundle.js'
  },
  module: {
    loaders: [
      { test: /\.coffee$/, loader: "coffee-loader", exclude: '/node_modules/' },
      { test: /\.js$/, loader: "babel-loader?stage=0", exclude: '/node_modules/' },
    ]
  },
  plugins: []
};
