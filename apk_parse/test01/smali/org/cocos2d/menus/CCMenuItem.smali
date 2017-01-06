.class public Lorg/cocos2d/menus/CCMenuItem;
.super Lorg/cocos2d/nodes/CCNode;
.source "CCMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/menus/CCMenuItem$OnPlaySoundEffectListener;,
        Lorg/cocos2d/menus/CCMenuItem$OnSelectedItemSettingListener;
    }
.end annotation


# static fields
.field static _fontSize:I = 0x0

.field static fontName:Ljava/lang/String; = null

.field public static final kCurrentItem:I = -0x3f3fafff

.field public static final kItemSize:I = 0x18

.field public static final kZoomActionTag:I = -0x3f3faffe


# instance fields
.field private changeBoungingBox:Lorg/cocos2d/types/CGRect;

.field private invocation:Ljava/lang/reflect/Method;

.field protected isEnabled_:Z

.field private isSafePressMode:Z

.field protected isSelected_:Z

.field private isUpdateBoundBox:Z

.field private playSoundEffectListener_:Lorg/cocos2d/menus/CCMenuItem$OnPlaySoundEffectListener;

.field private safeResponseTime_:J

.field private selectedItemSettingListener_:Lorg/cocos2d/menus/CCMenuItem$OnSelectedItemSettingListener;

.field protected selector:Ljava/lang/String;

.field private soundEffectResId:I

.field private startTime_:J

