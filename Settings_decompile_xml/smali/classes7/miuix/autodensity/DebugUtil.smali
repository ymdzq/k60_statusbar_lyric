.class public Lmiuix/autodensity/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# static fields
.field private static sAutoDensityDebug:Ljava/lang/String;

.field private static volatile sDebugAutoDensityScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static getAutoDensityScaleInDebugMode()F
    .locals 1

    .line 47
    sget v0, Lmiuix/autodensity/DebugUtil;->sDebugAutoDensityScale:F

    return v0
.end method

.method public static initAutoDensityDebugEnable()V
    .locals 4

    const-string v0, "AutoDensity"

    :try_start_0
    const-string v1, "log.tag.autodensity.debug.enable"

    .line 28
    invoke-static {v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiuix/autodensity/DebugUtil;->sAutoDensityDebug:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "can not access property log.tag.autodensity.enable, undebugable"

    .line 31
    invoke-static {v0, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, ""

    .line 33
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autodensity debugEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lmiuix/autodensity/DebugUtil;->sDebugAutoDensityScale:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 v0, 0x0

    .line 38
    sput v0, Lmiuix/autodensity/DebugUtil;->sDebugAutoDensityScale:F

    :goto_1
    return-void
.end method

.method public static printDensityLog(Ljava/lang/String;)V
    .locals 2

    .line 51
    sget v0, Lmiuix/autodensity/DebugUtil;->sDebugAutoDensityScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Lmiuix/autodensity/DebugUtil;->sAutoDensityDebug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AutoDensity"

    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
