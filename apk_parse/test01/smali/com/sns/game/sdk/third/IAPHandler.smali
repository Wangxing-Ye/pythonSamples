.class public Lcom/sns/game/sdk/third/IAPHandler;
.super Landroid/os/Handler;
.source "IAPHandler.java"


# static fields
.field public static final BILL_FINISH:I = 0x2711

.field public static final INIT_FINISH:I = 0x2710

.field public static final QUERY_FINISH:I = 0x2712

.field public static final UNSUB_FINISH:I = 0x2713


# instance fields
.field private context:Lcom/sns/game/activity/GameActivityss;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 22
    check-cast p1, Lcom/sns/game/activity/GameActivityss;

    .end local p1    # "context":Landroid/app/Activity;
    iput-object p1, p0, Lcom/sns/game/sdk/third/IAPHandler;->context:Lcom/sns/game/activity/GameActivityss;

    .line 23
    return-void
.end method

.method private initShow(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 41
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 28
    iget v0, p1, Landroid/os/Message;->what:I

    .line 29
    .local v0, "what":I
    packed-switch v0, :pswitch_data_0

    .line 37
    :goto_0
    return-void

    .line 32
    :pswitch_0
    iget-object v1, p0, Lcom/sns/game/sdk/third/IAPHandler;->context:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v1}, Lcom/sns/game/activity/GameActivityss;->dismissProgressDialog()V

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sns/game/sdk/third/IAPHandler;->context:Lcom/sns/game/activity/GameActivityss;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 46
    iget-object v1, p0, Lcom/sns/game/sdk/third/IAPHandler;->context:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v1}, Lcom/sns/game/activity/GameActivityss;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 47
    if-nez p2, :cond_0

    const-string p2, "Undefined error"

    .end local p2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 48
    const-string v1, "OK"

    new-instance v2, Lcom/sns/game/sdk/third/IAPHandler$1;

    invoke-direct {v2, p0}, Lcom/sns/game/sdk/third/IAPHandler$1;-><init>(Lcom/sns/game/sdk/third/IAPHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 54
    return-void
.end method
