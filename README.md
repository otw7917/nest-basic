<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="120" alt="Nest Logo" /></a>
</p>

## nest-basic

let's go!

## Docker 컨테이너로 관리하기

1. 이미지 이름 만들기 `Dockerfile`

```bash
docker build -t nestjs-basic-app .
```

2. 컨테이너 실행하기

```bash
docker run --name nestjs-container -p 3000:3000 -d nestjs-basic-app
```

## 🚀 명령어 옵션 설명

| 옵션     | 설명                                                                                                                 |
| -------- | -------------------------------------------------------------------------------------------------------------------- |
| `-t`     | 빌드된 이미지에 태그(tag)를 지정함. (`-t nestjs-basic-app` → `nestjs-basic-app`이라는 이름의 이미지 생성)            |
| `-d`     | 컨테이너를 **백그라운드(Detached Mode)** 에서 실행함. (터미널을 점유하지 않음)                                       |
| `-p`     | 호스트의 포트와 컨테이너의 포트를 매핑함. (`-p 3000:3000` → 로컬 `3000` 포트에서 컨테이너의 `3000` 포트로 접근 가능) |
| `--name` | 컨테이너에 이름을 지정함. (`nestjs-container`라는 이름을 가진 컨테이너 생성)                                         |

---

## 🛑 컨테이너 관리

| 명령어                         | 설명                                  |
| ------------------------------ | ------------------------------------- |
| `docker ps`                    | 실행 중인 컨테이너 목록 확인          |
| `docker stop nestjs-container` | 실행 중인 컨테이너 정지               |
| `docker rm nestjs-container`   | 컨테이너 삭제                         |
| `docker images`                | 로컬에 저장된 Docker 이미지 목록 확인 |
| `docker rmi nestjs-basic-app`  | 특정 Docker 이미지 삭제               |

## 🛑 컴포즈 관리

| 명령어              | 설명                                                     |
| ------------------- | -------------------------------------------------------- |
| `docker compose up` | docker-compose.yml에 정의된 모든 컨테이너를 생성 및 실행 |
| `-d`                | 백그라운드(Detached mode)에서 실행                       |
| `--build`           | 이미지를 다시 빌드한 후 컨테이너 실행                    |

---

### 에러 🔥

#### node version 18 -> 20

- crypto 관련 에러

#### DB_HOST localhost -> mysql(service name)

도커 컴포즈의 경우 가상 네트워크 아래 서비스를 구성해주는데
-> 각 컨테이너의 경우 독립적인 네임스페이스를 갖기 때문에
-> DB_HOST를 localhost 로 줄경우 자기 자신의 컨테이너에서 찾기때문에
-> 문제 발생

## License

Nest is [MIT licensed](https://github.com/nestjs/nest/blob/master/LICENSE).
