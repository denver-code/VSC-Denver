from flask import Flask, jsonify, request, render_template, redirect, url_for
import os
app = Flask(__name__)
app.config["UPLOADS"] = "storage/denver220/"

@app.route("/upload-image", methods=["GET", "POST"])
def upload_image():
   if request.method == "POST":
      if request.files:
         image = request.files["image"]
         print(image)
         image.save(os.path.join(app.config["UPLOADS"], image.filename))
         return redirect(request.url)    
   return render_template("upload_image.html")

@app.route("/upload-file", methods=["GET", "POST"])
def upload_file():
   if request.method == "POST":
      if request.files:
         file = request.files["file"]
         print(file)
         file.save(os.path.join(app.config["UPLOADS"], file.filename))
         return redirect(request.url)    
   return render_template("upload_file.html")

@app.route("/create-repo", methods=["GET", "POST"])
def create_repo():
   if request.method == "POST":
      project_name = request.form.get('RepoName')
      os.mkdir("storage/"+project_name)
      return "Repo created"
   return render_template("new_repo.html")

@app.route("/list", methods=["GET", "POST"])
def repo_list():
   projects = os.listdir("storage/")
   return render_template("repo_list.html", data=projects)
@app.route("/view_file", methods=["GET", "POST"])
def view_file():
   #?name=denver
   reponame = request.args.get('reponame')
   filename = request.args.get('filename')
   file = open("storage/"+reponame+"/"+filename, 'r')
   data = file.read()
   file.close()
   #projects = os.listdir("storage/{}".format(reponame))
   return render_template("view_file.html", repo_name=reponame,data=data)
@app.route("/view_repo", methods=["GET", "POST"])
def view_repo():
   #?name=denver
   reponame = request.args.get('reponame')
   projects = os.listdir("storage/{}".format(reponame))
   return render_template("view_repo.html",repo_name=reponame,data=projects)
@app.route("/write-to-file", methods=["GET", "POST"])
def write_to_file():
   #?name=denver
   reponame = request.args.get('reponame')
   filename = request.args.get('filename')
   if request.method == "GET":
      return render_template("writee.html",reponame=reponame,filename=filename)
   elif request.method == "POST":
      file = open("storage/"+reponame+"/"+filename, 'w')
      file.write(request.form.get("code"))
      file.close()
      return redirect(url_for(".repo_list"))

app.run()
#http://127.0.0.1:5000/view_file?reponame=denver220&filename=main.txt