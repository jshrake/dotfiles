sudo aptitude install libgtest-dev
cd /tmp
mkdir .build
cd .build
sudo cmake -DCMAKE_BUILD_TYPE=RELEASE /usr/src/gtest/
sudo make
sudo mv libg* /usr/lib/
