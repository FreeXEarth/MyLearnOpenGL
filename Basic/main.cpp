#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <iostream>
int main()
{
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);


    GLFWwindow * win = glfwCreateWindow(1024, 800, "Basic", nullptr, nullptr);



    glfwMakeContextCurrent(win);
    GLenum ret = glewInit();
    if (ret != GLEW_OK)
    {
        std::cout << "init glew error" << std::endl;
    }
    while (!glfwWindowShouldClose(win))
    {
        glfwSwapBuffers(win);
        glfwPollEvents();
    }
}
