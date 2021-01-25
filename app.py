from flask import Flask, jsonify, request, render_template, redirect, url_for,send_from_directory,send_file,render_template_string
# from flask_jwt import JWT, jwt_required, current_identity
# from flask_httpauth import HTTPDigestAuth
from flask_login import LoginManager, UserMixin, login_required, login_user, logout_user 
# from flask_login import LoginManager, UserMixin, login_required, login_user
from werkzeug.security import safe_str_cmp
import os
import json
user_name = "denver"
pass_word = "am3plus"
app = Flask(__name__)
app.config["UPLOADS"] = "storage/"+user_name+"/"
app.debug = True
app.config['SECRET_KEY'] = 'super-secret'
# app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///db.sqlite'
login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = "login"

class User(UserMixin):

    def __init__(self, id):
        self.id = id
        self.name = user_name
        self.password = pass_word
        
    def __repr__(self):
        return "%d/%s/%s" % (self.id, self.name, self.password)


# create some users with ids 1 to 20       
users = [User(id) for id in range(1, 21)]

# auth = HTTPDigestAuth()

# users = {
#     "d": "d",
#     "susan": "bye"
# }

# @auth.get_password
# def get_pw(username):
#     if username in users:
#         return users.get(username)
#     return None
@app.route("/upload-image", methods=["GET", "POST"])
@login_required
def upload_image():
   if request.method == "POST":
      if request.files:
         image = request.files["image"]
         print(image)
         image.save(os.path.join(app.config["UPLOADS"], image.filename))
         return redirect(request.url)    
   return render_template("upload_image.html")
# @auth.login_required

@app.route("/")
@login_required
def main_page():
   return render_template("index.html")

@app.errorhandler(404)
def page_not_found(e):
    return render_template('404.html'), 404 

@app.route("/login", methods=["GET", "POST"])
def login():
   if request.method == "GET":
      return render_template("login.html")
   else:
      if request.form["password"] == pass_word and request.form["login"] == user_name:
         id = request.form["login"]
         user = User(id)
         login_user(user)
         next = str(request.args.get('next'))
         if next != "None":
            print(next)
            return redirect(next)
         else:  
            return redirect("/")
      else:
         return render_template("login.html", warning="Data incorrect!")
      # if request.form["login"] == "denver" and request.form["password"] == "am3plus":
      #    logged = 1
      #    return redirect("/")
      # else:
      #    return render_template("login.html", warning="Data incorrect!")
# @app.route('/uploads/<path:filename>', methods=['GET', 'POST'])
# @login_required
# def download(filename):
#     # Appending app path to upload folder path within app root folder
#     uploads = os.path.join(app.root_path, "storage/avoccudleeee/")
#     # Returning file from appended path
#     return send_from_directory(directory=uploads, filename=filename)
@app.route('/uploads/', methods=['GET', 'POST'])
@login_required
def download():
   reponame = request.args.get('repo')
   filename = request.args.get('file')
   uploads = os.path.join(app.root_path, "storage/"+reponame+"/")
   print(uploads+filename)
   # return send_from_directory(directory=uploads, filename=str(filename))
   return send_file(uploads+filename, as_attachment=True)
@app.route('/view-image/', methods=['GET', 'POST'])
@login_required
def view_image():
   reponame = request.args.get('repo')
   filename = request.args.get('file')
   uploads = os.path.join(app.root_path, "storage/"+reponame+"/")
   # print(uploads+filename)
   g = uploads+filename
   # return render_template("view_image.html", image=str(g))
   return send_file(g, mimetype="image/png")

@app.route("/upload-file", methods=["GET", "POST"])
@login_required
def upload_file():
   projects = os.listdir("storage/")
   if request.method == "POST":
      if request.files:
         file = request.files["file"]
         dsd = request.form.get("repos")
         if os.path.exists(os.path.join("storage/"+dsd+"/")):#, file.filename
            try:
               file.save(os.path.join("storage/"+dsd+"/", file.filename))
               print(request.url[:-11]+"view_repo?reponame="+dsd)
               return redirect((url_for("view_repo")+"?reponame="+dsd))
            except:
               return redirect((url_for("view_repo")+"?reponame="+dsd))
         else:
            os.mkdir("storage/"+dsd+"/")
            file.save(os.path.join("storage/"+dsd+"/", file.filename))
            return redirect((url_for("view_repo")+"?reponame="+dsd))             
   return render_template("upload_file.html", proj=projects)

@app.route("/create-repo", methods=["GET", "POST"])
@login_required
def create_repo():
   if request.method == "POST":
      project_name = request.form.get('RepoName')
      os.mkdir("storage/"+project_name)
      return "Repo created"
   return render_template("new_repo.html")

@app.route("/list", methods=["GET", "POST"])
@login_required
def repo_list():
   projects = os.listdir("storage/")
   return render_template("repo_list.html", data=projects)
@app.route("/view_file", methods=["GET", "POST"])
@login_required
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
@login_required
def view_repo():
   #?name=denver
   reponame = request.args.get('reponame')
   projects = os.listdir("storage/{}".format(reponame))
   return render_template("view_repo.html",repo_name=reponame,data=projects)
@app.route("/write-to-file", methods=["GET", "POST"])
@login_required
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
@app.route("/logout")
@login_required
def logout():
    logout_user()
    return redirect("/login")
@login_manager.user_loader
def load_user(userid):
    return User(userid)
app.run()
#http://127.0.0.1:5000/view_file?reponame=denver220&filename=main.txt