Look here for any and all necessary copy and paste items (refresh this page often) 

docker run -it --rm -p 1234:5000 -v /tmp/skill-lab:/root/.skilllab/workspace -v /var/run/docker.sock:/var/run/docker.sock c12e/cortex-studio-skill-lab:1.0.32-g937c5a2

http://localhost:1234

git clone http://github.com/cognitivecoach/cortexclass

Install the cli: 
npm install -g cortex-cli 


-cc