.field protected targetCallback:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x18

    sput v0, Lorg/cocos2d/menus/CCMenuItem;->_fontSize:I

    .line 28
    const-string v0, "DroidSans"

    sput-object v0, Lorg/cocos2d/menus/CCMenuItem;->fontName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .param p1, "rec"    # Ljava/lang/Object;
    .param p2, "cb"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 51
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/cocos2d/menus/CCMenuItem;->targetCallback:Ljava/lang/Object;

    .line 53
    iput-object p2, p0, Lorg/cocos2d/menus/CCMenuItem;->selector:Ljava/lang/String;

    .line 55
    invoke-static {v2, v2}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cocos2d/menus/CCMenuItem;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 57
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/cocos2d/menus/CCMenuItem;->invocation:Ljava/lang/reflect/Method;

    .line 58
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 61
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/cocos2d/menus/CCMenuItem;->invocation:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lorg/cocos2d/menus/CCMenuItem;->isEnabled_:Z

    .line 70
    iput-boolean v5, p0, Lorg/cocos2d/menus/CCMenuItem;->isSelected_:Z

    .line 71
    return-void

    .line 62
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public static ccTouchesBegan(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "target"    # Lorg/cocos2d/menus/CCMenuItem;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 258
    if-eqz p0, :cond_0

    .line 260
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p0, p1}, Lorg/cocos2d/menus/CCMenuItem;->isItemTouched(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->selected()V

    .line 266
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->dispatchItemSelected()V

    .line 267
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ccTouchesEnded(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "target"    # Lorg/cocos2d/menus/CCMenuItem;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 293
    if-eqz p0, :cond_0

    .line 294
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->unselected()V

    .line 298
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->dispatchItemUnSelect()V

    .line 299
    invoke-virtual {p0, p1}, Lorg/cocos2d/menus/CCMenuItem;->isItemTouched(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->safeActivate()V

    .line 302
    const/4 v0, 0x1

    .line 306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ccTouchesMoved(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "target"    # Lorg/cocos2d/menus/CCMenuItem;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 276
    if-eqz p0, :cond_0

    .line 277
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0, p1}, Lorg/cocos2d/menus/CCMenuItem;->isItemTouched(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->unselected()V

    .line 283
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->dispatchKeepSelected()V

    .line 284
    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static item(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItem;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "selector"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Lorg/cocos2d/menus/CCMenuItem;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/menus/CCMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private playSoundEffect()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItem;->playSoundEffectListener_:Lorg/cocos2d/menus/CCMenuItem$OnPlaySoundEffectListener;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItem;->playSoundEffectListener_:Lorg/cocos2d/menus/CCMenuItem$OnPlaySoundEffectListener;

    iget v1, p0, Lorg/cocos2d/menus/CCMenuItem;->soundEffectResId:I

    invoke-interface {v0, v1}, Lorg/cocos2d/menus/CCMenuItem$OnPlaySoundEffectListener;->play(I)V

    .line 344
    :cond_0
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 77
    iget-boolean v1, p0, Lorg/cocos2d/menus/CCMenuItem;->isEnabled_:Z

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenuItem;->targetCallback:Ljava/lang/Object;

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iget-object v4, p0, Lorg/cocos2d/menus/CCMenuItem;->invocation:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    :goto_1
    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 80
    :try_start_0
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenuItem;->invocation:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/cocos2d/menus/CCMenuItem;->targetCallback:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 93
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 78
    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 84
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 87
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method

.method public addDefaultPlaySoundEffectListener()V
    .locals 1

    .prologue
    .line 317
    new-instance v0, Lorg/cocos2d/menus/CCMenuItem$1;

    invoke-direct {v0, p0}, Lorg/cocos2d/menus/CCMenuItem$1;-><init>(Lorg/cocos2d/menus/CCMenuItem;)V

    iput-object v0, p0, Lorg/cocos2d/menus/CCMenuItem;->playSoundEffectListener_:Lorg/cocos2d/menus/CCMenuItem$OnPlaySoundEffectListener;

    .line 326
    return-void
.end method

.method public addDefaultSelectedItemSettingListener()V
    .locals 1

    .prologue
    .line 401
    new-instance v0, Lorg/cocos2d/menus/CCMenuItem$2;

    invoke-direct {v0, p0}, Lorg/cocos2d/menus/CCMenuItem$2;-><init>(Lorg/cocos2d/menus/CCMenuItem;)V

    iput-object v0, p0, Lorg/cocos2d/menus/CCMenuItem;->selectedItemSettingListener_:Lorg/cocos2d/menus/CCMenuItem$OnSelectedItemSettingListener;

    .line 422
    return-void
.end method

.method protected dispatchItemSelected()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItem;->selectedItemSettingListener_:Lorg/cocos2d/menus/CCMenuItem$OnSelectedItemSettingListener;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItem;->selectedItemSettingListener_:Lorg/cocos2d/menus/CCMenuItem$OnSelectedItemSettingListener;

    invoke-interface {v0, p0}, Lorg/cocos2d/menus/CCMenuItem$OnSelectedItemSettingListener;->itemSelected(Lorg/cocos2d/menus/CCMenuItem;)V

    .line 364
    :cond_0
    return-void
.end method

.method protected dispatchItemUnSelect()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItem;->selectedItemSettingListener_:Lorg/cocos2d/menus/CCMenuItem$OnSelectedItemSettingListener;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItem;->selectedItemSettingListener_:Lorg/cocos2d/menus/CCMenuItem$OnSelectedItemSettingListener;

    invoke-interface {v0, p0}, Lorg/cocos2d/menus/CCMenuItem$OnSelectedItemSettingListener;->itemUnSelect(Lorg/cocos2d/menus/CCMenuItem;)V

    .line 384
    :cond_0
    return-void
.end method

.method protected dispatchKeepSelected()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItem;->selectedItemSettingListener_:Lorg/cocos2d/menus/CCMenuItem$OnSelectedItemSettingListener;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItem;->selectedItemSettingListener_:Lorg/cocos2d/menus/CCMenuItem$OnSelectedItemSettingListener;

    invoke-interface {v0, p0}, Lorg/cocos2d/menus/CCMenuItem$OnSelectedItemSettingListener;->keepSelected(Lorg/cocos2d/menus/CCMenuItem;)V

    .line 374
    :cond_0
    return-void
.end method

.method public getChangeBoungingBox()Lorg/cocos2d/types/CGRect;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItem;->changeBoungingBox:Lorg/cocos2d/types/CGRect;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lorg/cocos2d/menus/CCMenuItem;->isEnabled_:Z

    return v0
.end method

.method protected isItemTouched(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 246
    :try_start_0
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v2

    .line 247
    invoke-virtual {v2, p1}, Lorg/cocos2d/nodes/CCNode;->convertTouchToNodeSpace(Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 249
    .local v1, "touchPoint":Lorg/cocos2d/types/CGPoint;
    :goto_0
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->getBoundingBox()Lorg/cocos2d/types/CGRect;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v2

    .line 252
    .end local v1    # "touchPoint":Lorg/cocos2d/types/CGPoint;
    :goto_1
    return v2

    .line 247
    :cond_0
    invoke-static {}, Lcom/sns/game/util/TouchManager;->getManager()Lcom/sns/game/util/TouchManager;

    move-result-object v2

    .line 248
    invoke-virtual {v2, p0, p1}, Lcom/sns/game/util/TouchManager;->makeCGPoint(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 252
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isSafePressMode()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lorg/cocos2d/menus/CCMenuItem;->isSafePressMode:Z

    return v0
.end method

.method public isSafePressOperation()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 234
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->isSafePressMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    :goto_0
    return v0

    .line 237
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/cocos2d/menus/CCMenuItem;->startTime_:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lorg/cocos2d/menus/CCMenuItem;->safeResponseTime_:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/cocos2d/menus/CCMenuItem;->startTime_:J

    goto :goto_0

    .line 241
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lorg/cocos2d/menus/CCMenuItem;->isSelected_:Z

    return v0
.end method

.method public isUpdateBoundBox()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lorg/cocos2d/menus/CCMenuItem;->isUpdateBoundBox:Z

    return v0
.end method

.method public rect()Lorg/cocos2d/types/CGRect;
    .locals 7

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->getPositionRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 150
    .local v1, "pos":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->getAnchorPointRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 151
    .local v0, "pnt":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->getContentSizeRef()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    .line 152
    .local v2, "size":Lorg/cocos2d/types/CGSize;
    iget v3, v1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v4, v2, Lorg/cocos2d/types/CGSize;->width:F

    iget v5, v0, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, v1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 153
    iget v5, v2, Lorg/cocos2d/types/CGSize;->height:F

    iget v6, v0, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 154
    iget v5, v2, Lorg/cocos2d/types/CGSize;->width:F

    iget v6, v2, Lorg/cocos2d/types/CGSize;->height:F

    .line 152
    invoke-static {v3, v4, v5, v6}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v3

    return-object v3
.end method

.method public rect(Lorg/cocos2d/types/CGRect;)V
    .locals 7
    .param p1, "ret"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->getPositionRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 163
    .local v1, "pos":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->getAnchorPointRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 164
    .local v0, "pnt":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->getContentSizeRef()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    .line 165
    .local v2, "size":Lorg/cocos2d/types/CGSize;
    iget v3, v1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v4, v2, Lorg/cocos2d/types/CGSize;->width:F

    iget v5, v0, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, v1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 166
    iget v5, v2, Lorg/cocos2d/types/CGSize;->height:F

    iget v6, v0, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 167
    iget v5, v2, Lorg/cocos2d/types/CGSize;->width:F

    iget v6, v2, Lorg/cocos2d/types/CGSize;->height:F

    .line 165
    invoke-virtual {p1, v3, v4, v5, v6}, Lorg/cocos2d/types/CGRect;->set(FFFF)V

    .line 168
    return-void
.end method

.method public safeActivate()V
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/cocos2d/menus/CCMenuItem;->isEnabled_:Z

    if-eqz v0, :cond_0

    .line 100
    iget-boolean v0, p0, Lorg/cocos2d/menus/CCMenuItem;->isSafePressMode:Z

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->isSafePressOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->activate()V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->activate()V

    goto :goto_0
.end method

.method public selected()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/menus/CCMenuItem;->isSelected_:Z

    .line 114
    invoke-direct {p0}, Lorg/cocos2d/menus/CCMenuItem;->playSoundEffect()V

    .line 115
    return-void
.end method

.method public setIsEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lorg/cocos2d/menus/CCMenuItem;->isEnabled_:Z

    .line 136
    return-void
.end method

.method public setPlaySoundEffect(I)V
    .locals 0
    .param p1, "soundID"    # I

    .prologue
    .line 331
    iput p1, p0, Lorg/cocos2d/menus/CCMenuItem;->soundEffectResId:I

    .line 332
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->addDefaultPlaySoundEffectListener()V

    .line 333
    return-void
.end method

.method public setPlaySoundEffect(ILorg/cocos2d/menus/CCMenuItem$OnPlaySoundEffectListener;)V
    .locals 0
    .param p1, "soundID"    # I
    .param p2, "listener"    # Lorg/cocos2d/menus/CCMenuItem$OnPlaySoundEffectListener;

    .prologue
    .line 336
    iput p1, p0, Lorg/cocos2d/menus/CCMenuItem;->soundEffectResId:I

    .line 337
    invoke-virtual {p0, p2}, Lorg/cocos2d/menus/CCMenuItem;->setPlaySoundEffectListener(Lorg/cocos2d/menus/CCMenuItem$OnPlaySoundEffectListener;)V

    .line 338
    return-void
.end method

.method public setPlaySoundEffectListener(Lorg/cocos2d/menus/CCMenuItem$OnPlaySoundEffectListener;)V
    .locals 0
    .param p1, "playSoundEffectListener"    # Lorg/cocos2d/menus/CCMenuItem$OnPlaySoundEffectListener;

    .prologue
    .line 313
    iput-object p1, p0, Lorg/cocos2d/menus/CCMenuItem;->playSoundEffectListener_:Lorg/cocos2d/menus/CCMenuItem$OnPlaySoundEffectListener;

    .line 314
    return-void
.end method

.method public setSafePressMode(Z)V
    .locals 0
    .param p1, "safe"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lorg/cocos2d/menus/CCMenuItem;->isSafePressMode:Z

    .line 214
    return-void
.end method

.method public setSafeResponseTime(F)V
    .locals 2
    .param p1, "safeTime"    # F

    .prologue
    .line 227
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lorg/cocos2d/menus/CCMenuItem;->safeResponseTime_:J

    .line 228
    return-void
.end method

.method public setSelectedItemSettingListener(Lorg/cocos2d/menus/CCMenuItem$OnSelectedItemSettingListener;)V
    .locals 0
    .param p1, "selectedItemSettingListener"    # Lorg/cocos2d/menus/CCMenuItem$OnSelectedItemSettingListener;

    .prologue
    .line 393
    iput-object p1, p0, Lorg/cocos2d/menus/CCMenuItem;->selectedItemSettingListener_:Lorg/cocos2d/menus/CCMenuItem$OnSelectedItemSettingListener;

    .line 394
    return-void
.end method

.method public setUpdateBoundBox(Z)V
    .locals 0
    .param p1, "isUpdateBoundBox"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lorg/cocos2d/menus/CCMenuItem;->isUpdateBoundBox:Z

    .line 178
    return-void
.end method

.method public unselected()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/menus/CCMenuItem;->isSelected_:Z

    .line 122
    return-void
.end method

.method public updateBoundingBox(FFFF)V
    .locals 1
    .param p1, "newx"    # F
    .param p2, "newy"    # F
    .param p3, "neww"    # F
    .param p4, "newh"    # F

    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->isUpdateBoundBox()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {p1, p2, p3, p4}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/menus/CCMenuItem;->changeBoungingBox:Lorg/cocos2d/types/CGRect;

    .line 203
    :cond_0
    return-void
.end method

.method public updateBoundingBox(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;)V
    .locals 4
    .param p1, "newOrigin"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "newSize"    # Lorg/cocos2d/types/CGSize;

    .prologue
    .line 196
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v2, p2, Lorg/cocos2d/types/CGSize;->width:F

    iget v3, p2, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItem;->updateBoundingBox(FFFF)V

    .line 197
    return-void
.end method

.method public updateBoundingBox(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGRect;)V
    .locals 9
    .param p1, "finalRect"    # Lorg/cocos2d/types/CGRect;
    .param p2, "newRect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 187
    iget-object v5, p2, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v5, v5, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v6, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->x:F

    sub-float v3, v5, v6

    .line 188
    .local v3, "x_dv":F
    iget-object v5, p2, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v5, v5, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v6, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float v4, v5, v6

    .line 189
    .local v4, "y_dv":F
    iget-object v5, p2, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v5, v5, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v6, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v6, v6, Lorg/cocos2d/types/CGSize;->width:F

    sub-float v2, v5, v6

    .line 190
    .local v2, "w_dv":F
    iget-object v5, p2, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v5, v5, Lorg/cocos2d/types/CGSize;->height:F

    iget-object v6, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v6, v6, Lorg/cocos2d/types/CGSize;->height:F

    sub-float v0, v5, v6

    .line 191
    .local v0, "h_dv":F
    invoke-virtual {p0}, Lorg/cocos2d/menus/CCMenuItem;->getBoundingBox()Lorg/cocos2d/types/CGRect;

    move-result-object v1

    .line 192
    .local v1, "rect":Lorg/cocos2d/types/CGRect;
    iget-object v5, v1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v5, v5, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v5, v3

    iget-object v6, v1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v6, v4

    iget-object v7, v1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v7, v7, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v7, v2

    iget-object v8, v1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v8, v8, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v8, v0

    invoke-virtual {p0, v5, v6, v7, v8}, Lorg/cocos2d/menus/CCMenuItem;->updateBoundingBox(FFFF)V

    .line 193
    return-void
.end method
