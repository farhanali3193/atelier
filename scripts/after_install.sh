#!/bin/bash

sudo chmod -R 777 /home/ubuntu/atelier

#Copy and paste the .env file and the uploads folder into the atelier directory
cp /home/ubuntu/temp/.env /home/ubuntu/atelier/.env
cp /home/ubuntu/temp/ecosystem.config.js /home/ubuntu/atelier/ecosystem.config.js
# mkdir -p /home/ubuntu/atelier/uploads
cd /home/ubuntu/atelier
npm install


# EOF
#pm2 logs error
#   at Object.<anonymous> (/home/ubuntu/atelier/server/index.js:1:1)
# 0|atelier  |     at Module._compile (internal/modules/cjs/loader.js:778:30)
# 0|atelier  |     at Object.Module._extensions..js (internal/modules/cjs/loader.js:789:10)
# 0|atelier  |     at Module.load (internal/modules/cjs/loader.js:653:32)
# 0|atelier  |     at tryModuleLoad (internal/modules/cjs/loader.js:593:12)
# 0|atelier  |     at Function.Module._load (internal/modules/cjs/loader.js:585:3)
# 0|atelier  |     at /usr/local/lib/node_modules/pm2/lib/ProcessContainer.js:303:25

#cwd error
# path.js:1077
#         path = process.cwd();
#                        ^
# Error: ENOENT: no such file or directory, uv_cwd
#     at Object.resolve (path.js:1077:24)
#     at Function.Module._resolveLookupPaths (internal/modules/cjs/loader.js:534:17)
#     at Function.Module._resolveFilename (internal/modules/cjs/loader.js:629:20)
#     at Function.Module._load (internal/modules/cjs/loader.js:562:25)
#     at Module.require (internal/modules/cjs/loader.js:692:17)
#     at require (internal/modules/cjs/helpers.js:25:18)
#     at Object.<anonymous> (/usr/local/lib/node_modules/pm2/bin/pm2:3:1)
#     at Module._compile (internal/modules/cjs/loader.js:778:30)
#     at Object.Module._extensions..js (internal/modules/cjs/loader.js:789:10)
#     at Module.load (internal/modules/cjs/loader.js:653:32)