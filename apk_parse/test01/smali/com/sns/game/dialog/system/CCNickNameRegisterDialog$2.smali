.class Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$2;
.super Ljava/lang/Object;
.source "CCNickNameRegisterDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->setConfirmButton()V
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
    iput-object p1, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$2;->this$0:Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$2;->this$0:Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;

    invoke-virtual {v0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->isTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$2;->this$0:Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;

    invoke-virtual {v0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->isSafePressBtn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$2;->this$0:Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;

    # invokes: Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->registerLogical()V
    invoke-static {v0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->access$0(Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;)V

    .line 247
    :cond_0
    return-void
.end method
