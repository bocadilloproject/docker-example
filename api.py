from bocadillo import API

api = API()


@api.route("/")
async def index(req, res):
    res.html = await api.template("index.html")


if __name__ == "__main__":
    api.run()
