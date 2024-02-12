container:
  image: ubuntu:latest

my_custom_task:
  before_script:
    - apt-get update
    - apt install unzip -y
    - apt install wget -y
    - chmod +x ./tmate.sh
  check_script: ./tmate.sh
  matrix:
    - JOB: 1
    - JOB: 2
    - JOB: 3
    - JOB: 4
    - JOB: 5
    - JOB: 6
