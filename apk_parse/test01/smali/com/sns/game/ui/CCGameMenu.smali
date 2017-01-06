.class public Lcom/sns/game/ui/CCGameMenu;
.super Lorg/cocos2d/menus/CCMenu;
.source "CCGameMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sns/game/ui/CCGameMenu$OnSelectedItemSettingListener;
    }
.end annotation


# instance fields
.field private selectedItemSettingListener_:Lcom/sns/game/ui/CCGameMenu$OnSelectedItemSettingListener;


# direct methods
.method private varargs constructor <init>([Lorg/cocos2d/menus/CCMenuItem;)V
    .locals 4
    .param p1, "items"    # [Lorg/cocos2d/menus/CCMenuItem;

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1}, Lorg/cocos2d/menus/CCMenu;-><init>([Lorg/cocos2d/menus/CCMenuItem;)V

    .line 23
    invoke-virtual {p0, v1, v1}, Lcom/sns/game/ui/CCGameMenu;->setPosition(FF)V

    .line 24
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 27
    return-void

    .line 24
    :cond_0
    aget-object v0, p1, v1

    .line 25
    .local v0, "item":Lorg/cocos2d/menus/CCMenuItem;
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameMenu;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/cocos2d/menus/CCMenuItem;->setUserData(Ljava/lang/Object;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private dispatchItemSelected(Lorg/cocos2d/menus/CCMenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Lorg/cocos2d/menus/CCMenuItem;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItemSettingListener_:Lcom/sns/game/ui/CCGameMenu$OnSelectedItemSettingListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItemSettingListener_:Lcom/sns/game/ui/CCGameMenu$OnSelectedItemSettingListener;

    invoke-interface {v0, p1}, Lcom/sns/game/ui/CCGameMenu$OnSelectedItemSettingListener;->itemSelected(Lorg/cocos2d/menus/CCMenuItem;)V

    .line 109
    :cond_0
    return-void
.end method

.method private dispatchItemUnSelect(Lorg/cocos2d/menus/CCMenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Lorg/cocos2d/menus/CCMenuItem;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItemSettingListener_:Lcom/sns/game/ui/CCGameMenu$OnSelectedItemSettingListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItemSettingListener_:Lcom/sns/game/ui/CCGameMenu$OnSelectedItemSettingListener;

    invoke-interface {v0, p1}, Lcom/sns/game/ui/CCGameMenu$OnSelectedItemSettingListener;->itemUnSelect(Lorg/cocos2d/menus/CCMenuItem;)V

    .line 131
    :cond_0
    return-void
.end method

.method private dispatchKeepSelected(Lorg/cocos2d/menus/CCMenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Lorg/cocos2d/menus/CCMenuItem;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItemSettingListener_:Lcom/sns/game/ui/CCGameMenu$OnSelectedItemSettingListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItemSettingListener_:Lcom/sns/game/ui/CCGameMenu$OnSelectedItemSettingListener;

    invoke-interface {v0, p1}, Lcom/sns/game/ui/CCGameMenu$OnSelectedItemSettingListener;->keepSelected(Lorg/cocos2d/menus/CCMenuItem;)V

    .line 120
    :cond_0
    return-void
.end method

.method private isItemTouched(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "menuItem"    # Lorg/cocos2d/menus/CCMenuItem;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameMenu;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameMenu;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/cocos2d/nodes/CCNode;->convertTouchToNodeSpace(Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 145
    .local v1, "touchPoint":Lorg/cocos2d/types/CGPoint;
    :goto_0
    invoke-virtual {p1}, Lorg/cocos2d/menus/CCMenuItem;->getBoundingBox()Lorg/cocos2d/types/CGRect;

    move-result-object v2

    .line 144
    invoke-static {v2, v1}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v2

    .line 148
    .end local v1    # "touchPoint":Lorg/cocos2d/types/CGPoint;
    :goto_1
    return v2

    .line 143
    :cond_0
    invoke-static {}, Lcom/sns/game/util/TouchManager;->getManager()Lcom/sns/game/util/TouchManager;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lcom/sns/game/util/TouchManager;->makeCGPoint(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 148
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static varargs menu([Lorg/cocos2d/menus/CCMenuItem;)Lcom/sns/game/ui/CCGameMenu;
    .locals 1
    .param p0, "items"    # [Lorg/cocos2d/menus/CCMenuItem;

    .prologue
    .line 31
    new-instance v0, Lcom/sns/game/ui/CCGameMenu;

    invoke-direct {v0, p0}, Lcom/sns/game/ui/CCGameMenu;-><init>([Lorg/cocos2d/menus/CCMenuItem;)V

    return-object v0
.end method

.method public static bridge varargs synthetic menu([Lorg/cocos2d/menus/CCMenuItem;)Lorg/cocos2d/menus/CCMenu;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/sns/game/ui/CCGameMenu;->menu([Lorg/cocos2d/menus/CCMenuItem;)Lcom/sns/game/ui/CCGameMenu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addDefaultSelectedItemSettingListener()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/sns/game/ui/CCGameMenu$1;

    invoke-direct {v0, p0}, Lcom/sns/game/ui/CCGameMenu$1;-><init>(Lcom/sns/game/ui/CCGameMenu;)V

    iput-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItemSettingListener_:Lcom/sns/game/ui/CCGameMenu$OnSelectedItemSettingListener;

    .line 188
    return-void
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 44
    iget-object v1, p0, Lcom/sns/game/ui/CCGameMenu;->state:Lorg/cocos2d/menus/CCMenu$MenuState;

    sget-object v2, Lorg/cocos2d/menus/CCMenu$MenuState;->kMenuStateWaiting:Lorg/cocos2d/menus/CCMenu$MenuState;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sns/game/ui/CCGameMenu;->visible_:Z

    if-nez v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sns/game/ui/CCGameMenu;->itemForTouch(Landroid/view/MotionEvent;)Lorg/cocos2d/menus/CCMenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    .line 48
    iget-object v1, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    invoke-virtual {v1}, Lorg/cocos2d/menus/CCMenuItem;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    invoke-direct {p0, v1, p1}, Lcom/sns/game/ui/CCGameMenu;->isItemTouched(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItem;->selected()V

    .line 52
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    invoke-direct {p0, v0}, Lcom/sns/game/ui/CCGameMenu;->dispatchItemSelected(Lorg/cocos2d/menus/CCMenuItem;)V

    .line 53
    sget-object v0, Lorg/cocos2d/menus/CCMenu$MenuState;->kMenuStateTrackingTouch:Lorg/cocos2d/menus/CCMenu$MenuState;

    iput-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->state:Lorg/cocos2d/menus/CCMenu$MenuState;

    .line 54
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->state:Lorg/cocos2d/menus/CCMenu$MenuState;

    sget-object v1, Lorg/cocos2d/menus/CCMenu$MenuState;->kMenuStateTrackingTouch:Lorg/cocos2d/menus/CCMenu$MenuState;

    if-ne v0, v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItem;->unselected()V

    .line 69
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    invoke-direct {p0, v0}, Lcom/sns/game/ui/CCGameMenu;->dispatchItemUnSelect(Lorg/cocos2d/menus/CCMenuItem;)V

    .line 70
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    invoke-direct {p0, v0, p1}, Lcom/sns/game/ui/CCGameMenu;->isItemTouched(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItem;->safeActivate()V

    .line 75
    :cond_0
    sget-object v0, Lorg/cocos2d/menus/CCMenu$MenuState;->kMenuStateWaiting:Lorg/cocos2d/menus/CCMenu$MenuState;

    iput-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->state:Lorg/cocos2d/menus/CCMenu$MenuState;

    .line 76
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->state:Lorg/cocos2d/menus/CCMenu$MenuState;

    sget-object v1, Lorg/cocos2d/menus/CCMenu$MenuState;->kMenuStateTrackingTouch:Lorg/cocos2d/menus/CCMenu$MenuState;

    if-ne v0, v1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    invoke-direct {p0, v0, p1}, Lcom/sns/game/ui/CCGameMenu;->isItemTouched(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItem;->unselected()V

    .line 90
    iget-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    invoke-direct {p0, v0}, Lcom/sns/game/ui/CCGameMenu;->dispatchKeepSelected(Lorg/cocos2d/menus/CCMenuItem;)V

    .line 94
    :cond_0
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeSelf()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lorg/cocos2d/menus/CCMenu;->removeSelf()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItemSettingListener_:Lcom/sns/game/ui/CCGameMenu$OnSelectedItemSettingListener;

    .line 39
    return-void
.end method

.method public setSelectedItemSettingListener(Lcom/sns/game/ui/CCGameMenu$OnSelectedItemSettingListener;)V
    .locals 0
    .param p1, "selectedItemSettingListener"    # Lcom/sns/game/ui/CCGameMenu$OnSelectedItemSettingListener;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sns/game/ui/CCGameMenu;->selectedItemSettingListener_:Lcom/sns/game/ui/CCGameMenu$OnSelectedItemSettingListener;

    .line 160
    return-void
.end method
