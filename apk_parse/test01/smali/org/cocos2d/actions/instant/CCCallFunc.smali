.class public Lorg/cocos2d/actions/instant/CCCallFunc;
.super Lorg/cocos2d/actions/instant/CCInstantAction;
.source "CCCallFunc.java"


# instance fields
.field protected invocation:Ljava/lang/reflect/Method;

.field protected partypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected selector:Ljava/lang/String;

.field protected targetCallback:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Object;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "p"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/cocos2d/actions/instant/CCCallFunc;->targetCallback:Ljava/lang/Object;

    .line 33
    iput-object p2, p0, Lorg/cocos2d/actions/instant/CCCallFunc;->selector:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lorg/cocos2d/actions/instant/CCCallFunc;->partypes:[Ljava/lang/Class;

    .line 36
    iget-object v2, p0, Lorg/cocos2d/actions/instant/CCCallFunc;->partypes:[Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 39
    :try_start_0
    iget-object v2, p0, Lorg/cocos2d/actions/instant/CCCallFunc;->targetCallback:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 40
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lorg/cocos2d/actions/instant/CCCallFunc;->selector:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/cocos2d/actions/instant/CCCallFunc;->invocation:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/cocos2d/actions/instant/CCCallFunc;->targetCallback:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 49
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lorg/cocos2d/actions/instant/CCCallFunc;->selector:Ljava/lang/String;

    iget-object v3, p0, Lorg/cocos2d/actions/instant/CCCallFunc;->partypes:[Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/cocos2d/actions/instant/CCCallFunc;->invocation:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 50
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 51
    .restart local v1    # "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public static action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;
    .locals 2
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "selector"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Lorg/cocos2d/actions/instant/CCCallFunc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/cocos2d/actions/instant/CCCallFunc;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/instant/CCCallFunc;->copy()Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/instant/CCCallFunc;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lorg/cocos2d/actions/instant/CCCallFunc;

    iget-object v1, p0, Lorg/cocos2d/actions/instant/CCCallFunc;->targetCallback:Ljava/lang/Object;

    iget-object v2, p0, Lorg/cocos2d/actions/instant/CCCallFunc;->selector:Ljava/lang/String;

    iget-object v3, p0, Lorg/cocos2d/actions/instant/CCCallFunc;->partypes:[Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/actions/instant/CCCallFunc;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/instant/CCInstantAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/instant/CCCallFunc;->copy()Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 4

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lorg/cocos2d/actions/instant/CCCallFunc;->invocation:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/cocos2d/actions/instant/CCCallFunc;->targetCallback:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lorg/cocos2d/actions/instant/CCInstantAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 64
    invoke-virtual {p0}, Lorg/cocos2d/actions/instant/CCCallFunc;->execute()V

    .line 65
    return-void
.end method
