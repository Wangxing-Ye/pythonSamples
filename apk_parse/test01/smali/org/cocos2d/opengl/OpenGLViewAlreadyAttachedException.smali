.class public Lorg/cocos2d/opengl/OpenGLViewAlreadyAttachedException;
.super Ljava/lang/Exception;
.source "OpenGLViewAlreadyAttachedException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method