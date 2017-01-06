.class public Lcom/sns/game/actions/CCLogicalCallBack;
.super Lorg/cocos2d/actions/instant/CCInstantAction;
.source "CCLogicalCallBack.java"


# instance fields
.field private callArgData:[Ljava/lang/Object;

.field private callBack:Lcom/sns/game/util/LogicalHandleCallBack;

.field private callTarget:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/sns/game/util/LogicalHandleCallBack;)V
    .locals 0
    .param p1, "lgcalCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sns/game/actions/CCLogicalCallBack;->callBack:Lcom/sns/game/util/LogicalHandleCallBack;

    .line 18
    return-void
.end method

.method private varargs constructor <init>(Lcom/sns/game/util/LogicalHandleCallBack;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "lgcalCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "argData"    # [Ljava/lang/Object;

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sns/game/actions/CCLogicalCallBack;->callBack:Lcom/sns/game/util/LogicalHandleCallBack;

    .line 23
    iput-object p2, p0, Lcom/sns/game/actions/CCLogicalCallBack;->callTarget:Ljava/lang/Object;

    .line 24
    iput-object p3, p0, Lcom/sns/game/actions/CCLogicalCallBack;->callArgData:[Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public static action(Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/actions/CCLogicalCallBack;
    .locals 1
    .param p0, "lgcalCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;

    .prologue
    .line 28
    new-instance v0, Lcom/sns/game/actions/CCLogicalCallBack;

    invoke-direct {v0, p0}, Lcom/sns/game/actions/CCLogicalCallBack;-><init>(Lcom/sns/game/util/LogicalHandleCallBack;)V

    return-object v0
.end method

.method public static varargs action(Lcom/sns/game/util/LogicalHandleCallBack;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sns/game/actions/CCLogicalCallBack;
    .locals 1
    .param p0, "lgcalCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "argData"    # [Ljava/lang/Object;

    .prologue
    .line 32
    new-instance v0, Lcom/sns/game/actions/CCLogicalCallBack;

    invoke-direct {v0, p0, p1, p2}, Lcom/sns/game/actions/CCLogicalCallBack;-><init>(Lcom/sns/game/util/LogicalHandleCallBack;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 4
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 39
    :try_start_0
    invoke-super {p0, p1}, Lorg/cocos2d/actions/instant/CCInstantAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 41
    iget-object v1, p0, Lcom/sns/game/actions/CCLogicalCallBack;->callBack:Lcom/sns/game/util/LogicalHandleCallBack;

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/sns/game/actions/CCLogicalCallBack;->callTarget:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sns/game/actions/CCLogicalCallBack;->callArgData:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/sns/game/actions/CCLogicalCallBack;->callBack:Lcom/sns/game/util/LogicalHandleCallBack;

    iget-object v2, p0, Lcom/sns/game/actions/CCLogicalCallBack;->callTarget:Ljava/lang/Object;

    iget-object v3, p0, Lcom/sns/game/actions/CCLogicalCallBack;->callArgData:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 53
    :cond_1
    :goto_0
    return-void

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/sns/game/actions/CCLogicalCallBack;->callBack:Lcom/sns/game/util/LogicalHandleCallBack;

    invoke-virtual {v1}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
