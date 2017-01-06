.class public final Lorg/cocos2d/types/util/ccQuad2Util;
.super Ljava/lang/Object;
.source "ccQuad2Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zero(Lorg/cocos2d/types/ccQuad2;)V
    .locals 1
    .param p0, "q"    # Lorg/cocos2d/types/ccQuad2;

    .prologue
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/cocos2d/types/ccQuad2;->bl_x:F

    .line 8
    iput v0, p0, Lorg/cocos2d/types/ccQuad2;->bl_y:F

    .line 9
    iput v0, p0, Lorg/cocos2d/types/ccQuad2;->br_x:F

    .line 10
    iput v0, p0, Lorg/cocos2d/types/ccQuad2;->br_y:F

    .line 11
    iput v0, p0, Lorg/cocos2d/types/ccQuad2;->tl_x:F

    .line 12
    iput v0, p0, Lorg/cocos2d/types/ccQuad2;->tl_y:F

    .line 13
    iput v0, p0, Lorg/cocos2d/types/ccQuad2;->tr_x:F

    .line 14
    iput v0, p0, Lorg/cocos2d/types/ccQuad2;->tr_y:F

    .line 15
    return-void
.end method
