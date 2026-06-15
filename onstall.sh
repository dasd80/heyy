wget https://github.com/xmrig/xmrig/releases/download/v6.26.0/xmrig-6.26.0-linux-static-x64.tar.gz
tar -xvf xmrig-6.26.0-linux-static-x64.tar.gz
cd xmrig-6.26.0
./xmrig -a rx \
  -o stratum+ssl://rx-eu.unmineable.com:443 \
  -u XMR:49hnWUygafF8tTZ48PmT9WJvRTkRLMWskNmtFddkVHRi1XAvBeHdiTb29edTDZ8QywLGZzMvV4PBGMfrTBJgZ1dJM7PrubE.unmineable_worker_cc16 \
  -p x \
  -t 6
