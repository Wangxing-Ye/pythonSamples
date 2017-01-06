.class public Lcom/sns/game/dialog/system/GameAlertBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "GameAlertBuilder.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/system/GameAlertBuilder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 18
    new-instance v0, Lcom/sns/game/dialog/system/GameAlertBuilder$1;

    invoke-direct {v0, p0}, Lcom/sns/game/dialog/system/GameAlertBuilder$1;-><init>(Lcom/sns/game/dialog/system/GameAlertBuilder;)V

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/system/GameAlertBuilder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 31
    return-void
.end method

.method public static alertBuilder(Landroid/content/Context;)Lcom/sns/game/dialog/system/GameAlertBuilder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    new-instance v0, Lcom/sns/game/dialog/system/GameAlertBuilder;

    invoke-direct {v0, p0}, Lcom/sns/game/dialog/system/GameAlertBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
