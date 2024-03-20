.class public Lmiuix/internal/util/LiteUtils;
.super Ljava/lang/Object;
.source "LiteUtils.java"


# static fields
.field private static mIsCommonLiteStrategy:Ljava/lang/Boolean;


# direct methods
.method public static isCommonLiteStrategy()Z
    .locals 1

    .line 16
    sget-object v0, Lmiuix/internal/util/LiteUtils;->mIsCommonLiteStrategy:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 18
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    invoke-static {}, Lmiuix/device/DeviceUtils;->isLiteV1StockPlus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiMiddle()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmiuix/internal/util/LiteUtils;->mIsCommonLiteStrategy:Ljava/lang/Boolean;

    .line 22
    :cond_2
    sget-object v0, Lmiuix/internal/util/LiteUtils;->mIsCommonLiteStrategy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
