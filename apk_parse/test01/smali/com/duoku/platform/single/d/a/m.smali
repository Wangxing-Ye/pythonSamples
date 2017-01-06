.class public Lcom/duoku/platform/single/d/a/m;
.super Lcom/duoku/platform/single/d/a/u;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/Context;

.field c:Lcom/duoku/platform/single/k/n;

.field d:Lcom/duoku/platform/single/i/c;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/duoku/platform/single/d/a/u;-><init>()V

    const-string v0, ","

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/m;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/duoku/platform/single/d/a/m;->c:Lcom/duoku/platform/single/k/n;

    iput-object v1, p0, Lcom/duoku/platform/single/d/a/m;->d:Lcom/duoku/platform/single/i/c;

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/m;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/m;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/m;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/m;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/m;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/m;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/m;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/duoku/platform/single/d/a/m;->l:Ljava/lang/StringBuilder;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/F;->a([BZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/m;->e:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/Q;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/m;->d:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/Q;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/Q;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/m;->d:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/i/c;->a(Ljava/lang/String;)V

    const-string v0, "mmss"

    invoke-static {v0}, Lcom/duoku/platform/single/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/m;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/m;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/m;->d:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0}, Lcom/duoku/platform/single/i/c;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/m;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/m;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/duoku/platform/single/d/a/m;->h:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/single/d/a/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/m;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/m;->l:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/m;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/m;->d:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/m;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/m;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/m;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/m;->b:Landroid/content/Context;

    aget-object v0, p1, v2

    check-cast v0, Lcom/duoku/platform/single/k/n;

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/m;->c:Lcom/duoku/platform/single/k/n;

    aget-object v0, p1, v3

    check-cast v0, Lcom/duoku/platform/single/i/c;

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/m;->d:Lcom/duoku/platform/single/i/c;

    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/m;->l:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FCG"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/duoku/platform/single/util/N;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/m;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/m;->c:Lcom/duoku/platform/single/k/n;

    invoke-virtual {v0}, Lcom/duoku/platform/single/k/n;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/duoku/platform/single/d/a/m;->f:Ljava/lang/String;

    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/duoku/platform/single/d/a/m;->g:Ljava/lang/String;

    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/duoku/platform/single/d/a/m;->h:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/m;->i:Ljava/lang/String;

    invoke-direct {p0}, Lcom/duoku/platform/single/d/a/m;->a()V

    return-void
.end method
