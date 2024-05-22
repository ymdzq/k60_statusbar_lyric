.class public abstract Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public hideAnimationBehavior:I

.field public indicatorColors:[I

.field public showAnimationBehavior:I

.field public trackColor:I

.field public trackCornerRadius:I

.field public trackThickness:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v1

    .line 13
    const v2, 0x7f070cdb    # @dimen/mtrl_progress_track_thickness '4.0dp'

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    move-result v1

    .line 20
    sget-object v4, Lcom/google/android/material/R$styleable;->BaseProgressIndicator:[I

    .line 21
    new-array v7, v0, [I

    .line 23
    move-object v2, p1

    .line 25
    move-object v3, p2

    .line 26
    move v5, p3

    .line 27
    move v6, p4

    .line 28
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 29
    move-result-object p2

    .line 32
    const/16 p3, 0x8

    .line 33
    invoke-static {p1, p2, p3, v1}, Lcom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    .line 35
    move-result p3

    .line 38
    iput p3, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    .line 39
    const/4 p3, 0x7

    .line 41
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    .line 42
    move-result p3

    .line 45
    iget p4, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    .line 46
    const/4 v1, 0x2

    .line 48
    div-int/2addr p4, v1

    .line 49
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 50
    move-result p3

    .line 53
    iput p3, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    .line 54
    const/4 p3, 0x4

    .line 56
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 57
    move-result p3

    .line 60
    iput p3, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    .line 61
    const/4 p3, 0x1

    .line 63
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 64
    move-result p4

    .line 67
    iput p4, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    .line 68
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 70
    move-result p4

    .line 73
    const/4 v2, -0x1

    .line 74
    if-nez p4, :cond_0

    .line 75
    const p3, 0x7f0401bd    # @attr/colorPrimary

    .line 77
    invoke-static {p1, p3, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    .line 80
    move-result p3

    .line 83
    filled-new-array {p3}, [I

    .line 84
    move-result-object p3

    .line 87
    iput-object p3, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 88
    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 91
    move-result-object p4

    .line 94
    iget p4, p4, Landroid/util/TypedValue;->type:I

    .line 95
    if-eq p4, p3, :cond_1

    .line 97
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 99
    move-result p3

    .line 102
    filled-new-array {p3}, [I

    .line 103
    move-result-object p3

    .line 106
    iput-object p3, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 107
    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    move-result-object p3

    .line 113
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 114
    move-result p4

    .line 117
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 118
    move-result-object p3

    .line 121
    iput-object p3, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 122
    array-length p3, p3

    .line 124
    if-eqz p3, :cond_3

    .line 125
    :goto_0
    const/4 p3, 0x6

    .line 127
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 128
    move-result p4

    .line 131
    if-eqz p4, :cond_2

    .line 132
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 134
    move-result p1

    .line 137
    iput p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    .line 138
    goto :goto_1

    .line 140
    :cond_2
    iget-object p3, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 141
    aget p3, p3, v0

    .line 143
    iput p3, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 147
    move-result-object p1

    .line 150
    const p3, 0x1010033    # @android:attr/disabledAlpha

    .line 151
    filled-new-array {p3}, [I

    .line 154
    move-result-object p3

    .line 157
    invoke-virtual {p1, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 158
    move-result-object p1

    .line 161
    const p3, 0x3e4ccccd    # 0.2f

    .line 162
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 165
    move-result p3

    .line 168
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    const/high16 p1, 0x437f0000    # 255.0f

    .line 172
    mul-float/2addr p3, p1

    .line 174
    float-to-int p1, p3

    .line 175
    iget p3, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    .line 176
    invoke-static {p3, p1}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    .line 178
    move-result p1

    .line 181
    iput p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    .line 182
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    return-void

    .line 187
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 188
    const-string p1, "indicatorColors cannot be empty when indicatorColor is not used."

    .line 190
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 192
    throw p0
    .line 195
.end method


# virtual methods
.method public abstract validateSpec()V
.end method
