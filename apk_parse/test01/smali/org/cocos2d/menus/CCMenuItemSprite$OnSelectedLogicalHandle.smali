.class public abstract Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;
.super Ljava/lang/Object;
.source "CCMenuItemSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/menus/CCMenuItemSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OnSelectedLogicalHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2d/menus/CCMenuItemSprite;


# direct methods
.method public constructor <init>(Lorg/cocos2d/menus/CCMenuItemSprite;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;->this$0:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract handleLogical(Lorg/cocos2d/menus/CCMenuItemSprite;)Z
.end method

.method protected handleTouch(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "itemSp"    # Lorg/cocos2d/menus/CCMenuItem;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 349
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v0

    .line 352
    :cond_1
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;->this$0:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;->this$0:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;->this$0:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, p2}, Lorg/cocos2d/menus/CCMenuItemSprite;->isItemTouched(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;->this$0:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->selected()V

    .line 357
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;->this$0:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;->this$0:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->safeActivate()V

    .line 360
    const/4 v0, 0x1

    goto :goto_0
.end method
