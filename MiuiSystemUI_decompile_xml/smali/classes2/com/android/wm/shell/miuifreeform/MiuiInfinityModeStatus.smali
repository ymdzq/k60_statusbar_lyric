.class public Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeStatus;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final IS_GLOBAL_BUILD:Z

.field private static final IS_INTERNATIONAL_BUILD:Z

.field private static final IS_TABLET:Z

.field public static final LEVEL_STRATEGY_TYPE_10:I = 0x0

.field public static final LEVEL_STRATEGY_TYPE_20:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "ro.build.characteristics"

    .line 2
    const-string v1, ""

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    const-string/jumbo v2, "tablet"

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 16
    sput-boolean v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeStatus;->IS_TABLET:Z

    .line 17
    const-string v0, "ro.product.mod_device"

    .line 19
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 24
    const-string v3, "_global"

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v2

    .line 30
    sput-boolean v2, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeStatus;->IS_INTERNATIONAL_BUILD:Z

    .line 31
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 37
    move-result v0

    .line 40
    sput-boolean v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeStatus;->IS_GLOBAL_BUILD:Z

    .line 41
    return-void
    .line 43
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInternationalBuild()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeStatus;->IS_INTERNATIONAL_BUILD:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    sget-boolean v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeStatus;->IS_GLOBAL_BUILD:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
    .line 14
.end method

.method public static isMiuiInfiniteRadioFeatureEnable()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeStatus;->IS_TABLET:Z

    .line 2
    return v0
    .line 4
.end method
