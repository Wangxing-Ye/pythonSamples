.class public Lorg/cocos2d/nodes/CCSprite;
.super Lorg/cocos2d/nodes/CCNode;
.source "CCSprite.java"

# interfaces
.implements Lorg/cocos2d/protocols/CCRGBAProtocol;
.implements Lorg/cocos2d/protocols/CCTextureProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/nodes/CCSprite$TransformValues;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CCSpriteIndexNotInitialized:I = -0x1

.field public static final CC_HONOR_PARENT_TRANSFORM_ALL:I = 0x7

.field public static final CC_HONOR_PARENT_TRANSFORM_ROTATE:I = 0x2

.field public static final CC_HONOR_PARENT_TRANSFORM_SCALE:I = 0x4

.field public static final CC_HONOR_PARENT_TRANSFORM_TRANSLATE:I = 0x1

.field private static final tmpColor4B:Lorg/cocos2d/types/ccColor4B;

.field private static final tmpColors:[Lorg/cocos2d/types/ccColor4B;

.field private static final tmpMatrix:Lorg/cocos2d/types/CGAffineTransform;

.field private static final tmpNewMatrix:Lorg/cocos2d/types/CGAffineTransform;

.field private static final tmpV:[F


# instance fields
.field private animations_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/cocos2d/nodes/CCAnimation;",
            ">;"
        }
    .end annotation
.end field

.field public atlasIndex:I

.field protected blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

.field colorUnmodified_:Lorg/cocos2d/types/ccColor3B;

.field color_:Lorg/cocos2d/types/ccColor3B;

.field private colors:Ljava/nio/FloatBuffer;

.field dirty_:Z

.field public flipX_:Z

.field public flipY_:Z

.field hasChildren_:Z

.field honorParentTransform_:I

.field offsetPosition_:Lorg/cocos2d/types/CGPoint;

.field opacityModifyRGB_:Z

.field opacity_:I

.field rectRotated_:Ljava/lang/Boolean;

.field rect_:Lorg/cocos2d/types/CGRect;

.field recursiveDirty_:Z

.field spriteSheet_:Lorg/cocos2d/nodes/CCSpriteSheet;

.field private texCoords:Ljava/nio/FloatBuffer;

.field textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

.field texturePath_:Ljava/lang/String;

.field texture_:Lorg/cocos2d/opengl/CCTexture2D;

.field unflippedOffsetPositionFromCenter_:Lorg/cocos2d/types/CGPoint;

.field usesSpriteSheet_:Z

.field private vertexes:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    const-class v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/nodes/CCSprite;->$assertionsDisabled:Z

    .line 629
    invoke-static {v2, v2, v2, v2}, Lorg/cocos2d/types/ccColor4B;->ccc4(IIII)Lorg/cocos2d/types/ccColor4B;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/nodes/CCSprite;->tmpColor4B:Lorg/cocos2d/types/ccColor4B;

    .line 630
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/cocos2d/types/ccColor4B;

    sget-object v3, Lorg/cocos2d/nodes/CCSprite;->tmpColor4B:Lorg/cocos2d/types/ccColor4B;

    aput-object v3, v0, v2

    sget-object v2, Lorg/cocos2d/nodes/CCSprite;->tmpColor4B:Lorg/cocos2d/types/ccColor4B;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/cocos2d/nodes/CCSprite;->tmpColor4B:Lorg/cocos2d/types/ccColor4B;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/cocos2d/nodes/CCSprite;->tmpColor4B:Lorg/cocos2d/types/ccColor4B;

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2d/nodes/CCSprite;->tmpColors:[Lorg/cocos2d/types/ccColor4B;

    .line 1115
    invoke-static {}, Lorg/cocos2d/types/CGAffineTransform;->identity()Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/nodes/CCSprite;->tmpMatrix:Lorg/cocos2d/types/CGAffineTransform;

    .line 1116
    invoke-static {}, Lorg/cocos2d/types/CGAffineTransform;->identity()Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/nodes/CCSprite;->tmpNewMatrix:Lorg/cocos2d/types/CGAffineTransform;

    .line 1117
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    return-void

    :cond_0
    move v0, v2

    .line 48
    goto :goto_0

    .line 1117
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 397
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 161
    new-instance v0, Lorg/cocos2d/types/ccBlendFunc;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    .line 164
    invoke-static {}, Lorg/cocos2d/types/CGRect;->zero()Lorg/cocos2d/types/CGRect;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    .line 165
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->rectRotated_:Ljava/lang/Boolean;

    .line 398
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->init()V

    .line 399
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 417
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 161
    new-instance v4, Lorg/cocos2d/types/ccBlendFunc;

    const/4 v5, 0x1

    const/16 v6, 0x303

    invoke-direct {v4, v5, v6}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    iput-object v4, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    .line 164
    invoke-static {}, Lorg/cocos2d/types/CGRect;->zero()Lorg/cocos2d/types/CGRect;

    move-result-object v4

    iput-object v4, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    .line 165
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lorg/cocos2d/nodes/CCSprite;->rectRotated_:Ljava/lang/Boolean;

    .line 418
    sget-boolean v4, Lorg/cocos2d/nodes/CCSprite;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Invalid CGImageRef for sprite"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 421
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v3

    .line 424
    .local v3, "texture":Lorg/cocos2d/opengl/CCTexture2D;
    invoke-virtual {v3}, Lorg/cocos2d/opengl/CCTexture2D;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    .line 425
    .local v2, "size":Lorg/cocos2d/types/CGSize;
    iget v4, v2, Lorg/cocos2d/types/CGSize;->width:F

    iget v5, v2, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v7, v7, v4, v5}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v1

    .line 427
    .local v1, "rect":Lorg/cocos2d/types/CGRect;
    invoke-virtual {p0, v3, v1}, Lorg/cocos2d/nodes/CCSprite;->init(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;)V

    .line 428
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 436
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 161
    new-instance v3, Lorg/cocos2d/types/ccBlendFunc;

    const/4 v4, 0x1

    const/16 v5, 0x303

    invoke-direct {v3, v4, v5}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    iput-object v3, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    .line 164
    invoke-static {}, Lorg/cocos2d/types/CGRect;->zero()Lorg/cocos2d/types/CGRect;

    move-result-object v3

    iput-object v3, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    .line 165
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lorg/cocos2d/nodes/CCSprite;->rectRotated_:Ljava/lang/Boolean;

    .line 437
    sget-boolean v3, Lorg/cocos2d/nodes/CCSprite;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Invalid CGImageRef for sprite"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 440
    :cond_0
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v2

    .line 442
    .local v2, "texture":Lorg/cocos2d/opengl/CCTexture2D;
    invoke-virtual {v2}, Lorg/cocos2d/opengl/CCTexture2D;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    .line 443
    .local v1, "size":Lorg/cocos2d/types/CGSize;
    iget v3, v1, Lorg/cocos2d/types/CGSize;->width:F

    iget v4, v1, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v6, v6, v3, v4}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    .line 445
    .local v0, "rect":Lorg/cocos2d/types/CGRect;
    invoke-virtual {p0, v2, v0}, Lorg/cocos2d/nodes/CCSprite;->init(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;)V

    .line 446
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 383
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 161
    new-instance v2, Lorg/cocos2d/types/ccBlendFunc;

    const/4 v3, 0x1

    const/16 v4, 0x303

    invoke-direct {v2, v3, v4}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    iput-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    .line 164
    invoke-static {}, Lorg/cocos2d/types/CGRect;->zero()Lorg/cocos2d/types/CGRect;

    move-result-object v2

    iput-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    .line 165
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->rectRotated_:Ljava/lang/Boolean;

    .line 384
    sget-boolean v2, Lorg/cocos2d/nodes/CCSprite;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Invalid filename for sprite"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 386
    :cond_0
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v1

    .line 387
    .local v1, "texture":Lorg/cocos2d/opengl/CCTexture2D;
    if-eqz v1, :cond_1

    .line 388
    invoke-static {v5, v5, v5, v5}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    .line 389
    .local v0, "rect":Lorg/cocos2d/types/CGRect;
    invoke-virtual {v1}, Lorg/cocos2d/opengl/CCTexture2D;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    iput-object v2, v0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    .line 390
    invoke-virtual {p0, v1, v0}, Lorg/cocos2d/nodes/CCSprite;->init(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;)V

    .line 391
    invoke-direct {p0, p1}, Lorg/cocos2d/nodes/CCSprite;->setTexturePath(Ljava/lang/String;)V

    .line 395
    .end local v0    # "rect":Lorg/cocos2d/types/CGRect;
    :goto_0
    return-void

    .line 393
    :cond_1
    const-string v2, "CCSprite"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to load texture from file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/cocos2d/config/ccMacros;->CCLOGERROR(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/cocos2d/types/CGRect;)V
    .locals 4
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "rect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 404
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 161
    new-instance v1, Lorg/cocos2d/types/ccBlendFunc;

    const/4 v2, 0x1

    const/16 v3, 0x303

    invoke-direct {v1, v2, v3}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    iput-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    .line 164
    invoke-static {}, Lorg/cocos2d/types/CGRect;->zero()Lorg/cocos2d/types/CGRect;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    .line 165
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->rectRotated_:Ljava/lang/Boolean;

    .line 405
    sget-boolean v1, Lorg/cocos2d/nodes/CCSprite;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Invalid filename for sprite"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 407
    :cond_0
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    .line 408
    .local v0, "texture":Lorg/cocos2d/opengl/CCTexture2D;
    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {p0, v0, p2}, Lorg/cocos2d/nodes/CCSprite;->init(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;)V

    .line 411
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "spriteFrameName"    # Ljava/lang/String;
    .param p2, "isFrame"    # Z

    .prologue
    .line 372
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 161
    new-instance v1, Lorg/cocos2d/types/ccBlendFunc;

    const/4 v2, 0x1

    const/16 v3, 0x303

    invoke-direct {v1, v2, v3}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    iput-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    .line 164
    invoke-static {}, Lorg/cocos2d/types/CGRect;->zero()Lorg/cocos2d/types/CGRect;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    .line 165
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->rectRotated_:Ljava/lang/Boolean;

    .line 373
    sget-boolean v1, Lorg/cocos2d/nodes/CCSprite;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Invalid spriteFrameName for sprite"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 374
    :cond_0
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v1

    .line 375
    invoke-virtual {v1, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    .line 376
    .local v0, "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCSprite;->init(Lorg/cocos2d/nodes/CCSpriteFrame;)V

    .line 377
    return-void
.end method

.method public constructor <init>(Lorg/cocos2d/nodes/CCSpriteFrame;)V
    .locals 3
    .param p1, "spriteFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 355
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 161
    new-instance v0, Lorg/cocos2d/types/ccBlendFunc;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    .line 164
    invoke-static {}, Lorg/cocos2d/types/CGRect;->zero()Lorg/cocos2d/types/CGRect;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    .line 165
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->rectRotated_:Ljava/lang/Boolean;

    .line 356
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCSprite;->init(Lorg/cocos2d/nodes/CCSpriteFrame;)V

    .line 357
    return-void
.end method

.method public constructor <init>(Lorg/cocos2d/nodes/CCSpriteSheet;Lorg/cocos2d/types/CGRect;)V
    .locals 3
    .param p1, "spritesheet"    # Lorg/cocos2d/nodes/CCSpriteSheet;
    .param p2, "rect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 450
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 161
    new-instance v0, Lorg/cocos2d/types/ccBlendFunc;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    .line 164
    invoke-static {}, Lorg/cocos2d/types/CGRect;->zero()Lorg/cocos2d/types/CGRect;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    .line 165
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->rectRotated_:Ljava/lang/Boolean;

    .line 451
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteSheet;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/cocos2d/nodes/CCSprite;->init(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;)V

    .line 452
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCSprite;->useSpriteSheetRender(Lorg/cocos2d/nodes/CCSpriteSheet;)V

    .line 453
    return-void
.end method

.method public constructor <init>(Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 6
    .param p1, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    const/4 v5, 0x0

    .line 332
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 161
    new-instance v2, Lorg/cocos2d/types/ccBlendFunc;

    const/4 v3, 0x1

    const/16 v4, 0x303

    invoke-direct {v2, v3, v4}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    iput-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    .line 164
    invoke-static {}, Lorg/cocos2d/types/CGRect;->zero()Lorg/cocos2d/types/CGRect;

    move-result-object v2

    iput-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    .line 165
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->rectRotated_:Ljava/lang/Boolean;

    .line 333
    invoke-virtual {p1}, Lorg/cocos2d/opengl/CCTexture2D;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    .line 334
    .local v1, "size":Lorg/cocos2d/types/CGSize;
    iget v2, v1, Lorg/cocos2d/types/CGSize;->width:F

    iget v3, v1, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v5, v5, v2, v3}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    .line 335
    .local v0, "rect":Lorg/cocos2d/types/CGRect;
    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/nodes/CCSprite;->init(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;)V

    .line 336
    return-void
.end method

.method public constructor <init>(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;)V
    .locals 3
    .param p1, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;
    .param p2, "rect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 338
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 161
    new-instance v0, Lorg/cocos2d/types/ccBlendFunc;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    .line 164
    invoke-static {}, Lorg/cocos2d/types/CGRect;->zero()Lorg/cocos2d/types/CGRect;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    .line 165
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->rectRotated_:Ljava/lang/Boolean;

    .line 339
    invoke-virtual {p0, p1, p2}, Lorg/cocos2d/nodes/CCSprite;->init(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;)V

    .line 340
    return-void
.end method

.method private SET_DIRTY_RECURSIVELY()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 713
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCSprite;->usesSpriteSheet_:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCSprite;->recursiveDirty_:Z

    if-nez v0, :cond_0

    .line 714
    iput-boolean v1, p0, Lorg/cocos2d/nodes/CCSprite;->recursiveDirty_:Z

    iput-boolean v1, p0, Lorg/cocos2d/nodes/CCSprite;->dirty_:Z

    .line 715
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCSprite;->hasChildren_:Z

    if-eqz v0, :cond_0

    .line 716
    invoke-virtual {p0, v1}, Lorg/cocos2d/nodes/CCSprite;->setDirtyRecursively(Z)V

    .line 718
    :cond_0
    return-void
.end method

.method private initAnimationDictionary()V
    .locals 1

    .prologue
    .line 737
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->animations_:Ljava/util/HashMap;

    .line 738
    return-void
.end method

.method private setTexturePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lorg/cocos2d/nodes/CCSprite;->texturePath_:Ljava/lang/String;

    .line 235
    return-void
.end method

.method private setTextureRect(FFFFFFZ)V
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "sw"    # F
    .param p6, "sh"    # F
    .param p7, "rotated"    # Z

    .prologue
    .line 744
    iget-object v8, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    move/from16 v0, p4

    invoke-virtual {v8, p1, p2, p3, v0}, Lorg/cocos2d/types/CGRect;->set(FFFF)V

    .line 745
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lorg/cocos2d/nodes/CCSprite;->rectRotated_:Ljava/lang/Boolean;

    .line 747
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setContentSize(FF)V

    .line 748
    iget-object v8, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    invoke-virtual {p0, v8}, Lorg/cocos2d/nodes/CCSprite;->updateTextureCoords(Lorg/cocos2d/types/CGRect;)V

    .line 750
    iget-object v8, p0, Lorg/cocos2d/nodes/CCSprite;->unflippedOffsetPositionFromCenter_:Lorg/cocos2d/types/CGPoint;

    iget v2, v8, Lorg/cocos2d/types/CGPoint;->x:F

    .line 751
    .local v2, "relativeOffsetX":F
    iget-object v8, p0, Lorg/cocos2d/nodes/CCSprite;->unflippedOffsetPositionFromCenter_:Lorg/cocos2d/types/CGPoint;

    iget v3, v8, Lorg/cocos2d/types/CGPoint;->y:F

    .line 754
    .local v3, "relativeOffsetY":F
    iget-boolean v8, p0, Lorg/cocos2d/nodes/CCSprite;->flipX_:Z

    if-eqz v8, :cond_0

    .line 755
    neg-float v2, v2

    .line 756
    :cond_0
    iget-boolean v8, p0, Lorg/cocos2d/nodes/CCSprite;->flipY_:Z

    if-eqz v8, :cond_1

    .line 757
    neg-float v3, v3

    .line 759
    :cond_1
    iget-object v8, p0, Lorg/cocos2d/nodes/CCSprite;->offsetPosition_:Lorg/cocos2d/types/CGPoint;

    iget-object v9, p0, Lorg/cocos2d/nodes/CCSprite;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v9, v9, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v10, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    iget-object v10, v10, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v10, v10, Lorg/cocos2d/types/CGSize;->width:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v9, v2

    iput v9, v8, Lorg/cocos2d/types/CGPoint;->x:F

    .line 760
    iget-object v8, p0, Lorg/cocos2d/nodes/CCSprite;->offsetPosition_:Lorg/cocos2d/types/CGPoint;

    iget-object v9, p0, Lorg/cocos2d/nodes/CCSprite;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v9, v9, Lorg/cocos2d/types/CGSize;->height:F

    iget-object v10, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    iget-object v10, v10, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v10, v10, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v9, v3

    iput v9, v8, Lorg/cocos2d/types/CGPoint;->y:F

    .line 763
    iget-boolean v8, p0, Lorg/cocos2d/nodes/CCSprite;->usesSpriteSheet_:Z

    if-eqz v8, :cond_2

    .line 765
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/cocos2d/nodes/CCSprite;->dirty_:Z

    .line 802
    :goto_0
    return-void

    .line 768
    :cond_2
    const/4 v8, 0x0

    iget-object v9, p0, Lorg/cocos2d/nodes/CCSprite;->offsetPosition_:Lorg/cocos2d/types/CGPoint;

    iget v9, v9, Lorg/cocos2d/types/CGPoint;->x:F

    add-float v4, v8, v9

    .line 769
    .local v4, "x1":F
    const/4 v8, 0x0

    iget-object v9, p0, Lorg/cocos2d/nodes/CCSprite;->offsetPosition_:Lorg/cocos2d/types/CGPoint;

    iget v9, v9, Lorg/cocos2d/types/CGPoint;->y:F

    add-float v6, v8, v9

    .line 770
    .local v6, "y1":F
    add-float v5, v4, p3

    .line 771
    .local v5, "x2":F
    add-float v7, v6, p4

    .line 774
    .local v7, "y2":F
    iget-object v8, p0, Lorg/cocos2d/nodes/CCSprite;->vertexes:Ljava/nio/FloatBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 775
    sget-object v8, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v9, 0x0

    aput v4, v8, v9

    .line 776
    sget-object v8, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v9, 0x1

    aput v7, v8, v9

    .line 777
    sget-object v8, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 778
    sget-object v8, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v9, 0x3

    aput v4, v8, v9

    .line 779
    sget-object v8, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v9, 0x4

    aput v6, v8, v9

    .line 780
    sget-object v8, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v9, 0x5

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 781
    sget-object v8, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v9, 0x6

    aput v5, v8, v9

    .line 782
    sget-object v8, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v9, 0x7

    aput v7, v8, v9

    .line 783
    sget-object v8, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/16 v9, 0x8

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 784
    sget-object v8, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/16 v9, 0x9

    aput v5, v8, v9

    .line 785
    sget-object v8, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/16 v9, 0xa

    aput v6, v8, v9

    .line 786
    sget-object v8, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/16 v9, 0xb

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 787
    sget-object v8, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/cocos2d/nodes/CCSprite;->vertexes:Ljava/nio/FloatBuffer;

    const/16 v11, 0xc

    invoke-static {v8, v9, v10, v11}, Lorg/cocos2d/utils/BufferUtils;->copyFloats([FILjava/nio/FloatBuffer;I)V

    .line 800
    iget-object v8, p0, Lorg/cocos2d/nodes/CCSprite;->vertexes:Ljava/nio/FloatBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method private setTextureRect(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGSize;Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "rect"    # Lorg/cocos2d/types/CGRect;
    .param p2, "size"    # Lorg/cocos2d/types/CGSize;
    .param p3, "rotated"    # Ljava/lang/Boolean;

    .prologue
    .line 741
    iget-object v0, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v0, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v2, v0, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v0, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v3, v0, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v0, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v4, v0, Lorg/cocos2d/types/CGSize;->height:F

    iget v5, p2, Lorg/cocos2d/types/CGSize;->width:F

    iget v6, p2, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/cocos2d/nodes/CCSprite;->setTextureRect(FFFFFFZ)V

    .line 742
    return-void
.end method

.method public static sprite(Landroid/graphics/Bitmap;)Lorg/cocos2d/nodes/CCSprite;
    .locals 1
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-direct {v0, p0}, Lorg/cocos2d/nodes/CCSprite;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static sprite(Landroid/graphics/Bitmap;Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;
    .locals 1
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 318
    new-instance v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/nodes/CCSprite;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;
    .locals 1
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 286
    new-instance v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-direct {v0, p0}, Lorg/cocos2d/nodes/CCSprite;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static sprite(Ljava/lang/String;Lorg/cocos2d/types/CGRect;)Lorg/cocos2d/nodes/CCSprite;
    .locals 1
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "rect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 293
    new-instance v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/nodes/CCSprite;-><init>(Ljava/lang/String;Lorg/cocos2d/types/CGRect;)V

    return-object v0
.end method

.method public static sprite(Ljava/lang/String;Z)Lorg/cocos2d/nodes/CCSprite;
    .locals 1
    .param p0, "spriteFrameName"    # Ljava/lang/String;
    .param p1, "isFrame"    # Z

    .prologue
    .line 278
    new-instance v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/nodes/CCSprite;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;
    .locals 1
    .param p0, "spriteFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 269
    new-instance v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-direct {v0, p0}, Lorg/cocos2d/nodes/CCSprite;-><init>(Lorg/cocos2d/nodes/CCSpriteFrame;)V

    return-object v0
.end method

.method public static sprite(Lorg/cocos2d/nodes/CCSpriteSheet;Lorg/cocos2d/types/CGRect;)Lorg/cocos2d/nodes/CCSprite;
    .locals 1
    .param p0, "spritesheet"    # Lorg/cocos2d/nodes/CCSpriteSheet;
    .param p1, "rect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 324
    new-instance v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/nodes/CCSprite;-><init>(Lorg/cocos2d/nodes/CCSpriteSheet;Lorg/cocos2d/types/CGRect;)V

    return-object v0
.end method

.method public static sprite(Lorg/cocos2d/opengl/CCTexture2D;)Lorg/cocos2d/nodes/CCSprite;
    .locals 1
    .param p0, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    .line 256
    new-instance v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-direct {v0, p0}, Lorg/cocos2d/nodes/CCSprite;-><init>(Lorg/cocos2d/opengl/CCTexture2D;)V

    return-object v0
.end method

.method public static sprite(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;)Lorg/cocos2d/nodes/CCSprite;
    .locals 1
    .param p0, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;
    .param p1, "rect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 263
    new-instance v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/nodes/CCSprite;-><init>(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;)V

    return-object v0
.end method

.method private updateBlendFunc()V
    .locals 3

    .prologue
    const/16 v2, 0x303

    const/4 v1, 0x1

    .line 721
    sget-boolean v0, Lorg/cocos2d/nodes/CCSprite;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCSprite;->usesSpriteSheet_:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    .line 722
    const-string v1, "CCSprite: updateBlendFunc doesn\'t work when the sprite is rendered using a CCSpriteSheet"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 725
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTexture2D;->hasPremultipliedAlpha()Z

    move-result v0

    if-nez v0, :cond_2

    .line 726
    :cond_1
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    const/16 v1, 0x302

    iput v1, v0, Lorg/cocos2d/types/ccBlendFunc;->src:I

    .line 727
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iput v2, v0, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    .line 728
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCSprite;->setOpacityModifyRGB(Z)V

    .line 734
    :goto_0
    return-void

    .line 730
    :cond_2
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iput v1, v0, Lorg/cocos2d/types/ccBlendFunc;->src:I

    .line 731
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iput v2, v0, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    .line 732
    invoke-virtual {p0, v1}, Lorg/cocos2d/nodes/CCSprite;->setOpacityModifyRGB(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addAnimation(Lorg/cocos2d/nodes/CCAnimation;)V
    .locals 2
    .param p1, "anim"    # Lorg/cocos2d/nodes/CCAnimation;

    .prologue
    .line 617
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->animations_:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 618
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCSprite;->initAnimationDictionary()V

    .line 620
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->animations_:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCAnimation;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    return-void
.end method

.method public addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;
    .locals 3
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I
    .param p3, "aTag"    # I

    .prologue
    .line 905
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 907
    instance-of v2, p1, Lorg/cocos2d/nodes/CCSprite;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/cocos2d/nodes/CCSprite;->usesSpriteSheet_:Z

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 908
    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 909
    .local v1, "sprite":Lorg/cocos2d/nodes/CCSprite;
    iget-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->spriteSheet_:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v2, v1, p2}, Lorg/cocos2d/nodes/CCSpriteSheet;->atlasIndex(Lorg/cocos2d/nodes/CCSprite;I)I

    move-result v0

    .line 910
    .local v0, "index":I
    iget-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->spriteSheet_:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v2, v1, v0}, Lorg/cocos2d/nodes/CCSpriteSheet;->insertChild(Lorg/cocos2d/nodes/CCSprite;I)V

    .line 913
    .end local v0    # "index":I
    .end local v1    # "sprite":Lorg/cocos2d/nodes/CCSprite;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/cocos2d/nodes/CCSprite;->hasChildren_:Z

    .line 915
    return-object p0
.end method

.method public animationByName(Ljava/lang/String;)Lorg/cocos2d/nodes/CCAnimation;
    .locals 2
    .param p1, "animationName"    # Ljava/lang/String;

    .prologue
    .line 625
    sget-boolean v0, Lorg/cocos2d/nodes/CCSprite;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "animationName parameter must be non null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 626
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->animations_:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCAnimation;

    return-object v0
.end method

.method public displayedFrame()Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 3

    .prologue
    .line 708
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/cocos2d/nodes/CCSpriteFrame;->frame(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    return-object v0
.end method

.method public doesOpacityModifyRGB()Z
    .locals 1

    .prologue
    .line 818
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCSprite;->opacityModifyRGB_:Z

    return v0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v7, 0x303

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/16 v4, 0x1406

    const/4 v3, 0x0

    .line 974
    sget-boolean v1, Lorg/cocos2d/nodes/CCSprite;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/cocos2d/nodes/CCSprite;->usesSpriteSheet_:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "If CCSprite is being rendered by CCSpriteSheet, CCSprite#draw SHOULD NOT be called"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 980
    :cond_0
    const/4 v0, 0x0

    .line 981
    .local v0, "newBlend":Z
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->src:I

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    if-eq v1, v7, :cond_2

    .line 982
    :cond_1
    const/4 v0, 0x1

    .line 983
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->src:I

    iget-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v2, v2, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 990
    :cond_2
    const/16 v1, 0xde1

    iget-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v2}, Lorg/cocos2d/opengl/CCTexture2D;->name()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 996
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->vertexes:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v4, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 1000
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->colors:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v6, v4, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 1004
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->texCoords:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v4, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 1006
    const/4 v1, 0x5

    invoke-interface {p1, v1, v3, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 1008
    if-eqz v0, :cond_3

    .line 1009
    invoke-interface {p1, v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 1021
    :cond_3
    return-void
.end method

.method public getBlendFunc()Lorg/cocos2d/types/ccBlendFunc;
    .locals 1

    .prologue
    .line 1216
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    return-object v0
.end method

.method public getColor()Lorg/cocos2d/types/ccColor3B;
    .locals 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCSprite;->opacityModifyRGB_:Z

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lorg/cocos2d/types/ccColor3B;

    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->colorUnmodified_:Lorg/cocos2d/types/ccColor3B;

    invoke-direct {v0, v1}, Lorg/cocos2d/types/ccColor3B;-><init>(Lorg/cocos2d/types/ccColor3B;)V

    .line 137
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/cocos2d/types/ccColor3B;

    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->color_:Lorg/cocos2d/types/ccColor3B;

    invoke-direct {v0, v1}, Lorg/cocos2d/types/ccColor3B;-><init>(Lorg/cocos2d/types/ccColor3B;)V

    goto :goto_0
.end method

.method public getFlipX()Z
    .locals 1

    .prologue
    .line 667
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCSprite;->flipX_:Z

    return v0
.end method

.method public getFlipY()Z
    .locals 1

    .prologue
    .line 678
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCSprite;->flipY_:Z

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/cocos2d/nodes/CCSprite;->opacity_:I

    return v0
.end method

.method public getTexCoords()Ljava/nio/FloatBuffer;
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->texCoords:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 218
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->texCoords:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getTexCoordsArray()[F
    .locals 4

    .prologue
    .line 204
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->texCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    new-array v0, v1, [F

    .line 205
    .local v0, "ret":[F
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->texCoords:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/cocos2d/nodes/CCSprite;->texCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 206
    return-object v0
.end method

.method public getTexture()Lorg/cocos2d/opengl/CCTexture2D;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    return-object v0
.end method

.method public getTexturePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->texturePath_:Ljava/lang/String;

    return-object v0
.end method

.method public getTextureRect()Lorg/cocos2d/types/CGRect;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    return-object v0
.end method

.method public getTextureRectRotated()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->rectRotated_:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected getTransformValues()Lorg/cocos2d/nodes/CCSprite$TransformValues;
    .locals 3

    .prologue
    .line 807
    new-instance v0, Lorg/cocos2d/nodes/CCSprite$TransformValues;

    invoke-direct {v0, p0}, Lorg/cocos2d/nodes/CCSprite$TransformValues;-><init>(Lorg/cocos2d/nodes/CCSprite;)V

    .line 808
    .local v0, "tv":Lorg/cocos2d/nodes/CCSprite$TransformValues;
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->position_:Lorg/cocos2d/types/CGPoint;

    iput-object v1, v0, Lorg/cocos2d/nodes/CCSprite$TransformValues;->pos:Lorg/cocos2d/types/CGPoint;

    .line 809
    iget v1, p0, Lorg/cocos2d/nodes/CCSprite;->scaleX_:F

    iget v2, p0, Lorg/cocos2d/nodes/CCSprite;->scaleY_:F

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/nodes/CCSprite$TransformValues;->scale:Lorg/cocos2d/types/CGPoint;

    .line 810
    iget v1, p0, Lorg/cocos2d/nodes/CCSprite;->rotation_:F

    iput v1, v0, Lorg/cocos2d/nodes/CCSprite$TransformValues;->rotation:F

    .line 811
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    iput-object v1, v0, Lorg/cocos2d/nodes/CCSprite$TransformValues;->ap:Lorg/cocos2d/types/CGPoint;

    .line 813
    return-object v0
.end method

.method public getVertexArray()[F
    .locals 4

    .prologue
    .line 211
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->vertexes:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    new-array v0, v1, [F

    .line 212
    .local v0, "ret":[F
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->vertexes:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/cocos2d/nodes/CCSprite;->vertexes:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 213
    return-object v0
.end method

.method public getVertices()Ljava/nio/FloatBuffer;
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->vertexes:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 223
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->vertexes:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method protected init()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 525
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/cocos2d/utils/BufferProvider;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->texCoords:Ljava/nio/FloatBuffer;

    .line 526
    const/16 v0, 0xc

    invoke-static {v0}, Lorg/cocos2d/utils/BufferProvider;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->vertexes:Ljava/nio/FloatBuffer;

    .line 527
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/cocos2d/utils/BufferProvider;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->colors:Ljava/nio/FloatBuffer;

    .line 529
    iput-boolean v4, p0, Lorg/cocos2d/nodes/CCSprite;->dirty_:Z

    .line 530
    iput-boolean v4, p0, Lorg/cocos2d/nodes/CCSprite;->recursiveDirty_:Z

    .line 533
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->offsetPosition_:Lorg/cocos2d/types/CGPoint;

    .line 534
    new-instance v0, Lorg/cocos2d/types/CGPoint;

    invoke-direct {v0}, Lorg/cocos2d/types/CGPoint;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->unflippedOffsetPositionFromCenter_:Lorg/cocos2d/types/CGPoint;

    .line 535
    invoke-static {v1, v1, v3, v3}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    .line 540
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->useSelfRender()V

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCSprite;->opacityModifyRGB_:Z

    .line 543
    const/16 v0, 0xff

    iput v0, p0, Lorg/cocos2d/nodes/CCSprite;->opacity_:I

    .line 544
    new-instance v0, Lorg/cocos2d/types/ccColor3B;

    sget-object v2, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-direct {v0, v2}, Lorg/cocos2d/types/ccColor3B;-><init>(Lorg/cocos2d/types/ccColor3B;)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->color_:Lorg/cocos2d/types/ccColor3B;

    .line 545
    new-instance v0, Lorg/cocos2d/types/ccColor3B;

    sget-object v2, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-direct {v0, v2}, Lorg/cocos2d/types/ccColor3B;-><init>(Lorg/cocos2d/types/ccColor3B;)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->colorUnmodified_:Lorg/cocos2d/types/ccColor3B;

    .line 548
    invoke-virtual {p0, v6}, Lorg/cocos2d/nodes/CCSprite;->setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 550
    iput-boolean v4, p0, Lorg/cocos2d/nodes/CCSprite;->flipX_:Z

    iput-boolean v4, p0, Lorg/cocos2d/nodes/CCSprite;->flipY_:Z

    .line 553
    iput-object v6, p0, Lorg/cocos2d/nodes/CCSprite;->animations_:Ljava/util/HashMap;

    .line 556
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->anchorPoint_:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 559
    const/4 v0, 0x7

    iput v0, p0, Lorg/cocos2d/nodes/CCSprite;->honorParentTransform_:I

    .line 560
    iput-boolean v4, p0, Lorg/cocos2d/nodes/CCSprite;->hasChildren_:Z

    .line 563
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->colors:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 564
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->colors:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 565
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->colors:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 566
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->colors:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 567
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->colors:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 572
    iget-object v5, p0, Lorg/cocos2d/nodes/CCSprite;->rectRotated_:Ljava/lang/Boolean;

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lorg/cocos2d/nodes/CCSprite;->setTextureRect(FFFFLjava/lang/Boolean;)V

    .line 573
    return-void
.end method

.method protected init(Lorg/cocos2d/nodes/CCSpriteFrame;)V
    .locals 2
    .param p1, "spriteFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 360
    sget-boolean v0, Lorg/cocos2d/nodes/CCSprite;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid spriteFrame for sprite"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 362
    :cond_0
    iget-object v0, p1, Lorg/cocos2d/nodes/CCSpriteFrame;->rotated_:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->rectRotated_:Ljava/lang/Boolean;

    .line 363
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getRect()Lorg/cocos2d/types/CGRect;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->init(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;)V

    .line 364
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCSprite;->setDisplayFrame(Lorg/cocos2d/nodes/CCSpriteFrame;)V

    .line 365
    return-void
.end method

.method protected init(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;)V
    .locals 2
    .param p1, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;
    .param p2, "rect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 346
    sget-boolean v0, Lorg/cocos2d/nodes/CCSprite;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid texture for sprite"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 348
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->init()V

    .line 349
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCSprite;->setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 350
    invoke-virtual {p0, p2}, Lorg/cocos2d/nodes/CCSprite;->setTextureRect(Lorg/cocos2d/types/CGRect;)V

    .line 351
    return-void
.end method

.method public isFrameDisplayed(Lorg/cocos2d/nodes/CCSpriteFrame;)Z
    .locals 4
    .param p1, "frame"    # Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 699
    iget-object v1, p1, Lorg/cocos2d/nodes/CCSpriteFrame;->rect_:Lorg/cocos2d/types/CGRect;

    .line 700
    .local v1, "r":Lorg/cocos2d/types/CGRect;
    iget-object v0, p1, Lorg/cocos2d/nodes/CCSpriteFrame;->offset_:Lorg/cocos2d/types/CGPoint;

    .line 701
    .local v0, "p":Lorg/cocos2d/types/CGPoint;
    iget-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGRect;->equalToRect(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGRect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 702
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/opengl/CCTexture2D;->name()I

    move-result v2

    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2d/opengl/CCTexture2D;->name()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 703
    iget-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->offsetPosition_:Lorg/cocos2d/types/CGPoint;

    invoke-static {v0, v2}, Lorg/cocos2d/types/CGPoint;->equalToPoint(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    .line 701
    goto :goto_0
.end method

.method public releaseTextureSelf()V
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->texturePath_:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/CCTexture2D;->releaseTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 926
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->texturePath_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCTextureCache;->removeTexture(Ljava/lang/String;)V

    .line 928
    :cond_0
    return-void
.end method

.method public releaseTextureSelf(Z)V
    .locals 4
    .param p1, "cleanUp"    # Z

    .prologue
    .line 931
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->releaseTextureSelf()V

    .line 933
    if-eqz p1, :cond_1

    .line 935
    iget-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->children_:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 937
    iget-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->children_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 945
    :cond_1
    return-void

    .line 937
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/nodes/CCNode;

    .line 938
    .local v1, "node":Lorg/cocos2d/nodes/CCNode;
    instance-of v3, v1, Lorg/cocos2d/nodes/CCSprite;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 939
    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 940
    .local v0, "childSprite":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSprite;->releaseTextureSelf(Z)V

    goto :goto_0
.end method

.method public removeAllChildren(Z)V
    .locals 4
    .param p1, "doCleanup"    # Z

    .prologue
    .line 961
    iget-boolean v2, p0, Lorg/cocos2d/nodes/CCSprite;->usesSpriteSheet_:Z

    if-eqz v2, :cond_0

    .line 962
    iget-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->children_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 968
    :cond_0
    invoke-super {p0, p1}, Lorg/cocos2d/nodes/CCNode;->removeAllChildren(Z)V

    .line 969
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/cocos2d/nodes/CCSprite;->hasChildren_:Z

    .line 970
    return-void

    .line 962
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    move-object v1, v0

    .line 963
    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 964
    .local v1, "sprite":Lorg/cocos2d/nodes/CCSprite;
    iget-object v3, p0, Lorg/cocos2d/nodes/CCSprite;->spriteSheet_:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v3, v1}, Lorg/cocos2d/nodes/CCSpriteSheet;->removeSpriteFromAtlas(Lorg/cocos2d/nodes/CCSprite;)V

    goto :goto_0
.end method

.method public removeChild(Lorg/cocos2d/nodes/CCNode;Z)V
    .locals 2
    .param p1, "node"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "doCleanup"    # Z

    .prologue
    .line 949
    iget-boolean v1, p0, Lorg/cocos2d/nodes/CCSprite;->usesSpriteSheet_:Z

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 950
    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 951
    .local v0, "sprite":Lorg/cocos2d/nodes/CCSprite;
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->spriteSheet_:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v1, v0}, Lorg/cocos2d/nodes/CCSpriteSheet;->removeSpriteFromAtlas(Lorg/cocos2d/nodes/CCSprite;)V

    .line 954
    .end local v0    # "sprite":Lorg/cocos2d/nodes/CCSprite;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/cocos2d/nodes/CCNode;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 956
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->children_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/cocos2d/nodes/CCSprite;->hasChildren_:Z

    .line 957
    return-void

    .line 956
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeSelf(Z)V
    .locals 0
    .param p1, "cleanUp"    # Z

    .prologue
    .line 919
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCSprite;->releaseTextureSelf(Z)V

    .line 920
    invoke-super {p0}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V

    .line 921
    return-void
.end method

.method public reorderChild(Lorg/cocos2d/nodes/CCNode;I)V
    .locals 1
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I

    .prologue
    .line 891
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getZOrder()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 901
    :goto_0
    return-void

    .line 894
    :cond_0
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCSprite;->usesSpriteSheet_:Z

    if-eqz v0, :cond_1

    .line 896
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/nodes/CCSprite;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 897
    invoke-virtual {p0, p1, p2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    goto :goto_0

    .line 899
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/cocos2d/nodes/CCNode;->reorderChild(Lorg/cocos2d/nodes/CCNode;I)V

    goto :goto_0
.end method

.method public setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V
    .locals 0
    .param p1, "anchor"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 876
    invoke-super {p0, p1}, Lorg/cocos2d/nodes/CCNode;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 877
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCSprite;->SET_DIRTY_RECURSIVELY()V

    .line 878
    return-void
.end method

.method public setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V
    .locals 0
    .param p1, "blendFunc"    # Lorg/cocos2d/types/ccBlendFunc;

    .prologue
    .line 1221
    iput-object p1, p0, Lorg/cocos2d/nodes/CCSprite;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    .line 1222
    return-void
.end method

.method public setColor(Lorg/cocos2d/types/ccColor3B;)V
    .locals 3
    .param p1, "color3"    # Lorg/cocos2d/types/ccColor3B;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->color_:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v0, p1}, Lorg/cocos2d/types/ccColor3B;->set(Lorg/cocos2d/types/ccColor3B;)V

    .line 143
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->colorUnmodified_:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v0, p1}, Lorg/cocos2d/types/ccColor3B;->set(Lorg/cocos2d/types/ccColor3B;)V

    .line 145
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCSprite;->opacityModifyRGB_:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v1, p1, Lorg/cocos2d/types/ccColor3B;->r:I

    iget v2, p0, Lorg/cocos2d/nodes/CCSprite;->opacity_:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    iput v1, v0, Lorg/cocos2d/types/ccColor3B;->r:I

    .line 147
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v1, p1, Lorg/cocos2d/types/ccColor3B;->g:I

    iget v2, p0, Lorg/cocos2d/nodes/CCSprite;->opacity_:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    iput v1, v0, Lorg/cocos2d/types/ccColor3B;->g:I

    .line 148
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v1, p1, Lorg/cocos2d/types/ccColor3B;->b:I

    iget v2, p0, Lorg/cocos2d/nodes/CCSprite;->opacity_:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    iput v1, v0, Lorg/cocos2d/types/ccColor3B;->b:I

    .line 151
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->updateColor()V

    .line 152
    return-void
.end method

.method public setDirtyRecursively(Z)V
    .locals 4
    .param p1, "b"    # Z

    .prologue
    .line 822
    iput-boolean p1, p0, Lorg/cocos2d/nodes/CCSprite;->recursiveDirty_:Z

    iput-boolean p1, p0, Lorg/cocos2d/nodes/CCSprite;->dirty_:Z

    .line 824
    iget-boolean v2, p0, Lorg/cocos2d/nodes/CCSprite;->hasChildren_:Z

    if-eqz v2, :cond_0

    .line 825
    iget-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->children_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 830
    :cond_0
    return-void

    .line 825
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    move-object v1, v0

    .line 826
    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 827
    .local v1, "sprite":Lorg/cocos2d/nodes/CCSprite;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/cocos2d/nodes/CCSprite;->setDirtyRecursively(Z)V

    goto :goto_0
.end method

.method public setDisplayFrame(Ljava/lang/String;I)V
    .locals 3
    .param p1, "animationName"    # Ljava/lang/String;
    .param p2, "frameIndex"    # I

    .prologue
    .line 591
    iget-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->animations_:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 592
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCSprite;->initAnimationDictionary()V

    .line 594
    :cond_0
    iget-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->animations_:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCAnimation;

    .line 595
    .local v0, "anim":Lorg/cocos2d/nodes/CCAnimation;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCAnimation;->frames()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 596
    .local v1, "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    invoke-virtual {p0, v1}, Lorg/cocos2d/nodes/CCSprite;->setDisplayFrame(Lorg/cocos2d/nodes/CCSpriteFrame;)V

    .line 597
    return-void
.end method

.method public setDisplayFrame(Lorg/cocos2d/nodes/CCSpriteFrame;)V
    .locals 4
    .param p1, "frame"    # Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 577
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->unflippedOffsetPositionFromCenter_:Lorg/cocos2d/types/CGPoint;

    iget-object v2, p1, Lorg/cocos2d/nodes/CCSpriteFrame;->offset_:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v1, v2}, Lorg/cocos2d/types/CGPoint;->set(Lorg/cocos2d/types/CGPoint;)V

    .line 579
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    .line 581
    .local v0, "newTexture":Lorg/cocos2d/opengl/CCTexture2D;
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTexture2D;->name()I

    move-result v1

    iget-object v2, p0, Lorg/cocos2d/nodes/CCSprite;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v2}, Lorg/cocos2d/opengl/CCTexture2D;->name()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 582
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCSprite;->setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 585
    :cond_1
    iget-object v1, p1, Lorg/cocos2d/nodes/CCSpriteFrame;->rect_:Lorg/cocos2d/types/CGRect;

    iget-object v2, p1, Lorg/cocos2d/nodes/CCSpriteFrame;->originalSize_:Lorg/cocos2d/types/CGSize;

    iget-object v3, p1, Lorg/cocos2d/nodes/CCSpriteFrame;->rotated_:Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setTextureRect(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGSize;Ljava/lang/Boolean;)V

    .line 586
    return-void
.end method

.method public setFlipX(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 660
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCSprite;->flipX_:Z

    if-eq v0, p1, :cond_0

    .line 661
    iput-boolean p1, p0, Lorg/cocos2d/nodes/CCSprite;->flipX_:Z

    .line 662
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCSprite;->setTextureRect(Lorg/cocos2d/types/CGRect;)V

    .line 664
    :cond_0
    return-void
.end method

.method public setFlipY(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 671
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCSprite;->flipY_:Z

    if-eq v0, p1, :cond_0

    .line 672
    iput-boolean p1, p0, Lorg/cocos2d/nodes/CCSprite;->flipY_:Z

    .line 673
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCSprite;->setTextureRect(Lorg/cocos2d/types/CGRect;)V

    .line 675
    :cond_0
    return-void
.end method

.method public setOpacity(I)V
    .locals 1
    .param p1, "anOpacity"    # I

    .prologue
    .line 110
    iput p1, p0, Lorg/cocos2d/nodes/CCSprite;->opacity_:I

    .line 113
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCSprite;->opacityModifyRGB_:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->colorUnmodified_:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->updateColor()V

    .line 116
    return-void
.end method

.method public setOpacityModifyRGB(Z)V
    .locals 2
    .param p1, "modify"    # Z

    .prologue
    .line 125
    iget-boolean v1, p0, Lorg/cocos2d/nodes/CCSprite;->opacityModifyRGB_:Z

    if-eq v1, p1, :cond_0

    .line 126
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->color_:Lorg/cocos2d/types/ccColor3B;

    .line 127
    .local v0, "oldColor":Lorg/cocos2d/types/ccColor3B;
    iput-boolean p1, p0, Lorg/cocos2d/nodes/CCSprite;->opacityModifyRGB_:Z

    .line 128
    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 130
    .end local v0    # "oldColor":Lorg/cocos2d/types/ccColor3B;
    :cond_0
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 840
    invoke-super {p0, p1, p2}, Lorg/cocos2d/nodes/CCNode;->setPosition(FF)V

    .line 841
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCSprite;->SET_DIRTY_RECURSIVELY()V

    .line 842
    return-void
.end method

.method public setPosition(Lorg/cocos2d/types/CGPoint;)V
    .locals 0
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 834
    invoke-super {p0, p1}, Lorg/cocos2d/nodes/CCNode;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 835
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCSprite;->SET_DIRTY_RECURSIVELY()V

    .line 836
    return-void
.end method

.method public setRelativeAnchorPoint(Z)V
    .locals 2
    .param p1, "relative"    # Z

    .prologue
    .line 882
    sget-boolean v0, Lorg/cocos2d/nodes/CCSprite;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCSprite;->usesSpriteSheet_:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "relativeTransformAnchor is invalid in CCSprite"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 883
    :cond_0
    invoke-super {p0, p1}, Lorg/cocos2d/nodes/CCNode;->setRelativeAnchorPoint(Z)V

    .line 884
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "rot"    # F

    .prologue
    .line 846
    invoke-super {p0, p1}, Lorg/cocos2d/nodes/CCNode;->setRotation(F)V

    .line 847
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCSprite;->SET_DIRTY_RECURSIVELY()V

    .line 848
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "s"    # F

    .prologue
    .line 864
    invoke-super {p0, p1}, Lorg/cocos2d/nodes/CCNode;->setScale(F)V

    .line 865
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCSprite;->SET_DIRTY_RECURSIVELY()V

    .line 866
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .param p1, "sx"    # F

    .prologue
    .line 852
    invoke-super {p0, p1}, Lorg/cocos2d/nodes/CCNode;->setScaleX(F)V

    .line 853
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCSprite;->SET_DIRTY_RECURSIVELY()V

    .line 854
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .param p1, "sy"    # F

    .prologue
    .line 858
    invoke-super {p0, p1}, Lorg/cocos2d/nodes/CCNode;->setScaleY(F)V

    .line 859
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCSprite;->SET_DIRTY_RECURSIVELY()V

    .line 860
    return-void
.end method

.method public setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 2
    .param p1, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    .line 683
    sget-boolean v0, Lorg/cocos2d/nodes/CCSprite;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCSprite;->usesSpriteSheet_:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "CCSprite: setTexture doesn\'t work when the sprite is rendered using a CCSpriteSheet"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 686
    :cond_0
    sget-boolean v0, Lorg/cocos2d/nodes/CCSprite;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/cocos2d/opengl/CCTexture2D;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    .line 687
    const-string v1, "setTexture expects a CCTexture2D. Invalid argument"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 688
    :cond_1
    iput-object p1, p0, Lorg/cocos2d/nodes/CCSprite;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    .line 689
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCSprite;->updateBlendFunc()V

    .line 690
    return-void
.end method

.method public setTextureRect(FFFFLjava/lang/Boolean;)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "rotated"    # Ljava/lang/Boolean;

    .prologue
    .line 460
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/cocos2d/nodes/CCSprite;->setTextureRect(FFFFFFZ)V

    .line 461
    return-void
.end method

.method public setTextureRect(Lorg/cocos2d/types/CGRect;)V
    .locals 1
    .param p1, "rect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 468
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->rectRotated_:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/nodes/CCSprite;->setTextureRect(Lorg/cocos2d/types/CGRect;Ljava/lang/Boolean;)V

    .line 469
    return-void
.end method

.method public setTextureRect(Lorg/cocos2d/types/CGRect;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "rect"    # Lorg/cocos2d/types/CGRect;
    .param p2, "rotated"    # Ljava/lang/Boolean;

    .prologue
    .line 464
    iget-object v0, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    invoke-direct {p0, p1, v0, p2}, Lorg/cocos2d/nodes/CCSprite;->setTextureRect(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGSize;Ljava/lang/Boolean;)V

    .line 465
    return-void
.end method

.method public setVertexZ(F)V
    .locals 0
    .param p1, "z"    # F

    .prologue
    .line 870
    invoke-super {p0, p1}, Lorg/cocos2d/nodes/CCNode;->setVertexZ(F)V

    .line 871
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCSprite;->SET_DIRTY_RECURSIVELY()V

    .line 872
    return-void
.end method

.method public setVisible(Z)V
    .locals 3
    .param p1, "v"    # Z

    .prologue
    .line 601
    iget-boolean v1, p0, Lorg/cocos2d/nodes/CCSprite;->visible_:Z

    if-eq p1, v1, :cond_0

    .line 602
    invoke-super {p0, p1}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 603
    iget-boolean v1, p0, Lorg/cocos2d/nodes/CCSprite;->usesSpriteSheet_:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/cocos2d/nodes/CCSprite;->recursiveDirty_:Z

    if-nez v1, :cond_0

    .line 604
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/cocos2d/nodes/CCSprite;->recursiveDirty_:Z

    iput-boolean v1, p0, Lorg/cocos2d/nodes/CCSprite;->dirty_:Z

    .line 605
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->children_:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 606
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSprite;->children_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 611
    :cond_0
    return-void

    .line 606
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 607
    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    goto :goto_0
.end method

.method public updateColor()V
    .locals 7

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 632
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSprite;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v4, v4, Lorg/cocos2d/types/ccColor3B;->r:I

    int-to-float v4, v4

    div-float v3, v4, v5

    .line 633
    .local v3, "tmpR":F
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSprite;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v4, v4, Lorg/cocos2d/types/ccColor3B;->g:I

    int-to-float v4, v4

    div-float v2, v4, v5

    .line 634
    .local v2, "tmpG":F
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSprite;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v4, v4, Lorg/cocos2d/types/ccColor3B;->b:I

    int-to-float v4, v4

    div-float v1, v4, v5

    .line 635
    .local v1, "tmpB":F
    iget v4, p0, Lorg/cocos2d/nodes/CCSprite;->opacity_:I

    int-to-float v4, v4

    div-float v0, v4, v5

    .line 637
    .local v0, "tmpA":F
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSprite;->colors:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    .line 638
    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    .line 639
    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    .line 640
    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 641
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSprite;->colors:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 644
    iget-boolean v4, p0, Lorg/cocos2d/nodes/CCSprite;->usesSpriteSheet_:Z

    if-eqz v4, :cond_0

    .line 645
    iget v4, p0, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 646
    sget-object v4, Lorg/cocos2d/nodes/CCSprite;->tmpColor4B:Lorg/cocos2d/types/ccColor4B;

    iget-object v5, p0, Lorg/cocos2d/nodes/CCSprite;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v5, v5, Lorg/cocos2d/types/ccColor3B;->r:I

    iput v5, v4, Lorg/cocos2d/types/ccColor4B;->r:I

    sget-object v4, Lorg/cocos2d/nodes/CCSprite;->tmpColor4B:Lorg/cocos2d/types/ccColor4B;

    iget-object v5, p0, Lorg/cocos2d/nodes/CCSprite;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v5, v5, Lorg/cocos2d/types/ccColor3B;->g:I

    iput v5, v4, Lorg/cocos2d/types/ccColor4B;->g:I

    sget-object v4, Lorg/cocos2d/nodes/CCSprite;->tmpColor4B:Lorg/cocos2d/types/ccColor4B;

    iget-object v5, p0, Lorg/cocos2d/nodes/CCSprite;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v5, v5, Lorg/cocos2d/types/ccColor3B;->b:I

    iput v5, v4, Lorg/cocos2d/types/ccColor4B;->b:I

    sget-object v4, Lorg/cocos2d/nodes/CCSprite;->tmpColor4B:Lorg/cocos2d/types/ccColor4B;

    iget v5, p0, Lorg/cocos2d/nodes/CCSprite;->opacity_:I

    iput v5, v4, Lorg/cocos2d/types/ccColor4B;->a:I

    .line 647
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSprite;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    sget-object v5, Lorg/cocos2d/nodes/CCSprite;->tmpColors:[Lorg/cocos2d/types/ccColor4B;

    iget v6, p0, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    invoke-virtual {v4, v5, v6}, Lorg/cocos2d/opengl/CCTextureAtlas;->updateColor([Lorg/cocos2d/types/ccColor4B;I)V

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/cocos2d/nodes/CCSprite;->dirty_:Z

    goto :goto_0
.end method

.method public updateTextureCoords(Lorg/cocos2d/types/CGRect;)V
    .locals 14
    .param p1, "rect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 1024
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1025
    .local v1, "atlasWidth":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1027
    .local v0, "atlasHeight":F
    iget-object v7, p0, Lorg/cocos2d/nodes/CCSprite;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    if-eqz v7, :cond_0

    .line 1028
    iget-object v7, p0, Lorg/cocos2d/nodes/CCSprite;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v7}, Lorg/cocos2d/opengl/CCTexture2D;->pixelsWide()I

    move-result v7

    int-to-float v1, v7

    .line 1029
    iget-object v7, p0, Lorg/cocos2d/nodes/CCSprite;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v7}, Lorg/cocos2d/opengl/CCTexture2D;->pixelsHigh()I

    move-result v7

    int-to-float v0, v7

    .line 1032
    :cond_0
    iget-object v7, p0, Lorg/cocos2d/nodes/CCSprite;->rectRotated_:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1034
    iget-object v7, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v7, v7, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v7, v9

    add-float/2addr v7, v11

    mul-float v8, v9, v1

    div-float v3, v7, v8

    .line 1035
    .local v3, "left":F
    iget-object v7, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v7, v7, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v7, v9

    sub-float/2addr v7, v9

    mul-float v8, v9, v1

    div-float/2addr v7, v8

    add-float v4, v3, v7

    .line 1036
    .local v4, "right":F
    iget-object v7, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v7, v7, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v7, v9

    add-float/2addr v7, v11

    mul-float v8, v9, v0

    div-float v6, v7, v8

    .line 1037
    .local v6, "top":F
    iget-object v7, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v7, v7, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v7, v9

    sub-float/2addr v7, v9

    mul-float v8, v9, v0

    div-float/2addr v7, v8

    add-float v2, v6, v7

    .line 1039
    .local v2, "bottom":F
    iget-boolean v7, p0, Lorg/cocos2d/nodes/CCSprite;->flipX_:Z

    if-eqz v7, :cond_1

    .line 1040
    move v5, v6

    .line 1041
    .local v5, "tmp":F
    move v6, v2

    .line 1042
    move v2, v5

    .line 1045
    .end local v5    # "tmp":F
    :cond_1
    iget-boolean v7, p0, Lorg/cocos2d/nodes/CCSprite;->flipY_:Z

    if-eqz v7, :cond_2

    .line 1046
    move v5, v3

    .line 1047
    .restart local v5    # "tmp":F
    move v3, v4

    .line 1048
    move v4, v5

    .line 1051
    .end local v5    # "tmp":F
    :cond_2
    sget-object v7, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    aput v4, v7, v10

    .line 1052
    sget-object v7, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    aput v6, v7, v12

    .line 1053
    sget-object v7, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    aput v3, v7, v13

    .line 1054
    sget-object v7, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v8, 0x3

    aput v6, v7, v8

    .line 1055
    sget-object v7, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v8, 0x4

    aput v4, v7, v8

    .line 1056
    sget-object v7, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v8, 0x5

    aput v2, v7, v8

    .line 1057
    sget-object v7, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v8, 0x6

    aput v3, v7, v8

    .line 1058
    sget-object v7, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v8, 0x7

    aput v2, v7, v8

    .line 1060
    sget-object v7, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    iget-object v8, p0, Lorg/cocos2d/nodes/CCSprite;->texCoords:Ljava/nio/FloatBuffer;

    const/16 v9, 0x8

    invoke-static {v7, v10, v8, v9}, Lorg/cocos2d/utils/BufferUtils;->copyFloats([FILjava/nio/FloatBuffer;I)V

    .line 1109
    :goto_0
    iget-object v7, p0, Lorg/cocos2d/nodes/CCSprite;->texCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1111
    iget-boolean v7, p0, Lorg/cocos2d/nodes/CCSprite;->usesSpriteSheet_:Z

    if-eqz v7, :cond_3

    .line 1112
    iget-object v7, p0, Lorg/cocos2d/nodes/CCSprite;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    iget-object v8, p0, Lorg/cocos2d/nodes/CCSprite;->texCoords:Ljava/nio/FloatBuffer;

    iget v9, p0, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    invoke-virtual {v7, v8, v9}, Lorg/cocos2d/opengl/CCTextureAtlas;->putTexCoords(Ljava/nio/FloatBuffer;I)V

    .line 1113
    :cond_3
    return-void

    .line 1072
    .end local v2    # "bottom":F
    .end local v3    # "left":F
    .end local v4    # "right":F
    .end local v6    # "top":F
    :cond_4
    iget-object v7, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v7, v7, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v7, v9

    add-float/2addr v7, v11

    mul-float v8, v9, v1

    div-float v3, v7, v8

    .line 1073
    .restart local v3    # "left":F
    iget-object v7, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v7, v7, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v7, v9

    sub-float/2addr v7, v9

    mul-float v8, v9, v1

    div-float/2addr v7, v8

    add-float v4, v3, v7

    .line 1074
    .restart local v4    # "right":F
    iget-object v7, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v7, v7, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v7, v9

    add-float/2addr v7, v11

    mul-float v8, v9, v0

    div-float v6, v7, v8

    .line 1075
    .restart local v6    # "top":F
    iget-object v7, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v7, v7, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v7, v9

    sub-float/2addr v7, v9

    mul-float v8, v9, v0

    div-float/2addr v7, v8

    add-float v2, v6, v7

    .line 1077
    .restart local v2    # "bottom":F
    iget-boolean v7, p0, Lorg/cocos2d/nodes/CCSprite;->flipX_:Z

    if-eqz v7, :cond_5

    .line 1078
    move v5, v3

    .line 1079
    .restart local v5    # "tmp":F
    move v3, v4

    .line 1080
    move v4, v5

    .line 1083
    .end local v5    # "tmp":F
    :cond_5
    iget-boolean v7, p0, Lorg/cocos2d/nodes/CCSprite;->flipY_:Z

    if-eqz v7, :cond_6

    .line 1084
    move v5, v6

    .line 1085
    .restart local v5    # "tmp":F
    move v6, v2

    .line 1086
    move v2, v5

    .line 1089
    .end local v5    # "tmp":F
    :cond_6
    sget-object v7, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    aput v3, v7, v10

    .line 1090
    sget-object v7, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    aput v6, v7, v12

    .line 1091
    sget-object v7, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    aput v3, v7, v13

    .line 1092
    sget-object v7, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v8, 0x3

    aput v2, v7, v8

    .line 1093
    sget-object v7, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v8, 0x4

    aput v4, v7, v8

    .line 1094
    sget-object v7, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v8, 0x5

    aput v6, v7, v8

    .line 1095
    sget-object v7, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v8, 0x6

    aput v4, v7, v8

    .line 1096
    sget-object v7, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v8, 0x7

    aput v2, v7, v8

    .line 1097
    sget-object v7, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    iget-object v8, p0, Lorg/cocos2d/nodes/CCSprite;->texCoords:Ljava/nio/FloatBuffer;

    const/16 v9, 0x8

    invoke-static {v7, v10, v8, v9}, Lorg/cocos2d/utils/BufferUtils;->copyFloats([FILjava/nio/FloatBuffer;I)V

    goto :goto_0
.end method

.method public updateTransform()V
    .locals 39

    .prologue
    .line 1124
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpMatrix:Lorg/cocos2d/types/CGAffineTransform;

    invoke-virtual {v1}, Lorg/cocos2d/types/CGAffineTransform;->setToIdentity()V

    .line 1127
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/cocos2d/nodes/CCSprite;->visible_:Z

    if-nez v1, :cond_0

    .line 1128
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cocos2d/nodes/CCSprite;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/cocos2d/nodes/CCSprite;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v2}, Lorg/cocos2d/opengl/CCTextureAtlas;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    sget-object v3, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    move-object/from16 v0, p0

    iget v4, v0, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/cocos2d/opengl/CCTextureAtlas;->putVertex(Ljava/nio/FloatBuffer;[FI)V

    .line 1130
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/cocos2d/nodes/CCSprite;->recursiveDirty_:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/cocos2d/nodes/CCSprite;->dirty_:Z

    .line 1212
    :goto_0
    return-void

    .line 1136
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cocos2d/nodes/CCSprite;->parent_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cocos2d/nodes/CCSprite;->parent_:Lorg/cocos2d/nodes/CCNode;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/cocos2d/nodes/CCSprite;->spriteSheet_:Lorg/cocos2d/nodes/CCSpriteSheet;

    if-ne v1, v2, :cond_3

    .line 1137
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/cocos2d/nodes/CCSprite;->rotation_:F

    invoke-static {v1}, Lorg/cocos2d/config/ccMacros;->CC_DEGREES_TO_RADIANS(F)F

    move-result v1

    neg-float v0, v1

    move/from16 v27, v0

    .line 1138
    .local v27, "radians":F
    move/from16 v0, v27

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v0, v1

    move/from16 v18, v0

    .line 1139
    .local v18, "c":F
    move/from16 v0, v27

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v0, v1

    move/from16 v28, v0

    .line 1141
    .local v28, "s":F
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpMatrix:Lorg/cocos2d/types/CGAffineTransform;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/cocos2d/nodes/CCSprite;->scaleX_:F

    mul-float v2, v2, v18

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/cocos2d/nodes/CCSprite;->scaleX_:F

    mul-float v4, v4, v28

    float-to-double v4, v4

    .line 1142
    move/from16 v0, v28

    neg-float v6, v0

    move-object/from16 v0, p0

    iget v7, v0, Lorg/cocos2d/nodes/CCSprite;->scaleY_:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lorg/cocos2d/nodes/CCSprite;->scaleY_:F

    mul-float v8, v8, v18

    float-to-double v8, v8

    .line 1143
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/cocos2d/nodes/CCSprite;->position_:Lorg/cocos2d/types/CGPoint;

    iget v10, v10, Lorg/cocos2d/types/CGPoint;->x:F

    float-to-double v10, v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cocos2d/nodes/CCSprite;->position_:Lorg/cocos2d/types/CGPoint;

    iget v12, v12, Lorg/cocos2d/types/CGPoint;->y:F

    float-to-double v12, v12

    .line 1141
    invoke-virtual/range {v1 .. v13}, Lorg/cocos2d/types/CGAffineTransform;->set(DDDDDD)V

    .line 1145
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpMatrix:Lorg/cocos2d/types/CGAffineTransform;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/cocos2d/nodes/CCSprite;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    neg-float v2, v2

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cocos2d/nodes/CCSprite;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    iget v4, v4, Lorg/cocos2d/types/CGPoint;->y:F

    neg-float v4, v4

    float-to-double v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/cocos2d/types/CGAffineTransform;->translate(DD)V

    .line 1178
    .end local v18    # "c":F
    .end local v27    # "radians":F
    .end local v28    # "s":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    iget-object v0, v1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    move-object/from16 v29, v0

    .line 1180
    .local v29, "size":Lorg/cocos2d/types/CGSize;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cocos2d/nodes/CCSprite;->offsetPosition_:Lorg/cocos2d/types/CGPoint;

    iget v0, v1, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v34, v0

    .line 1181
    .local v34, "x1":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cocos2d/nodes/CCSprite;->offsetPosition_:Lorg/cocos2d/types/CGPoint;

    iget v0, v1, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v37, v0

    .line 1183
    .local v37, "y1":F
    move-object/from16 v0, v29

    iget v1, v0, Lorg/cocos2d/types/CGSize;->width:F

    add-float v35, v34, v1

    .line 1184
    .local v35, "x2":F
    move-object/from16 v0, v29

    iget v1, v0, Lorg/cocos2d/types/CGSize;->height:F

    add-float v38, v37, v1

    .line 1185
    .local v38, "y2":F
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpMatrix:Lorg/cocos2d/types/CGAffineTransform;

    iget-wide v1, v1, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    double-to-float v0, v1

    move/from16 v33, v0

    .line 1186
    .local v33, "x":F
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpMatrix:Lorg/cocos2d/types/CGAffineTransform;

    iget-wide v1, v1, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    double-to-float v0, v1

    move/from16 v36, v0

    .line 1188
    .local v36, "y":F
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpMatrix:Lorg/cocos2d/types/CGAffineTransform;

    iget-wide v1, v1, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    double-to-float v0, v1

    move/from16 v19, v0

    .line 1189
    .local v19, "cr":F
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpMatrix:Lorg/cocos2d/types/CGAffineTransform;

    iget-wide v1, v1, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    double-to-float v0, v1

    move/from16 v31, v0

    .line 1190
    .local v31, "sr":F
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpMatrix:Lorg/cocos2d/types/CGAffineTransform;

    iget-wide v1, v1, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    double-to-float v0, v1

    move/from16 v20, v0

    .line 1191
    .local v20, "cr2":F
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpMatrix:Lorg/cocos2d/types/CGAffineTransform;

    iget-wide v1, v1, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    neg-double v1, v1

    double-to-float v0, v1

    move/from16 v32, v0

    .line 1193
    .local v32, "sr2":F
    mul-float v1, v34, v19

    mul-float v2, v37, v32

    sub-float/2addr v1, v2

    add-float v14, v1, v33

    .line 1194
    .local v14, "ax":F
    mul-float v1, v34, v31

    mul-float v2, v37, v20

    add-float/2addr v1, v2

    add-float v15, v1, v36

    .line 1196
    .local v15, "ay":F
    mul-float v1, v35, v19

    mul-float v2, v37, v32

    sub-float/2addr v1, v2

    add-float v16, v1, v33

    .line 1197
    .local v16, "bx":F
    mul-float v1, v35, v31

    mul-float v2, v37, v20

    add-float/2addr v1, v2

    add-float v17, v1, v36

    .line 1199
    .local v17, "by":F
    mul-float v1, v35, v19

    mul-float v2, v38, v32

    sub-float/2addr v1, v2

    add-float v21, v1, v33

    .line 1200
    .local v21, "cx":F
    mul-float v1, v35, v31

    mul-float v2, v38, v20

    add-float/2addr v1, v2

    add-float v22, v1, v36

    .line 1202
    .local v22, "cy":F
    mul-float v1, v34, v19

    mul-float v2, v38, v32

    sub-float/2addr v1, v2

    add-float v23, v1, v33

    .line 1203
    .local v23, "dx":F
    mul-float v1, v34, v31

    mul-float v2, v38, v20

    add-float/2addr v1, v2

    add-float v24, v1, v36

    .line 1205
    .local v24, "dy":F
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v2, 0x0

    aput v23, v1, v2

    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v2, 0x1

    aput v24, v1, v2

    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/cocos2d/nodes/CCSprite;->vertexZ_:F

    aput v3, v1, v2

    .line 1206
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v2, 0x3

    aput v14, v1, v2

    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v2, 0x4

    aput v15, v1, v2

    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget v3, v0, Lorg/cocos2d/nodes/CCSprite;->vertexZ_:F

    aput v3, v1, v2

    .line 1207
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v2, 0x6

    aput v21, v1, v2

    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v2, 0x7

    aput v22, v1, v2

    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget v3, v0, Lorg/cocos2d/nodes/CCSprite;->vertexZ_:F

    aput v3, v1, v2

    .line 1208
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/16 v2, 0x9

    aput v16, v1, v2

    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/16 v2, 0xa

    aput v17, v1, v2

    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/16 v2, 0xb

    move-object/from16 v0, p0

    iget v3, v0, Lorg/cocos2d/nodes/CCSprite;->vertexZ_:F

    aput v3, v1, v2

    .line 1210
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cocos2d/nodes/CCSprite;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/cocos2d/nodes/CCSprite;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v2}, Lorg/cocos2d/opengl/CCTextureAtlas;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    sget-object v3, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    move-object/from16 v0, p0

    iget v4, v0, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/cocos2d/opengl/CCTextureAtlas;->putVertex(Ljava/nio/FloatBuffer;[FI)V

    .line 1211
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/cocos2d/nodes/CCSprite;->recursiveDirty_:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/cocos2d/nodes/CCSprite;->dirty_:Z

    goto/16 :goto_0

    .line 1149
    .end local v14    # "ax":F
    .end local v15    # "ay":F
    .end local v16    # "bx":F
    .end local v17    # "by":F
    .end local v19    # "cr":F
    .end local v20    # "cr2":F
    .end local v21    # "cx":F
    .end local v22    # "cy":F
    .end local v23    # "dx":F
    .end local v24    # "dy":F
    .end local v29    # "size":Lorg/cocos2d/types/CGSize;
    .end local v31    # "sr":F
    .end local v32    # "sr2":F
    .end local v33    # "x":F
    .end local v34    # "x1":F
    .end local v35    # "x2":F
    .end local v36    # "y":F
    .end local v37    # "y1":F
    .end local v38    # "y2":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cocos2d/nodes/CCSprite;->parent_:Lorg/cocos2d/nodes/CCNode;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/cocos2d/nodes/CCSprite;->spriteSheet_:Lorg/cocos2d/nodes/CCSpriteSheet;

    if-eq v1, v2, :cond_2

    .line 1151
    const/16 v26, 0x7

    .line 1153
    .local v26, "prevHonor":I
    move-object/from16 v25, p0

    .local v25, "p":Lorg/cocos2d/nodes/CCNode;
    :goto_1
    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cocos2d/nodes/CCSprite;->spriteSheet_:Lorg/cocos2d/nodes/CCSpriteSheet;

    move-object/from16 v0, v25

    if-eq v0, v1, :cond_2

    move-object/from16 v30, v25

    .line 1154
    check-cast v30, Lorg/cocos2d/nodes/CCSprite;

    .line 1156
    .local v30, "sprP":Lorg/cocos2d/nodes/CCSprite;
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpNewMatrix:Lorg/cocos2d/types/CGAffineTransform;

    invoke-virtual {v1}, Lorg/cocos2d/types/CGAffineTransform;->setToIdentity()V

    .line 1158
    and-int/lit8 v1, v26, 0x1

    if-eqz v1, :cond_4

    .line 1159
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpNewMatrix:Lorg/cocos2d/types/CGAffineTransform;

    move-object/from16 v0, v30

    iget-object v2, v0, Lorg/cocos2d/nodes/CCSprite;->position_:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    float-to-double v2, v2

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/cocos2d/nodes/CCSprite;->position_:Lorg/cocos2d/types/CGPoint;

    iget v4, v4, Lorg/cocos2d/types/CGPoint;->y:F

    float-to-double v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/cocos2d/types/CGAffineTransform;->translate(DD)V

    .line 1160
    :cond_4
    and-int/lit8 v1, v26, 0x2

    if-eqz v1, :cond_5

    .line 1161
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpNewMatrix:Lorg/cocos2d/types/CGAffineTransform;

    move-object/from16 v0, v30

    iget v2, v0, Lorg/cocos2d/nodes/CCSprite;->rotation_:F

    invoke-static {v2}, Lorg/cocos2d/config/ccMacros;->CC_DEGREES_TO_RADIANS(F)F

    move-result v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/types/CGAffineTransform;->rotate(D)V

    .line 1162
    :cond_5
    and-int/lit8 v1, v26, 0x4

    if-eqz v1, :cond_6

    .line 1163
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpNewMatrix:Lorg/cocos2d/types/CGAffineTransform;

    move-object/from16 v0, v30

    iget v2, v0, Lorg/cocos2d/nodes/CCSprite;->scaleX_:F

    float-to-double v2, v2

    move-object/from16 v0, v30

    iget v4, v0, Lorg/cocos2d/nodes/CCSprite;->scaleY_:F

    float-to-double v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/cocos2d/types/CGAffineTransform;->scale(DD)V

    .line 1167
    :cond_6
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpNewMatrix:Lorg/cocos2d/types/CGAffineTransform;

    move-object/from16 v0, v30

    iget-object v2, v0, Lorg/cocos2d/nodes/CCSprite;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    neg-float v2, v2

    float-to-double v2, v2

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/cocos2d/nodes/CCSprite;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    iget v4, v4, Lorg/cocos2d/types/CGPoint;->y:F

    neg-float v4, v4

    float-to-double v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/cocos2d/types/CGAffineTransform;->translate(DD)V

    .line 1169
    sget-object v1, Lorg/cocos2d/nodes/CCSprite;->tmpMatrix:Lorg/cocos2d/types/CGAffineTransform;

    sget-object v2, Lorg/cocos2d/nodes/CCSprite;->tmpNewMatrix:Lorg/cocos2d/types/CGAffineTransform;

    invoke-virtual {v1, v2}, Lorg/cocos2d/types/CGAffineTransform;->multiply(Lorg/cocos2d/types/CGAffineTransform;)V

    .line 1170
    move-object/from16 v0, v30

    iget v0, v0, Lorg/cocos2d/nodes/CCSprite;->honorParentTransform_:I

    move/from16 v26, v0

    .line 1153
    invoke-virtual/range {v25 .. v25}, Lorg/cocos2d/nodes/CCNode;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v25

    goto :goto_1
.end method

.method public useSelfRender()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 475
    const/4 v4, -0x1

    iput v4, p0, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    .line 476
    iput-boolean v7, p0, Lorg/cocos2d/nodes/CCSprite;->usesSpriteSheet_:Z

    .line 477
    iput-object v5, p0, Lorg/cocos2d/nodes/CCSprite;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    .line 478
    iput-object v5, p0, Lorg/cocos2d/nodes/CCSprite;->spriteSheet_:Lorg/cocos2d/nodes/CCSpriteSheet;

    .line 479
    iput-boolean v7, p0, Lorg/cocos2d/nodes/CCSprite;->recursiveDirty_:Z

    iput-boolean v7, p0, Lorg/cocos2d/nodes/CCSprite;->dirty_:Z

    .line 481
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSprite;->offsetPosition_:Lorg/cocos2d/types/CGPoint;

    iget v4, v4, Lorg/cocos2d/types/CGPoint;->x:F

    add-float v0, v6, v4

    .line 482
    .local v0, "x1":F
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSprite;->offsetPosition_:Lorg/cocos2d/types/CGPoint;

    iget v4, v4, Lorg/cocos2d/types/CGPoint;->y:F

    add-float v2, v6, v4

    .line 483
    .local v2, "y1":F
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    iget-object v4, v4, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->width:F

    add-float v1, v0, v4

    .line 484
    .local v1, "x2":F
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSprite;->rect_:Lorg/cocos2d/types/CGRect;

    iget-object v4, v4, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->height:F

    add-float v3, v2, v4

    .line 486
    .local v3, "y2":F
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSprite;->vertexes:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 487
    sget-object v4, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    aput v0, v4, v7

    .line 488
    sget-object v4, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v5, 0x1

    aput v3, v4, v5

    .line 489
    sget-object v4, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v5, 0x2

    aput v6, v4, v5

    .line 490
    sget-object v4, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v5, 0x3

    aput v0, v4, v5

    .line 491
    sget-object v4, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v5, 0x4

    aput v2, v4, v5

    .line 492
    sget-object v4, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v5, 0x5

    aput v6, v4, v5

    .line 493
    sget-object v4, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v5, 0x6

    aput v1, v4, v5

    .line 494
    sget-object v4, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/4 v5, 0x7

    aput v3, v4, v5

    .line 495
    sget-object v4, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/16 v5, 0x8

    aput v6, v4, v5

    .line 496
    sget-object v4, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/16 v5, 0x9

    aput v1, v4, v5

    .line 497
    sget-object v4, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/16 v5, 0xa

    aput v2, v4, v5

    .line 498
    sget-object v4, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    const/16 v5, 0xb

    aput v6, v4, v5

    .line 499
    sget-object v4, Lorg/cocos2d/nodes/CCSprite;->tmpV:[F

    iget-object v5, p0, Lorg/cocos2d/nodes/CCSprite;->vertexes:Ljava/nio/FloatBuffer;

    const/16 v6, 0xc

    invoke-static {v4, v7, v5, v6}, Lorg/cocos2d/utils/BufferUtils;->copyFloats([FILjava/nio/FloatBuffer;I)V

    .line 512
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSprite;->vertexes:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 513
    return-void
.end method

.method public useSpriteSheetRender(Lorg/cocos2d/nodes/CCSpriteSheet;)V
    .locals 1
    .param p1, "spriteSheet"    # Lorg/cocos2d/nodes/CCSpriteSheet;

    .prologue
    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCSprite;->usesSpriteSheet_:Z

    .line 520
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteSheet;->getTextureAtlas()Lorg/cocos2d/opengl/CCTextureAtlas;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSprite;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    .line 521
    iput-object p1, p0, Lorg/cocos2d/nodes/CCSprite;->spriteSheet_:Lorg/cocos2d/nodes/CCSpriteSheet;

    .line 522
    return-void
.end method
