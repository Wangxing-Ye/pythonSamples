.class public final Lorg/cocos2d/types/util/ccColor4FUtil;
.super Ljava/lang/Object;
.source "ccColor4FUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Lorg/cocos2d/types/ccColor4F;Lorg/cocos2d/types/ccColor4F;)V
    .locals 1
    .param p0, "src"    # Lorg/cocos2d/types/ccColor4F;
    .param p1, "dst"    # Lorg/cocos2d/types/ccColor4F;

    .prologue
    .line 8
    iget v0, p0, Lorg/cocos2d/types/ccColor4F;->a:F

    iput v0, p1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 9
    iget v0, p0, Lorg/cocos2d/types/ccColor4F;->r:F

    iput v0, p1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 10
    iget v0, p0, Lorg/cocos2d/types/ccColor4F;->g:F

    iput v0, p1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 11
    iget v0, p0, Lorg/cocos2d/types/ccColor4F;->b:F

    iput v0, p1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 12
    return-void
.end method

.method public static set(Lorg/cocos2d/types/ccColor4F;FFFF)V
    .locals 0
    .param p0, "dst"    # Lorg/cocos2d/types/ccColor4F;
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 15
    iput p4, p0, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 16
    iput p1, p0, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 17
    iput p2, p0, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 18
    iput p3, p0, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 19
    return-void
.end method
