.class public interface abstract Lcom/unipay/account/AccountAPI$OnSwitchAccountResultListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/account/AccountAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSwitchAccountResultListener"
.end annotation


# virtual methods
.method public abstract onAccountSwitched()V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onLogout()V
.end method
