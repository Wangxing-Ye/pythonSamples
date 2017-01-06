.class public Lorg/cocos2d/actions/CCTimer;
.super Ljava/lang/Object;
.source "CCTimer.java"


# instance fields
.field private callback:Lorg/cocos2d/actions/UpdateCallback;

.field private elapsed:F

.field private interval:F

.field private invocation:Ljava/lang/reflect/Method;

.field private selector:Ljava/lang/String;

.field private target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "targ"    # Ljava/lang/Object;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/cocos2d/actions/CCTimer;-><init>(Ljava/lang/Object;Ljava/lang/String;F)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;F)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Object;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "seconds"    # F

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/cocos2d/actions/CCTimer;->target:Ljava/lang/Object;

    .line 40
    iput-object p2, p0, Lorg/cocos2d/actions/CCTimer;->selector:Ljava/lang/String;

    .line 42
    iput p3, p0, Lorg/cocos2d/actions/CCTimer;->interval:F

    .line 43
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lorg/cocos2d/actions/CCTimer;->elapsed:F

    .line 46
    :try_start_0
    iget-object v2, p0, Lorg/cocos2d/actions/CCTimer;->target:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 47
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/cocos2d/actions/CCTimer;->invocation:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/cocos2d/actions/UpdateCallback;F)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Object;
    .param p2, "c"    # Lorg/cocos2d/actions/UpdateCallback;
    .param p3, "seconds"    # F

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/cocos2d/actions/CCTimer;->target:Ljava/lang/Object;

    .line 56
    iput-object p2, p0, Lorg/cocos2d/actions/CCTimer;->callback:Lorg/cocos2d/actions/UpdateCallback;

    .line 58
    iput p3, p0, Lorg/cocos2d/actions/CCTimer;->interval:F

    .line 59
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/cocos2d/actions/CCTimer;->elapsed:F

    .line 60
    return-void
.end method


# virtual methods
.method public getCallback()Lorg/cocos2d/actions/UpdateCallback;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/cocos2d/actions/CCTimer;->callback:Lorg/cocos2d/actions/UpdateCallback;

    return-object v0
.end method

.method public getInterval()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/cocos2d/actions/CCTimer;->interval:F

    return v0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/cocos2d/actions/CCTimer;->selector:Ljava/lang/String;

    return-object v0
.end method

.method public setInterval(F)V
    .locals 0
    .param p1, "i"    # F

    .prologue
    .line 63
    iput p1, p0, Lorg/cocos2d/actions/CCTimer;->interval:F

    .line 64
    return-void
.end method

.method public update(F)V
    .locals 7
    .param p1, "dt"    # F

    .prologue
    const/4 v6, 0x0

    .line 72
    iget v1, p0, Lorg/cocos2d/actions/CCTimer;->elapsed:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 73
    iput v6, p0, Lorg/cocos2d/actions/CCTimer;->elapsed:F

    .line 77
    :goto_0
    iget v1, p0, Lorg/cocos2d/actions/CCTimer;->elapsed:F

    iget v2, p0, Lorg/cocos2d/actions/CCTimer;->interval:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 78
    iget-object v1, p0, Lorg/cocos2d/actions/CCTimer;->callback:Lorg/cocos2d/actions/UpdateCallback;

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Lorg/cocos2d/actions/CCTimer;->callback:Lorg/cocos2d/actions/UpdateCallback;

    iget v2, p0, Lorg/cocos2d/actions/CCTimer;->elapsed:F

    invoke-interface {v1, v2}, Lorg/cocos2d/actions/UpdateCallback;->update(F)V

    .line 87
    :goto_1
    iput v6, p0, Lorg/cocos2d/actions/CCTimer;->elapsed:F

    .line 89
    :cond_0
    return-void

    .line 75
    :cond_1
    iget v1, p0, Lorg/cocos2d/actions/CCTimer;->elapsed:F

    add-float/2addr v1, p1

    iput v1, p0, Lorg/cocos2d/actions/CCTimer;->elapsed:F

    goto :goto_0

    .line 82
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/cocos2d/actions/CCTimer;->invocation:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/cocos2d/actions/CCTimer;->target:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lorg/cocos2d/actions/CCTimer;->elapsed:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
