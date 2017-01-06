.class Lcom/cynosure/payment3rd/Pay_yinbeike$1;
.super Ljava/lang/Object;
.source "Pay_yinbeike.java"

# interfaces
.implements Lcom/sshell/minismspay/SshellPayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cynosure/payment3rd/Pay_yinbeike;->doPay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cynosure/payment3rd/Pay_yinbeike;


# direct methods
.method constructor <init>(Lcom/cynosure/payment3rd/Pay_yinbeike;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike$1;->this$0:Lcom/cynosure/payment3rd/Pay_yinbeike;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaymentResponse(ILjava/lang/String;)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 142
    if-nez p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/cynosure/payment3rd/Pay_yinbeike$1;->this$0:Lcom/cynosure/payment3rd/Pay_yinbeike;

    iget-object v0, v0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_activity:Landroid/app/Activity;

    invoke-static {v0, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 145
    const-string v0, "yinpeikepay"

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/cynosure/payment3rd/Pay_yinbeike$1;->this$0:Lcom/cynosure/payment3rd/Pay_yinbeike;

    iget-object v0, v0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9519\u8bef\u4ee3\u7801"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    const-string v0, "yinpeikepay"

    const-string v1, "\u9519\u8bef"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
