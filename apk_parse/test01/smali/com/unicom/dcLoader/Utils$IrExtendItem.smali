.class Lcom/unicom/dcLoader/Utils$IrExtendItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/dcLoader/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IrExtendItem"
.end annotation


# instance fields
.field public filename:Ljava/lang/String;

.field final synthetic this$0:Lcom/unicom/dcLoader/Utils;

.field public type:I

.field public workName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unicom/dcLoader/Utils;Ljava/lang/String;I)V
    .locals 4

    iput-object p1, p0, Lcom/unicom/dcLoader/Utils$IrExtendItem;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/unicom/dcLoader/Utils$IrExtendItem;->filename:Ljava/lang/String;

    iput p3, p0, Lcom/unicom/dcLoader/Utils$IrExtendItem;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unicom/dcLoader/Utils$IrExtendItem;->workName:Ljava/lang/String;

    if-ltz p3, :cond_0

    const-string v0, ".dat"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unicom/dcLoader/Utils$IrExtendItem;->workName:Ljava/lang/String;

    const-string v0, "................wn(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/unicom/dcLoader/Utils$IrExtendItem;->workName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/dcLoader/Utils;->log_e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
