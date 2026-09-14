# Colima + docker demo 

A quick intro to Colima (**C**ontainers **o**n **Li**nux **Ma**chines) for macOS

## Table of Contents
- [Installation](#installation)
- [Demo](#demo)
    - [Getting started](#getting-started)
    - [Setting up different profiles](#setting-up-different-profiles)
    - [Using docker](#using-docker)
- [Links](#links)
- [Thank you](#thank-you)

---

## Installation
(requires homebrew, pay attention to the brew `Caveats` :))

### Install colima 
```bash
brew install colima
```

### Install docker
```bash
brew install docker docker-compose docker-buildx
```

---

## Demo 

### Getting started 
1. Start up colima and docker with a default colima profile
```bash
colima start
```
Note: This is the same as running `colima start default`


2. Take a look at the default VM
```bash
colima status --extended
```
- by default colima allocates 2 cpu and ram 
- Same as running `colima status default --extended`

3. We can change the default 
```bash
# stop the default vm if running
colima stop # or colima stop default

# starting default but with new config
colima start --cpus 4 --memory 8

# take a look at profiles
colima list
```

### Setting up different profiles

4. Create some new profiles by providing a name
```bash 
# creating 2 profiles
colima start bigger --cpus 6 --memory 12
colima start mini --cpus 1 --memory 2
```

take a look `colima list` or the statuses for each profile
```bash
colima status --extended
colima status default --extended # same as above
colima status bigger --extended
colima status mini --extended
```

can also stop or start using the profile names 
```bash
colima stop default
colima stop bigger
colima stop mini
```

5. Choosing the vm to use
```bash
# if the profile is not already started
colima start mini

# use that context 
docker context use colima-mini
```
you can check which context is being used via `docker context ls`

### Using docker
as you usually would basically :) 

6. like docker's hello-world
```bash
docker run hello-world
```

7. from docker hub e.g. [rancher/cowsay](https://hub.docker.com/r/rancher/cowsay)
```bash
docker pull rancher/cowsay
docker run rancher/cowsay yo
```


8. Docker build: the `sparkle.Dockerfile` demo
```bash
# build it 
docker build -f sparkle.Dockerfile -t sparkle .

# run it 
docker run sparkle 'Hello world'
```

9. Docker compose: a website at [http://localhost:8080](http://localhost:8080)
```bash 
docker-compose up --build -d 
```
then go to browser 

---

## Links
- [Colima docs](https://colima.run/docs/)
- [Colima GitHub repo](https://github.com/abiosoft/colima)
- [Quick start](https://colima.run/#quick-start)
- [Awesome Medium article with tips](https://iniakunhuda.medium.com/2-years-with-colima-the-optimization-guide-i-wish-i-had-from-day-one-8b89b8155285)


## Thank you 
Thank you to the above resources and for your attention :) 


