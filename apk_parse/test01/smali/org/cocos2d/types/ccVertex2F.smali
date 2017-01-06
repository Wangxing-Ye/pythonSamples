.class public Lorg/cocos2d/types/ccVertex2F;
.super Ljava/lang/Object;
.source "ccVertex2F.java"


# instance fields
.field pnt:Lorg/cocos2d/types/CGPoint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/types/ccVertex2F;->pnt:Lorg/cocos2d/types/CGPoint;

    .line 11
    return-void
.end method


# virtual methods
.method public setCGPoint(Lorg/cocos2d/types/CGPoint;)V
    .locals 2
    .param p1, "p"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 14
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/types/ccVertex2F;->pnt:Lorg/cocos2d/types/CGPoint;

    .line 15
    return-void
.end method
