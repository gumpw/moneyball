__author__ = 'Administrator'
import httplib
import json

#return access_token
def qq(code):
    #https://graph.qq.com
    url = '/oauth2.0/token?grant_type=authorization_code&client_id=101145635&client_secret=f9169208d6e998e9a3fba62032e5b8b4&code='+code+'&redirect_uri=http%3A%2F%2Fwww.ferrin.com.cn%2FthirdLogin'
    conn = httplib.HTTPSConnection("graph.qq.com")
    conn.request("GET",url)
    res = conn.getresponse()
    data = res.read()
    pos=data.find("access_token")
    if(pos==-1):
        return "failed"
    end=data.find("&")
    return data[pos+13:end]
