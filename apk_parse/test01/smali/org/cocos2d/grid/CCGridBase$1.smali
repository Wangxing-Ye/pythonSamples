.class Lorg/cocos2d/grid/CCGridBase$1;
.super Ljava/lang/Object;
.source "CCGridBase.java"

# interfaces
.implements Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2d/grid/CCGridBase;-><init>(Lorg/cocos2d/types/ccGridSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2d/grid/CCGridBase;

.field private final synthetic val$gSize:Lorg/cocos2d/types/ccGridSize;


# direct methods
.method constructor <init>(Lorg/cocos2d/grid/CCGridBase;Lorg/cocos2d/types/ccGridSize;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2d/grid/CCGridBase$1;->this$0:Lorg/cocos2d/grid/CCGridBase;

    iput-object p2, p0, Lorg/cocos2d/grid/CCGridBase$1;->val$gSize:Lorg/cocos2d/types/ccGridSize;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lorg/cocos2d/opengl/GLResourceHelper$Resource;)V
    .locals 7
    .param p1, "res"    # Lorg/cocos2d/opengl/GLResourceHelper$Resource;

    .prologue
    const/4 v6, 0x0

    .line 121
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    .line 123
    .local v2, "s":Lorg/cocos2d/types/CGSize;
    const/16 v3, 0x8

    .line 124
    .local v3, "textureSize":I
    :goto_0
    int-to-float v4, v3

    iget v5, v2, Lorg/cocos2d/types/CGSize;->width:F

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_1

    int-to-float v4, v3

    iget v5, v2, Lorg/cocos2d/types/CGSize;->height:F

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 127
    const/16 v4, 0x400

    if-le v3, v4, :cond_0

    .line 128
    const/16 v3, 0x400

    .line 130
    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v0, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v4, p1

    .line 134
    check-cast v4, Lorg/cocos2d/opengl/CCTexture2D;

    int-to-float v5, v3

    int-to-float v6, v3

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/cocos2d/opengl/CCTexture2D;->initWithImage(Landroid/graphics/Bitmap;Lorg/cocos2d/types/CGSize;)V

    .line 136
    iget-object v4, p0, Lorg/cocos2d/grid/CCGridBase$1;->this$0:Lorg/cocos2d/grid/CCGridBase;

    iget-object v5, p0, Lorg/cocos2d/grid/CCGridBase$1;->val$gSize:Lorg/cocos2d/types/ccGridSize;

    check-cast p1, Lorg/cocos2d/opengl/CCTexture2D;

    .end local p1    # "res":Lorg/cocos2d/opengl/GLResourceHelper$Resource;
    const/4 v6, 0x0

    # invokes: Lorg/cocos2d/grid/CCGridBase;->init(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/opengl/CCTexture2D;Z)V
    invoke-static {v4, v5, p1, v6}, Lorg/cocos2d/grid/CCGridBase;->access$0(Lorg/cocos2d/grid/CCGridBase;Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/opengl/CCTexture2D;Z)V

    .line 137
    return-void

    .line 125
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local p1    # "res":Lorg/cocos2d/opengl/GLResourceHelper$Resource;
    :cond_1
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0
.end method
