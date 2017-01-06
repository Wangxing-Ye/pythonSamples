.class Lcom/sns/game/dialog/CCGameTopDialog$1$2;
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

.field private final synthetic val$rankType:I


# direct methods
.method constructor <init>(Lcom/sns/game/dialog/CCGameTopDialog$1;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/dialog/CCGameTopDialog$1$2;->this$1:Lcom/sns/game/dialog/CCGameTopDialog$1;

    iput p2, p0, Lcom/sns/game/dialog/CCGameTopDialog$1$2;->val$rankType:I

    .line 475
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 479
    move-object v0, p1

    check-cast v0, Landroid/content/DialogInterface;

    .line 480
    .local v0, "dialog":Landroid/content/DialogInterface;
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 482
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog$1$2;->this$1:Lcom/sns/game/dialog/CCGameTopDialog$1;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;
    invoke-static {v1}, Lcom/sns/game/dialog/CCGameTopDialog$1;->access$0(Lcom/sns/game/dialog/CCGameTopDialog$1;)Lcom/sns/game/dialog/CCGameTopDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sns/game/dialog/CCGameTopDialog;->setIsTouchEnabled(Z)V

    .line 483
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog$1$2;->this$1:Lcom/sns/game/dialog/CCGameTopDialog$1;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;
    invoke-static {v1}, Lcom/sns/game/dialog/CCGameTopDialog$1;->access$0(Lcom/sns/game/dialog/CCGameTopDialog$1;)Lcom/sns/game/dialog/CCGameTopDialog;

    move-result-object v1

    iget v2, p0, Lcom/sns/game/dialog/CCGameTopDialog$1$2;->val$rankType:I

    invoke-virtual {v1, v2}, Lcom/sns/game/dialog/CCGameTopDialog;->updateGameRanking(I)V

    .line 484
    return-void
.end method
