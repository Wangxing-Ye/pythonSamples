.class public Lorg/cocos2d/actions/interval/CCTintTo;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCTintTo.java"


# instance fields
.field protected from:Lorg/cocos2d/types/ccColor3B;

.field protected to:Lorg/cocos2d/types/ccColor3B;


# direct methods
.method protected constructor <init>(FLorg/cocos2d/types/ccColor3B;)V
    .locals 1
    .param p1, "t"    # F
    .param p2, "c"    # Lorg/cocos2d/types/ccColor3B;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 23
    new-instance v0, Lorg/cocos2d/types/ccColor3B;

    invoke-direct {v0, p2}, Lorg/cocos2d/types/ccColor3B;-><init>(Lorg/cocos2d/types/ccColor3B;)V

    iput-object v0, p0, Lorg/cocos2d/actions/interval/CCTintTo;->to:Lorg/cocos2d/types/ccColor3B;

    .line 24
    return-void
.end method

.method public static action(FLorg/cocos2d/types/ccColor3B;)Lorg/cocos2d/actions/interval/CCTintTo;
    .locals 1
    .param p0, "t"    # F
    .param p1, "c"    # Lorg/cocos2d/types/ccColor3B;

    .prologue
    .line 17
    new-instance v0, Lorg/cocos2d/actions/interval/CCTintTo;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/interval/CCTintTo;-><init>(FLorg/cocos2d/types/ccColor3B;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCTintTo;->copy()Lorg/cocos2d/actions/interval/CCTintTo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCTintTo;->copy()Lorg/cocos2d/actions/interval/CCTintTo;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCTintTo;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lorg/cocos2d/actions/interval/CCTintTo;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCTintTo;->duration:F

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCTintTo;->to:Lorg/cocos2d/types/ccColor3B;

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/interval/CCTintTo;-><init>(FLorg/cocos2d/types/ccColor3B;)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 35
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCTintTo;->target:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    .line 37
    .local v0, "tn":Lorg/cocos2d/protocols/CCRGBAProtocol;
    invoke-interface {v0}, Lorg/cocos2d/protocols/CCRGBAProtocol;->getColor()Lorg/cocos2d/types/ccColor3B;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/actions/interval/CCTintTo;->from:Lorg/cocos2d/types/ccColor3B;

    .line 38
    return-void
.end method

.method public update(F)V
    .locals 7
    .param p1, "t"    # F

    .prologue
    .line 42
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCTintTo;->target:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    .line 43
    new-instance v1, Lorg/cocos2d/types/ccColor3B;

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCTintTo;->from:Lorg/cocos2d/types/ccColor3B;

    iget v2, v2, Lorg/cocos2d/types/ccColor3B;->r:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/cocos2d/actions/interval/CCTintTo;->to:Lorg/cocos2d/types/ccColor3B;

    iget v3, v3, Lorg/cocos2d/types/ccColor3B;->r:I

    iget-object v4, p0, Lorg/cocos2d/actions/interval/CCTintTo;->from:Lorg/cocos2d/types/ccColor3B;

    iget v4, v4, Lorg/cocos2d/types/ccColor3B;->r:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 44
    iget-object v3, p0, Lorg/cocos2d/actions/interval/CCTintTo;->from:Lorg/cocos2d/types/ccColor3B;

    iget v3, v3, Lorg/cocos2d/types/ccColor3B;->g:I

    int-to-float v3, v3

    iget-object v4, p0, Lorg/cocos2d/actions/interval/CCTintTo;->to:Lorg/cocos2d/types/ccColor3B;

    iget v4, v4, Lorg/cocos2d/types/ccColor3B;->g:I

    iget-object v5, p0, Lorg/cocos2d/actions/interval/CCTintTo;->from:Lorg/cocos2d/types/ccColor3B;

    iget v5, v5, Lorg/cocos2d/types/ccColor3B;->g:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 45
    iget-object v4, p0, Lorg/cocos2d/actions/interval/CCTintTo;->from:Lorg/cocos2d/types/ccColor3B;

    iget v4, v4, Lorg/cocos2d/types/ccColor3B;->b:I

    int-to-float v4, v4

    iget-object v5, p0, Lorg/cocos2d/actions/interval/CCTintTo;->to:Lorg/cocos2d/types/ccColor3B;

    iget v5, v5, Lorg/cocos2d/types/ccColor3B;->b:I

    iget-object v6, p0, Lorg/cocos2d/actions/interval/CCTintTo;->from:Lorg/cocos2d/types/ccColor3B;

    iget v6, v6, Lorg/cocos2d/types/ccColor3B;->b:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 43
    invoke-direct {v1, v2, v3, v4}, Lorg/cocos2d/types/ccColor3B;-><init>(III)V

    .line 42
    invoke-interface {v0, v1}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 46
    return-void
.end method
