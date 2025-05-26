خیلی عالی، حالا که ارتباط برقرار شده، می‌تونیم مرحله‌به‌مرحله سیستم‌عامل رو برای توسعه آماده کنیم.


---

پیشنهاد مراحل نصب برای محیط توسعه کامل:

1. به‌روز رسانی سیستم

sudo apt update && sudo apt upgrade -y

2. نصب ابزارهای پایه توسعه

sudo apt install -y build-essential git curl wget unzip vim net-tools htop

3. نصب Docker و Docker Compose

sudo apt install -y ca-certificates gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | \
      sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

      sudo apt update
      sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
      sudo usermod -aG docker $USER

      > (بعد از نصب، یک‌بار logout و login کن تا گروه docker فعال بشه.)



      4. نصب Nginx

      sudo apt install -y nginx

      5. نصب پایگاه‌داده

      بسته به نیازت:

      MySQL:

      sudo apt install -y mysql-server

      PostgreSQL:

      sudo apt install -y postgresql postgresql-contrib


      6. نصب Node.js و npm

      curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
      sudo apt install -y nodejs

      7. نصب Python و pip

      sudo apt install -y python3 python3-pip

      8. نصب Java (اگر نیاز داری)

      sudo apt install -y openjdk-17-jdk


      ---

      اگر بخوای یه اسکریپت کامل اتوماسیون هم برات بسازم که همه اینا رو با هم نصب کنه، بگو تا آماده‌اش کنم.

      همچنین بگو که دقیقاً با چه زبان یا فریم‌ورکی قراره کار کنی (مثلاً Node.js، Django، Laravel، Go، ...) تا پکیج‌های اختصاصی اونم نصب کنم.

      