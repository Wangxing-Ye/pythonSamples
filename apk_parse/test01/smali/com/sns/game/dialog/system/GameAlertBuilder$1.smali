.class Lcom/sns/game/dialog/system/GameAlertBuilder$1;
.super Ljava/lang/Object;
.source "GameAlertBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/dialog/system/GameAlertBuilder;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/dialog/system/GameAlertBuilder;


# direct methods
.method constructor <init>(Lcom/sns/game/dialog/system/GameAlertBuilder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/dialog/system/GameAlertBuilder$1;->this$0:Lcom/sns/game/dialog/system/GameAlertBuilder;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 23
    packed-switch p2, :pswitch_data_0

    .line 27
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 25
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method
