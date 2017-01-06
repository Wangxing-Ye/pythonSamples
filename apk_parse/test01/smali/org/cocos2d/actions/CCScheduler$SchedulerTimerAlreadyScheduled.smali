.class Lorg/cocos2d/actions/CCScheduler$SchedulerTimerAlreadyScheduled;
.super Ljava/lang/RuntimeException;
.source "CCScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/actions/CCScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SchedulerTimerAlreadyScheduled"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5338ed76d178f869L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 290
    return-void
.end method
