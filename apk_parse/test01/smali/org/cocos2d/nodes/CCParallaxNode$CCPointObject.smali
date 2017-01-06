.class Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;
.super Ljava/lang/Object;
.source "CCParallaxNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/nodes/CCParallaxNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CCPointObject"
.end annotation


# instance fields
.field private child_:Lorg/cocos2d/nodes/CCNode;

.field private offsetX_:F

.field private offsetY_:F

.field private ratioX_:F

.field private ratioY_:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "ratioX"    # F
    .param p2, "ratioY"    # F
    .param p3, "offsetX"    # F
    .param p4, "offsetY"    # F

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;->ratioX_:F

    .line 27
    iput p2, p0, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;->ratioY_:F

    .line 28
    iput p3, p0, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;->offsetX_:F

    .line 29
    iput p4, p0, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;->offsetY_:F

    .line 30
    return-void
.end method


# virtual methods
.method public getChild()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;->child_:Lorg/cocos2d/nodes/CCNode;

    return-object v0
.end method

.method public getOffsetX()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;->offsetX_:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;->offsetY_:F

    return v0
.end method

.method public getRatioX()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;->ratioX_:F

    return v0
.end method

.method public getRatioY()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;->ratioY_:F

    return v0
.end method

.method public setChild(Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 37
    iput-object p1, p0, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;->child_:Lorg/cocos2d/nodes/CCNode;

    .line 38
    return-void
.end method
