.class public Lorg/cocos2d/types/ccV2F_C4F_T2F;
.super Ljava/lang/Object;
.source "ccV2F_C4F_T2F.java"


# instance fields
.field public colors:Lorg/cocos2d/types/ccColor4F;

.field public texCoords:Lorg/cocos2d/types/ccTex2F;

.field public vertices:Lorg/cocos2d/types/CGPoint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/types/ccV2F_C4F_T2F;->vertices:Lorg/cocos2d/types/CGPoint;

    .line 14
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v0}, Lorg/cocos2d/types/ccColor4F;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/types/ccV2F_C4F_T2F;->colors:Lorg/cocos2d/types/ccColor4F;

    .line 15
    new-instance v0, Lorg/cocos2d/types/ccTex2F;

    invoke-direct {v0, v1, v1}, Lorg/cocos2d/types/ccTex2F;-><init>(FF)V

    iput-object v0, p0, Lorg/cocos2d/types/ccV2F_C4F_T2F;->texCoords:Lorg/cocos2d/types/ccTex2F;

    .line 16
    return-void
.end method
