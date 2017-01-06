.class Lcom/sns/game/layer/CCSHNewLayer$1;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCSHNewLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCSHNewLayer;->sharedCallBack(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCSHNewLayer;

.field private final synthetic val$data:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCSHNewLayer;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCSHNewLayer$1;->this$0:Lcom/sns/game/layer/CCSHNewLayer;

    iput-object p2, p0, Lcom/sns/game/layer/CCSHNewLayer$1;->val$data:[Ljava/lang/Object;

    .line 434
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 5

    .prologue
    .line 439
    :try_start_0
    iget-object v3, p0, Lcom/sns/game/layer/CCSHNewLayer$1;->val$data:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 440
    .local v1, "gold":I
    iget-object v3, p0, Lcom/sns/game/layer/CCSHNewLayer$1;->val$data:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 441
    .local v2, "isRealTimeUpdate":Z
    iget-object v3, p0, Lcom/sns/game/layer/CCSHNewLayer$1;->this$0:Lcom/sns/game/layer/CCSHNewLayer;

    invoke-virtual {v3, v1, v2}, Lcom/sns/game/layer/CCSHNewLayer;->updateUserGold(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v1    # "gold":I
    .end local v2    # "isRealTimeUpdate":Z
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
