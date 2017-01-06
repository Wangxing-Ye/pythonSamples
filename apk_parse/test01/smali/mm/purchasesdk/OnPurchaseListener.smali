.class public interface abstract Lmm/purchasesdk/OnPurchaseListener;
.super Ljava/lang/Object;
.source "o"


# static fields
.field public static final LEFTDAY:Ljava/lang/String; = "LeftDay"

.field public static final ORDERID:Ljava/lang/String; = "OrderId"

.field public static final ORDERTYPE:Ljava/lang/String; = "OrderType"

.field public static final PAYCODE:Ljava/lang/String; = "Paycode"

.field public static final TRADEID:Ljava/lang/String; = "TradeID"


# virtual methods
.method public abstract onAfterApply()V
.end method

.method public abstract onAfterDownload()V
.end method

.method public abstract onBeforeApply()V
.end method

.method public abstract onBeforeDownload()V
.end method

.method public abstract onBillingFinish(Ljava/lang/String;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onInitFinish(Ljava/lang/String;)V
.end method

.method public abstract onQueryFinish(Ljava/lang/String;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUnsubscribeFinish(Ljava/lang/String;)V
.end method
