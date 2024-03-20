.class public abstract Lcom/android/systemui/shared/system/QuickStepContract;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ALLOW_BACK_GESTURE_IN_SHADE:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "persist.wm.debug.shade_allow_back_gesture"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    .line 9
    return-void
    .line 11
.end method

.method public static isBackGestureDisabled(I)Z
    .locals 2

    .line 1
    and-int/lit8 v0, p0, 0x8

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_3

    .line 5
    const v0, 0x8000

    .line 7
    and-int/2addr v0, p0

    .line 10
    if-nez v0, :cond_3

    .line 11
    const/high16 v0, 0x2000000

    .line 13
    and-int/2addr v0, p0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    goto :goto_1

    .line 18
    :cond_0
    const/high16 v0, 0x20000

    .line 19
    and-int/2addr v0, p0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    and-int/lit8 p0, p0, -0x3

    .line 24
    :cond_1
    sget-boolean v0, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    .line 26
    if-nez v0, :cond_2

    .line 28
    const/16 v0, 0x46

    .line 30
    goto :goto_0

    .line 32
    :cond_2
    const/16 v0, 0x42

    .line 33
    :goto_0
    and-int/2addr p0, v0

    .line 35
    if-eqz p0, :cond_3

    .line 36
    const/4 v1, 0x1

    .line 38
    :cond_3
    :goto_1
    return v1
    .line 39
.end method

.method public static isGesturalMode(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
    .line 8
.end method
