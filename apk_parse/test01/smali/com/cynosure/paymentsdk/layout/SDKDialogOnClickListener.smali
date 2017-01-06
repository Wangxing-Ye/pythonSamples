.class public abstract Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;
.super Ljava/lang/Object;
.source "SDKDialogOnClickListener.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCanceled()V
.end method

.method public abstract onConfirm()V
.end method

.method public abstract onFailed()V
.end method

.method public abstract onSuccess()V
.end method
