## windows
1. Chocolateyインストール
  - 公式サイトからコマンドコピペ
    - https://chocolatey.org/install#individual
    - ```
      Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
2. fnm
  - ```
      choco install fnm -y
    ```
3. posh-git
  - https://github.com/dahlbyk/posh-git
4. C:\Program Files\PowerShell\7 に.ps1設置
5. powershell再起動
