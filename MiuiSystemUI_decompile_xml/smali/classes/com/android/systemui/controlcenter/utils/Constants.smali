.class public abstract Lcom/android/systemui/controlcenter/utils/Constants;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEBUG:Z

.field public static final IS_SLV_DEVICE:Z

.field public static final SUPPORT_ANDROID_FLASHLIGHT:Z

.field public static final SUPPORT_EXTREME_BATTERY_SAVER:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_QUICK_SETTINGS:Z

    .line 2
    sput-boolean v0, Lcom/android/systemui/controlcenter/utils/Constants;->DEBUG:Z

    .line 4
    const-string/jumbo v0, "support_extreme_battery_saver"

    .line 6
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    move-result v0

    .line 13
    sput-boolean v0, Lcom/android/systemui/controlcenter/utils/Constants;->SUPPORT_EXTREME_BATTERY_SAVER:Z

    .line 14
    const-string/jumbo v0, "support_android_flashlight"

    .line 16
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    move-result v0

    .line 22
    sput-boolean v0, Lcom/android/systemui/controlcenter/utils/Constants;->SUPPORT_ANDROID_FLASHLIGHT:Z

    .line 23
    const-string/jumbo v0, "ro.vendor.audio.lightsensor.virtual"

    .line 25
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 28
    move-result v0

    .line 31
    sput-boolean v0, Lcom/android/systemui/controlcenter/utils/Constants;->IS_SLV_DEVICE:Z

    .line 32
    return-void
    .line 34
.end method
