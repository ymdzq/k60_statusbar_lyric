.class public Lmiuix/core/util/RomUtils;
.super Ljava/lang/Object;
.source "RomUtils.java"


# static fields
.field private static MIUI_VERSION_CODE:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static getMiuiVersion()I
    .locals 2

    .line 17
    sget v0, Lmiuix/core/util/RomUtils;->MIUI_VERSION_CODE:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 18
    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersionNoCache()I

    move-result v0

    sput v0, Lmiuix/core/util/RomUtils;->MIUI_VERSION_CODE:I

    .line 20
    :cond_0
    sget v0, Lmiuix/core/util/RomUtils;->MIUI_VERSION_CODE:I

    return v0
.end method

.method public static getMiuiVersionNoCache()I
    .locals 2

    const-string v0, "ro.miui.ui.version.code"

    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isMiuiXVSdkSupported()Z
    .locals 2

    .line 59
    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
