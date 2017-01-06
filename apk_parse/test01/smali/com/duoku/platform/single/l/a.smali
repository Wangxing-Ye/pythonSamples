.class public Lcom/duoku/platform/single/l/a;
.super Ljava/lang/Object;


# static fields
.field static d:Lcom/duoku/platform/single/l/a;

.field static final synthetic e:Z


# instance fields
.field a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/duoku/platform/single/i/c;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/duoku/platform/single/l/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/duoku/platform/single/l/a;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/duoku/platform/single/l/a;->b:I

    iput v0, p0, Lcom/duoku/platform/single/l/a;->c:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/l/a;->a(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/duoku/platform/single/l/a;->b:I

    iput v0, p0, Lcom/duoku/platform/single/l/a;->c:I

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/l/a;->a(I)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/duoku/platform/single/l/a;
    .locals 2

    const-class v1, Lcom/duoku/platform/single/l/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/l/a;->d:Lcom/duoku/platform/single/l/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/l/a;

    invoke-direct {v0}, Lcom/duoku/platform/single/l/a;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/l/a;->d:Lcom/duoku/platform/single/l/a;

    sget-object v0, Lcom/duoku/platform/single/l/a;->d:Lcom/duoku/platform/single/l/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/duoku/platform/single/l/a;->d:Lcom/duoku/platform/single/l/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(I)V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/duoku/platform/single/l/a;->a:Ljava/util/Vector;

    iget-object v0, p0, Lcom/duoku/platform/single/l/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->setSize(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/duoku/platform/single/i/c;)Z
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/l/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/duoku/platform/single/i/c;)V
    .locals 2

    invoke-virtual {p0}, Lcom/duoku/platform/single/l/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/l/a;->a:Ljava/util/Vector;

    iget v1, p0, Lcom/duoku/platform/single/l/a;->b:I

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/duoku/platform/single/l/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/duoku/platform/single/l/a;->b:I

    iget v0, p0, Lcom/duoku/platform/single/l/a;->b:I

    iget-object v1, p0, Lcom/duoku/platform/single/l/a;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/duoku/platform/single/l/a;->b:I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/duoku/platform/single/l/a;

    iget-object v1, p0, Lcom/duoku/platform/single/l/a;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lcom/duoku/platform/single/l/a;-><init>(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/duoku/platform/single/l/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/duoku/platform/single/l/a;->a:Ljava/util/Vector;

    iput-object v1, p0, Lcom/duoku/platform/single/l/a;->a:Ljava/util/Vector;

    iget v1, v0, Lcom/duoku/platform/single/l/a;->b:I

    iput v1, p0, Lcom/duoku/platform/single/l/a;->b:I

    iget v0, v0, Lcom/duoku/platform/single/l/a;->c:I

    iput v0, p0, Lcom/duoku/platform/single/l/a;->c:I

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/l/a;->b(Lcom/duoku/platform/single/i/c;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/duoku/platform/single/l/a;->f()Lcom/duoku/platform/single/i/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/l/a;->b(Lcom/duoku/platform/single/i/c;)V

    goto :goto_1
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lcom/duoku/platform/single/l/a;->b:I

    iget v1, p0, Lcom/duoku/platform/single/l/a;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/l/a;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/duoku/platform/single/l/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/duoku/platform/single/l/a;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iget v1, p0, Lcom/duoku/platform/single/l/a;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/duoku/platform/single/l/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/duoku/platform/single/l/a;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {v2, v0}, Lcom/duoku/platform/single/l/a;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v2, Lcom/duoku/platform/single/l/a;->a:Ljava/util/Vector;

    iput-object v0, p0, Lcom/duoku/platform/single/l/a;->a:Ljava/util/Vector;

    iget v0, v2, Lcom/duoku/platform/single/l/a;->b:I

    iput v0, p0, Lcom/duoku/platform/single/l/a;->b:I

    iget v0, v2, Lcom/duoku/platform/single/l/a;->c:I

    iput v0, p0, Lcom/duoku/platform/single/l/a;->c:I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/duoku/platform/single/l/a;->f()Lcom/duoku/platform/single/i/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/i/c;

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/l/a;->b(Lcom/duoku/platform/single/i/c;)V

    goto :goto_2
.end method

.method public f()Lcom/duoku/platform/single/i/c;
    .locals 4

    sget-boolean v0, Lcom/duoku/platform/single/l/a;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/duoku/platform/single/l/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/l/a;->a:Ljava/util/Vector;

    iget v1, p0, Lcom/duoku/platform/single/l/a;->c:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/i/c;

    iget-object v1, p0, Lcom/duoku/platform/single/l/a;->a:Ljava/util/Vector;

    iget v2, p0, Lcom/duoku/platform/single/l/a;->c:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/duoku/platform/single/l/a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/duoku/platform/single/l/a;->c:I

    iget v1, p0, Lcom/duoku/platform/single/l/a;->c:I

    iget-object v2, p0, Lcom/duoku/platform/single/l/a;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/duoku/platform/single/l/a;->c:I

    return-object v0
.end method
