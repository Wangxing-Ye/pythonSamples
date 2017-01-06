.class public Lorg/cocos2d/actions/interval/CCPropertyAction;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCPropertyAction.java"


# instance fields
.field delta_:F

.field from_:F

.field key_:Ljava/lang/String;

.field setMethod_:Ljava/lang/reflect/Method;

.field to_:F


# direct methods
.method protected constructor <init>(FLjava/lang/String;FF)V
    .locals 1
    .param p1, "aDuration"    # F
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "from"    # F
    .param p4, "to"    # F

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 42
    iput-object p2, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->key_:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->setMethod_:Ljava/lang/reflect/Method;

    .line 47
    iput p4, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->to_:F

    .line 48
    iput p3, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->from_:F

    .line 49
    return-void
.end method

.method public static action(FLjava/lang/String;FF)Lorg/cocos2d/actions/interval/CCPropertyAction;
    .locals 1
    .param p0, "aDuration"    # F
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "from"    # F
    .param p3, "to"    # F

    .prologue
    .line 36
    new-instance v0, Lorg/cocos2d/actions/interval/CCPropertyAction;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/cocos2d/actions/interval/CCPropertyAction;-><init>(FLjava/lang/String;FF)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCPropertyAction;->copy()Lorg/cocos2d/actions/interval/CCPropertyAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCPropertyAction;->copy()Lorg/cocos2d/actions/interval/CCPropertyAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCPropertyAction;
    .locals 5

    .prologue
    .line 53
    new-instance v0, Lorg/cocos2d/actions/interval/CCPropertyAction;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->duration:F

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->key_:Ljava/lang/String;

    iget v3, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->from_:F

    iget v4, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->to_:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/actions/interval/CCPropertyAction;-><init>(FLjava/lang/String;FF)V

    return-object v0
.end method

.method public bridge synthetic reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCPropertyAction;->reverse()Lorg/cocos2d/actions/interval/CCPropertyAction;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCPropertyAction;
    .locals 5

    .prologue
    .line 84
    new-instance v0, Lorg/cocos2d/actions/interval/CCPropertyAction;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->duration:F

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->key_:Ljava/lang/String;

    iget v3, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->to_:F

    iget v4, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->from_:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/actions/interval/CCPropertyAction;-><init>(FLjava/lang/String;FF)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 59
    iget v0, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->to_:F

    iget v1, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->from_:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->delta_:F

    .line 60
    return-void
.end method

.method public update(F)V
    .locals 8
    .param p1, "dt"    # F

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->setMethod_:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 66
    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->key_:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->setMethod_:Ljava/lang/reflect/Method;

    .line 68
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->setMethod_:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->target:Lorg/cocos2d/nodes/CCNode;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 69
    iget v5, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->to_:F

    iget v6, p0, Lorg/cocos2d/actions/interval/CCPropertyAction;->delta_:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, p1

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 68
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 80
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method
