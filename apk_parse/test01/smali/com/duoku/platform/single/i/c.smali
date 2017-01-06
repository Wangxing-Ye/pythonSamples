.class public Lcom/duoku/platform/single/i/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/h/h;
.implements Lcom/duoku/platform/single/i/a;
.implements Lcom/duoku/platform/single/i/b;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:J

.field public l:J

.field public m:J

.field public n:Z

.field public o:Z

.field public p:Lcom/duoku/platform/single/callback/c;

.field public q:Z

.field public r:Z

.field private s:Landroid/content/Context;

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/duoku/platform/single/i/c;->n:Z

    iput-boolean v1, p0, Lcom/duoku/platform/single/i/c;->o:Z

    iput-object v2, p0, Lcom/duoku/platform/single/i/c;->p:Lcom/duoku/platform/single/callback/c;

    iput-boolean v1, p0, Lcom/duoku/platform/single/i/c;->q:Z

    iput-boolean v1, p0, Lcom/duoku/platform/single/i/c;->r:Z

    iput-object v2, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    const/16 v0, 0xf

    iput v0, p0, Lcom/duoku/platform/single/i/c;->t:I

    iput-object p1, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/duoku/platform/single/i/c;->n:Z

    iput-boolean v1, p0, Lcom/duoku/platform/single/i/c;->o:Z

    iput-object v2, p0, Lcom/duoku/platform/single/i/c;->p:Lcom/duoku/platform/single/callback/c;

    iput-boolean v1, p0, Lcom/duoku/platform/single/i/c;->q:Z

    iput-boolean v1, p0, Lcom/duoku/platform/single/i/c;->r:Z

    iput-object v2, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    const/16 v0, 0xf

    iput v0, p0, Lcom/duoku/platform/single/i/c;->t:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/i/c;->i:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/i/c;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/duoku/platform/single/i/c;->n:Z

    iput-boolean v1, p0, Lcom/duoku/platform/single/i/c;->o:Z

    iput-object v2, p0, Lcom/duoku/platform/single/i/c;->p:Lcom/duoku/platform/single/callback/c;

    iput-boolean v1, p0, Lcom/duoku/platform/single/i/c;->q:Z

    iput-boolean v1, p0, Lcom/duoku/platform/single/i/c;->r:Z

    iput-object v2, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    const/16 v0, 0xf

    iput v0, p0, Lcom/duoku/platform/single/i/c;->t:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/duoku/platform/single/util/e;->a(Ljava/lang/String;)Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderProductId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderId(Ljava/lang/String;)V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    const-string v1, "2"

    iput-object v1, p0, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/duoku/platform/single/i/c;->b()Z

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v1

    const/16 v2, 0xbc3

    invoke-interface {v1, v2, v0}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    return-void
.end method

