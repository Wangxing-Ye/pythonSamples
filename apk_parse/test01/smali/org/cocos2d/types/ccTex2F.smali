.class public Lorg/cocos2d/types/ccTex2F;
.super Ljava/lang/Object;
.source "ccTex2F.java"


# instance fields
.field public u:F

.field public v:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "uf"    # F
    .param p2, "vf"    # F

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lorg/cocos2d/types/ccTex2F;->u:F

    .line 12
    iput p2, p0, Lorg/cocos2d/types/ccTex2F;->v:F

    .line 13
    return-void
.end method


# virtual methods
.method public toFloatArray()[F
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lorg/cocos2d/types/ccTex2F;->u:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/cocos2d/types/ccTex2F;->v:F

    aput v2, v0, v1

    return-object v0
.end method
