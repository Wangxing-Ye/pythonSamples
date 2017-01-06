.class Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;
.super Lorg/cocos2d/opengl/GLSurfaceView$BaseConfigChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I

.field final synthetic this$0:Lorg/cocos2d/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Lorg/cocos2d/opengl/GLSurfaceView;IIIIII)V
    .locals 4
    .param p2, "redSize"    # I
    .param p3, "greenSize"    # I
    .param p4, "blueSize"    # I
    .param p5, "alphaSize"    # I
    .param p6, "depthSize"    # I
    .param p7, "stencilSize"    # I

    .prologue
    const/4 v3, 0x1

    .line 810
    iput-object p1, p0, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->this$0:Lorg/cocos2d/opengl/GLSurfaceView;

    .line 795
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 796
    const/16 v2, 0x3024

    aput v2, v0, v1

    aput p2, v0, v3

    const/4 v1, 0x2

    .line 797
    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p3, v0, v1

    const/4 v1, 0x4

    .line 798
    const/16 v2, 0x3022

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p4, v0, v1

    const/4 v1, 0x6

    .line 799
    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    aput p5, v0, v1

    const/16 v1, 0x8

    .line 800
    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p6, v0, v1

    const/16 v1, 0xa

    .line 801
    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    aput p7, v0, v1

    const/16 v1, 0xc

    .line 802
    const/16 v2, 0x3038

    aput v2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/cocos2d/opengl/GLSurfaceView$BaseConfigChooser;-><init>(Lorg/cocos2d/opengl/GLSurfaceView;[I)V

    .line 803
    new-array v0, v3, [I

    iput-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    .line 804
    iput p2, p0, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    .line 805
    iput p3, p0, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    .line 806
    iput p4, p0, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    .line 807
    iput p5, p0, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    .line 808
    iput p6, p0, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    .line 809
    iput p7, p0, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .prologue
    .line 847
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 850
    .end local p5    # "defaultValue":I
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 19
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 815
    const/4 v10, 0x0

    .line 816
    .local v10, "closestConfig":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v11, 0x3e8

    .line 817
    .local v11, "closestDistance":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 841
    return-object v10

    .line 817
    :cond_0
    aget-object v5, p3, v17

    .line 819
    .local v5, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v6, 0x3025

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 818
    invoke-direct/range {v2 .. v7}, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 821
    .local v12, "d":I
    const/16 v6, 0x3026

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 820
    invoke-direct/range {v2 .. v7}, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v16

    .line 822
    .local v16, "s":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    if-lt v12, v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    move/from16 v0, v16

    if-lt v0, v2, :cond_1

    .line 824
    const/16 v6, 0x3024

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 823
    invoke-direct/range {v2 .. v7}, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v15

    .line 826
    .local v15, "r":I
    const/16 v6, 0x3023

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 825
    invoke-direct/range {v2 .. v7}, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 828
    .local v14, "g":I
    const/16 v6, 0x3022

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 827
    invoke-direct/range {v2 .. v7}, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 830
    .local v9, "b":I
    const/16 v6, 0x3021

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 829
    invoke-direct/range {v2 .. v7}, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 831
    .local v8, "a":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    sub-int v2, v15, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 832
    move-object/from16 v0, p0

    iget v3, v0, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    sub-int v3, v14, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 831
    add-int/2addr v2, v3

    .line 833
    move-object/from16 v0, p0

    iget v3, v0, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    sub-int v3, v9, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 831
    add-int/2addr v2, v3

    .line 834
    move-object/from16 v0, p0

    iget v3, v0, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    sub-int v3, v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 831
    add-int v13, v2, v3

    .line 835
    .local v13, "distance":I
    if-ge v13, v11, :cond_1

    .line 836
    move v11, v13

    .line 837
    move-object v10, v5

    .line 817
    .end local v8    # "a":I
    .end local v9    # "b":I
    .end local v13    # "distance":I
    .end local v14    # "g":I
    .end local v15    # "r":I
    :cond_1
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto/16 :goto_0
.end method
