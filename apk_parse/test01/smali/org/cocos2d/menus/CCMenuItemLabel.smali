.class public Lorg/cocos2d/menus/CCMenuItemLabel;
.super Lorg/cocos2d/menus/CCMenuItem;
.source "CCMenuItemLabel.java"

# interfaces
.implements Lorg/cocos2d/protocols/CCRGBAProtocol;


# instance fields
.field private colorBackup:Lorg/cocos2d/types/ccColor3B;

.field private disabledColor_:Lorg/cocos2d/types/ccColor3B;

.field private label_:Lorg/cocos2d/protocols/CCLabelProtocol;

.field private originalScale_:F


# direct methods
.method protected constructor <init>(Lorg/cocos2d/protocols/CCLabelProtocol;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V
    .locals 3
    .param p1, "label"    # Lorg/cocos2d/protocols/CCLabelProtocol;
    .param p2, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p3, "selector"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xff

    const/16 v1, 0x7e

    .line 43
    invoke-direct {p0, p2, p3}, Lorg/cocos2d/menus/CCMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->originalScale_:F

    .line 45
    invoke-virtual {p0, p1}, Lorg/cocos2d/menus/CCMenuItemLabel;->setLabel(Lorg/cocos2d/protocols/CCLabelProtocol;)V

    .line 46
    new-instance v0, Lorg/cocos2d/types/ccColor3B;

    invoke-direct {v0, v2, v2, v2}, Lorg/cocos2d/types/ccColor3B;-><init>(III)V

    iput-object v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->colorBackup:Lorg/cocos2d/types/ccColor3B;

    .line 47
    new-instance v0, Lorg/cocos2d/types/ccColor3B;

    invoke-direct {v0, v1, v1, v1}, Lorg/cocos2d/types/ccColor3B;-><init>(III)V

    iput-object v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->disabledColor_:Lorg/cocos2d/types/ccColor3B;

    .line 48
    return-void
.end method

.method public static item(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemLabel;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "selector"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v1, "DroidSansMono"

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {p0, v1, v2}, Lorg/cocos2d/nodes/CCLabel;->makeLabel(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/nodes/CCLabel;

    move-result-object v0

    .line 38
    .local v0, "lbl":Lorg/cocos2d/nodes/CCLabel;
    new-instance v1, Lorg/cocos2d/menus/CCMenuItemLabel;

    invoke-direct {v1, v0, p1, p2}, Lorg/cocos2d/menus/CCMenuItemLabel;-><init>(Lorg/cocos2d/protocols/CCLabelProtocol;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V

    return-object v1
.end method

.method public static item(Lorg/cocos2d/protocols/CCLabelProtocol;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemLabel;
    .locals 1
    .param p0, "label"    # Lorg/cocos2d/protocols/CCLabelProtocol;
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "selector"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Lorg/cocos2d/menus/CCMenuItemLabel;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/menus/CCMenuItemLabel;-><init>(Lorg/cocos2d/protocols/CCLabelProtocol;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->isEnabled_:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItemLabel;->stopAllActions()V

    .line 100
    iget v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->originalScale_:F

    invoke-virtual {p0, v0}, Lorg/cocos2d/menus/CCMenuItemLabel;->setScale(F)V

    .line 102
    invoke-super {p0}, Lorg/cocos2d/menus/CCMenuItem;->activate()V

    .line 104
    :cond_0
    return-void
.end method

.method public doesOpacityModifyRGB()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 152
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->label_:Lorg/cocos2d/protocols/CCLabelProtocol;

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCNode;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 153
    return-void
.end method

.method public getColor()Lorg/cocos2d/types/ccColor3B;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->label_:Lorg/cocos2d/protocols/CCLabelProtocol;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    invoke-interface {v0}, Lorg/cocos2d/protocols/CCRGBAProtocol;->getColor()Lorg/cocos2d/types/ccColor3B;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledColor()Lorg/cocos2d/types/ccColor3B;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lorg/cocos2d/types/ccColor3B;

    iget-object v1, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->disabledColor_:Lorg/cocos2d/types/ccColor3B;

    iget v1, v1, Lorg/cocos2d/types/ccColor3B;->r:I

    iget-object v2, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->disabledColor_:Lorg/cocos2d/types/ccColor3B;

    iget v2, v2, Lorg/cocos2d/types/ccColor3B;->g:I

    iget-object v3, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->disabledColor_:Lorg/cocos2d/types/ccColor3B;

    iget v3, v3, Lorg/cocos2d/types/ccColor3B;->b:I

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/types/ccColor3B;-><init>(III)V

    return-object v0
.end method

.method public getLabel()Lorg/cocos2d/protocols/CCLabelProtocol;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->label_:Lorg/cocos2d/protocols/CCLabelProtocol;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->label_:Lorg/cocos2d/protocols/CCLabelProtocol;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    invoke-interface {v0}, Lorg/cocos2d/protocols/CCRGBAProtocol;->getOpacity()I

    move-result v0

    return v0
.end method

.method public selected()V
    .locals 5

    .prologue
    const v4, -0x3f3faffe

    .line 109
    iget-boolean v1, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->isEnabled_:Z

    if-eqz v1, :cond_0

    .line 110
    invoke-super {p0}, Lorg/cocos2d/menus/CCMenuItem;->selected()V

    .line 112
    invoke-virtual {p0, v4}, Lorg/cocos2d/menus/CCMenuItemLabel;->stopAction(I)V

    .line 113
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItemLabel;->getScale()F

    move-result v1

    iput v1, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->originalScale_:F

    .line 114
    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3f99999a    # 1.2f

    iget v3, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->originalScale_:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v0

    .line 115
    .local v0, "zoomAction":Lorg/cocos2d/actions/base/CCAction;
    invoke-virtual {v0, v4}, Lorg/cocos2d/actions/base/CCAction;->setTag(I)V

    .line 116
    invoke-virtual {p0, v0}, Lorg/cocos2d/menus/CCMenuItemLabel;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 118
    .end local v0    # "zoomAction":Lorg/cocos2d/actions/base/CCAction;
    :cond_0
    return-void
.end method

.method public setColor(Lorg/cocos2d/types/ccColor3B;)V
    .locals 1
    .param p1, "color"    # Lorg/cocos2d/types/ccColor3B;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->label_:Lorg/cocos2d/protocols/CCLabelProtocol;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    invoke-interface {v0, p1}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 63
    return-void
.end method

.method public setDisabledColor(Lorg/cocos2d/types/ccColor3B;)V
    .locals 2
    .param p1, "color"    # Lorg/cocos2d/types/ccColor3B;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->disabledColor_:Lorg/cocos2d/types/ccColor3B;

    iget v1, p1, Lorg/cocos2d/types/ccColor3B;->r:I

    iput v1, v0, Lorg/cocos2d/types/ccColor3B;->r:I

    .line 76
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->disabledColor_:Lorg/cocos2d/types/ccColor3B;

    iget v1, p1, Lorg/cocos2d/types/ccColor3B;->g:I

    iput v1, v0, Lorg/cocos2d/types/ccColor3B;->g:I

    .line 77
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->disabledColor_:Lorg/cocos2d/types/ccColor3B;

    iget v1, p1, Lorg/cocos2d/types/ccColor3B;->b:I

    iput v1, v0, Lorg/cocos2d/types/ccColor3B;->b:I

    .line 78
    return-void
.end method

.method public setIsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 138
    iget-boolean v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->isEnabled_:Z

    if-eq v0, p1, :cond_0

    .line 139
    if-nez p1, :cond_1

    .line 140
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->label_:Lorg/cocos2d/protocols/CCLabelProtocol;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    invoke-interface {v0}, Lorg/cocos2d/protocols/CCRGBAProtocol;->getColor()Lorg/cocos2d/types/ccColor3B;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->colorBackup:Lorg/cocos2d/types/ccColor3B;

    .line 141
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->label_:Lorg/cocos2d/protocols/CCLabelProtocol;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    iget-object v1, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->disabledColor_:Lorg/cocos2d/types/ccColor3B;

    invoke-interface {v0, v1}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 147
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lorg/cocos2d/menus/CCMenuItem;->setIsEnabled(Z)V

    .line 148
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->label_:Lorg/cocos2d/protocols/CCLabelProtocol;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    iget-object v1, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->colorBackup:Lorg/cocos2d/types/ccColor3B;

    invoke-interface {v0, v1}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    goto :goto_0
.end method

.method public setLabel(Lorg/cocos2d/protocols/CCLabelProtocol;)V
    .locals 1
    .param p1, "label"    # Lorg/cocos2d/protocols/CCLabelProtocol;

    .prologue
    .line 85
    iput-object p1, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->label_:Lorg/cocos2d/protocols/CCLabelProtocol;

    .line 86
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->label_:Lorg/cocos2d/protocols/CCLabelProtocol;

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/menus/CCMenuItemLabel;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 87
    return-void
.end method

.method public setOpacity(I)V
    .locals 1
    .param p1, "opacity"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->label_:Lorg/cocos2d/protocols/CCLabelProtocol;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    invoke-interface {v0, p1}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setOpacity(I)V

    .line 53
    return-void
.end method

.method public setOpacityModifyRGB(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 165
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->label_:Lorg/cocos2d/protocols/CCLabelProtocol;

    invoke-interface {v0, p1}, Lorg/cocos2d/protocols/CCLabelProtocol;->setString(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->label_:Lorg/cocos2d/protocols/CCLabelProtocol;

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/menus/CCMenuItemLabel;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 93
    return-void
.end method

.method public unselected()V
    .locals 4

    .prologue
    const v3, -0x3f3faffe

    .line 123
    iget-boolean v1, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->isEnabled_:Z

    if-eqz v1, :cond_0

    .line 124
    invoke-super {p0}, Lorg/cocos2d/menus/CCMenuItem;->unselected()V

    .line 126
    invoke-virtual {p0, v3}, Lorg/cocos2d/menus/CCMenuItemLabel;->stopAction(I)V

    .line 127
    const v1, 0x3dcccccd    # 0.1f

    iget v2, p0, Lorg/cocos2d/menus/CCMenuItemLabel;->originalScale_:F

    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v0

    .line 128
    .local v0, "zoomAction":Lorg/cocos2d/actions/base/CCAction;
    invoke-virtual {v0, v3}, Lorg/cocos2d/actions/base/CCAction;->setTag(I)V

    .line 129
    invoke-virtual {p0, v0}, Lorg/cocos2d/menus/CCMenuItemLabel;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 131
    .end local v0    # "zoomAction":Lorg/cocos2d/actions/base/CCAction;
    :cond_0
    return-void
.end method
