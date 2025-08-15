#!/bin/bash
IMGUI_DIR=../imgui
mkdir -p libimgui
cp ${IMGUI_DIR}/im*.h libimgui/
cp ${IMGUI_DIR}/im*.cpp libimgui/
cp ${IMGUI_DIR}/LICENSE.txt libimgui/
cp ${IMGUI_DIR}/backends/imgui_impl_glfw.* libimgui/
cp ${IMGUI_DIR}/backends/imgui_impl_opengl3* libimgui/
