.class Lcom/sns/game/layer/CCNewMenuMainLayer$5$1;
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


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewMenuMainLayer$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$5$1;->this$1:Lcom/sns/game/layer/CCNewMenuMainLayer$5;

    .line 547
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 551
    move-object v0, p1

    check-cast v0, Landroid/content/DialogInterface;

    .line 552
    .local v0, "dialog":Landroid/content/DialogInterface;
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 554
    iget-object v1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$5$1;->this$1:Lcom/sns/game/layer/CCNewMenuMainLayer$5;

    # getter for: Lcom/sns/game/layer/CCNewMenuMainLayer$5;->this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;
    invoke-static {v1}, Lcom/sns/game/layer/CCNewMenuMainLayer$5;->access$0(Lcom/sns/game/layer/CCNewMenuMainLayer$5;)Lcom/sns/game/layer/CCNewMenuMainLayer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setIsTouchEnabled(Z)V

    .line 555
    return-void
.end method
