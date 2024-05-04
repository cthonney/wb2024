const path    = require("path")
const webpack = require("webpack")
const TerserWebpackPlugin = require('terser-webpack-plugin'); // Import it

module.exports = {
  mode: "production",
  devtool: "source-map",
  entry: {
    application: "./app/javascript/application.js"
  },
  output: {
    filename: "[name].js",
    sourceMapFilename: "[file].map",
    path: path.resolve(__dirname, "app/assets/builds"),
  },
  plugins: [
    new webpack.optimize.LimitChunkCountPlugin({
      maxChunks: 1
    })
  ],
  optimization: { // Add an optimization section
    minimizer: [
      new TerserWebpackPlugin({
        // Optional: add Terser options here if desired
      })
    ]
  }
}
