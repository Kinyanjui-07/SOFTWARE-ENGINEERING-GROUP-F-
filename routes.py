from xml.dom.minidom import Document
from flask import app, render_template

@app.route()
def home():
    return 'Hello, Flask!'

from flask import request

@app. route('/form')
def form():
    return render_template('form.html')

@app. route('/submit', methods=['POST'])
def submit():
    name = request.form['name']
    return f'Hello, {name}!'

from flask import request

@app.route('/form')
def form():
    return render_template('form.html')

@app.route('/submit', methods=['POST'])
def submit():
    name = request.form['name']
    return f'Hello, {name}!'

from flask import Flask, render_template, request
from flask import Flask, render_template, json, request
@app.route('/api/signup',methods=['POST'])
def signUp():
    _name = request.form['inputName']
    _email = request.form['inputEmail']
    _password = request.form['inputPassword']

    if _name and _email and _password:
        return json.dumps({'html':'<span>All fields good !!</span>'})
    else:
        return json.dumps({'html':'<span>Enter the required fields</span>'})

Document.querySelector('#form-signin').addEventListener("submit"), async function (e) {
    e.preventDefault()
    console.log(new URLSearchParams(new FormData(e.target)).toString())
    const res = await fetch("/api/signup", {
        body: new URLSearchParams(new FormData(e.target)).toString(),
        method: "POST",
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        }
    })
    console.log(await res.json())
}