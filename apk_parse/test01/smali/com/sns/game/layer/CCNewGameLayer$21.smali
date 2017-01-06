.class Lcom/sns/game/layer/CCNewGameLayer$21;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewGameLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewGameLayer;->callBack_selector_killZombie(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCNewGameLayer;

.field private final synthetic val$totalDropGold:I


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewGameLayer;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewGameLayer$21;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    iput p2, p0, Lcom/sns/game/layer/CCNewGameLayer$21;->val$totalDropGold:I

    .line 2559
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 3

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer$21;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    iget v1, p0, Lcom/sns/game/layer/CCNewGameLayer$21;->val$totalDropGold:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserGold(IZ)V

    .line 2564
    return-void
.end method
