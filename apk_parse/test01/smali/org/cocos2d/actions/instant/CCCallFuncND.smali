.class public Lorg/cocos2d/actions/instant/CCCallFuncND;
.super Lorg/cocos2d/actions/instant/CCCallFuncN;
.source "CCCallFuncND.java"


# instance fields
.field protected data:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Object;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "d"    # Ljava/lang/Object;
    .param p4, "p"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p4}, Lorg/cocos2d/actions/instant/CCCallFuncN;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 24
    iput-object p3, p0, Lorg/cocos2d/actions/instant/CCCallFuncND;->data:Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public static action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;
    .locals 4
    .param p0, "t"    # Ljava/lang/Object;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "d"    # Ljava/lang/Object;

    .prologue
    .line 13
    new-instance v0, Lorg/cocos2d/actions/instant/CCCallFuncND;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 15
    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 13
    invoke-direct {v0, p0, p1, p2, v1}, Lorg/cocos2d/actions/instant/CCCallFuncND;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 33
    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/actions/instant/CCCallFuncND;->invocation:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/cocos2d/actions/instant/CCCallFuncND;->targetCallback:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/cocos2d/actions/instant/CCCallFuncND;->data:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0
.end method
