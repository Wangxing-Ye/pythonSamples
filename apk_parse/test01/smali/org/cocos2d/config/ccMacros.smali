.class public Lorg/cocos2d/config/ccMacros;
.super Ljava/lang/Object;
.source "ccMacros.java"


# static fields
.field public static final CC_MAX_PARTICLE_SIZE:I = 0x40

.field public static final FLT_EPSILON:F = 1.0E-6f

.field public static final INT_MIN:I = -0x80000000

.field public static final M_PI_2:F = 1.5707964f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final CCLOG(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "logName"    # Ljava/lang/String;
    .param p1, "logStr"    # Ljava/lang/String;

    .prologue
    .line 43
    return-void
.end method

.method public static final CCLOGERROR(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "logName"    # Ljava/lang/String;
    .param p1, "logStr"    # Ljava/lang/String;

    .prologue
    .line 70
    return-void
.end method

.method public static final CCLOGINFO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "logName"    # Ljava/lang/String;
    .param p1, "logStr"    # Ljava/lang/String;

    .prologue
    .line 52
    return-void
.end method

.method public static final CCLOGWARN(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "logName"    # Ljava/lang/String;
    .param p1, "logStr"    # Ljava/lang/String;

    .prologue
    .line 61
    return-void
.end method

.method public static final CCRANDOM_0_1()F
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static final CCRANDOM_MINUS1_1()F
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public static final CC_DEGREES_TO_RADIANS(F)F
    .locals 2
    .param p0, "angle"    # F

    .prologue
    .line 118
    const/high16 v0, 0x43340000    # 180.0f

    div-float v0, p0, v0

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    return v0
.end method

.method public static final CC_DIRECTOR_END()V
    .locals 3

    .prologue
    .line 194
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    .line 195
    .local v0, "director":Lorg/cocos2d/nodes/CCDirector;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->getOpenGLView()Lorg/cocos2d/opengl/GLSurfaceView;

    move-result-object v2

    .line 196
    .local v2, "view":Lorg/cocos2d/opengl/GLSurfaceView;
    if-eqz v2, :cond_0

    .line 197
    invoke-virtual {v2}, Lorg/cocos2d/opengl/GLSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 198
    .local v1, "vg":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 200
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->end()V

    .line 201
    return-void
.end method

.method public static final CC_DIRECTOR_INIT(Landroid/app/Activity;)V
    .locals 4
    .param p0, "app"    # Landroid/app/Activity;

    .prologue
    .line 175
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    .line 176
    .local v0, "director":Lorg/cocos2d/nodes/CCDirector;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCDirector;->setDeviceOrientation(I)V

    .line 177
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCDirector;->setDisplayFPS(Z)V

    .line 178
    const-wide v2, 0x3f91111111111111L    # 0.016666666666666666

    invoke-virtual {v0, v2, v3}, Lorg/cocos2d/nodes/CCDirector;->setAnimationInterval(D)V

    .line 180
    new-instance v1, Lorg/cocos2d/opengl/CCGLSurfaceView;

    invoke-direct {v1, p0}, Lorg/cocos2d/opengl/CCGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 182
    .local v1, "sv":Lorg/cocos2d/opengl/CCGLSurfaceView;
    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCDirector;->attachInView(Landroid/view/View;)Z

    .line 183
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 184
    return-void
.end method

.method public static final CC_DISABLE_DEFAULT_GL_STATES(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 150
    const/16 v0, 0xde1

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 151
    const v0, 0x8076

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 152
    const v0, 0x8078

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 153
    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 154
    return-void
.end method

.method public static final CC_ENABLE_DEFAULT_GL_STATES(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 136
    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 137
    const v0, 0x8076

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 138
    const v0, 0x8078

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 139
    const/16 v0, 0xde1

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 140
    return-void
.end method

.method public static final CC_RADIANS_TO_DEGREES(F)F
    .locals 2
    .param p0, "angle"    # F

    .prologue
    .line 125
    const v0, 0x40490fdb    # (float)Math.PI

    div-float v0, p0, v0

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public static final cc_director_WindowFocusChanged(Z)V
    .locals 3
    .param p0, "hasFocus"    # Z

    .prologue
    .line 211
    :try_start_0
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    .line 212
    .local v0, "dir":Lorg/cocos2d/nodes/CCDirector;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->getOpenGLView()Lorg/cocos2d/opengl/GLSurfaceView;

    move-result-object v2

    .line 213
    .local v2, "glView":Lorg/cocos2d/opengl/GLSurfaceView;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Lorg/cocos2d/opengl/GLSurfaceView;->onWindowFocusChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v0    # "dir":Lorg/cocos2d/nodes/CCDirector;
    .end local v2    # "glView":Lorg/cocos2d/opengl/GLSurfaceView;
    :cond_0
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static final printStackTrace(Ljava/lang/Exception;)V
    .locals 0
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 79
    return-void
.end method

.method public static final printStackTrace(Ljava/lang/Exception;Z)V
    .locals 0
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "debug"    # Z

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    :cond_0
    return-void
.end method
