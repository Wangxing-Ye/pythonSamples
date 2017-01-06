.class Lcom/sns/game/util/CCUtil$OwnCompartaor;
.super Ljava/lang/Object;
.source "CCUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sns/game/util/CCUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OwnCompartaor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/util/CCUtil;


# direct methods
.method private constructor <init>(Lcom/sns/game/util/CCUtil;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/sns/game/util/CCUtil$OwnCompartaor;->this$0:Lcom/sns/game/util/CCUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sns/game/util/CCUtil;Lcom/sns/game/util/CCUtil$OwnCompartaor;)V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/sns/game/util/CCUtil$OwnCompartaor;-><init>(Lcom/sns/game/util/CCUtil;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sns/game/util/CCUtil$OwnCompartaor;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "lhs"    # Ljava/lang/String;
    .param p2, "rhs"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 490
    .line 491
    :try_start_0
    const-string v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 490
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 491
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 490
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 493
    .local v1, "lhsIntValue":I
    const-string v4, "_"

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v5, "."

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 492
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 493
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 492
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 494
    .local v2, "rhsIntValue":I
    if-le v1, v2, :cond_1

    const/4 v3, 0x1

    .line 498
    .end local v1    # "lhsIntValue":I
    .end local v2    # "rhsIntValue":I
    :cond_0
    :goto_0
    return v3

    .line 495
    .restart local v1    # "lhsIntValue":I
    .restart local v2    # "rhsIntValue":I
    :cond_1
    if-ge v1, v2, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    .line 496
    .end local v1    # "lhsIntValue":I
    .end local v2    # "rhsIntValue":I
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
