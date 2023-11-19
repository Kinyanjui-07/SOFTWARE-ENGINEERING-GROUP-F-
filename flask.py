from flask import Flask, render_template, request, redirect, url_for
import requests
import os

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('home.html')

@app.route('/issues', methods=['GET', 'POST'])
def issues():
    if request.method == 'POST':
        language = request.form['language']
        url = f"https://api.github.com/search/issues?q=repo:{language}&sort=created&order=desc"
        headers = {"Accept": "application/vnd.github+json"}
        response = requests.get(url, headers=headers)
        data = response.json()
        return render_template('issues.html', issues=data['items'])
    else:
        return render_template('issues.html')

if __name__ == '__main__':
    app.run(debug=True)
