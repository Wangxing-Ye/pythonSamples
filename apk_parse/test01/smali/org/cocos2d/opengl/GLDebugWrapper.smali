.class public Lorg/cocos2d/opengl/GLDebugWrapper;
.super Ljava/lang/Object;
.source "GLDebugWrapper.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$GLWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lorg/cocos2d/opengl/GLDebugWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;

    .prologue
    .line 19
    new-instance v0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;

    check-cast p1, Ljavax/microedition/khronos/opengles/GL10;

    .end local p1    # "gl":Ljavax/microedition/khronos/opengles/GL;
    invoke-direct {v0, p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;-><init>(Ljavax/microedition/khronos/opengles/GL10;)V

    return-object v0
.end method
