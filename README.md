# Colima + docker demo 

A quick intro to Colima - Containers on **Li**nux **Ma**chines

## Installation
(requires homebrew, pay attention to the brew `Caveats` :))

### Install colima 
```bash
brew install colima
```

### Install docker
also docker-compose and whatever else if you want 
```bash
brew install docker docker-compose
```

## Demo 

### Getting started 
1. Start up a default colima profile 
```bash
colima start
```

2. Take a look at the current VM
```bash
colima status --extended
```
- by default colima allocates 2 cpu and ram 

3. We can change the default 
```bash
# stop the default vm if running
colima stop 

# starting default but with new config
colima start --cpus 4 --memory 8 

# take a look at profiles
colima list
```
- can also use `--edit` if wanting to edit in code editor

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
6. 


