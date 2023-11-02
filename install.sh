#!/usr/bin/env bash
#Makes the express app
express --view=pug -f --git
npm i

#Add necessary express dependencies
mkdir -p {src/js,src/scss} 
touch {src/js/main.js,src/scss/style.scss}
cp views/layout.pug views/webpack.pug
echo -n "// Import our custom CSS\nimport '../scss/styles.scss'\n\n// Import all of Bootstrap's JS\nimport * as bootstrap from 'bootstrap'"
npm run build