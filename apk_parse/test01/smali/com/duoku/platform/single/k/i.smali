.class public Lcom/duoku/platform/single/k/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/duoku/platform/single/k/i;

.field private static f:I


# instance fields
.field private b:Lcom/duoku/platform/single/item/i;

.field private c:Lcom/duoku/platform/single/item/e;

.field private d:Lcom/duoku/platform/single/suspend/q;

.field private e:Z

.field private g:I

.field private h:Lcom/duoku/platform/single/util/H;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/duoku/platform/single/k/i;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/duoku/platform/single/k/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/k/i;->h:Lcom/duoku/platform/single/util/H;

    return-void
.end method

.method public static declared-synchronized a()Lcom/duoku/platform/single/k/i;
    .locals 2

    const-class v1, Lcom/duoku/platform/single/k/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/k/i;->a:Lcom/duoku/platform/single/k/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/k/i;

    invoke-direct {v0}, Lcom/duoku/platform/single/k/i;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/k/i;->a:Lcom/duoku/platform/single/k/i;

    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/duoku/platform/single/k/i;->f:I

    sget-object v0, Lcom/duoku/platform/single/k/i;->a:Lcom/duoku/platform/single/k/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/duoku/platform/single/k/i;->h:Lcom/duoku/platform/single/util/H;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "statisticDownLoad  gameid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/duoku/platform/single/k/i;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    iget v0, p0, Lcom/duoku/platform/single/k/i;->g:I

    sget v1, Lcom/duoku/platform/single/util/a;->iR:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "ads_download"

    const-string v2, ""

    invoke-virtual {v0, v1, p2, v2, v4}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "10007"

    invoke-virtual {v0, p1, v1, p2}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/duoku/platform/single/k/i;->g:I

    sget v1, Lcom/duoku/platform/single/util/a;->iS:I

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "ads_download"

    const-string v2, ""

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "10007"

    invoke-virtual {v0, p1, v1, p2}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/duoku/platform/single/k/i;->g:I

    sget v1, Lcom/duoku/platform/single/util/a;->iT:I

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "inads_download"

    const-string v2, ""

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "10008"

    invoke-virtual {v0, p1, v1, p2}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/duoku/platform/single/k/i;->g:I

    sget v1, Lcom/duoku/platform/single/util/a;->iU:I

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "notice_download"

    const-string v2, ""

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "10009"

    invoke-virtual {v0, p1, v1, p2}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/duoku/platform/single/k/i;->g:I

    sget v1, Lcom/duoku/platform/single/util/a;->iV:I

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "statistics_single_game_download"

    const-string v2, ""

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "10004"

    invoke-virtual {v0, p1, v1, p2}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/duoku/platform/single/k/i;->g:I

    sget v1, Lcom/duoku/platform/single/util/a;->iW:I

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "statistics_single_game_download"

    const-string v2, ""

    invoke-virtual {v0, v1, p2, v2, v4}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "10004"

    invoke-virtual {v0, p1, v1, p2}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/duoku/platform/single/k/i;->g:I

    sget v1, Lcom/duoku/platform/single/util/a;->iX:I

    if-ne v0, v1, :cond_7

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "statistics_suspend2_download"

    const-string v2, ""

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "10004"

    invoke-virtual {v0, p1, v1, p2}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/duoku/platform/single/k/i;->g:I

    sget v1, Lcom/duoku/platform/single/util/a;->iY:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "statistics_boutique_download"

    const-string v2, ""

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "10004"

    invoke-virtual {v0, p1, v1, p2}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-class v1, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "intent_data_dk_down_load_game_data"

    iget-object v2, p0, Lcom/duoku/platform/single/k/i;->b:Lcom/duoku/platform/single/item/i;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "intent_data_dk_down_load_game_type"

    iget v2, p0, Lcom/duoku/platform/single/k/i;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "intent_data_dk_down_load_game_flag"

    sget v2, Lcom/duoku/platform/single/k/i;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/duoku/platform/single/k/i;->d:Lcom/duoku/platform/single/suspend/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/k/i;->d:Lcom/duoku/platform/single/suspend/q;

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/q;->e()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->CROSSRECOMMEND_INIT_FINSIH:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/b;->g()Lcom/duoku/platform/single/item/e;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/k/i;->c:Lcom/duoku/platform/single/item/e;

    iget-object v0, p0, Lcom/duoku/platform/single/k/i;->c:Lcom/duoku/platform/single/item/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/k/i;->c:Lcom/duoku/platform/single/item/e;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/e;->r()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/duoku/platform/single/h/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/k/i;->b(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/duoku/platform/single/k/i;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v0, "\u521d\u59cb\u5316\u672a\u5b8c\u6210\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public a(Lcom/duoku/platform/single/suspend/q;Lcom/duoku/platform/single/item/i;Z)V
    .locals 3

    iput-object p2, p0, Lcom/duoku/platform/single/k/i;->b:Lcom/duoku/platform/single/item/i;

    iput-object p1, p0, Lcom/duoku/platform/single/k/i;->d:Lcom/duoku/platform/single/suspend/q;

    iput-boolean p3, p0, Lcom/duoku/platform/single/k/i;->e:Z

    iget-object v0, p0, Lcom/duoku/platform/single/k/i;->h:Lcom/duoku/platform/single/util/H;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setGameData mDLData = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/single/k/i;->b:Lcom/duoku/platform/single/item/i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/duoku/platform/single/k/i;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/duoku/platform/single/suspend/q;Lcom/duoku/platform/single/item/i;ZI)V
    .locals 3

    iput-object p2, p0, Lcom/duoku/platform/single/k/i;->b:Lcom/duoku/platform/single/item/i;

    iput-object p1, p0, Lcom/duoku/platform/single/k/i;->d:Lcom/duoku/platform/single/suspend/q;

    iput-boolean p3, p0, Lcom/duoku/platform/single/k/i;->e:Z

    sput p4, Lcom/duoku/platform/single/k/i;->f:I

    iget-object v0, p0, Lcom/duoku/platform/single/k/i;->h:Lcom/duoku/platform/single/util/H;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setGameData mDLData = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/single/k/i;->b:Lcom/duoku/platform/single/item/i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/duoku/platform/single/k/i;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v0, 0x1

    invoke-static {p1, p5, p6}, Lcom/duoku/platform/single/util/g;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dk_txt_game_installed"

    invoke-static {p1, v1}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v0

    :cond_0
    iput p7, p0, Lcom/duoku/platform/single/k/i;->g:I

    iget-object v1, p0, Lcom/duoku/platform/single/k/i;->h:Lcom/duoku/platform/single/util/H;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkDownLoad mType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/duoku/platform/single/k/i;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    sget v1, Lcom/duoku/platform/single/util/a;->iR:I

    if-ne p7, v1, :cond_2

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "ads_pv"

    const-string v3, ""

    invoke-virtual {v1, v2, p2, v3, v7}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "10007"

    invoke-virtual {v1, p1, v2, p2}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "game"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/duoku/platform/single/util/g;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/duoku/platform/single/k/i;->h:Lcom/duoku/platform/single/util/H;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkDownLoad file_path = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " file_apk = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_9

    invoke-static {p1, v2}, Lcom/duoku/platform/single/util/g;->a(Landroid/content/Context;Ljava/io/File;)V

    goto/16 :goto_0

    :cond_2
    sget v1, Lcom/duoku/platform/single/util/a;->iS:I

    if-ne p7, v1, :cond_3

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "ads_pv"

    const-string v3, ""

    invoke-virtual {v1, v2, p2, v3, v0}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "10008"

    invoke-virtual {v1, p1, v2, p2}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    sget v1, Lcom/duoku/platform/single/util/a;->iT:I

    if-ne p7, v1, :cond_4

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "inads_pv"

    const-string v3, ""

    invoke-virtual {v1, v2, p2, v3, v0}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "10008"

    invoke-virtual {v1, p1, v2, p2}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    sget v1, Lcom/duoku/platform/single/util/a;->iU:I

    if-ne p7, v1, :cond_5

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "notice_pv"

    const-string v3, ""

    invoke-virtual {v1, v2, p2, v3, v0}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "10009"

    invoke-virtual {v1, p1, v2, p2}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    sget v1, Lcom/duoku/platform/single/util/a;->iV:I

    if-ne p7, v1, :cond_6

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "agame_pv"

    const-string v3, ""

    invoke-virtual {v1, v2, p2, v3, v0}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "10003"

    invoke-virtual {v1, p1, v2, p2}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    sget v1, Lcom/duoku/platform/single/util/a;->iW:I

    if-ne p7, v1, :cond_7

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "agame_pv"

    const-string v3, ""

    invoke-virtual {v1, v2, p2, v3, v7}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "10003"

    invoke-virtual {v1, p1, v2, p2}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    sget v1, Lcom/duoku/platform/single/util/a;->iX:I

    if-ne p7, v1, :cond_8

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "statistics_suspend2_pv"

    const-string v3, ""

    invoke-virtual {v1, v2, p2, v3, v0}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "10003"

    invoke-virtual {v1, p1, v2, p2}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    sget v1, Lcom/duoku/platform/single/util/a;->iY:I

    if-ne p7, v1, :cond_1

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "statistics_boutique_pv"

    const-string v3, ""

    invoke-virtual {v1, v2, p2, v3, v0}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "10003"

    invoke-virtual {v1, p1, v2, p2}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p1}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/duoku/platform/single/k/i;->h:Lcom/duoku/platform/single/util/H;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkDownLoad downloadId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_b

    invoke-static {p1, v1, v2}, Lcom/duoku/platform/single/util/g;->a(Landroid/content/Context;J)I

    move-result v1

    if-ne v1, v7, :cond_b

    const-string v1, "dk_txt_download_running"

    invoke-static {p1, v1}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_a
    const-string v1, "dk_payment_error_2003"

    invoke-static {p1, v1}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/duoku/platform/single/k/i;->b:Lcom/duoku/platform/single/item/i;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/i;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/k/i;->b:Lcom/duoku/platform/single/item/i;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/i;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/k/i;->b:Lcom/duoku/platform/single/item/i;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/i;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/single/k/i;->b:Lcom/duoku/platform/single/item/i;

    invoke-virtual {v3}, Lcom/duoku/platform/single/item/i;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/single/k/i;->b:Lcom/duoku/platform/single/item/i;

    invoke-virtual {v4}, Lcom/duoku/platform/single/item/i;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p1}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_1

    invoke-static {p1, v5, v6}, Lcom/duoku/platform/single/util/g;->a(Landroid/content/Context;J)I

    move-result v5

    const/4 v6, 0x2

    if-ne v6, v5, :cond_1

    const-string v0, "dk_txt_download_running"

    invoke-static {p1, v0}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/duoku/platform/single/k/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0, v2, v3, v4}, Lcom/duoku/platform/single/util/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "dk_payment_error_2003"

    invoke-static {p1, v0}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
