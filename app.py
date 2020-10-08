import json
import pprint
from urllib.request import urlopen
from flask import Flask, render_template
from flask_bootstrap import Bootstrap


app = Flask(__name__)

bootstrap = Bootstrap(app)

@app.route('/')
def index():
  return render_template('index.html')

@app.route('/1')
def house1():
  with urlopen("http://neocando.case.edu/cando/housingReport/lbxml.jsp?parcel=109-02-088") as url:
    http_info = url.info()
    raw_data = url.read().decode(http_info.get_content_charset())
    return raw_data

@app.route('/2')
def house2():
  with urlopen("http://neocando.case.edu/cando/housingReport/lbxml.jsp?parcel=136-18-117") as url:
    http_info = url.info()
    raw_data = url.read().decode(http_info.get_content_charset())
    return raw_data

@app.route('/3')
def house3():
  with urlopen("http://neocando.case.edu/cando/housingReport/lbxml.jsp?parcel=109-21-100") as url:
    http_info = url.info()
    raw_data = url.read().decode(http_info.get_content_charset())
    return raw_data

@app.route('/4')
def house4():
  with urlopen("http://neocando.case.edu/cando/housingReport/lbxml.jsp?parcel=672-06-054") as url:
    http_info = url.info()
    raw_data = url.read().decode(http_info.get_content_charset())
    return raw_data

@app.route('/5')
def house5():
  with urlopen("http://neocando.case.edu/cando/housingReport/lbxml.jsp?parcel=673-12-062") as url:
    http_info = url.info()
    raw_data = url.read().decode(http_info.get_content_charset())
    return raw_data


if __name__ == '__main__':
  app.run(debug=True)
