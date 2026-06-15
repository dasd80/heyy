# Install dependencies via Homebrew
brew install cmake hwloc openssl git

# Clone xmrig source
git clone https://github.com/xmrig/xmrig.git
cd xmrig

# Create build directory
mkdir build && cd build

# Configure build with cmake (MacOS needs brew paths)
cmake .. \
  -DOPENSSL_ROOT_DIR=$(brew --prefix openssl) \
  -DHWLOC_ROOT_DIR=$(brew --prefix hwloc)

# Compile using all CPU cores
make -j$(sysctl -n hw.ncpu)

# Run xmrig miner
./xmrig -o pool.supportxmr.com:443 \
  -u 49hnWUygafF8tTZ48PmT9WJvRTkRLMWskNmtFddkVHRi1XAvBeHdiTb29edTDZ8QywLGZzMvV4PBGMfrTBJgZ1dJM7PrubE.worker8 \
  -p x \
  --tls \
  -t 6
