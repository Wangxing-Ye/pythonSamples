.class Lorg/cocos2d/nodes/CCLabel$StringReloader;
.super Ljava/lang/Object;
.source "CCLabel.java"

# interfaces
.implements Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/nodes/CCLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringReloader"
.end annotation


# instance fields
.field private label:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/cocos2d/nodes/CCLabel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/cocos2d/nodes/CCLabel;)V
    .locals 1
    .param p1, "holder"    # Lorg/cocos2d/nodes/CCLabel;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCLabel$StringReloader;->label:Ljava/lang/ref/WeakReference;

    .line 91
    return-void
.end method


# virtual methods
.method public load(Lorg/cocos2d/opengl/GLResourceHelper$Resource;)V
    .locals 10
    .param p1, "res"    # Lorg/cocos2d/opengl/GLResourceHelper$Resource;

    .prologue
    const/4 v9, 0x0

    .line 95
    iget-object v0, p0, Lorg/cocos2d/nodes/CCLabel$StringReloader;->label:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cocos2d/nodes/CCLabel;

    .line 96
    .local v8, "thisp":Lorg/cocos2d/nodes/CCLabel;
    if-nez v8, :cond_0

    .line 107
    .end local p1    # "res":Lorg/cocos2d/opengl/GLResourceHelper$Resource;
    :goto_0
    return-void

    .line 99
    .restart local p1    # "res":Lorg/cocos2d/opengl/GLResourceHelper$Resource;
    :cond_0
    # getter for: Lorg/cocos2d/nodes/CCLabel;->_dimensions:Lorg/cocos2d/types/CGSize;
    invoke-static {v8}, Lorg/cocos2d/nodes/CCLabel;->access$0(Lorg/cocos2d/nodes/CCLabel;)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    invoke-static {}, Lorg/cocos2d/types/CGSize;->zero()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGSize;->equalToSize(Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/CGSize;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    check-cast p1, Lorg/cocos2d/opengl/CCTexture2D;

    .end local p1    # "res":Lorg/cocos2d/opengl/GLResourceHelper$Resource;
    # getter for: Lorg/cocos2d/nodes/CCLabel;->_string:Ljava/lang/String;
    invoke-static {v8}, Lorg/cocos2d/nodes/CCLabel;->access$1(Lorg/cocos2d/nodes/CCLabel;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lorg/cocos2d/nodes/CCLabel;->_fontName:Ljava/lang/String;
    invoke-static {v8}, Lorg/cocos2d/nodes/CCLabel;->access$2(Lorg/cocos2d/nodes/CCLabel;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lorg/cocos2d/nodes/CCLabel;->_fontSize:F
    invoke-static {v8}, Lorg/cocos2d/nodes/CCLabel;->access$3(Lorg/cocos2d/nodes/CCLabel;)F

    move-result v2

    # getter for: Lorg/cocos2d/nodes/CCLabel;->_fontStyle:I
    invoke-static {v8}, Lorg/cocos2d/nodes/CCLabel;->access$4(Lorg/cocos2d/nodes/CCLabel;)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/cocos2d/opengl/CCTexture2D;->initWithText(Ljava/lang/String;Ljava/lang/String;FI)V

    .line 105
    :goto_1
    iget-object v0, v8, Lorg/cocos2d/nodes/CCLabel;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTexture2D;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v7

    .line 106
    .local v7, "size":Lorg/cocos2d/types/CGSize;
    iget v0, v7, Lorg/cocos2d/types/CGSize;->width:F

    iget v1, v7, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v9, v9, v0, v1}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/cocos2d/nodes/CCLabel;->setTextureRect(Lorg/cocos2d/types/CGRect;)V

    goto :goto_0

    .end local v7    # "size":Lorg/cocos2d/types/CGSize;
    .restart local p1    # "res":Lorg/cocos2d/opengl/GLResourceHelper$Resource;
    :cond_1
    move-object v0, p1

    .line 102
    check-cast v0, Lorg/cocos2d/opengl/CCTexture2D;

    # getter for: Lorg/cocos2d/nodes/CCLabel;->_string:Ljava/lang/String;
    invoke-static {v8}, Lorg/cocos2d/nodes/CCLabel;->access$1(Lorg/cocos2d/nodes/CCLabel;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lorg/cocos2d/nodes/CCLabel;->_dimensions:Lorg/cocos2d/types/CGSize;
    invoke-static {v8}, Lorg/cocos2d/nodes/CCLabel;->access$0(Lorg/cocos2d/nodes/CCLabel;)Lorg/cocos2d/types/CGSize;

    move-result-object v2

    # getter for: Lorg/cocos2d/nodes/CCLabel;->_alignment:Lorg/cocos2d/nodes/CCLabel$TextAlignment;
    invoke-static {v8}, Lorg/cocos2d/nodes/CCLabel;->access$5(Lorg/cocos2d/nodes/CCLabel;)Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    move-result-object v3

    # getter for: Lorg/cocos2d/nodes/CCLabel;->_fontName:Ljava/lang/String;
    invoke-static {v8}, Lorg/cocos2d/nodes/CCLabel;->access$2(Lorg/cocos2d/nodes/CCLabel;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lorg/cocos2d/nodes/CCLabel;->_fontSize:F
    invoke-static {v8}, Lorg/cocos2d/nodes/CCLabel;->access$3(Lorg/cocos2d/nodes/CCLabel;)F

    move-result v5

    # getter for: Lorg/cocos2d/nodes/CCLabel;->_fontStyle:I
    invoke-static {v8}, Lorg/cocos2d/nodes/CCLabel;->access$4(Lorg/cocos2d/nodes/CCLabel;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2d/opengl/CCTexture2D;->initWithText(Ljava/lang/String;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCLabel$TextAlignment;Ljava/lang/String;FI)V

    goto :goto_1
.end method
