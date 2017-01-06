.class Lcom/sns/game/dialog/CCGameTopDialog$1$1;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCGameTopDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/dialog/CCGameTopDialog$1;->updateHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sns/game/dialog/CCGameTopDialog$1;


# direct methods
.method constructor <init>(Lcom/sns/game/dialog/CCGameTopDialog$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/dialog/CCGameTopDialog$1$1;->this$1:Lcom/sns/game/dialog/CCGameTopDialog$1;

    .line 464
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 468
    move-object v0, p1

    check-cast v0, Landroid/content/DialogInterface;

    .line 469
    .local v0, "dialog":Landroid/content/DialogInterface;
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 471
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog$1$1;->this$1:Lcom/sns/game/dialog/CCGameTopDialog$1;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;
    invoke-static {v1}, Lcom/sns/game/dialog/CCGameTopDialog$1;->access$0(Lcom/sns/game/dialog/CCGameTopDialog$1;)Lcom/sns/game/dialog/CCGameTopDialog;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sns/game/dialog/CCGameTopDialog;->setIsTouchEnabled(Z)V

    .line 472
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog$1$1;->this$1:Lcom/sns/game/dialog/CCGameTopDialog$1;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;
    invoke-static {v1}, Lcom/sns/game/dialog/CCGameTopDialog$1;->access$0(Lcom/sns/game/dialog/CCGameTopDialog$1;)Lcom/sns/game/dialog/CCGameTopDialog;

    move-result-object v1

    # invokes: Lcom/sns/game/dialog/CCGameTopDialog;->onUpdateGameRankingResultCallBack(Z)V
    invoke-static {v1, v2}, Lcom/sns/game/dialog/CCGameTopDialog;->access$8(Lcom/sns/game/dialog/CCGameTopDialog;Z)V

    .line 473
    return-void
.end method
