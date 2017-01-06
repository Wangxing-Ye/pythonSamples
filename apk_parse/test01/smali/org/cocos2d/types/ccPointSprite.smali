.class public Lorg/cocos2d/types/ccPointSprite;
.super Ljava/lang/Object;
.source "ccPointSprite.java"


# static fields
.field public static final spriteSize:I = 0x6


# instance fields
.field public colors:Lorg/cocos2d/types/ccColor4F;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v0}, Lorg/cocos2d/types/ccColor4F;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/types/ccPointSprite;->colors:Lorg/cocos2d/types/ccColor4F;

    .line 3
    return-void
.end method
