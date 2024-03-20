.class public abstract Lmiuix/internal/util/LiteUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static mIsCommonLiteStrategy:Ljava/lang/Boolean;


# direct methods
.method public static isCommonLiteStrategy()Z
    .locals 4

    .line 1
    sget-object v0, Lmiuix/internal/util/LiteUtils;->mIsCommonLiteStrategy:Ljava/lang/Boolean;

    .line 2
    if-nez v0, :cond_4

    .line 4
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lmiuix/device/DeviceUtils;->getMiuiLiteVersion()I

    .line 15
    move-result v0

    .line 18
    const/4 v3, 0x2

    .line 19
    if-lt v0, v3, :cond_1

    .line 20
    move v0, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    move v0, v2

    .line 24
    :goto_1
    if-nez v0, :cond_3

    .line 25
    invoke-static {}, Lmiuix/device/DeviceUtils;->isLiteV1StockPlus()Z

    .line 27
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiMiddle()Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    goto :goto_2

    .line 39
    :cond_2
    move v1, v2

    .line 40
    :cond_3
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    move-result-object v0

    .line 44
    sput-object v0, Lmiuix/internal/util/LiteUtils;->mIsCommonLiteStrategy:Ljava/lang/Boolean;

    .line 45
    :cond_4
    sget-object v0, Lmiuix/internal/util/LiteUtils;->mIsCommonLiteStrategy:Ljava/lang/Boolean;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    move-result v0

    .line 52
    return v0
    .line 53
.end method
