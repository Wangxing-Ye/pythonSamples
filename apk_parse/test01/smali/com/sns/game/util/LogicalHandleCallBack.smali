.class public abstract Lcom/sns/game/util/LogicalHandleCallBack;
.super Ljava/lang/Object;
.source "LogicalHandleCallBack.java"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method

.method public updateHandle()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public varargs updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 21
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 17
    return-void
.end method