.method public a(IIILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    const-string v0, "2"

    iput-object v0, p0, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/duoku/platform/single/e/h;->b(Lcom/duoku/platform/single/i/c;)V

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/duoku/platform/single/util/e;->a(Ljava/lang/String;)Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderProductId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderId(Ljava/lang/String;)V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v1

    const/16 v2, 0xbc3

    invoke-interface {v1, v2, v0}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 7

    const/16 v6, 0xbc2

    const/4 v5, 0x1

    const/16 v4, 0xbc3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    check-cast p2, Lcom/duoku/platform/single/h/a/q;

    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->q()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "errorcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "errormessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "orderstatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "orderprice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/duoku/platform/single/util/T;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const-class v0, Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gamecard_test:onNetResponse price "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/duoku/platform/single/util/e;->a(Ljava/lang/String;)Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderProductId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderId(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/duoku/platform/single/i/c;->r:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->p:Lcom/duoku/platform/single/callback/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->p:Lcom/duoku/platform/single/callback/c;

    invoke-interface {v1}, Lcom/duoku/platform/single/callback/c;->a()V

    :cond_0
    const-string v1, "2"

    iput-object v1, p0, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/duoku/platform/single/i/c;->b()Z

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/duoku/platform/single/i/c;->q:Z

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_SUCCESS:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->p:Lcom/duoku/platform/single/callback/c;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->p:Lcom/duoku/platform/single/callback/c;

    invoke-interface {v1}, Lcom/duoku/platform/single/callback/c;->b()V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->p:Lcom/duoku/platform/single/callback/c;

    invoke-interface {v1}, Lcom/duoku/platform/single/callback/c;->a()V

    :cond_3
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v1

    invoke-interface {v1, v6, v0}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    const-string v1, "\u5145\u503c\u6210\u529f"

    invoke-static {v0, v1, v5}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->n()I

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_5
    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/duoku/platform/single/e/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/duoku/platform/single/i/c;->p()V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_GAMECARD:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    iget-object v2, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/duoku/platform/single/util/e;->a(Ljava/lang/String;)Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    move-result-object v2

    if-eq v1, v2, :cond_6

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_YEEPAY:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    iget-object v2, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/duoku/platform/single/util/e;->a(Ljava/lang/String;)Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    move-result-object v2

    if-ne v1, v2, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/duoku/platform/single/e/h;->b(Lcom/duoku/platform/single/i/c;)V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_SUCCESS:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v1

    invoke-interface {v1, v6, v0}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    const-string v0, "\u5145\u503c\u5361\u652f\u4ed8\u6210\u529f,\u70b9\u51fb\u8fd4\u56de\u7ee7\u7eed\u6e38\u620f!"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/i/c;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    const-string v1, "\u5145\u503c\u6210\u529f"

    invoke-static {v0, v1, v5}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_SUCCESS:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v1

    invoke-interface {v1, v6, v0}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    const-string v0, "\u652f\u4ed8\u6210\u529f,\u70b9\u51fb\u8fd4\u56de\u7ee7\u7eed\u6e38\u620f!"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/i/c;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    const-string v1, "\u5145\u503c\u6210\u529f"

    invoke-static {v0, v1, v5}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    goto/16 :goto_0

    :cond_9
    iget-boolean v1, p0, Lcom/duoku/platform/single/i/c;->o:Z

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/duoku/platform/single/e/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_DEALING:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    :cond_a
    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    const-string v2, "yeepay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->finish()V

    :cond_b
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->n()I

    move-result v1

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_d

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_DEALING:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->n()I

    move-result v1

    const/16 v2, 0xbb8

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_DEALING:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    goto/16 :goto_0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/duoku/platform/single/i/c;->m:J

    return-void
.end method

.method public a(JJI)V
    .locals 0

    return-void
.end method

.method public a(Lcom/duoku/platform/single/callback/c;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/i/c;->p:Lcom/duoku/platform/single/callback/c;

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/h$a;I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/h;)V
    .locals 8

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    const-string v5, ""

    iget-object v6, p0, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/makeOrder"

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3, v0, p1}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    const-string v1, "3"

    if-eq v0, v1, :cond_3

    const-string v0, "3"

    iput-object v0, p0, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    invoke-static {}, Lcom/duoku/platform/single/util/g;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    const-string v2, "cu"

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    const-string v2, "ct"

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/duoku/platform/single/e/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/e/h;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/single/e/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v5, ""

    const-string v0, "hfb"

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v5, "5328"

    :cond_2
    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/g/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/makeOrder"

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3, v0, v8}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    :cond_3
    invoke-virtual {p0}, Lcom/duoku/platform/single/i/c;->p()V

    const-string v0, "10"

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "cu_sfdx"

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v1, "dk_cu_sf_ten"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/Long;)Z

    :cond_4
    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/e/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/duoku/platform/single/util/e;->a(Ljava/lang/String;)Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderProductId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderId(Ljava/lang/String;)V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_SUCCESS:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v1

    const/16 v2, 0xbc2

    invoke-interface {v1, v2, v0}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    if-eqz p1, :cond_5

    invoke-virtual {p0, v8}, Lcom/duoku/platform/single/i/c;->h(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/duoku/platform/single/e/h;->a(Lcom/duoku/platform/single/i/c;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/duoku/platform/single/e/h;->b(Lcom/duoku/platform/single/i/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 4

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/duoku/platform/single/util/e;->a(Ljava/lang/String;)Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Lcom/duoku/platform/single/item/DKOrderPayChannelData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/queryOrderById"

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/i/c;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    return-void
.end method

.method public e()Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "channel"

    iget-object v2, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "orderid"

    iget-object v2, p0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "itemid"

    iget-object v2, p0, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "itemname"

    iget-object v2, p0, Lcom/duoku/platform/single/i/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    iget-object v2, p0, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "desc"

    iget-object v2, p0, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "price"

    iget-object v2, p0, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "order_time"

    invoke-static {}, Lcom/duoku/platform/single/util/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "create_time"

    invoke-static {}, Lcom/duoku/platform/single/util/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    return-void
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/duoku/platform/single/i/c;->m:J

    return-wide v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    move-object v2, p1

    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/k;->b(Landroid/content/Context;)Lcom/duoku/platform/single/j/c/k;

    move-result-object v0

    new-instance v4, Lcom/duoku/platform/single/i/d;

    invoke-direct {v4, p0, v0}, Lcom/duoku/platform/single/i/d;-><init>(Lcom/duoku/platform/single/i/c;Lcom/duoku/platform/single/j/c/k;)V

    new-instance v1, Lcom/duoku/platform/single/i/e;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/i/e;-><init>(Lcom/duoku/platform/single/i/c;)V

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/c/k;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/duoku/platform/single/j/c/k;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/duoku/platform/single/j/c/k;->a(Landroid/view/View$OnClickListener;)Lcom/duoku/platform/single/j/c/k;

    move-result-object v0

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    const-string v3, "\u8fd4\u56de\u6e38\u620f"

    const/4 v5, 0x0

    const-string v6, "Order.showPaySuccessDialog"

    invoke-virtual/range {v0 .. v6}, Lcom/duoku/platform/single/j/c/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;)Lcom/duoku/platform/single/j/c/k;

    return-void

    :cond_0
    const-string v2, "\u63d0\u4ea4\u6210\u529f,\u7a0d\u540e\u5c06\u6536\u5230\u8fd0\u8425\u5546\u4e0b\u53d1\u7684\u77ed\u4fe1\u63d0\u793a,\u6b64\u77ed\u4fe1\u53ef\u80fd\u4f1a\u6709\u4e00\u5b9a\u65f6\u95f4\u5ef6\u8fdf,\u8bf7\u60a8\u77e5\u6653\u3002"

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/duoku/platform/single/e/h;->a(Lcom/duoku/platform/single/i/c;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public o()V
    .locals 3

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/duoku/platform/single/util/e;->a(Ljava/lang/String;)Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderProductId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderId(Ljava/lang/String;)V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    const-string v1, "2"

    iput-object v1, p0, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/duoku/platform/single/i/c;->b()Z

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v1

    const/16 v2, 0xbc3

    invoke-interface {v1, v2, v0}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    return-void
.end method

.method public p()V
    .locals 3

    const-string v0, "alipay"

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "quickpay"

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "yeepay"

    iget-object v1, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/i/c;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v1, "share_last_thirdpay_success"

    iget-object v2, p0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public run()V
    .locals 2

    const-wide/32 v0, 0x1d4c0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-boolean v0, p0, Lcom/duoku/platform/single/i/c;->q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/duoku/platform/single/i/c;->r:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/duoku/platform/single/i/c;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
