.class public Lorg/cocos2d/opengl/CCCamera;
.super Ljava/lang/Object;
.source "CCCamera.java"


# instance fields
.field private centerX:F

.field private centerY:F

.field private centerZ:F

.field private dirty:Z

.field private eyeX:F

.field private eyeY:F

.field private eyeZ:F

.field private upX:F

.field private upY:F

.field private upZ:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0}, Lorg/cocos2d/opengl/CCCamera;->restore()V

    .line 53
    return-void
.end method

.method public static getZEye()F
    .locals 1

    .prologue
    .line 90
    const v0, 0x358637bd    # 1.0E-6f

    return v0
.end method


# virtual methods
.method public getCenter([F[F[F)V
    .locals 2
    .param p1, "x"    # [F
    .param p2, "y"    # [F
    .param p3, "z"    # [F

    .prologue
    const/4 v1, 0x0

    .line 128
    iget v0, p0, Lorg/cocos2d/opengl/CCCamera;->centerX:F

    aput v0, p1, v1

    .line 129
    iget v0, p0, Lorg/cocos2d/opengl/CCCamera;->centerY:F

    aput v0, p2, v1

    .line 130
    iget v0, p0, Lorg/cocos2d/opengl/CCCamera;->centerZ:F

    aput v0, p3, v1

    .line 131
    return-void
.end method

.method public getDirty()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lorg/cocos2d/opengl/CCCamera;->dirty:Z

    return v0
.end method

.method public getEye([F[F[F)V
    .locals 2
    .param p1, "x"    # [F
    .param p2, "y"    # [F
    .param p3, "z"    # [F

    .prologue
    const/4 v1, 0x0

    .line 121
    iget v0, p0, Lorg/cocos2d/opengl/CCCamera;->eyeX:F

    aput v0, p1, v1

    .line 122
    iget v0, p0, Lorg/cocos2d/opengl/CCCamera;->eyeY:F

    aput v0, p2, v1

    .line 123
    iget v0, p0, Lorg/cocos2d/opengl/CCCamera;->eyeZ:F

    aput v0, p3, v1

    .line 124
    return-void
.end method

.method public getUp([F[F[F)V
    .locals 2
    .param p1, "x"    # [F
    .param p2, "y"    # [F
    .param p3, "z"    # [F

    .prologue
    const/4 v1, 0x0

    .line 135
    iget v0, p0, Lorg/cocos2d/opengl/CCCamera;->upX:F

    aput v0, p1, v1

    .line 136
    iget v0, p0, Lorg/cocos2d/opengl/CCCamera;->upY:F

    aput v0, p2, v1

    .line 137
    iget v0, p0, Lorg/cocos2d/opengl/CCCamera;->upZ:F

    aput v0, p3, v1

    .line 138
    return-void
.end method

.method public locate(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/cocos2d/opengl/CCCamera;->dirty:Z

    if-eqz v0, :cond_0

    .line 82
    iget v1, p0, Lorg/cocos2d/opengl/CCCamera;->eyeX:F

    iget v2, p0, Lorg/cocos2d/opengl/CCCamera;->eyeY:F

    iget v3, p0, Lorg/cocos2d/opengl/CCCamera;->eyeZ:F

    .line 83
    iget v4, p0, Lorg/cocos2d/opengl/CCCamera;->centerX:F

    iget v5, p0, Lorg/cocos2d/opengl/CCCamera;->centerY:F

    iget v6, p0, Lorg/cocos2d/opengl/CCCamera;->centerZ:F

    .line 84
    iget v7, p0, Lorg/cocos2d/opengl/CCCamera;->upX:F

    iget v8, p0, Lorg/cocos2d/opengl/CCCamera;->upY:F

    iget v9, p0, Lorg/cocos2d/opengl/CCCamera;->upZ:F

    move-object v0, p1

    .line 82
    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 86
    :cond_0
    return-void
.end method

.method public restore()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iput v1, p0, Lorg/cocos2d/opengl/CCCamera;->eyeX:F

    .line 64
    iput v1, p0, Lorg/cocos2d/opengl/CCCamera;->eyeY:F

    .line 65
    invoke-static {}, Lorg/cocos2d/opengl/CCCamera;->getZEye()F

    move-result v0

    iput v0, p0, Lorg/cocos2d/opengl/CCCamera;->eyeZ:F

    .line 67
    iput v1, p0, Lorg/cocos2d/opengl/CCCamera;->centerX:F

    .line 68
    iput v1, p0, Lorg/cocos2d/opengl/CCCamera;->centerY:F

    .line 69
    iput v1, p0, Lorg/cocos2d/opengl/CCCamera;->centerZ:F

    .line 71
    iput v1, p0, Lorg/cocos2d/opengl/CCCamera;->upX:F

    .line 72
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/cocos2d/opengl/CCCamera;->upY:F

    .line 73
    iput v1, p0, Lorg/cocos2d/opengl/CCCamera;->upZ:F

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/opengl/CCCamera;->dirty:Z

    .line 76
    return-void
.end method

.method public setCenter(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 105
    iput p1, p0, Lorg/cocos2d/opengl/CCCamera;->centerX:F

    .line 106
    iput p2, p0, Lorg/cocos2d/opengl/CCCamera;->centerY:F

    .line 107
    iput p3, p0, Lorg/cocos2d/opengl/CCCamera;->centerZ:F

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/opengl/CCCamera;->dirty:Z

    .line 109
    return-void
.end method

.method public setDirty(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lorg/cocos2d/opengl/CCCamera;->dirty:Z

    .line 49
    return-void
.end method

.method public setEye(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 97
    iput p1, p0, Lorg/cocos2d/opengl/CCCamera;->eyeX:F

    .line 98
    iput p2, p0, Lorg/cocos2d/opengl/CCCamera;->eyeY:F

    .line 99
    iput p3, p0, Lorg/cocos2d/opengl/CCCamera;->eyeZ:F

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/opengl/CCCamera;->dirty:Z

    .line 101
    return-void
.end method

.method public setUp(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 113
    iput p1, p0, Lorg/cocos2d/opengl/CCCamera;->upX:F

    .line 114
    iput p2, p0, Lorg/cocos2d/opengl/CCCamera;->upY:F

    .line 115
    iput p3, p0, Lorg/cocos2d/opengl/CCCamera;->upZ:F

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/opengl/CCCamera;->dirty:Z

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lorg/cocos2d/utils/CCFormatter;

    invoke-direct {v0}, Lorg/cocos2d/utils/CCFormatter;-><init>()V

    .line 58
    const-string v0, "<%s = %08X | center = (%.2f,%.2f,%.2f)>"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/cocos2d/opengl/CCCamera;->centerX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lorg/cocos2d/opengl/CCCamera;->centerY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lorg/cocos2d/opengl/CCCamera;->centerZ:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/utils/CCFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
