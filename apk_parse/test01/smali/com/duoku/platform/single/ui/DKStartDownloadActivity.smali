.class public Lcom/duoku/platform/single/ui/DKStartDownloadActivity;
.super Lcom/duoku/platform/single/ui/DKBaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Lcom/duoku/platform/single/item/i;

.field private j:Lcom/duoku/platform/single/item/e;

.field private k:I

.field private l:Lcom/duoku/platform/single/util/H;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKBaseActivity;-><init>()V

    const-class v0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->l:Lcom/duoku/platform/single/util/H;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/ui/DKStartDownloadActivity;)Lcom/duoku/platform/single/util/H;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->l:Lcom/duoku/platform/single/util/H;

    return-object v0
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const-string v0, "txtGameName"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->a:Landroid/widget/TextView;

    const-string v0, "txtGameContent"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->b:Landroid/widget/TextView;

    const-string v0, "txtGameSize"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->c:Landroid/widget/TextView;

    const-string v0, "gameImage"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->i:Lcom/duoku/platform/single/item/i;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->i:Lcom/duoku/platform/single/item/i;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/i;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->l:Lcom/duoku/platform/single/util/H;

    const-string v2, "initView  des != null"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->i:Lcom/duoku/platform/single/item/i;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/g;->a(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "dkMainHeadClose"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;-><init>(Lcom/duoku/platform/single/ui/DKStartDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "dkMainHeadBack"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;-><init>(Lcom/duoku/platform/single/ui/DKStartDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "startAndSaveDownloadbtn"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->h:Landroid/widget/Button;

    new-instance v1, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;-><init>(Lcom/duoku/platform/single/ui/DKStartDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "nomalDownloadbtn"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->g:Landroid/widget/Button;

    new-instance v1, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;-><init>(Lcom/duoku/platform/single/ui/DKStartDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->j:Lcom/duoku/platform/single/item/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->i:Lcom/duoku/platform/single/item/i;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/i;->j()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->l:Lcom/duoku/platform/single/util/H;

    const-string v1, "initView  mCrossData != null && mDLdata.getHdownFlag() == 1"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->h:Landroid/widget/Button;

    const-string v1, "dk_saveDownload"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->g:Landroid/widget/Button;

    const-string v1, "dk_normalDownload"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->h:Landroid/widget/Button;

    const-string v1, "dk_txt_start_download"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.gamesearch.speeddownload.REQUESTRECEIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "gameId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->finish()V

    return-void
.end method

.method private b()V
    .locals 10

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->i:Lcom/duoku/platform/single/item/i;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/i;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->i:Lcom/duoku/platform/single/item/i;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/i;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->i:Lcom/duoku/platform/single/item/i;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/i;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->i:Lcom/duoku/platform/single/item/i;

    invoke-virtual {v3}, Lcom/duoku/platform/single/item/i;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->i:Lcom/duoku/platform/single/item/i;

    invoke-virtual {v4}, Lcom/duoku/platform/single/item/i;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/util/c;->a()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_1

    invoke-static {p0, v5, v6}, Lcom/duoku/platform/single/util/g;->a(Landroid/content/Context;J)I

    move-result v5

    const/4 v6, 0x2

    if-ne v6, v5, :cond_1

    const-string v0, "dk_txt_download_running"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->b(Ljava/lang/String;)V

    invoke-static {p0, v0, v2, v3, v4}, Lcom/duoku/platform/single/util/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->finish()V

    goto :goto_0

    :cond_2
    const-string v0, "dk_payment_error_2003"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/duoku/platform/single/ui/DKStartDownloadActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->b()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->l:Lcom/duoku/platform/single/util/H;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "statisticDownLoad  gameid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    iget v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->k:I

    sget v1, Lcom/duoku/platform/single/util/a;->iR:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "ads_download"

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2, v4}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "10007"

    invoke-virtual {v0, p0, v1, p1}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->k:I

    sget v1, Lcom/duoku/platform/single/util/a;->iS:I

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "ads_download"

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "10007"

    invoke-virtual {v0, p0, v1, p1}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->k:I

    sget v1, Lcom/duoku/platform/single/util/a;->iT:I

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "inads_download"

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "10008"

    invoke-virtual {v0, p0, v1, p1}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->k:I

    sget v1, Lcom/duoku/platform/single/util/a;->iU:I

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "notice_download"

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "10009"

    invoke-virtual {v0, p0, v1, p1}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->k:I

    sget v1, Lcom/duoku/platform/single/util/a;->iV:I

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "statistics_single_game_download"

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "10004"

    invoke-virtual {v0, p0, v1, p1}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->k:I

    sget v1, Lcom/duoku/platform/single/util/a;->iW:I

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "statistics_single_game_download"

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2, v4}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "10004"

    invoke-virtual {v0, p0, v1, p1}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->k:I

    sget v1, Lcom/duoku/platform/single/util/a;->iX:I

    if-ne v0, v1, :cond_7

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "statistics_suspend2_download"

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "10004"

    invoke-virtual {v0, p0, v1, p1}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->k:I

    sget v1, Lcom/duoku/platform/single/util/a;->iY:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "statistics_boutique_download"

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "10004"

    invoke-virtual {v0, p0, v1, p1}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/duoku/platform/single/ui/DKStartDownloadActivity;)Lcom/duoku/platform/single/item/e;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->j:Lcom/duoku/platform/single/item/e;

    return-object v0
.end method

.method private c()V
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->i:Lcom/duoku/platform/single/item/i;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "hdown_pv"

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "10010"

    const-string v3, ""

    invoke-virtual {v1, p0, v2, v3}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->j:Lcom/duoku/platform/single/item/e;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/e;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/g;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "dk_payment_error_2003"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GameSearch19_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_60.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->j:Lcom/duoku/platform/single/item/e;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/e;->l()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->j:Lcom/duoku/platform/single/item/e;

    invoke-virtual {v3}, Lcom/duoku/platform/single/item/e;->n()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/util/c;->a()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    invoke-static {p0, v4, v5}, Lcom/duoku/platform/single/util/g;->a(Landroid/content/Context;J)I

    move-result v4

    const/4 v5, 0x2

    if-ne v5, v4, :cond_3

    const-string v0, "dk_txt_download_running"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const-string v4, "dk_btn_start_download"

    invoke-static {p0, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/duoku/platform/single/util/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->finish()V

    goto :goto_0

    :cond_4
    const-string v0, "dk_payment_error_2003"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/duoku/platform/single/ui/DKStartDownloadActivity;)Lcom/duoku/platform/single/item/i;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->i:Lcom/duoku/platform/single/item/i;

    return-object v0
.end method

.method static synthetic e(Lcom/duoku/platform/single/ui/DKStartDownloadActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->c()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/duoku/platform/single/ui/DKBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "intent_data_dk_down_load_game_data"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/i;

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->i:Lcom/duoku/platform/single/item/i;

    const-string v0, "intent_data_dk_down_load_game_type"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->k:I

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/b;->g()Lcom/duoku/platform/single/item/e;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->j:Lcom/duoku/platform/single/item/e;

    const-string v0, "intent_data_dk_down_load_game_flag"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dk_layout_download_dialog_transparent"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->setContentView(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->l:Lcom/duoku/platform/single/util/H;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate  mType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->a()V

    return-void

    :cond_0
    const-string v0, "dk_layout_download_dialog"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->setContentView(I)V

    goto :goto_0
.end method
