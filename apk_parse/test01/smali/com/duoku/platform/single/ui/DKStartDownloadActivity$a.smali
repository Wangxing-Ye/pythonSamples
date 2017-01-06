.class Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/ui/DKStartDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/ui/DKStartDownloadActivity;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/ui/DKStartDownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;->a:Lcom/duoku/platform/single/ui/DKStartDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;->a:Lcom/duoku/platform/single/ui/DKStartDownloadActivity;

    const-string v1, "dkMainHeadClose"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;->a:Lcom/duoku/platform/single/ui/DKStartDownloadActivity;

    const-string v2, "dkMainHeadBack"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;->a:Lcom/duoku/platform/single/ui/DKStartDownloadActivity;

    const-string v3, "startAndSaveDownloadbtn"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;->a:Lcom/duoku/platform/single/ui/DKStartDownloadActivity;

    const-string v4, "nomalDownloadbtn"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v0, :cond_0

    if-ne v4, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;->a:Lcom/duoku/platform/single/ui/DKStartDownloadActivity;

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ne v4, v3, :cond_3

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;->a:Lcom/duoku/platform/single/ui/DKStartDownloadActivity;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->a(Lcom/duoku/platform/single/ui/DKStartDownloadActivity;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    const-string v1, "onClick btnNomalId"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;->a:Lcom/duoku/platform/single/ui/DKStartDownloadActivity;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->b(Lcom/duoku/platform/single/ui/DKStartDownloadActivity;)V

    goto :goto_0

    :cond_3
    if-ne v4, v2, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;->a:Lcom/duoku/platform/single/ui/DKStartDownloadActivity;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->a(Lcom/duoku/platform/single/ui/DKStartDownloadActivity;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    const-string v1, "onClick btnStartSaveId"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;->a:Lcom/duoku/platform/single/ui/DKStartDownloadActivity;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->c(Lcom/duoku/platform/single/ui/DKStartDownloadActivity;)Lcom/duoku/platform/single/item/e;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;->a:Lcom/duoku/platform/single/ui/DKStartDownloadActivity;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->d(Lcom/duoku/platform/single/ui/DKStartDownloadActivity;)Lcom/duoku/platform/single/item/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/i;->j()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;->a:Lcom/duoku/platform/single/ui/DKStartDownloadActivity;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->e(Lcom/duoku/platform/single/ui/DKStartDownloadActivity;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKStartDownloadActivity$a;->a:Lcom/duoku/platform/single/ui/DKStartDownloadActivity;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/DKStartDownloadActivity;->b(Lcom/duoku/platform/single/ui/DKStartDownloadActivity;)V

    goto :goto_0
.end method
