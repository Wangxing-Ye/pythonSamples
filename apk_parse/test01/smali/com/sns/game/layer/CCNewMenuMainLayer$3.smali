.class Lcom/sns/game/layer/CCNewMenuMainLayer$3;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewMenuMainLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewMenuMainLayer;->showGameTopDialogLglCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewMenuMainLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$3;->this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;

    .line 455
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$3;->this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;

    # invokes: Lcom/sns/game/layer/CCNewMenuMainLayer;->showGameTopDialogLogical()V
    invoke-static {v0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->access$0(Lcom/sns/game/layer/CCNewMenuMainLayer;)V

    .line 459
    return-void
.end method
