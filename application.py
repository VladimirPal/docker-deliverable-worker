
from aiohttp import web

def index(request):
    return web.Response(text="Welcome home!")


app = web.Application()
app.router.add_get('/', index)
