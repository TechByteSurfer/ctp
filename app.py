from flask import Flask, request, render_template

app = Flask(__name__)

@app.route('/app/<smth>')
def index(smth):
  # name = request.args.get('name', default = 'world', type = str)
  name = smth
  return render_template("index.html",name=name)
  
if __name__ == '__main__' :
    app.run(host="0.0.0.0", port=8080)