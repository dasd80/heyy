# Install dependencies via Homebrew
brew install git cmake hwloc openssl libuv

# Clone xmrig source
git clone https://github.com/xmrig/xmrig.git
cd xmrig

# Create build directory
mkdir build && cd build

# Configure build with proper paths
cmake .. \
  -DOPENSSL_ROOT_DIR=$(brew --prefix openssl) \
  -DHWLOC_ROOT_DIR=$(brew --prefix hwloc) \
  -DUV_ROOT_DIR=$(brew --prefix libuv)

# Compile using all CPU cores
make -j$(sysctl -n hw.ncpu)

# Run xmrig miner
./xmrig -a rx \
  -o stratum+ssl://rx-eu.unmineable.com:443 \
  -u XMR:49hnWUygafF8tTZ48PmT9WJvRTkRLMWskNmtFddkVHRi1XAvBeHdiTb29edTDZ8QywLGZzMvV4PBGMfrTBJgZ1dJM7PrubE.unmineable_worker_cc16 \
  -p x \
  -t6
