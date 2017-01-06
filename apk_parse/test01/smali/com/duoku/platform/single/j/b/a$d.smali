.class Lcom/duoku/platform/single/j/b/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/j/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/duoku/platform/single/j/b/a$d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/duoku/platform/single/j/b/a$d;->c:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/duoku/platform/single/j/b/a$d;->d:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/duoku/platform/single/j/b/a$d;->e:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/duoku/platform/single/j/b/a$d;->f:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a$d;->c:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a$d;->d:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a$d;->e:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/duoku/platform/single/j/b/a$d;->f:Landroid/widget/EditText;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/j/b/a;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a$d;->c:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a$d;->d:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a$d;->e:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/duoku/platform/single/j/b/a$d;->f:Landroid/widget/EditText;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/j/b/a;->b(Lcom/duoku/platform/single/j/b/a;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-static {}, Lcom/duoku/platform/single/util/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->h(Lcom/duoku/platform/single/j/b/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/duoku/platform/single/util/N;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "strBindVerifyCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "strCreditVerifyCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "strDebitVerifyCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, ""

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->h(Lcom/duoku/platform/single/j/b/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a$d;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v8}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/j/b/a;Ljava/util/HashMap;)V

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v8, "strDebitCardNum"

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v8, "strDebitUserName"

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v8, "strDebitUserid"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v8, "strDebitBindPhone"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v8, "strDebitPassword"

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v8, "strDebitPayAmount"

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v8, "strDebitVerifyCode"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/duoku/platform/single/j/b/a;->b(Lcom/duoku/platform/single/j/b/a;Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0, v11}, Lcom/duoku/platform/single/j/b/a;->c(Lcom/duoku/platform/single/j/b/a;Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    iget-object v8, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v8}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v9}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v9

    const-string v10, "dk_tip_progress_pay_info"

    invoke-static {v9, v10}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v11}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$d;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static/range {v0 .. v7}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
