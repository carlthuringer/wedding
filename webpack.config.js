var path = require("path");
var webpack = require("webpack");
var merge = require("webpack-merge");
var HtmlWebpackPlugin = require("html-webpack-plugin");
var CopyWebpackPlugin = require("copy-webpack-plugin");

console.log("WEBPACK GO!");

// detemine build env
var TARGET_ENV = process.env.npm_lifecycle_event === "build"
  ? "production"
  : "development";

// common webpack config
var commonConfig = {
  entry: path.join(__dirname, "src/index.js"),

  output: {
    path: path.resolve(__dirname, "dist/"),
    filename: "[hash].js"
  },

  resolve: {
    extensions: [".js", ".elm"],
    modules: [path.join(__dirname, "src"), "node_modules"]
  },

  module: {
    rules: [
      {
        test: /\.(eot|ttf|woff|woff2|svg)$/,
        use: "file-loader"
      },
      {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        use: [
          { loader: "elm-hot-loader" },
          {
            loader: "elm-webpack-loader",
            options: {
              verbose: true,
              warn: true
            }
          }
        ]
      },
      {
        test: /\.(css|scss)$/,
        use: ["style-loader", "css-loader", "sass-loader"]
      }
    ]
  },

  plugins: [
    new HtmlWebpackPlugin({
      template: "src/index.html",
      inject: "body",
      filename: "index.html"
    }),
    new CopyWebpackPlugin([
      {
        context: "src/assets",
        from: "**/*.jpg",
        to: "assets/"
      }
    ])
  ]
};

// additional webpack settings for local env (when invoked by 'npm start')
if (TARGET_ENV === "development") {
  console.log("Serving locally...");

  module.exports = merge(commonConfig, {
    entry: [
      "webpack-dev-server/client?http://localhost:8080",
      path.join(__dirname, "src/index.js")
    ],

    devServer: {
      inline: true,
      progress: true,
      historyApiFallback: true
    }
  });
}

// additional webpack settings for prod env (when invoked via 'npm run build')
if (TARGET_ENV === "production") {
  console.log("Building for prod...");

  module.exports = merge(commonConfig, {
    plugins: [
      // minify & mangle JS/CSS
      new webpack.optimize.UglifyJsPlugin({
        minimize: true,
        compressor: { warnings: false }
        // mangle:  true
      })
    ]
  });
}
