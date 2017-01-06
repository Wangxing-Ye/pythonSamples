.class Lcom/duoku/platform/single/j/b/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x0

    invoke-static {}, Lcom/duoku/platform/single/util/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->h(Lcom/duoku/platform/single/j/b/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/duoku/platform/single/util/N;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "strBindVerifyCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "strCreditVerifyCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "strDebitVerifyCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/j/b/a;Ljava/util/HashMap;)V

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v1, "bindid"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v2, "bankname"

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v2, "lastnum"

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v2, "paytype"

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v2, "cardtype"

    invoke-virtual {v0, v2, v9}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;I)I

    move-result v7

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "strBindBindId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "strBindPayAmount"

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v3}, Lcom/duoku/platform/single/j/b/a;->h(Lcom/duoku/platform/single/j/b/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "strBindVerifyCode"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "strBindBankName"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "strBindLastNumber"

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "strBindPayType"

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "intBindCardType"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v3}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v3

    const-string v8, "dk_tip_progress_pay_info"

    invoke-static {v3, v8}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v9}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/x;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/a;->h(Lcom/duoku/platform/single/j/b/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static/range {v0 .. v7}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
