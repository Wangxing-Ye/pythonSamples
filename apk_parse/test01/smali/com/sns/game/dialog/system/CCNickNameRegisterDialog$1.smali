.class Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$1;
.super Ljava/lang/Object;
.source "CCNickNameRegisterDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->setCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;


# direct methods
.method constructor <init>(Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$1;->this$0:Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$1;->this$0:Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;

    invoke-virtual {v0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->isTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$1;->this$0:Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;

    invoke-virtual {v0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->isSafePressBtn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$1;->this$0:Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->setButtonTag(I)V

    .line 224
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$1;->this$0:Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;

    invoke-virtual {v0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->cancel()V

    .line 227
    :cond_0
    return-void
.end method
