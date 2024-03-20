.class public final Lcom/android/settings/accessibility/AccessibilityStatsLogUtils;
.super Ljava/lang/Object;
.source "AccessibilityStatsLogUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertToEntryPoint(I)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static convertToHearingAidInfoBondEntry(I)I
    .locals 1

    .line 0
    const/16 v0, 0x2eb

    if-eq p0, v0, :cond_4

    const/16 v0, 0x56e

    if-eq p0, v0, :cond_3

    const/16 v0, 0x5e8

    if-eq p0, v0, :cond_2

    const/16 v0, 0x78a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e8

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method static convertToItemKeyName(Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method static logAccessibilityServiceEnabled(Landroid/content/ComponentName;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method static logDisableNonA11yCategoryService(Ljava/lang/String;J)V
    .locals 1

    .line 67
    sget v0, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->ACCESSIBILITY_PRIVACY_WARNING_STATUS_SERVICE_DISABLED:I

    .line 68
    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logNonA11yToolServiceWarningReported(Ljava/lang/String;IJ)V

    return-void
.end method
