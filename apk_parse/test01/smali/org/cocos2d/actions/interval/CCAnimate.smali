.class public Lorg/cocos2d/actions/interval/CCAnimate;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCAnimate.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private animation:Lorg/cocos2d/nodes/CCAnimation;

.field private origFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

.field private restoreOriginalFrame:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lorg/cocos2d/actions/interval/CCAnimate;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/actions/interval/CCAnimate;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(FLorg/cocos2d/nodes/CCAnimation;Z)V
    .locals 2
    .param p1, "duration"    # F
    .param p2, "anim"    # Lorg/cocos2d/nodes/CCAnimation;
    .param p3, "restore"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 64
    sget-boolean v0, Lorg/cocos2d/actions/interval/CCAnimate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Animate: argument Animation must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 65
    :cond_0
    iput-boolean p3, p0, Lorg/cocos2d/actions/interval/CCAnimate;->restoreOriginalFrame:Z

    .line 66
    iput-object p2, p0, Lorg/cocos2d/actions/interval/CCAnimate;->animation:Lorg/cocos2d/nodes/CCAnimation;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/actions/interval/CCAnimate;->origFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 68
    return-void
.end method

.method protected constructor <init>(Lorg/cocos2d/nodes/CCAnimation;Z)V
    .locals 2
    .param p1, "anim"    # Lorg/cocos2d/nodes/CCAnimation;
    .param p2, "restore"    # Z

    .prologue
    .line 51
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCAnimation;->frames()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCAnimation;->delay()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 53
    iput-boolean p2, p0, Lorg/cocos2d/actions/interval/CCAnimate;->restoreOriginalFrame:Z

    .line 54
    iput-object p1, p0, Lorg/cocos2d/actions/interval/CCAnimate;->animation:Lorg/cocos2d/nodes/CCAnimation;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/actions/interval/CCAnimate;->origFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 56
    return-void
.end method

