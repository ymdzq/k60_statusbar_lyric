.class public abstract Lcom/android/systemui/controlcenter/policy/BrightnessUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final A:F

.field public static final B:F

.field public static final C:F

.field public static final GAMMA_SPACE_MAX:I

.field public static final R:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    const v1, 0x10e00f3    # @android:integer/config_shortPressOnStemPrimaryBehavior

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    move-result v1

    .line 16
    sput v1, Lcom/android/systemui/controlcenter/policy/BrightnessUtils;->GAMMA_SPACE_MAX:I

    .line 17
    const v1, 0x1107001d

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 22
    move-result v1

    .line 25
    sput v1, Lcom/android/systemui/controlcenter/policy/BrightnessUtils;->R:F

    .line 26
    const v1, 0x1107001a

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 31
    move-result v1

    .line 34
    sput v1, Lcom/android/systemui/controlcenter/policy/BrightnessUtils;->A:F

    .line 35
    const v1, 0x1107001b

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 40
    move-result v1

    .line 43
    sput v1, Lcom/android/systemui/controlcenter/policy/BrightnessUtils;->B:F

    .line 44
    const v1, 0x1107001c

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 49
    move-result v0

    .line 52
    sput v0, Lcom/android/systemui/controlcenter/policy/BrightnessUtils;->C:F

    .line 53
    return-void
    .line 55
.end method

.method public static final convertGammaToLinearFloat(FFI)F
    .locals 3

    .line 1
    sget v0, Lcom/android/systemui/controlcenter/policy/BrightnessUtils;->GAMMA_SPACE_MAX:I

    .line 2
    int-to-float v0, v0

    .line 4
    int-to-float p2, p2

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0, p2}, Landroid/util/MathUtils;->norm(FFF)F

    .line 7
    move-result p2

    .line 10
    sget v0, Lcom/android/systemui/controlcenter/policy/BrightnessUtils;->R:F

    .line 11
    cmpg-float v2, p2, v0

    .line 13
    if-gtz v2, :cond_0

    .line 15
    div-float/2addr p2, v0

    .line 17
    invoke-static {p2}, Landroid/util/MathUtils;->sq(F)F

    .line 18
    move-result p2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget v0, Lcom/android/systemui/controlcenter/policy/BrightnessUtils;->C:F

    .line 23
    sub-float/2addr p2, v0

    .line 25
    sget v0, Lcom/android/systemui/controlcenter/policy/BrightnessUtils;->A:F

    .line 26
    div-float/2addr p2, v0

    .line 28
    invoke-static {p2}, Landroid/util/MathUtils;->exp(F)F

    .line 29
    move-result p2

    .line 32
    sget v0, Lcom/android/systemui/controlcenter/policy/BrightnessUtils;->B:F

    .line 33
    add-float/2addr p2, v0

    .line 35
    :goto_0
    const/high16 v0, 0x41400000    # 12.0f

    .line 36
    invoke-static {p2, v1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 38
    move-result p2

    .line 41
    div-float/2addr p2, v0

    .line 42
    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 43
    move-result p0

    .line 46
    return p0
    .line 47
.end method
