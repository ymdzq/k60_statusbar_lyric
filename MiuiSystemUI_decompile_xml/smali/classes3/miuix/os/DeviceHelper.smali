.class public abstract Lmiuix/os/DeviceHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static detectType()I
    .locals 1

    .line 1
    sget-boolean v0, Lmiuix/os/Build;->IS_FOLDABLE:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x3

    .line 6
    return v0

    .line 7
    :cond_0
    sget-boolean v0, Lmiuix/os/Build;->IS_TABLET:Z

    .line 8
    if-eqz v0, :cond_1

    .line 10
    const/4 v0, 0x2

    .line 12
    return v0

    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    return v0
    .line 15
.end method