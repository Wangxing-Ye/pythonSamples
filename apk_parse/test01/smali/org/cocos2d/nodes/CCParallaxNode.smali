.class public Lorg/cocos2d/nodes/CCParallaxNode;
.super Lorg/cocos2d/nodes/CCNode;
.source "CCParallaxNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private lastPosition:Lorg/cocos2d/types/CGPoint;

.field private parallaxArray_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lorg/cocos2d/nodes/CCParallaxNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/nodes/CCParallaxNode;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, -0x3d380000    # -100.0f

    .line 61
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCParallaxNode;->parallaxArray_:Ljava/util/ArrayList;

    .line 63
    invoke-static {v2, v2}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCParallaxNode;->lastPosition:Lorg/cocos2d/types/CGPoint;

    .line 64
    return-void
.end method

.method private absolutePosition()Lorg/cocos2d/types/CGPoint;
    .locals 5

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCParallaxNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 111
    .local v2, "ret":Lorg/cocos2d/types/CGPoint;
    move-object v0, p0

    .line 113
    .local v0, "cn":Lorg/cocos2d/nodes/CCNode;
    :goto_0
    iget-object v3, v0, Lorg/cocos2d/nodes/CCNode;->parent_:Lorg/cocos2d/nodes/CCNode;

    if-nez v3, :cond_0

    .line 120
    return-object v2

    .line 114
    :cond_0
    iget-object v0, v0, Lorg/cocos2d/nodes/CCNode;->parent_:Lorg/cocos2d/nodes/CCNode;

    .line 115
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 116
    .local v1, "pnt":Lorg/cocos2d/types/CGPoint;
    iget v3, v2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v4, v1, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v3, v4

    iput v3, v2, Lorg/cocos2d/types/CGPoint;->x:F

    .line 117
    iget v3, v2, Lorg/cocos2d/types/CGPoint;->y:F

    iget v4, v1, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v3, v4

    iput v3, v2, Lorg/cocos2d/types/CGPoint;->y:F

    goto :goto_0
.end method

.method public static bridge synthetic node()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lorg/cocos2d/nodes/CCParallaxNode;->node()Lorg/cocos2d/nodes/CCParallaxNode;

    move-result-object v0

    return-object v0
.end method

.method public static node()Lorg/cocos2d/nodes/CCParallaxNode;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lorg/cocos2d/nodes/CCParallaxNode;

    invoke-direct {v0}, Lorg/cocos2d/nodes/CCParallaxNode;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addChild(Lorg/cocos2d/nodes/CCNode;IFFFF)Lorg/cocos2d/nodes/CCNode;
    .locals 6
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I
    .param p3, "ratioX"    # F
    .param p4, "ratioY"    # F
    .param p5, "offsetX"    # F
    .param p6, "offsetY"    # F

    .prologue
    .line 78
    sget-boolean v4, Lorg/cocos2d/nodes/CCParallaxNode;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Argument must be non-null"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 79
    :cond_0
    new-instance v0, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;

    invoke-direct {v0, p3, p4, p5, p6}, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;-><init>(FFFF)V

    .line 80
    .local v0, "obj":Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;
    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;->setChild(Lorg/cocos2d/nodes/CCNode;)V

    .line 81
    iget-object v4, p0, Lorg/cocos2d/nodes/CCParallaxNode;->parallaxArray_:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCParallaxNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 84
    .local v1, "pnt":Lorg/cocos2d/types/CGPoint;
    iget v4, v1, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v4, p3

    add-float v2, v4, p5

    .line 85
    .local v2, "x":F
    iget v4, v1, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v4, p4

    add-float v3, v4, p6

    .line 86
    .local v3, "y":F
    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/cocos2d/nodes/CCNode;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 88
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getTag()I

    move-result v4

    invoke-super {p0, p1, p2, v4}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    move-result-object v4

    return-object v4
.end method

.method public addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;
    .locals 2
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I
    .param p3, "tag"    # I

    .prologue
    .line 68
    sget-boolean v0, Lorg/cocos2d/nodes/CCParallaxNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "ParallaxNode: use addChild:z:parallaxRatio:positionOffset instead"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 69
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeAllChildren(Z)V
    .locals 1
    .param p1, "cleanup"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lorg/cocos2d/nodes/CCParallaxNode;->parallaxArray_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    invoke-super {p0, p1}, Lorg/cocos2d/nodes/CCNode;->removeAllChildren(Z)V

    .line 107
    return-void
.end method

.method public removeChild(Lorg/cocos2d/nodes/CCNode;Z)V
    .locals 3
    .param p1, "node"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "cleanup"    # Z

    .prologue
    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/cocos2d/nodes/CCParallaxNode;->parallaxArray_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 100
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/cocos2d/nodes/CCNode;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 101
    return-void

    .line 94
    :cond_0
    iget-object v2, p0, Lorg/cocos2d/nodes/CCParallaxNode;->parallaxArray_:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;

    .line 95
    .local v1, "point":Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;->getChild()Lorg/cocos2d/nodes/CCNode;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lorg/cocos2d/nodes/CCParallaxNode;->parallaxArray_:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 93
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public visit(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCParallaxNode;->absolutePosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 131
    .local v2, "pos":Lorg/cocos2d/types/CGPoint;
    iget-object v5, p0, Lorg/cocos2d/nodes/CCParallaxNode;->lastPosition:Lorg/cocos2d/types/CGPoint;

    invoke-static {v2, v5}, Lorg/cocos2d/types/CGPoint;->equalToPoint(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lorg/cocos2d/nodes/CCParallaxNode;->parallaxArray_:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 139
    iput-object v2, p0, Lorg/cocos2d/nodes/CCParallaxNode;->lastPosition:Lorg/cocos2d/types/CGPoint;

    .line 142
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0, p1}, Lorg/cocos2d/nodes/CCNode;->visit(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 143
    return-void

    .line 133
    .restart local v0    # "i":I
    :cond_1
    iget-object v5, p0, Lorg/cocos2d/nodes/CCParallaxNode;->parallaxArray_:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;

    .line 134
    .local v1, "point":Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;
    iget v5, v2, Lorg/cocos2d/types/CGPoint;->x:F

    neg-float v5, v5

    iget v6, v2, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;->getRatioX()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;->getOffsetX()F

    move-result v6

    add-float v3, v5, v6

    .line 135
    .local v3, "x":F
    iget v5, v2, Lorg/cocos2d/types/CGPoint;->y:F

    neg-float v5, v5

    iget v6, v2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;->getRatioY()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;->getOffsetY()F

    move-result v6

    add-float v4, v5, v6

    .line 136
    .local v4, "y":F
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCParallaxNode$CCPointObject;->getChild()Lorg/cocos2d/nodes/CCNode;

    move-result-object v5

    invoke-static {v3, v4}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/cocos2d/nodes/CCNode;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
