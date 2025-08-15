#!/bin/bash
IMGUI_DIR=../imgui
mkdir -p libimgui
cp ${IMGUI_DIR}/im*.h libimgui/
cp ${IMGUI_DIR}/im*.cpp libimgui/
cp ${IMGUI_DIR}/LICENSE.txt libimgui/
cp ${IMGUI_DIR}/backends/ libimgui/
