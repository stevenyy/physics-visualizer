BULLET_DIR = lib/bullet-physics
BULLET_BUILD_DIR = lib/bullet-physics/bullet-build
GLFW_DIR = lib/glfw
GLEW_DIR = lib/glew
GLM_DIR = lib/glm

CC = g++
TARGETS = src/main.cpp
OBJ_DIR = bin

INCLUDES = -I ${BULLET_DIR}/src \
    -I ${GLFW_DIR}/include \
    -I ${GLEW_DIR}/include \
    -I ${GLM_DIR}
LINKS = ${BULLET_BUILD_DIR}/src/BulletDynamics/libBulletDynamics.a \
    ${BULLET_BUILD_DIR}/src/BulletCollision/libBulletCollision.a \
    ${BULLET_BUILD_DIR}/src/LinearMath/libLinearMath.a \
    ${GLFW_DIR}/build/src/libglfw3.a \
    ${GLEW_DIR}/lib/libGLEW.a
OPTIONS = -framework Cocoa \
    -framework OpenGL \
    -framework IOKit \
    -framework CoreVideo

build:
	@echo "Building..."
	mkdir -p bin
	@echo "Building..."
	${CC} ${TARGETS} ${INCLUDES} ${LINKS} ${OPTIONS} -o ${OBJ_DIR}/out
