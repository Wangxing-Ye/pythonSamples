.class public Lcom/sns/game/actions/CCDepthFadeIn;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCDepthFadeIn.java"


# direct methods
.method protected constructor <init>(F)V
    .locals 0
    .param p1, "t"    # F

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 23
    return-void
.end method

.method public static action(F)Lcom/sns/game/actions/CCDepthFadeIn;
    .locals 1
    .param p0, "t"    # F

    .prologue
    .line 18
    new-instance v0, Lcom/sns/game/actions/CCDepthFadeIn;

    invoke-direct {v0, p0}, Lcom/sns/game/actions/CCDepthFadeIn;-><init>(F)V

    return-object v0
.end method

.method public static bridge synthetic action(F)Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/sns/game/actions/CCDepthFadeIn;->action(F)Lcom/sns/game/actions/CCDepthFadeIn;

    move-result-object v0

    return-object v0
.end method

.method private depthUpdate(Lorg/cocos2d/nodes/CCNode;F)V
    .locals 6
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "t"    # F

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 43
    if-eqz p1, :cond_2

    .line 45
    instance-of v2, p1, Lorg/cocos2d/protocols/CCRGBAProtocol;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 46
    check-cast v2, Lorg/cocos2d/protocols/CCRGBAProtocol;

    mul-float v3, v5, p2

    float-to-int v3, v3

    invoke-interface {v2, v3}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setOpacity(I)V

    .line 48
    :cond_0
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 49
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    if-eqz v1, :cond_2

    .line 50
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 60
    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    :cond_2
    return-void

    .line 50
    .restart local v1    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 51
    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    instance-of v2, v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    if-eqz v2, :cond_4

    move-object v2, v0

    .line 52
    check-cast v2, Lorg/cocos2d/protocols/CCRGBAProtocol;

    mul-float v4, v5, p2

    float-to-int v4, v4

    invoke-interface {v2, v4}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setOpacity(I)V

    .line 54
    :cond_4
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 55
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    invoke-direct {p0, v0, p2}, Lcom/sns/game/actions/CCDepthFadeIn;->depthUpdate(Lorg/cocos2d/nodes/CCNode;F)V

    goto :goto_0
.end method


# virtual methods
.method public copy()Lcom/sns/game/actions/CCDepthFadeIn;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/sns/game/actions/CCDepthFadeIn;

    iget v1, p0, Lcom/sns/game/actions/CCDepthFadeIn;->duration:F

    invoke-direct {v0, v1}, Lcom/sns/game/actions/CCDepthFadeIn;-><init>(F)V

    return-object v0
.end method

.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/sns/game/actions/CCDepthFadeIn;->copy()Lcom/sns/game/actions/CCDepthFadeIn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/sns/game/actions/CCDepthFadeIn;->copy()Lcom/sns/game/actions/CCDepthFadeIn;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lcom/sns/game/actions/CCDepthFadeOut;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/sns/game/actions/CCDepthFadeOut;

    iget v1, p0, Lcom/sns/game/actions/CCDepthFadeIn;->duration:F

    invoke-direct {v0, v1}, Lcom/sns/game/actions/CCDepthFadeOut;-><init>(F)V

    return-object v0
.end method

.method public bridge synthetic reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/sns/game/actions/CCDepthFadeIn;->reverse()Lcom/sns/game/actions/CCDepthFadeOut;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .locals 3
    .param p1, "t"    # F

    .prologue
    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/actions/CCDepthFadeIn;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-direct {p0, v1, p1}, Lcom/sns/game/actions/CCDepthFadeIn;->depthUpdate(Lorg/cocos2d/nodes/CCNode;F)V

    .line 35
    iget-object v1, p0, Lcom/sns/game/actions/CCDepthFadeIn;->target:Lorg/cocos2d/nodes/CCNode;

    check-cast v1, Lorg/cocos2d/protocols/CCRGBAProtocol;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-interface {v1, v2}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setOpacity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
