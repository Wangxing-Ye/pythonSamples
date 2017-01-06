.class public Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCTextureRectClip.java"


# instance fields
.field private clipTag_:I

.field private cliph_:Z

.field private clipw_:Z

.field private reverse_:Z

.field private textureSize_:Lorg/cocos2d/types/CGSize;


# direct methods
.method protected constructor <init>(FLorg/cocos2d/types/CGSize;I)V
    .locals 3
    .param p1, "t"    # F
    .param p2, "size"    # Lorg/cocos2d/types/CGSize;
    .param p3, "clipTag"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 22
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 23
    iput p3, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->clipTag_:I

    .line 24
    iput-object p2, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->textureSize_:Lorg/cocos2d/types/CGSize;

    .line 25
    if-nez p3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->clipw_:Z

    .line 26
    if-ne p3, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->cliph_:Z

    .line 27
    return-void

    :cond_0
    move v0, v2

    .line 25
    goto :goto_0

    :cond_1
    move v1, v2

    .line 26
    goto :goto_1
.end method

.method protected constructor <init>(FLorg/cocos2d/types/CGSize;IZ)V
    .locals 3
    .param p1, "t"    # F
    .param p2, "size"    # Lorg/cocos2d/types/CGSize;
    .param p3, "clipTag"    # I
    .param p4, "reverse"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 30
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 31
    iput p3, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->clipTag_:I

    .line 32
    iput-object p2, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->textureSize_:Lorg/cocos2d/types/CGSize;

    .line 33
    iput-boolean p4, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->reverse_:Z

    .line 34
    if-nez p3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->clipw_:Z

    .line 35
    if-ne p3, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->cliph_:Z

    .line 36
    return-void

    :cond_0
    move v0, v2

    .line 34
    goto :goto_0

    :cond_1
    move v1, v2

    .line 35
    goto :goto_1
.end method

.method public static action(FLorg/cocos2d/types/CGSize;I)Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;
    .locals 1
    .param p0, "t"    # F
    .param p1, "size"    # Lorg/cocos2d/types/CGSize;
    .param p2, "clipTag"    # I

    .prologue
    .line 18
    new-instance v0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;-><init>(FLorg/cocos2d/types/CGSize;I)V

    return-object v0
.end method

.method private setTextureRect(FFFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F

    .prologue
    .line 86
    iget-object v0, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->target:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 87
    .local v0, "caseTarget":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getTextureRect()Lorg/cocos2d/types/CGRect;

    move-result-object v1

    .line 88
    .local v1, "textRect":Lorg/cocos2d/types/CGRect;
    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/cocos2d/types/CGRect;->set(FFFF)V

    .line 89
    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setTextureRect(Lorg/cocos2d/types/CGRect;)V

    .line 90
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->copy()Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->copy()Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;

    iget v1, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->duration:F

    iget-object v2, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->textureSize_:Lorg/cocos2d/types/CGSize;

    iget v3, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->clipTag_:I

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;-><init>(FLorg/cocos2d/types/CGSize;I)V

    return-object v0
.end method

.method public bridge synthetic reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->reverse()Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;
    .locals 5

    .prologue
    .line 82
    new-instance v0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;

    iget v1, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->duration:F

    iget-object v2, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->textureSize_:Lorg/cocos2d/types/CGSize;

    iget v3, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->clipTag_:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;-><init>(FLorg/cocos2d/types/CGSize;IZ)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 3
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 48
    iget-object v0, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->target:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getTextureRect()Lorg/cocos2d/types/CGRect;

    move-result-object v0

    iget-object v0, v0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 49
    iget-object v0, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->target:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getTextureRect()Lorg/cocos2d/types/CGRect;

    move-result-object v0

    iget-object v0, v0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    .line 47
    invoke-direct {p0, v1, v0, v2, v2}, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->setTextureRect(FFFF)V

    .line 51
    return-void
.end method

.method public update(F)V
    .locals 8
    .param p1, "t"    # F

    .prologue
    .line 57
    :try_start_0
    iget-boolean v4, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->reverse_:Z

    if-nez v4, :cond_0

    move v2, p1

    .line 58
    .local v2, "scale":F
    :goto_0
    iget-object v0, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->target:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 59
    .local v0, "caseTarget":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getTextureRect()Lorg/cocos2d/types/CGRect;

    move-result-object v3

    .line 61
    .local v3, "textRect":Lorg/cocos2d/types/CGRect;
    iget-object v4, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->target:Lorg/cocos2d/nodes/CCNode;

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getTextureRect()Lorg/cocos2d/types/CGRect;

    move-result-object v4

    iget-object v4, v4, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v6, v4, Lorg/cocos2d/types/CGPoint;->x:F

    .line 62
    iget-object v4, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->target:Lorg/cocos2d/nodes/CCNode;

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getTextureRect()Lorg/cocos2d/types/CGRect;

    move-result-object v4

    iget-object v4, v4, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v7, v4, Lorg/cocos2d/types/CGPoint;->y:F

    .line 63
    iget-boolean v4, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->clipw_:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->textureSize_:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v4, v2

    move v5, v4

    .line 64
    :goto_1
    iget-boolean v4, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->cliph_:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->textureSize_:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v4, v2

    .line 60
    :goto_2
    invoke-virtual {v3, v6, v7, v5, v4}, Lorg/cocos2d/types/CGRect;->set(FFFF)V

    .line 66
    invoke-virtual {v0, v3}, Lorg/cocos2d/nodes/CCSprite;->setTextureRect(Lorg/cocos2d/types/CGRect;)V

    .line 77
    .end local v0    # "caseTarget":Lorg/cocos2d/nodes/CCSprite;
    .end local v2    # "scale":F
    .end local v3    # "textRect":Lorg/cocos2d/types/CGRect;
    :goto_3
    return-void

    .line 57
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v4, p1

    goto :goto_0

    .line 63
    .restart local v0    # "caseTarget":Lorg/cocos2d/nodes/CCSprite;
    .restart local v2    # "scale":F
    .restart local v3    # "textRect":Lorg/cocos2d/types/CGRect;
    :cond_1
    iget-object v4, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->textureSize_:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->width:F

    move v5, v4

    goto :goto_1

    .line 64
    :cond_2
    iget-object v4, p0, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->textureSize_:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->height:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 74
    .end local v0    # "caseTarget":Lorg/cocos2d/nodes/CCSprite;
    .end local v2    # "scale":F
    .end local v3    # "textRect":Lorg/cocos2d/types/CGRect;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cocos2d/config/ccMacros;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_3
.end method
