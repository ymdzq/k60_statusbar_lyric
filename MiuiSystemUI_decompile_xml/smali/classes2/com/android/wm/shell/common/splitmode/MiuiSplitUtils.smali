.class public Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static DEFAULT_LANDSCAPE_LEFT_WEIGHT:I = 0x334

.field public static DEFAULT_LANDSCAPE_RIGHT_WEIGHT:I = 0x6cc

.field public static DEFAULT_LEFT_WEIGHT:I = 0x266

.field public static DEFAULT_RIGHT_WEIGHT:I = 0x3da

.field public static final DIMMER_ALPHA:F = 0.15f

.field private static mContentWindowWeight:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 2
    const-string/jumbo v1, "zizhan"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    move-result v1

    .line 10
    if-nez v1, :cond_4

    .line 11
    const-string v1, "babylon"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    const-string v1, "cetus"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    const/16 v0, 0x30c

    .line 30
    sput v0, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->DEFAULT_LEFT_WEIGHT:I

    .line 32
    const/16 v0, 0x438

    .line 34
    sput v0, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->DEFAULT_RIGHT_WEIGHT:I

    .line 36
    goto :goto_1

    .line 38
    :cond_1
    const-string/jumbo v1, "yunluo"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    const/16 v0, 0x1cc

    .line 48
    sput v0, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->DEFAULT_LEFT_WEIGHT:I

    .line 50
    const/16 v0, 0x2e4

    .line 52
    sput v0, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->DEFAULT_RIGHT_WEIGHT:I

    .line 54
    const/16 v0, 0x281

    .line 56
    sput v0, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->DEFAULT_LANDSCAPE_LEFT_WEIGHT:I

    .line 58
    const/16 v0, 0x54f

    .line 60
    sput v0, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->DEFAULT_LANDSCAPE_RIGHT_WEIGHT:I

    .line 62
    goto :goto_1

    .line 64
    :cond_2
    const-string v1, "pipa"

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v1

    .line 70
    if-nez v1, :cond_3

    .line 71
    const-string v1, "liuqin"

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    :cond_3
    const/16 v0, 0x2b3

    .line 81
    sput v0, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->DEFAULT_LEFT_WEIGHT:I

    .line 83
    const/16 v0, 0x455

    .line 85
    sput v0, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->DEFAULT_RIGHT_WEIGHT:I

    .line 87
    const/16 v0, 0x39a

    .line 89
    sput v0, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->DEFAULT_LANDSCAPE_LEFT_WEIGHT:I

    .line 91
    const/16 v0, 0x7a6

    .line 93
    sput v0, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->DEFAULT_LANDSCAPE_RIGHT_WEIGHT:I

    .line 95
    goto :goto_1

    .line 97
    :cond_4
    :goto_0
    const/16 v0, 0x345

    .line 98
    sput v0, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->DEFAULT_LEFT_WEIGHT:I

    .line 100
    const/16 v1, 0x437

    .line 102
    sput v1, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->DEFAULT_RIGHT_WEIGHT:I

    .line 104
    sput v0, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->DEFAULT_LANDSCAPE_LEFT_WEIGHT:I

    .line 106
    const/16 v0, 0x52b

    .line 108
    sput v0, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->DEFAULT_LANDSCAPE_RIGHT_WEIGHT:I

    .line 110
    :cond_5
    :goto_1
    return-void
    .line 112
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContentWeight(I)F
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    sget v1, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->DEFAULT_LANDSCAPE_LEFT_WEIGHT:I

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    sget v1, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->DEFAULT_LEFT_WEIGHT:I

    .line 8
    :goto_0
    if-ne p0, v0, :cond_1

    .line 10
    sget p0, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->DEFAULT_LANDSCAPE_RIGHT_WEIGHT:I

    .line 12
    goto :goto_1

    .line 14
    :cond_1
    sget p0, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->DEFAULT_RIGHT_WEIGHT:I

    .line 15
    :goto_1
    int-to-float v0, p0

    .line 17
    const/high16 v2, 0x3f800000    # 1.0f

    .line 18
    mul-float/2addr v0, v2

    .line 20
    add-int/2addr v1, p0

    .line 21
    int-to-float p0, v1

    .line 22
    div-float/2addr v0, p0

    .line 23
    sput v0, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->mContentWindowWeight:F

    .line 24
    return v0
    .line 26
.end method

.method public static getSplitLeftWeight(ILandroid/graphics/Rect;)I
    .locals 1

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 2
    invoke-static {p0, p1}, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->getSplitRightWeight(ILandroid/graphics/Rect;)I

    .line 4
    move-result p0

    .line 7
    sub-int/2addr v0, p0

    .line 8
    return v0
    .line 9
.end method

.method public static getSplitRightWeight(ILandroid/graphics/Rect;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->getContentWeight(I)F

    .line 2
    move-result p0

    .line 5
    sput p0, Lcom/android/wm/shell/common/splitmode/MiuiSplitUtils;->mContentWindowWeight:F

    .line 6
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 8
    int-to-float p1, p1

    .line 10
    mul-float/2addr p0, p1

    .line 11
    const/high16 p1, 0x3f000000    # 0.5f

    .line 12
    add-float/2addr p0, p1

    .line 14
    float-to-int p0, p0

    .line 15
    return p0
    .line 16
.end method

.method public static isRtlLocale()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    const-string v1, "ar"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    const-string v1, "fa"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    const-string v1, "iw"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    const-string/jumbo v1, "ur"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    const-string/jumbo v1, "ug"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 55
    :goto_1
    return v0
    .line 56
.end method
