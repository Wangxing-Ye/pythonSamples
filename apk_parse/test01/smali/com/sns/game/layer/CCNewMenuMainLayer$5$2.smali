.class Lcom/sns/game/layer/CCNewMenuMainLayer$5$2;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewMenuMainLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewMenuMainLayer$5;->updateHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sns/game/layer/CCNewMenuMainLayer$5;

.field private final synthetic val$successCallBack:Lcom/sns/game/util/LogicalHandleCallBack;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewMenuMainLayer$5;Lcom/sns/game/util/LogicalHandleCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$5$2;->this$1:Lcom/sns/game/layer/CCNewMenuMainLayer$5;

    iput-object p2, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$5$2;->val$successCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    .line 557
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 561
    move-object v0, p1

    check-cast v0, Landroid/content/DialogInterface;

    .line 562
    .local v0, "dialog":Landroid/content/DialogInterface;
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 564
    iget-object v1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$5$2;->this$1:Lcom/sns/game/layer/CCNewMenuMainLayer$5;

    # getter for: Lcom/sns/game/layer/CCNewMenuMainLayer$5;->this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;
    invoke-static {v1}, Lcom/sns/game/layer/CCNewMenuMainLayer$5;->access$0(Lcom/sns/game/layer/CCNewMenuMainLayer$5;)Lcom/sns/game/layer/CCNewMenuMainLayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setIsTouchEnabled(Z)V

    .line 565
    iget-object v1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$5$2;->this$1:Lcom/sns/game/layer/CCNewMenuMainLayer$5;

    # getter for: Lcom/sns/game/layer/CCNewMenuMainLayer$5;->this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;
    invoke-static {v1}, Lcom/sns/game/layer/CCNewMenuMainLayer$5;->access$0(Lcom/sns/game/layer/CCNewMenuMainLayer$5;)Lcom/sns/game/layer/CCNewMenuMainLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$5$2;->val$successCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    # invokes: Lcom/sns/game/layer/CCNewMenuMainLayer;->upLoadGameScore(Lcom/sns/game/util/LogicalHandleCallBack;)V
    invoke-static {v1, v2}, Lcom/sns/game/layer/CCNewMenuMainLayer;->access$3(Lcom/sns/game/layer/CCNewMenuMainLayer;Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 566
    return-void
.end method
