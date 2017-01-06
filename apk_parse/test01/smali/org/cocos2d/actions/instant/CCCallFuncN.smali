.class public Lorg/cocos2d/actions/instant/CCCallFuncN;
.super Lorg/cocos2d/actions/instant/CCCallFunc;
.source "CCCallFuncN.java"


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0
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
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2d/actions/instant/CCCallFunc;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 19
    return-void
.end method

.method public static bridge synthetic action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/actions/instant/CCCallFuncN;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFuncN;

    move-result-object v0

    return-object v0
.end method

.method public static action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFuncN;
    .locals 4
    .param p0, "t"    # Ljava/lang/Object;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 10
    new-instance v0, Lorg/cocos2d/actions/instant/CCCallFuncN;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-direct {v0, p0, p1, v1}, Lorg/cocos2d/actions/instant/CCCallFuncN;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 27
    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/actions/instant/CCCallFuncN;->invocation:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/cocos2d/actions/instant/CCCallFuncN;->targetCallback:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/cocos2d/actions/instant/CCCallFuncN;->target:Lorg/cocos2d/nodes/CCNode;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    goto :goto_0
.end method
