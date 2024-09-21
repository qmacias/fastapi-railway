from datetime import datetime

from fastapi import FastAPI, Request, status
from fastapi.responses import Response, PlainTextResponse

app = FastAPI()


@app.get("/")
async def root():
    return {"context": "Test context", "timestamp": str(datetime.now())}


@app.get('/status-check')
async def status_check(request: Request) -> Response:
    return PlainTextResponse(None, status.HTTP_200_OK, {'Location': request.url.path})
