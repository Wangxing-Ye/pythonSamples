.class Lcom/sns/game/layer/CCNewGameLayer$12;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewGameLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewGameLayer;->intoShmsLglWithCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCNewGameLayer;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewGameLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewGameLayer$12;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    .line 1958
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 1

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer$12;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    # invokes: Lcom/sns/game/layer/CCNewGameLayer;->intoShmsLogical()V
    invoke-static {v0}, Lcom/sns/game/layer/CCNewGameLayer;->access$7(Lcom/sns/game/layer/CCNewGameLayer;)V

    return-void
.end method
