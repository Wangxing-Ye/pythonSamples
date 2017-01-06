.class public Lorg/cocos2d/utils/BufferUtils;
.super Ljava/lang/Object;
.source "BufferUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFloats([FILjava/nio/FloatBuffer;I)V
    .locals 2
    .param p0, "src"    # [F
    .param p1, "srcOffset"    # I
    .param p2, "dst"    # Ljava/nio/FloatBuffer;
    .param p3, "numElements"    # I

    .prologue
    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 13
    invoke-virtual {p2, p0, p1, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 17
    :goto_0
    return-void

    .line 15
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FILjava/nio/Buffer;I)V

    goto :goto_0
.end method
