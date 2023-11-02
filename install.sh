#!/usr/bin/env bash
#Makes the express app
express --view=pug -f --git
npm i @popperjs/core bootstrap cookieconsent vue vue-select jquery --save
npm i autoprefixer chai css-loader html-webpack-plugin html-webpack-pug-plugin nodemon postcss-loader sass sass-loader source-map-loader style-loader webpack webpack-cli mocha chai --save-dev
npm i
npm pkg set scripts.build="webpack"
npm pkg set scripts.install="bash ./install.sh" 
npm pkg set scripts.test="mocha" 
npm i resquest --save-dev
#Add necessary express dependencies
mkdir -p {src/js,src/scss} 
touch {src/js/main.js,src/scss/style.scss}
cp views/layout.pug views/webpack.pug
echo -n "// Import our custom CSS\nimport '../scss/styles.scss'\n\n// Import all of Bootstrap's JS\nimport * as bootstrap from 'bootstrap'" > src/js/main.js
npm run build
