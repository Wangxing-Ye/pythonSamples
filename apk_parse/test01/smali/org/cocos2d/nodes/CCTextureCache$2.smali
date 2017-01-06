.class Lorg/cocos2d/nodes/CCTextureCache$2;
.super Ljava/lang/Object;
.source "CCTextureCache.java"

# interfaces
.implements Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2d/nodes/CCTextureCache;->createTextureFromFilePath(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2d/nodes/CCTextureCache$2;->val$path:Ljava/lang/String;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lorg/cocos2d/opengl/GLResourceHelper$Resource;)V
    .locals 7
    .param p1, "res"    # Lorg/cocos2d/opengl/GLResourceHelper$Resource;

    .prologue
    .line 311
    :try_start_0
    invoke-static {}, Lorg/cocos2d/utils/ContentHelper;->sharedHelper()Lorg/cocos2d/utils/ContentHelper;

    move-result-object v5

    iget-object v6, p0, Lorg/cocos2d/nodes/CCTextureCache$2;->val$path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/cocos2d/utils/ContentHelper;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 318
    .local v3, "is":Ljava/io/InputStream;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 319
    .local v4, "opts":Landroid/graphics/BitmapFactory$Options;
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/opengl/CCTexture2D;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/cocos2d/opengl/CCTexture2D;->pixelFormat()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 320
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 348
    .local v1, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 350
    check-cast p1, Lorg/cocos2d/opengl/CCTexture2D;

    .end local p1    # "res":Lorg/cocos2d/opengl/GLResourceHelper$Resource;
    invoke-virtual {p1, v1}, Lorg/cocos2d/opengl/CCTexture2D;->initWithImage(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v2

    .line 353
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
