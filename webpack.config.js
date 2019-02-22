const path = require('path');

module.exports = {
  entry: {
    script: './resources/js/script.js'
  },
  output: {
    library: "helper",
    filename: '[name].js',
    libraryTarget: 'var',
    path: path.resolve(__dirname, 'public/js')
  },
  module: {
    rules: [
    //   {
    //     test: /\.js$/, exclude: /node_modules/, 
    //     use: [
    //       {
    //         loader: 'babel-loader',
    //         options: {
    //           presets: ['react']
    //         }
    //       }
    //     ] 
    // },
    {
        test: /\.sass$/,
        use: [
            "style-loader", // creates style nodes from JS strings
            "css-loader", // translates CSS into CommonJS
            "sass-loader" // compiles Sass to CSS
        ]
    },
    {
        test: /\.css$/,
        use: [ 'style-loader', 'css-loader' ]
    },
    
    {
      test: /\.(png|gif|woff|woff2|eot|ttf|svg)$/i,
      use: [
        {
          loader: 'url-loader',
          options: {
            limit: 8192
          }
        }
      ]
    }
    ]
  },
  devtool: 'cheap-module-eval-source-map'
  
};