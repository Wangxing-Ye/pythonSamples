.class public Lorg/cocos2d/types/CCVertex3D;
.super Ljava/lang/Object;
.source "CCVertex3D.java"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lorg/cocos2d/types/CCVertex3D;->x:F

    .line 12
    iput p2, p0, Lorg/cocos2d/types/CCVertex3D;->y:F

    .line 13
    iput p3, p0, Lorg/cocos2d/types/CCVertex3D;->z:F

    .line 14
    return-void
.end method
