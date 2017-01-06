.class public final Lcom/duoku/platform/single/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/d/a;


# static fields
.field private static e:Lcom/duoku/platform/single/util/H;


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Landroid/content/Context;

.field private c:Lcom/duoku/platform/single/d/a/e;

.field private d:Lcom/duoku/platform/single/ui/DKContainerActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/duoku/platform/single/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/single/d/b;->e:Lcom/duoku/platform/single/util/H;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/duoku/platform/single/d/a/e;

    invoke-direct {v0}, Lcom/duoku/platform/single/d/a/e;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/d/b;->c:Lcom/duoku/platform/single/d/a/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/d/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/d/b;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcom/duoku/platform/single/g/c;->c()V

    invoke-static {}, Lcom/duoku/platform/single/h/j;->a()V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 4

    iput-object p2, p0, Lcom/duoku/platform/single/d/b;->a:Landroid/content/Intent;

    iput-object p1, p0, Lcom/duoku/platform/single/d/b;->b:Landroid/content/Context;

    const-string v0, "function_code"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/duoku/platform/single/d/b;->e:Lcom/duoku/platform/single/util/H;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "function code is"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/b;->c:Lcom/duoku/platform/single/d/a/e;

    invoke-virtual {v1, v0, p3}, Lcom/duoku/platform/single/d/a/e;->a(ILcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    return-void
.end method

.method public a(Lcom/duoku/platform/single/d/c;II)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/d/b;->d:Lcom/duoku/platform/single/ui/DKContainerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/d/b;->d:Lcom/duoku/platform/single/ui/DKContainerActivity;

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->h()Lcom/duoku/platform/single/view/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/duoku/platform/single/view/a;->a(Lcom/duoku/platform/single/d/c;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/d/b;->d:Lcom/duoku/platform/single/ui/DKContainerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/d/b;->d:Lcom/duoku/platform/single/ui/DKContainerActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/duoku/platform/single/d/d;->a()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/duoku/platform/single/d/d;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/d/b;->c:Lcom/duoku/platform/single/d/a/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/duoku/platform/single/d/a/e;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/duoku/platform/single/d/d;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/d/b;->d:Lcom/duoku/platform/single/ui/DKContainerActivity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/d/b;->a:Landroid/content/Intent;

    const-string v1, "viewId"

    invoke-virtual {p1}, Lcom/duoku/platform/single/d/d;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/duoku/platform/single/d/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/d/b;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/d/b;->d:Lcom/duoku/platform/single/ui/DKContainerActivity;

    invoke-virtual {v0, p1, p2}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/duoku/platform/single/ui/DKContainerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/d/b;->d:Lcom/duoku/platform/single/ui/DKContainerActivity;

    return-void
.end method

.method public b()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/d/b;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public c()Lcom/duoku/platform/single/ui/DKContainerActivity;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/d/b;->d:Lcom/duoku/platform/single/ui/DKContainerActivity;

    return-object v0
.end method

.method public d()Lcom/duoku/platform/single/d/a/g;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/d/b;->c:Lcom/duoku/platform/single/d/a/e;

    return-object v0
.end method
