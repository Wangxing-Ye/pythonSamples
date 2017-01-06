.class public Lorg/cocos2d/utils/CCFormatter;
.super Ljava/lang/Object;
.source "CCFormatter.java"


# static fields
.field private static formatter:Ljava/util/Formatter;

.field private static sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lorg/cocos2d/utils/CCFormatter;->sb:Ljava/lang/StringBuilder;

    .line 7
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lorg/cocos2d/utils/CCFormatter;->sb:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    sput-object v0, Lorg/cocos2d/utils/CCFormatter;->formatter:Ljava/util/Formatter;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs declared-synchronized format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 10
    const-class v1, Lorg/cocos2d/utils/CCFormatter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/cocos2d/utils/CCFormatter;->sb:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 11
    sget-object v0, Lorg/cocos2d/utils/CCFormatter;->formatter:Ljava/util/Formatter;

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 12
    sget-object v0, Lorg/cocos2d/utils/CCFormatter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final swapIntToLittleEndian(I)I
    .locals 3
    .param p0, "v"    # I

    .prologue
    .line 16
    ushr-int/lit8 v0, p0, 0x18

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    .line 17
    shl-int/lit8 v1, p0, 0x8

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    .line 16
    or-int/2addr v0, v1

    .line 17
    shr-int/lit8 v1, p0, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    .line 16
    or-int/2addr v0, v1

    return v0
.end method
