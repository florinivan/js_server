docker build -t amarissisal/js_gestione_chiesa .

docker run  \
      -p 3000:3000 -v `pwd`:/data  \
      amarissisal/js_gestione_chiesa  \
      --watch db.json --routes routes.json