#!/bin/bash

# Dừng script nếu có lỗi xảy ra
set -e

# Tạo thư mục build
echo "Creating build directory..."
mkdir -p build
cd build

# Cấu hình CMake
echo "Configuring CMake..."
cmake .. -DCMAKE_BUILD_TYPE=Release ${OTHER_CONFIG_FLAGS}

# Xây dựng project
echo "Building the project..."
cmake --build .

# Cài đặt project
echo "Installing the project (requires sudo)..."
sudo cmake --build . --target install

echo "Build and installation complete!"
