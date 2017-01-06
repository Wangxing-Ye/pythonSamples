.class Lcom/cynosure/payment3rd/Pay_wostore$1;
.super Lcom/ld/pay/LdPayCallBack;
.source "Pay_wostore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cynosure/payment3rd/Pay_wostore;->doPay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cynosure/payment3rd/Pay_wostore;


# direct methods
.method constructor <init>(Lcom/cynosure/payment3rd/Pay_wostore;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cynosure/payment3rd/Pay_wostore$1;->this$0:Lcom/cynosure/payment3rd/Pay_wostore;

    .line 257
    invoke-direct {p0}, Lcom/ld/pay/LdPayCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayResult(IILjava/lang/String;)V
    .locals 3
    .param p1, "returnCode"    # I
    .param p2, "money"    # I
    .param p3, "returnMsg"    # Ljava/lang/String;

    .prologue
    .line 261
    const-string v0, "3rdpay"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_wostore$1;->this$0:Lcom/cynosure/payment3rd/Pay_wostore;

    # getter for: Lcom/cynosure/payment3rd/Pay_wostore;->_money:Ljava/lang/String;
    invoke-static {v2}, Lcom/cynosure/payment3rd/Pay_wostore;->access$0(Lcom/cynosure/payment3rd/Pay_wostore;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_wostore$1;->this$0:Lcom/cynosure/payment3rd/Pay_wostore;

    # getter for: Lcom/cynosure/payment3rd/Pay_wostore;->_itemName:Ljava/lang/String;
    invoke-static {v2}, Lcom/cynosure/payment3rd/Pay_wostore;->access$1(Lcom/cynosure/payment3rd/Pay_wostore;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 265
    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_wostore$1;->this$0:Lcom/cynosure/payment3rd/Pay_wostore;

    # getter for: Lcom/cynosure/payment3rd/Pay_wostore;->_appKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/cynosure/payment3rd/Pay_wostore;->access$2(Lcom/cynosure/payment3rd/Pay_wostore;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 266
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 267
    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_wostore$1;->this$0:Lcom/cynosure/payment3rd/Pay_wostore;

    # getter for: Lcom/cynosure/payment3rd/Pay_wostore;->_appName:Ljava/lang/String;
    invoke-static {v2}, Lcom/cynosure/payment3rd/Pay_wostore;->access$3(Lcom/cynosure/payment3rd/Pay_wostore;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 268
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 269
    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_wostore$1;->this$0:Lcom/cynosure/payment3rd/Pay_wostore;

    # getter for: Lcom/cynosure/payment3rd/Pay_wostore;->_cid:Ljava/lang/String;
    invoke-static {v2}, Lcom/cynosure/payment3rd/Pay_wostore;->access$4(Lcom/cynosure/payment3rd/Pay_wostore;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 270
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 271
    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_wostore$1;->this$0:Lcom/cynosure/payment3rd/Pay_wostore;

    # getter for: Lcom/cynosure/payment3rd/Pay_wostore;->_cpchannel:Ljava/lang/String;
    invoke-static {v2}, Lcom/cynosure/payment3rd/Pay_wostore;->access$5(Lcom/cynosure/payment3rd/Pay_wostore;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 273
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 274
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 275
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 276
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 277
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 280
    const-string v0, "xiaofei_s"

    invoke-static {v0}, Lcom/cynosure/paymentsdk/umengSDKInterface;->sendEvent(Ljava/lang/String;)V

    .line 283
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 284
    const-string v0, "xiaofei_f"

    invoke-static {v0}, Lcom/cynosure/paymentsdk/umengSDKInterface;->sendEvent(Ljava/lang/String;)V

    .line 287
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 288
    const-string v0, "xiaofei_c"

    invoke-static {v0}, Lcom/cynosure/paymentsdk/umengSDKInterface;->sendEvent(Ljava/lang/String;)V

    .line 291
    :cond_2
    return-void
.end method