.method public static action(FLorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;
    .locals 2
    .param p0, "duration"    # F
    .param p1, "anim"    # Lorg/cocos2d/nodes/CCAnimation;
    .param p2, "restore"    # Z

    .prologue
    .line 31
    sget-boolean v0, Lorg/cocos2d/actions/interval/CCAnimate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Animate: argument anim must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 32
    :cond_0
    new-instance v0, Lorg/cocos2d/actions/interval/CCAnimate;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/actions/interval/CCAnimate;-><init>(FLorg/cocos2d/nodes/CCAnimation;Z)V

    return-object v0
.end method

.method public static action(Lorg/cocos2d/nodes/CCAnimation;)Lorg/cocos2d/actions/interval/CCAnimate;
    .locals 2
    .param p0, "anim"    # Lorg/cocos2d/nodes/CCAnimation;

    .prologue
    .line 37
    sget-boolean v0, Lorg/cocos2d/actions/interval/CCAnimate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Animate: argument Animation must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 38
    :cond_0
    new-instance v0, Lorg/cocos2d/actions/interval/CCAnimate;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/cocos2d/actions/interval/CCAnimate;-><init>(Lorg/cocos2d/nodes/CCAnimation;Z)V

    return-object v0
.end method

.method public static action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;
    .locals 2
    .param p0, "anim"    # Lorg/cocos2d/nodes/CCAnimation;
    .param p1, "restore"    # Z

    .prologue
    .line 43
    sget-boolean v0, Lorg/cocos2d/actions/interval/CCAnimate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Animate: argument Animation must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 44
    :cond_0
    new-instance v0, Lorg/cocos2d/actions/interval/CCAnimate;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/interval/CCAnimate;-><init>(Lorg/cocos2d/nodes/CCAnimation;Z)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCAnimate;->copy()Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCAnimate;
    .locals 4

    .prologue
    .line 72
    new-instance v0, Lorg/cocos2d/actions/interval/CCAnimate;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCAnimate;->duration:F

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCAnimate;->animation:Lorg/cocos2d/nodes/CCAnimation;

    iget-boolean v3, p0, Lorg/cocos2d/actions/interval/CCAnimate;->restoreOriginalFrame:Z

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/actions/interval/CCAnimate;-><init>(FLorg/cocos2d/nodes/CCAnimation;Z)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCAnimate;->copy()Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    return-object v0
.end method

.method public getAnimation()Lorg/cocos2d/nodes/CCAnimation;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCAnimate;->animation:Lorg/cocos2d/nodes/CCAnimation;

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCAnimate;
    .locals 5

    .prologue
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "ao":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    iget-object v3, p0, Lorg/cocos2d/actions/interval/CCAnimate;->animation:Lorg/cocos2d/nodes/CCAnimation;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCAnimation;->frames()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 123
    iget-object v3, p0, Lorg/cocos2d/actions/interval/CCAnimate;->animation:Lorg/cocos2d/nodes/CCAnimation;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCAnimation;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/cocos2d/actions/interval/CCAnimate;->animation:Lorg/cocos2d/nodes/CCAnimation;

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCAnimation;->delay()F

    move-result v4

    invoke-static {v3, v4, v0}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v1

    .line 124
    .local v1, "newAnim":Lorg/cocos2d/nodes/CCAnimation;
    iget v3, p0, Lorg/cocos2d/actions/interval/CCAnimate;->duration:F

    iget-boolean v4, p0, Lorg/cocos2d/actions/interval/CCAnimate;->restoreOriginalFrame:Z

    invoke-static {v3, v1, v4}, Lorg/cocos2d/actions/interval/CCAnimate;->action(FLorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v3

    return-object v3

    .line 119
    .end local v1    # "newAnim":Lorg/cocos2d/nodes/CCAnimation;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 120
    .local v2, "o":Lorg/cocos2d/nodes/CCSpriteFrame;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCAnimate;->reverse()Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    return-object v0
.end method

.method public setAnimation(Lorg/cocos2d/nodes/CCAnimation;)V
    .locals 0
    .param p1, "anim"    # Lorg/cocos2d/nodes/CCAnimation;

    .prologue
    .line 23
    iput-object p1, p0, Lorg/cocos2d/actions/interval/CCAnimate;->animation:Lorg/cocos2d/nodes/CCAnimation;

    .line 24
    return-void
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 78
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCAnimate;->target:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 80
    .local v0, "sprite":Lorg/cocos2d/nodes/CCSprite;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/cocos2d/actions/interval/CCAnimate;->origFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 81
    iget-boolean v1, p0, Lorg/cocos2d/actions/interval/CCAnimate;->restoreOriginalFrame:Z

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->displayedFrame()Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/actions/interval/CCAnimate;->origFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 83
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 87
    iget-boolean v1, p0, Lorg/cocos2d/actions/interval/CCAnimate;->restoreOriginalFrame:Z

    if-eqz v1, :cond_0

    .line 88
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCAnimate;->target:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 89
    .local v0, "sprite":Lorg/cocos2d/nodes/CCSprite;
    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCAnimate;->origFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setDisplayFrame(Lorg/cocos2d/nodes/CCSpriteFrame;)V

    .line 92
    .end local v0    # "sprite":Lorg/cocos2d/nodes/CCSprite;
    :cond_0
    invoke-super {p0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->stop()V

    .line 93
    return-void
.end method

.method public update(F)V
    .locals 5
    .param p1, "t"    # F

    .prologue
    .line 97
    iget-object v4, p0, Lorg/cocos2d/actions/interval/CCAnimate;->animation:Lorg/cocos2d/nodes/CCAnimation;

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCAnimation;->frames()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 98
    .local v2, "numberOfFrames":I
    int-to-float v4, v2

    mul-float/2addr v4, p1

    float-to-int v1, v4

    .line 100
    .local v1, "idx":I
    if-lt v1, v2, :cond_0

    .line 101
    add-int/lit8 v1, v2, -0x1

    .line 104
    :cond_0
    if-gez v1, :cond_1

    .line 105
    const/4 v1, 0x0

    .line 108
    :cond_1
    iget-object v3, p0, Lorg/cocos2d/actions/interval/CCAnimate;->target:Lorg/cocos2d/nodes/CCNode;

    check-cast v3, Lorg/cocos2d/nodes/CCSprite;

    .line 109
    .local v3, "sprite":Lorg/cocos2d/nodes/CCSprite;
    iget-object v4, p0, Lorg/cocos2d/actions/interval/CCAnimate;->animation:Lorg/cocos2d/nodes/CCAnimation;

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCAnimation;->frames()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 110
    .local v0, "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    if-eqz v3, :cond_2

    .line 111
    invoke-virtual {v3, v0}, Lorg/cocos2d/nodes/CCSprite;->isFrameDisplayed(Lorg/cocos2d/nodes/CCSpriteFrame;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 112
    invoke-virtual {v3, v0}, Lorg/cocos2d/nodes/CCSprite;->setDisplayFrame(Lorg/cocos2d/nodes/CCSpriteFrame;)V

    .line 114
    :cond_2
    return-void
.end method
