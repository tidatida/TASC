//
//  MyOpenGLView.m
//  OpenGL_Programing_Guide_Golden_Triangle
//
//  Created by Cirno MainasuK on 2015-1-17.
//  Copyright (c) 2015年 Cirno MainasuK. All rights reserved.
//
//  This program from the library "OpenGL programming guide for Mac"
//  You cna get it from https://developer.apple.com/library/mac/documentation/GraphicsImaging/Conceptual/OpenGL-MacProgGuide/opengl_drawing/opengl_drawing.html#//apple_ref/doc/uid/TP40001987-CH404-SW8

#import "MyOpenGLView.h"
#include <OpenGL/gl.h>

@implementation MyOpenGLView
static void drawAnObject () {
    glColor3f(1.0f, 0.85f, 0.35f);
    glBegin(GL_TRIANGLES);
    {
        glVertex3f(  0.0,  0.6, 0.0);
        glVertex3f( -0.2, -0.3, 0.0);
        glVertex3f(  0.2, -0.3, 0.0);
        
    }
    glEnd();
}
- (void) drawRect: (NSRect) bounds {
    glClearColor(0, 0, 0, 0);
    glClear(GL_COLOR_BUFFER_BIT);
    drawAnObject();
    glFlush();
}

@end
