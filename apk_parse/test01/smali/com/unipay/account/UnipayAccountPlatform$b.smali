.class Lcom/unipay/account/UnipayAccountPlatform$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/account/UnipayAccountPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/unipay/account/UnipayAccountPlatform;

.field private b:Lcom/unipay/account/loader/Loader$b;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/unipay/account/UnipayAccountPlatform;Lcom/unipay/account/loader/Loader$b;)V
    .locals 1

    iput-object p1, p0, Lcom/unipay/account/UnipayAccountPlatform$b;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unipay/account/UnipayAccountPlatform$b;->c:I

    iput-object p2, p0, Lcom/unipay/account/UnipayAccountPlatform$b;->b:Lcom/unipay/account/loader/Loader$b;

    return-void
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform$b;->b:Lcom/unipay/account/loader/Loader$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform$b;->b:Lcom/unipay/account/loader/Loader$b;

    invoke-interface {v0, p1}, Lcom/unipay/account/loader/Loader$b;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/unipay/account/UnipayAccountPlatform$b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unipay/account/UnipayAccountPlatform$b;->c:I

    const-string v0, "^^^^^^^^^^^^^lsbpr tc(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/unipay/account/UnipayAccountPlatform$b;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform$b;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->l(Lcom/unipay/account/UnipayAccountPlatform;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "^^^^^^^^^^^^^lsbpr success"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/unipay/account/UnipayAccountPlatform$b;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/unipay/account/UnipayAccountPlatform$b;->c:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    const-string v0, "^^^^^^^^^^^^^lsbpr fail, giveup"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    const/16 v0, -0x7d0

    invoke-direct {p0, v0}, Lcom/unipay/account/UnipayAccountPlatform$b;->a(I)V

    goto :goto_0

    :cond_1
    const-string v0, "^^^^^^^^^^^^^lsbpr fail, wait"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform$b;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->m(Lcom/unipay/account/UnipayAccountPlatform;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
