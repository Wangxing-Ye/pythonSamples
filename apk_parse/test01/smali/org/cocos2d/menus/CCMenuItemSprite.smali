.class public Lorg/cocos2d/menus/CCMenuItemSprite;
.super Lorg/cocos2d/menus/CCMenuItem;
.source "CCMenuItemSprite.java"

# interfaces
.implements Lorg/cocos2d/protocols/CCRGBAProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected disabledImage_:Lorg/cocos2d/nodes/CCNode;

.field public flipX_:Z

.field public flipY_:Z

.field private isAnimPressMode:Z

.field private isOnlySelectedMode:Z

.field protected normalImage_:Lorg/cocos2d/nodes/CCNode;

.field private selectedHandle:Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;

.field protected selectedImage_:Lorg/cocos2d/nodes/CCNode;

.field private sltdZomScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/menus/CCMenuItemSprite;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V
    .locals 2
    .param p1, "normalSprite"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "selectedSprite"    # Lorg/cocos2d/nodes/CCNode;
    .param p3, "disabledSprite"    # Lorg/cocos2d/nodes/CCNode;
    .param p4, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p5, "selector"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0, p4, p5}, Lorg/cocos2d/menus/CCMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lorg/cocos2d/menus/CCMenuItemSprite;->setNormalImage(Lorg/cocos2d/nodes/CCNode;)V

    .line 112
    invoke-virtual {p0, p2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSelectedImage(Lorg/cocos2d/nodes/CCNode;)V

    .line 113
    invoke-virtual {p0, p3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setDisabledImage(Lorg/cocos2d/nodes/CCNode;)V

    .line 114
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCNode;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 115
    .local v0, "size":Lorg/cocos2d/types/CGSize;
    invoke-virtual {p0, v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 116
    return-void
.end method

.method public static item(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/menus/CCMenuItemSprite;
    .locals 6
    .param p0, "normalSprite"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    const/4 v2, 0x0

    .line 85
    new-instance v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/menus/CCMenuItemSprite;-><init>(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/menus/CCMenuItemSprite;
    .locals 6
    .param p0, "normalSprite"    # Lorg/cocos2d/nodes/CCNode;
    .param p1, "selectedSprite"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    const/4 v3, 0x0

    .line 95
    new-instance v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/menus/CCMenuItemSprite;-><init>(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;
    .locals 6
    .param p0, "normalSprite"    # Lorg/cocos2d/nodes/CCNode;
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "selector"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 90
    new-instance v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v1, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/menus/CCMenuItemSprite;-><init>(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;
    .locals 6
    .param p0, "normalSprite"    # Lorg/cocos2d/nodes/CCNode;
    .param p1, "selectedSprite"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p3, "selector"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/menus/CCMenuItemSprite;-><init>(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;
    .locals 6
    .param p0, "normalSprite"    # Lorg/cocos2d/nodes/CCNode;
    .param p1, "selectedSprite"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "disabledSprite"    # Lorg/cocos2d/nodes/CCNode;
    .param p3, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p4, "selector"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/menus/CCMenuItemSprite;-><init>(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V

    return-object v0
.end method

.method private setSelectedZoomScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 289
    iput p1, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->sltdZomScale:F

    .line 290
    return-void
.end method


# virtual methods
.method public ccTouchSelected(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 333
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedHandle:Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedHandle:Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;

    invoke-virtual {v0, p0, p1}, Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;->handleTouch(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 336
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doesOpacityModifyRGB()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public getColor()Lorg/cocos2d/types/ccColor3B;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    invoke-interface {v0}, Lorg/cocos2d/protocols/CCRGBAProtocol;->getColor()Lorg/cocos2d/types/ccColor3B;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledImage()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    return-object v0
.end method

.method public getFlipX()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->flipX_:Z

    return v0
.end method

.method public getFlipY()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->flipY_:Z

    return v0
.end method

.method public getNormalImage()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    invoke-interface {v0}, Lorg/cocos2d/protocols/CCRGBAProtocol;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getSelectedImage()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    return-object v0
.end method

.method protected isHandleSelected()Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedHandle:Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedHandle:Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;

    invoke-virtual {v0, p0}, Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;->handleLogical(Lorg/cocos2d/menus/CCMenuItemSprite;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnlySelectedMode()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->isOnlySelectedMode:Z

    return v0
.end method

.method protected runSelectedZoomAction()V
    .locals 5

    .prologue
    const v4, -0x3f3faffe

    .line 293
    iget-boolean v2, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->isAnimPressMode:Z

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {p0, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->stopAction(I)V

    .line 295
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItemSprite;->getScale()F

    move-result v0

    .line 296
    .local v0, "scale":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 297
    const v2, 0x3d4ccccd    # 0.05f

    iget v3, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->sltdZomScale:F

    mul-float/2addr v3, v0

    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v1

    .line 298
    .local v1, "zoomAction":Lorg/cocos2d/actions/base/CCAction;
    invoke-virtual {v1, v4}, Lorg/cocos2d/actions/base/CCAction;->setTag(I)V

    .line 299
    invoke-virtual {p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 301
    .end local v0    # "scale":F
    .end local v1    # "zoomAction":Lorg/cocos2d/actions/base/CCAction;
    :cond_0
    return-void
.end method

.method protected runUnSelectZoomAction()V
    .locals 4

    .prologue
    const v3, -0x3f3faffe

    .line 304
    iget-boolean v1, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->isAnimPressMode:Z

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {p0, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->stopAction(I)V

    .line 306
    const v1, 0x3d4ccccd    # 0.05f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v0

    .line 307
    .local v0, "zoomAction":Lorg/cocos2d/actions/base/CCAction;
    invoke-virtual {v0, v3}, Lorg/cocos2d/actions/base/CCAction;->setTag(I)V

    .line 308
    invoke-virtual {p0, v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 310
    .end local v0    # "zoomAction":Lorg/cocos2d/actions/base/CCAction;
    :cond_0
    return-void
.end method

.method public selected()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 371
    iget-boolean v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->isOnlySelectedMode:Z

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItemSprite;->isHandleSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItemSprite;->unselected()V

    .line 392
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-super {p0}, Lorg/cocos2d/menus/CCMenuItem;->selected()V

    .line 379
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 381
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 382
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 391
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItemSprite;->runSelectedZoomAction()V

    goto :goto_0

    .line 385
    :cond_2
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 387
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    goto :goto_1
.end method

.method public setAnimPressMode(Z)V
    .locals 1
    .param p1, "isAnimPressMode"    # Z

    .prologue
    .line 276
    iput-boolean p1, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->isAnimPressMode:Z

    .line 277
    const v0, 0x3f99999a    # 1.2f

    invoke-direct {p0, v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSelectedZoomScale(F)V

    .line 278
    return-void
.end method

.method public setAnimPressMode(ZF)V
    .locals 0
    .param p1, "isAnimPressMode"    # Z
    .param p2, "scale"    # F

    .prologue
    .line 282
    iput-boolean p1, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->isAnimPressMode:Z

    .line 283
    invoke-direct {p0, p2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSelectedZoomScale(F)V

    .line 284
    return-void
.end method

.method public setColor(Lorg/cocos2d/types/ccColor3B;)V
    .locals 1
    .param p1, "color"    # Lorg/cocos2d/types/ccColor3B;

    .prologue
    .line 173
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    instance-of v0, v0, Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 182
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    instance-of v0, v0, Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_4

    .line 186
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 191
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    instance-of v0, v0, Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_5

    .line 195
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 200
    :cond_2
    :goto_2
    return-void

    .line 179
    :cond_3
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    invoke-interface {v0, p1}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    goto :goto_0

    .line 188
    :cond_4
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    invoke-interface {v0, p1}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    goto :goto_1

    .line 197
    :cond_5
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    invoke-interface {v0, p1}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    goto :goto_2
.end method

.method public setDisabledImage(Lorg/cocos2d/nodes/CCNode;)V
    .locals 3
    .param p1, "image"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    if-eq p1, v0, :cond_2

    .line 67
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 70
    :cond_0
    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p1, v2, v2}, Lorg/cocos2d/nodes/CCNode;->setAnchorPoint(FF)V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 73
    invoke-virtual {p0, p1}, Lorg/cocos2d/menus/CCMenuItemSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 75
    :cond_1
    iput-object p1, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    .line 78
    :cond_2
    return-void
.end method

.method public setFlipX(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 241
    iget-boolean v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->flipX_:Z

    if-eq v0, p1, :cond_2

    .line 242
    iput-boolean p1, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->flipX_:Z

    .line 243
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    instance-of v0, v0, Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSprite;->setFlipX(Z)V

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    instance-of v0, v0, Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSprite;->setFlipX(Z)V

    .line 247
    :cond_1
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    instance-of v0, v0, Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSprite;->setFlipX(Z)V

    .line 250
    :cond_2
    return-void
.end method

.method public setFlipY(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 257
    iget-boolean v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->flipY_:Z

    if-eq v0, p1, :cond_2

    .line 258
    iput-boolean p1, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->flipY_:Z

    .line 259
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    instance-of v0, v0, Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSprite;->setFlipY(Z)V

    .line 261
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    instance-of v0, v0, Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSprite;->setFlipY(Z)V

    .line 263
    :cond_1
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    instance-of v0, v0, Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSprite;->setFlipY(Z)V

    .line 266
    :cond_2
    return-void
.end method

.method public setIsEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 411
    invoke-super {p0, p1}, Lorg/cocos2d/menus/CCMenuItem;->setIsEnabled(Z)V

    .line 413
    if-eqz p1, :cond_2

    .line 414
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 415
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 418
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 437
    :cond_1
    :goto_0
    return-void

    .line 422
    :cond_2
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_4

    .line 423
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 424
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_3

    .line 425
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 427
    :cond_3
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    goto :goto_0

    .line 429
    :cond_4
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 430
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    goto :goto_0
.end method

.method public setNormalImage(Lorg/cocos2d/nodes/CCNode;)V
    .locals 3
    .param p1, "image"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 28
    sget-boolean v0, Lorg/cocos2d/menus/CCMenuItemSprite;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Cann\'t set normalImage_ to be null!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 29
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    if-eq p1, v0, :cond_1

    .line 30
    invoke-virtual {p1, v1, v1}, Lorg/cocos2d/nodes/CCNode;->setAnchorPoint(FF)V

    .line 31
    invoke-virtual {p1, v2}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 33
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {p0, v0, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 34
    invoke-virtual {p0, p1}, Lorg/cocos2d/menus/CCMenuItemSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 36
    iput-object p1, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    .line 39
    :cond_1
    return-void
.end method

.method public setOnlySelectedMode(Z)V
    .locals 0
    .param p1, "tag"    # Z

    .prologue
    .line 319
    iput-boolean p1, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->isOnlySelectedMode:Z

    .line 320
    return-void
.end method

.method public setOpacity(I)V
    .locals 1
    .param p1, "opacity"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    instance-of v0, v0, Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 151
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    instance-of v0, v0, Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 160
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    instance-of v0, v0, Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_5

    .line 164
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 169
    :cond_2
    :goto_2
    return-void

    .line 148
    :cond_3
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    invoke-interface {v0, p1}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setOpacity(I)V

    goto :goto_0

    .line 157
    :cond_4
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    invoke-interface {v0, p1}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setOpacity(I)V

    goto :goto_1

    .line 166
    :cond_5
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    invoke-interface {v0, p1}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setOpacity(I)V

    goto :goto_2
.end method

.method public setOpacityModifyRGB(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 222
    return-void
.end method

.method public setSelectedImage(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "image"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    const/4 v1, 0x0

    .line 47
    sget-boolean v0, Lorg/cocos2d/menus/CCMenuItemSprite;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Cann\'t set selectedImage_ to be null!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    if-eq p1, v0, :cond_1

    .line 49
    invoke-virtual {p1, v1, v1}, Lorg/cocos2d/nodes/CCNode;->setAnchorPoint(FF)V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 52
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 53
    invoke-virtual {p0, p1}, Lorg/cocos2d/menus/CCMenuItemSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 55
    iput-object p1, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    .line 58
    :cond_1
    return-void
.end method

.method public setSelectedLogicalHandle(Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;)V
    .locals 0
    .param p1, "selectedHandle"    # Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;

    .prologue
    .line 325
    iput-object p1, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedHandle:Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;

    .line 326
    return-void
.end method

.method public unselected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 396
    invoke-super {p0}, Lorg/cocos2d/menus/CCMenuItem;->unselected()V

    .line 398
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->normalImage_:Lorg/cocos2d/nodes/CCNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 399
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->selectedImage_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 402
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite;->disabledImage_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 406
    :cond_1
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItemSprite;->runUnSelectZoomAction()V

    .line 407
    return-void
.end method
