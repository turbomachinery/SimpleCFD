rm -rf output/*png
rm -rf *png
rm -rf cmake_build/*
rm -rf bin/CCAPS
mkdir -p cmake_build
cd cmake_build
cmake ..
make 
cd ..
mkdir -p output 
