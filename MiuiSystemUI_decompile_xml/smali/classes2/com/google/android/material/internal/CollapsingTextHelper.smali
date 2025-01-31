.class public final Lcom/google/android/material/internal/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public boundsChanged:Z

.field public final collapsedBounds:Landroid/graphics/Rect;

.field public collapsedDrawX:F

.field public collapsedDrawY:F

.field public collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

.field public collapsedLetterSpacing:F

.field public collapsedShadowColor:Landroid/content/res/ColorStateList;

.field public collapsedShadowDx:F

.field public collapsedShadowDy:F

.field public collapsedShadowRadius:F

.field public collapsedTextBlend:F

.field public collapsedTextColor:Landroid/content/res/ColorStateList;

.field public collapsedTextGravity:I

.field public collapsedTextSize:F

.field public collapsedTextWidth:F

.field public collapsedTypeface:Landroid/graphics/Typeface;

.field public collapsedTypefaceBold:Landroid/graphics/Typeface;

.field public collapsedTypefaceDefault:Landroid/graphics/Typeface;

.field public final currentBounds:Landroid/graphics/RectF;

.field public currentDrawX:F

.field public currentDrawY:F

.field public currentLetterSpacing:F

.field public currentOffsetY:I

.field public currentShadowColor:I

.field public currentShadowDx:F

.field public currentShadowDy:F

.field public currentShadowRadius:F

.field public currentTextSize:F

.field public currentTypeface:Landroid/graphics/Typeface;

.field public final expandedBounds:Landroid/graphics/Rect;

.field public expandedDrawX:F

.field public expandedDrawY:F

.field public expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

.field public expandedFraction:F

.field public expandedLetterSpacing:F

.field public expandedLineCount:I

.field public expandedShadowColor:Landroid/content/res/ColorStateList;

.field public expandedShadowDx:F

.field public expandedShadowDy:F

.field public expandedShadowRadius:F

.field public expandedTextBlend:F

.field public expandedTextColor:Landroid/content/res/ColorStateList;

.field public expandedTextGravity:I

.field public expandedTextSize:F

.field public expandedTitleTexture:Landroid/graphics/Bitmap;

.field public expandedTypeface:Landroid/graphics/Typeface;

.field public expandedTypefaceBold:Landroid/graphics/Typeface;

.field public expandedTypefaceDefault:Landroid/graphics/Typeface;

.field public fadeModeEnabled:Z

.field public fadeModeStartFraction:F

.field public fadeModeThresholdFraction:F

.field public hyphenationFrequency:I

.field public isRtl:Z

.field public isRtlTextDirectionHeuristicsEnabled:Z

.field public lineSpacingAdd:F

.field public lineSpacingMultiplier:F

.field public maxLines:I

.field public positionInterpolator:Landroid/animation/TimeInterpolator;

.field public scale:F

.field public state:[I

.field public staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

.field public text:Ljava/lang/CharSequence;

.field public textLayout:Landroid/text/StaticLayout;

.field public final textPaint:Landroid/text/TextPaint;

.field public textSizeInterpolator:Landroid/animation/TimeInterpolator;

.field public textToDraw:Ljava/lang/CharSequence;

.field public textToDrawCollapsed:Ljava/lang/CharSequence;

.field public titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

.field public final tmpPaint:Landroid/text/TextPaint;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0x10

    .line 5
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    .line 7
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    .line 9
    const/high16 v0, 0x41700000    # 15.0f

    .line 11
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    .line 13
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    .line 15
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 17
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 19
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtlTextDirectionHeuristicsEnabled:Z

    .line 22
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    .line 24
    const/4 v1, 0x0

    .line 26
    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingAdd:F

    .line 27
    const/high16 v1, 0x3f800000    # 1.0f

    .line 29
    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingMultiplier:F

    .line 31
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->hyphenationFrequency:I

    .line 33
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 35
    new-instance v0, Landroid/text/TextPaint;

    .line 37
    const/16 v2, 0x81

    .line 39
    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    .line 41
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 44
    new-instance v2, Landroid/text/TextPaint;

    .line 46
    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 48
    iput-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    .line 53
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    .line 60
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    .line 67
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    .line 72
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeStartFraction:F

    .line 74
    const/high16 v2, 0x3f000000    # 0.5f

    .line 76
    invoke-static {v1, v0, v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 78
    move-result v0

    .line 81
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 84
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 92
    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->maybeUpdateFontWeightAdjustment(Landroid/content/res/Configuration;)V

    .line 96
    return-void
    .line 99
.end method

.method public static blendARGB(FII)I
    .locals 5

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    sub-float/2addr v0, p0

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 5
    move-result v1

    .line 8
    int-to-float v1, v1

    .line 9
    mul-float/2addr v1, v0

    .line 10
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    .line 11
    move-result v2

    .line 14
    int-to-float v2, v2

    .line 15
    mul-float/2addr v2, p0

    .line 16
    add-float/2addr v2, v1

    .line 17
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 18
    move-result v1

    .line 21
    int-to-float v1, v1

    .line 22
    mul-float/2addr v1, v0

    .line 23
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    .line 24
    move-result v3

    .line 27
    int-to-float v3, v3

    .line 28
    mul-float/2addr v3, p0

    .line 29
    add-float/2addr v3, v1

    .line 30
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 31
    move-result v1

    .line 34
    int-to-float v1, v1

    .line 35
    mul-float/2addr v1, v0

    .line 36
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    .line 37
    move-result v4

    .line 40
    int-to-float v4, v4

    .line 41
    mul-float/2addr v4, p0

    .line 42
    add-float/2addr v4, v1

    .line 43
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 44
    move-result p1

    .line 47
    int-to-float p1, p1

    .line 48
    mul-float/2addr p1, v0

    .line 49
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    .line 50
    move-result p2

    .line 53
    int-to-float p2, p2

    .line 54
    mul-float/2addr p2, p0

    .line 55
    add-float/2addr p2, p1

    .line 56
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 57
    move-result p0

    .line 60
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 61
    move-result p1

    .line 64
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 65
    move-result v0

    .line 68
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 69
    move-result p2

    .line 72
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 73
    move-result p0

    .line 76
    return p0
    .line 77
.end method

.method public static lerp(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 4
    move-result p2

    .line 7
    :cond_0
    sget-object p3, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 8
    invoke-static {p1, p0, p2, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method


# virtual methods
.method public final calculateIsRtl(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 4
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget-boolean p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtlTextDirectionHeuristicsEnabled:Z

    .line 15
    if-eqz p0, :cond_2

    .line 17
    if-eqz v1, :cond_1

    .line 19
    sget-object p0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    .line 21
    goto :goto_1

    .line 23
    :cond_1
    sget-object p0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    .line 24
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 26
    move-result v0

    .line 29
    invoke-virtual {p0, p1, v0}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->isRtl(Ljava/lang/CharSequence;I)Z

    .line 30
    move-result v1

    .line 33
    :cond_2
    return v1
    .line 34
.end method

.method public final calculateUsingTextSize(FZ)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 9
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 14
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 16
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    sub-float v3, p1, v2

    .line 23
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 25
    move-result v3

    .line 28
    const v4, 0x3727c5ac    # 1.0E-5f

    .line 29
    cmpg-float v3, v3, v4

    .line 32
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    if-gez v3, :cond_1

    .line 36
    move v3, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v3, v6

    .line 40
    :goto_0
    const/4 v7, 0x0

    .line 41
    if-eqz v3, :cond_2

    .line 42
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    .line 44
    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedLetterSpacing:F

    .line 46
    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    .line 48
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 50
    goto :goto_5

    .line 52
    :cond_2
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    .line 53
    iget v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    .line 55
    iget-object v9, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    .line 57
    sub-float v10, p1, v7

    .line 59
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 61
    move-result v10

    .line 64
    cmpg-float v4, v10, v4

    .line 65
    if-gez v4, :cond_3

    .line 67
    move v4, v5

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move v4, v6

    .line 71
    :goto_1
    if-eqz v4, :cond_4

    .line 72
    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    .line 74
    goto :goto_2

    .line 76
    :cond_4
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    .line 77
    iget v10, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    .line 79
    iget-object v11, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textSizeInterpolator:Landroid/animation/TimeInterpolator;

    .line 81
    invoke-static {v4, v10, p1, v11}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 83
    move-result p1

    .line 86
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    .line 87
    div-float/2addr p1, v4

    .line 89
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    .line 90
    :goto_2
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    .line 92
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    .line 94
    div-float/2addr p1, v4

    .line 96
    mul-float v4, v1, p1

    .line 97
    if-eqz p2, :cond_5

    .line 99
    goto :goto_3

    .line 101
    :cond_5
    cmpl-float p2, v4, v0

    .line 102
    if-lez p2, :cond_6

    .line 104
    div-float/2addr v0, p1

    .line 106
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 107
    move-result p1

    .line 110
    move v0, p1

    .line 111
    goto :goto_4

    .line 112
    :cond_6
    :goto_3
    move v0, v1

    .line 113
    :goto_4
    move p1, v3

    .line 114
    move p2, v8

    .line 115
    move-object v1, v9

    .line 116
    :goto_5
    cmpl-float v3, v0, v7

    .line 117
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 119
    if-lez v3, :cond_e

    .line 121
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    .line 123
    cmpl-float v3, v3, p1

    .line 125
    if-eqz v3, :cond_7

    .line 127
    move v3, v5

    .line 129
    goto :goto_6

    .line 130
    :cond_7
    move v3, v6

    .line 131
    :goto_6
    iget v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentLetterSpacing:F

    .line 132
    cmpl-float v7, v7, p2

    .line 134
    if-eqz v7, :cond_8

    .line 136
    move v7, v5

    .line 138
    goto :goto_7

    .line 139
    :cond_8
    move v7, v6

    .line 140
    :goto_7
    iget-object v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    .line 141
    if-eq v8, v1, :cond_9

    .line 143
    move v8, v5

    .line 145
    goto :goto_8

    .line 146
    :cond_9
    move v8, v6

    .line 147
    :goto_8
    iget-object v9, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 148
    if-eqz v9, :cond_a

    .line 150
    invoke-virtual {v9}, Landroid/text/StaticLayout;->getWidth()I

    .line 152
    move-result v9

    .line 155
    int-to-float v9, v9

    .line 156
    cmpl-float v9, v0, v9

    .line 157
    if-eqz v9, :cond_a

    .line 159
    move v9, v5

    .line 161
    goto :goto_9

    .line 162
    :cond_a
    move v9, v6

    .line 163
    :goto_9
    if-nez v3, :cond_c

    .line 164
    if-nez v7, :cond_c

    .line 166
    if-nez v9, :cond_c

    .line 168
    if-nez v8, :cond_c

    .line 170
    iget-boolean v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    .line 172
    if-eqz v3, :cond_b

    .line 174
    goto :goto_a

    .line 176
    :cond_b
    move v3, v6

    .line 177
    goto :goto_b

    .line 178
    :cond_c
    :goto_a
    move v3, v5

    .line 179
    :goto_b
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    .line 180
    iput p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentLetterSpacing:F

    .line 182
    iput-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    .line 184
    iput-boolean v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    .line 186
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    .line 188
    cmpl-float p1, p1, v2

    .line 190
    if-eqz p1, :cond_d

    .line 192
    move p1, v5

    .line 194
    goto :goto_c

    .line 195
    :cond_d
    move p1, v6

    .line 196
    :goto_c
    invoke-virtual {v4, p1}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 197
    goto :goto_d

    .line 200
    :cond_e
    move v3, v6

    .line 201
    :goto_d
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    .line 202
    if-eqz p1, :cond_f

    .line 204
    if-eqz v3, :cond_18

    .line 206
    :cond_f
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    .line 208
    invoke-virtual {v4, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 210
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    .line 213
    invoke-virtual {v4, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 215
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentLetterSpacing:F

    .line 218
    invoke-virtual {v4, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 220
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    .line 223
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    .line 225
    move-result p1

    .line 228
    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    .line 229
    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    .line 231
    if-le p2, v5, :cond_11

    .line 233
    if-eqz p1, :cond_10

    .line 235
    iget-boolean v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    .line 237
    if-eqz v1, :cond_11

    .line 239
    :cond_10
    move v1, v5

    .line 241
    goto :goto_e

    .line 242
    :cond_11
    move v1, v6

    .line 243
    :goto_e
    if-eqz v1, :cond_12

    .line 244
    goto :goto_f

    .line 246
    :cond_12
    move p2, v5

    .line 247
    :goto_f
    if-ne p2, v5, :cond_13

    .line 248
    :try_start_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 250
    goto :goto_10

    .line 252
    :cond_13
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    .line 253
    invoke-static {v1, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 255
    move-result v1

    .line 258
    and-int/lit8 v1, v1, 0x7

    .line 259
    if-eq v1, v5, :cond_17

    .line 261
    const/4 v2, 0x5

    .line 263
    if-eq v1, v2, :cond_15

    .line 264
    iget-boolean v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    .line 266
    if-eqz v1, :cond_14

    .line 268
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 270
    goto :goto_10

    .line 272
    :cond_14
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 273
    goto :goto_10

    .line 275
    :cond_15
    iget-boolean v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    .line 276
    if-eqz v1, :cond_16

    .line 278
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 280
    goto :goto_10

    .line 282
    :cond_16
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 283
    goto :goto_10

    .line 285
    :cond_17
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 286
    :goto_10
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    .line 288
    float-to-int v0, v0

    .line 290
    new-instance v3, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    .line 291
    invoke-direct {v3, v2, v4, v0}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    .line 293
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 296
    iput-object v0, v3, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    .line 298
    iput-boolean p1, v3, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->isRtl:Z

    .line 300
    iput-object v1, v3, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    .line 302
    iput-boolean v6, v3, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->includePad:Z

    .line 304
    iput p2, v3, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    .line 306
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingAdd:F

    .line 308
    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingMultiplier:F

    .line 310
    iput p1, v3, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingAdd:F

    .line 312
    iput p2, v3, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingMultiplier:F

    .line 314
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->hyphenationFrequency:I

    .line 316
    iput p1, v3, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->hyphenationFrequency:I

    .line 318
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

    .line 320
    iput-object p1, v3, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

    .line 322
    invoke-virtual {v3}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->build()Landroid/text/StaticLayout;

    .line 324
    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    goto :goto_11

    .line 328
    :catch_0
    move-exception p1

    .line 329
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 330
    move-result-object p2

    .line 333
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 334
    move-result-object p2

    .line 337
    const-string v0, "CollapsingTextHelper"

    .line 338
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    const/4 p1, 0x0

    .line 343
    :goto_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 347
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    .line 349
    move-result-object p1

    .line 352
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    .line 353
    :cond_18
    return-void
    .line 355
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    .line 6
    if-eqz v1, :cond_7

    .line 8
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    .line 10
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 12
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    cmpl-float v2, v2, v3

    .line 17
    if-lez v2, :cond_7

    .line 19
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 21
    move-result v1

    .line 24
    cmpl-float v1, v1, v3

    .line 25
    if-lez v1, :cond_7

    .line 27
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 29
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    .line 31
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 33
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    .line 36
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    .line 38
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    .line 40
    const/high16 v5, 0x3f800000    # 1.0f

    .line 42
    cmpl-float v5, v4, v5

    .line 44
    if-eqz v5, :cond_0

    .line 46
    iget-boolean v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    .line 48
    if-nez v5, :cond_0

    .line 50
    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 52
    :cond_0
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    .line 55
    const/4 v9, 0x0

    .line 57
    const/4 v5, 0x1

    .line 58
    if-le v4, v5, :cond_1

    .line 59
    iget-boolean v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    .line 61
    if-eqz v4, :cond_2

    .line 63
    iget-boolean v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    .line 65
    if-eqz v4, :cond_1

    .line 67
    goto :goto_0

    .line 69
    :cond_1
    move v5, v9

    .line 70
    :cond_2
    :goto_0
    if-eqz v5, :cond_5

    .line 71
    iget-boolean v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    .line 73
    if-eqz v4, :cond_3

    .line 75
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    .line 77
    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    .line 79
    cmpl-float v4, v4, v5

    .line 81
    if-lez v4, :cond_5

    .line 83
    :cond_3
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    .line 85
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 87
    invoke-virtual {v4, v9}, Landroid/text/StaticLayout;->getLineStart(I)I

    .line 89
    move-result v4

    .line 92
    int-to-float v4, v4

    .line 93
    sub-float/2addr v2, v4

    .line 94
    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    .line 95
    move-result v10

    .line 98
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextBlend:F

    .line 102
    int-to-float v3, v10

    .line 104
    mul-float/2addr v2, v3

    .line 105
    float-to-int v2, v2

    .line 106
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 107
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    .line 110
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    .line 112
    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    .line 114
    iget v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowColor:I

    .line 116
    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    .line 118
    move-result v7

    .line 121
    invoke-static {v6, v7}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    .line 122
    move-result v6

    .line 125
    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 126
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 129
    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 131
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextBlend:F

    .line 134
    mul-float/2addr v2, v3

    .line 136
    float-to-int v2, v2

    .line 137
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 138
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    .line 141
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    .line 143
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    .line 145
    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowColor:I

    .line 147
    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    .line 149
    move-result v6

    .line 152
    invoke-static {v5, v6}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    .line 153
    move-result v5

    .line 156
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 157
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 160
    invoke-virtual {v2, v9}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    .line 162
    move-result v2

    .line 165
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    .line 166
    const/4 v4, 0x0

    .line 168
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 169
    move-result v5

    .line 172
    const/4 v6, 0x0

    .line 173
    int-to-float v11, v2

    .line 174
    move-object v2, p1

    .line 175
    move v7, v11

    .line 176
    move-object v8, v1

    .line 177
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 178
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    .line 181
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    .line 183
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    .line 185
    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowColor:I

    .line 187
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 189
    iget-boolean v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    .line 192
    if-nez v2, :cond_6

    .line 194
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    .line 196
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 198
    move-result-object v2

    .line 201
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 202
    move-result-object v2

    .line 205
    const-string/jumbo v3, "\u2026"

    .line 206
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 209
    move-result v3

    .line 212
    if-eqz v3, :cond_4

    .line 213
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 215
    move-result v3

    .line 218
    add-int/lit8 v3, v3, -0x1

    .line 219
    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 221
    move-result-object v2

    .line 224
    :cond_4
    move-object v3, v2

    .line 225
    invoke-virtual {v1, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 226
    const/4 v4, 0x0

    .line 229
    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 230
    invoke-virtual {p0, v9}, Landroid/text/StaticLayout;->getLineEnd(I)I

    .line 232
    move-result p0

    .line 235
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 236
    move-result v2

    .line 239
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    .line 240
    move-result v5

    .line 243
    const/4 v6, 0x0

    .line 244
    move-object v2, p1

    .line 245
    move v7, v11

    .line 246
    move-object v8, v1

    .line 247
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 248
    goto :goto_1

    .line 251
    :cond_5
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 252
    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 255
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 257
    :cond_6
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 260
    :cond_7
    return-void
    .line 263
.end method

.method public final getCollapsedTextHeight()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    .line 2
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    .line 4
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 6
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 9
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 11
    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedLetterSpacing:F

    .line 14
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 16
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    .line 19
    move-result p0

    .line 22
    neg-float p0, p0

    .line 23
    return p0
    .line 24
.end method

.method public final getCurrentColor(Landroid/content/res/ColorStateList;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->state:[I

    .line 6
    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 15
    move-result p0

    .line 18
    return p0
    .line 19
.end method

.method public final maybeUpdateFontWeightAdjustment(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 6
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceBold:Landroid/graphics/Typeface;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-static {p1, v0}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 16
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceBold:Landroid/graphics/Typeface;

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceBold:Landroid/graphics/Typeface;

    .line 22
    if-eqz p1, :cond_2

    .line 24
    goto :goto_0

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    .line 27
    :goto_0
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 29
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceBold:Landroid/graphics/Typeface;

    .line 31
    if-eqz p1, :cond_3

    .line 33
    goto :goto_1

    .line 35
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    .line 36
    :goto_1
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    .line 38
    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    .line 41
    return-void
    .line 44
.end method

.method public final recalculate(Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 8
    move-result v3

    .line 11
    if-lez v3, :cond_0

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 14
    move-result v3

    .line 17
    if-gtz v3, :cond_1

    .line 18
    :cond_0
    if-eqz v1, :cond_19

    .line 20
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 22
    invoke-virtual {v0, v3, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(FZ)V

    .line 24
    iget-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    .line 27
    iget-object v5, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 29
    if-eqz v4, :cond_2

    .line 31
    iget-object v6, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 33
    if-eqz v6, :cond_2

    .line 35
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getWidth()I

    .line 37
    move-result v6

    .line 40
    int-to-float v6, v6

    .line 41
    iget-object v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 42
    invoke-static {v4, v5, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 44
    move-result-object v4

    .line 47
    iput-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    .line 48
    :cond_2
    iget-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    .line 50
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x0

    .line 53
    if-eqz v4, :cond_3

    .line 54
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 56
    move-result v8

    .line 59
    invoke-virtual {v5, v4, v7, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    .line 60
    move-result v4

    .line 63
    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    .line 64
    goto :goto_0

    .line 66
    :cond_3
    iput v6, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    .line 67
    :goto_0
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    .line 69
    iget-boolean v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    .line 71
    invoke-static {v4, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 73
    move-result v4

    .line 76
    and-int/lit8 v8, v4, 0x70

    .line 77
    iget-object v9, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 79
    const/16 v10, 0x50

    .line 81
    const/16 v11, 0x30

    .line 83
    const/high16 v12, 0x40000000    # 2.0f

    .line 85
    if-eq v8, v11, :cond_5

    .line 87
    if-eq v8, v10, :cond_4

    .line 89
    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    .line 91
    move-result v8

    .line 94
    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    .line 95
    move-result v13

    .line 98
    sub-float/2addr v8, v13

    .line 99
    div-float/2addr v8, v12

    .line 100
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    .line 101
    move-result v13

    .line 104
    int-to-float v13, v13

    .line 105
    sub-float/2addr v13, v8

    .line 106
    iput v13, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    .line 107
    goto :goto_1

    .line 109
    :cond_4
    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 110
    int-to-float v8, v8

    .line 112
    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    .line 113
    move-result v13

    .line 116
    add-float/2addr v13, v8

    .line 117
    iput v13, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    .line 118
    goto :goto_1

    .line 120
    :cond_5
    iget v8, v9, Landroid/graphics/Rect;->top:I

    .line 121
    int-to-float v8, v8

    .line 123
    iput v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    .line 124
    :goto_1
    const v8, 0x800007

    .line 126
    and-int/2addr v4, v8

    .line 129
    const/4 v13, 0x5

    .line 130
    const/4 v14, 0x1

    .line 131
    if-eq v4, v14, :cond_7

    .line 132
    if-eq v4, v13, :cond_6

    .line 134
    iget v4, v9, Landroid/graphics/Rect;->left:I

    .line 136
    int-to-float v4, v4

    .line 138
    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    .line 139
    goto :goto_2

    .line 141
    :cond_6
    iget v4, v9, Landroid/graphics/Rect;->right:I

    .line 142
    int-to-float v4, v4

    .line 144
    iget v15, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    .line 145
    sub-float/2addr v4, v15

    .line 147
    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    .line 148
    goto :goto_2

    .line 150
    :cond_7
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    .line 151
    move-result v4

    .line 154
    int-to-float v4, v4

    .line 155
    iget v15, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    .line 156
    div-float/2addr v15, v12

    .line 158
    sub-float/2addr v4, v15

    .line 159
    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    .line 160
    :goto_2
    invoke-virtual {v0, v6, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(FZ)V

    .line 162
    iget-object v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 165
    if-eqz v1, :cond_8

    .line 167
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    .line 169
    move-result v1

    .line 172
    int-to-float v1, v1

    .line 173
    goto :goto_3

    .line 174
    :cond_8
    move v1, v6

    .line 175
    :goto_3
    iget-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 176
    if-eqz v4, :cond_9

    .line 178
    iget v15, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    .line 180
    if-le v15, v14, :cond_9

    .line 182
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getWidth()I

    .line 184
    move-result v4

    .line 187
    int-to-float v4, v4

    .line 188
    goto :goto_4

    .line 189
    :cond_9
    iget-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    .line 190
    if-eqz v4, :cond_a

    .line 192
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 194
    move-result v15

    .line 197
    invoke-virtual {v5, v4, v7, v15}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    .line 198
    move-result v4

    .line 201
    goto :goto_4

    .line 202
    :cond_a
    move v4, v6

    .line 203
    :goto_4
    iget-object v15, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 204
    if-eqz v15, :cond_b

    .line 206
    invoke-virtual {v15}, Landroid/text/StaticLayout;->getLineCount()I

    .line 208
    move-result v15

    .line 211
    goto :goto_5

    .line 212
    :cond_b
    move v15, v7

    .line 213
    :goto_5
    iput v15, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLineCount:I

    .line 214
    iget v15, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    .line 216
    iget-boolean v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    .line 218
    invoke-static {v15, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 220
    move-result v3

    .line 223
    and-int/lit8 v15, v3, 0x70

    .line 224
    iget-object v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 226
    if-eq v15, v11, :cond_d

    .line 228
    if-eq v15, v10, :cond_c

    .line 230
    div-float/2addr v1, v12

    .line 232
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    .line 233
    move-result v10

    .line 236
    int-to-float v10, v10

    .line 237
    sub-float/2addr v10, v1

    .line 238
    iput v10, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    .line 239
    goto :goto_6

    .line 241
    :cond_c
    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    .line 242
    int-to-float v10, v10

    .line 244
    sub-float/2addr v10, v1

    .line 245
    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    .line 246
    move-result v1

    .line 249
    add-float/2addr v1, v10

    .line 250
    iput v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    .line 251
    goto :goto_6

    .line 253
    :cond_d
    iget v1, v7, Landroid/graphics/Rect;->top:I

    .line 254
    int-to-float v1, v1

    .line 256
    iput v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    .line 257
    :goto_6
    and-int v1, v3, v8

    .line 259
    if-eq v1, v14, :cond_f

    .line 261
    if-eq v1, v13, :cond_e

    .line 263
    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 265
    int-to-float v1, v1

    .line 267
    iput v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    .line 268
    goto :goto_7

    .line 270
    :cond_e
    iget v1, v7, Landroid/graphics/Rect;->right:I

    .line 271
    int-to-float v1, v1

    .line 273
    sub-float/2addr v1, v4

    .line 274
    iput v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    .line 275
    goto :goto_7

    .line 277
    :cond_f
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    .line 278
    move-result v1

    .line 281
    int-to-float v1, v1

    .line 282
    div-float/2addr v4, v12

    .line 283
    sub-float/2addr v1, v4

    .line 284
    iput v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    .line 285
    :goto_7
    iget-object v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 287
    const/4 v3, 0x0

    .line 289
    if-eqz v1, :cond_10

    .line 290
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 292
    iput-object v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 295
    :cond_10
    iget v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    .line 297
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 299
    iget v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    .line 302
    iget-boolean v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    .line 304
    iget-object v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    .line 306
    if-eqz v4, :cond_12

    .line 308
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    .line 310
    cmpg-float v4, v1, v4

    .line 312
    if-gez v4, :cond_11

    .line 314
    move-object v9, v7

    .line 316
    :cond_11
    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 317
    goto :goto_8

    .line 320
    :cond_12
    iget v4, v7, Landroid/graphics/Rect;->left:I

    .line 321
    int-to-float v4, v4

    .line 323
    iget v10, v9, Landroid/graphics/Rect;->left:I

    .line 324
    int-to-float v10, v10

    .line 326
    iget-object v11, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 327
    invoke-static {v4, v10, v1, v11}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 329
    move-result v4

    .line 332
    iput v4, v8, Landroid/graphics/RectF;->left:F

    .line 333
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    .line 335
    iget v10, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    .line 337
    iget-object v11, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 339
    invoke-static {v4, v10, v1, v11}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 341
    move-result v4

    .line 344
    iput v4, v8, Landroid/graphics/RectF;->top:F

    .line 345
    iget v4, v7, Landroid/graphics/Rect;->right:I

    .line 347
    int-to-float v4, v4

    .line 349
    iget v10, v9, Landroid/graphics/Rect;->right:I

    .line 350
    int-to-float v10, v10

    .line 352
    iget-object v11, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 353
    invoke-static {v4, v10, v1, v11}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 355
    move-result v4

    .line 358
    iput v4, v8, Landroid/graphics/RectF;->right:F

    .line 359
    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    .line 361
    int-to-float v4, v4

    .line 363
    iget v7, v9, Landroid/graphics/Rect;->bottom:I

    .line 364
    int-to-float v7, v7

    .line 366
    iget-object v9, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 367
    invoke-static {v4, v7, v1, v9}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 369
    move-result v4

    .line 372
    iput v4, v8, Landroid/graphics/RectF;->bottom:F

    .line 373
    :goto_8
    iget-boolean v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    .line 375
    if-eqz v4, :cond_14

    .line 377
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    .line 379
    cmpg-float v4, v1, v4

    .line 381
    if-gez v4, :cond_13

    .line 383
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    .line 385
    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    .line 387
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    .line 389
    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    .line 391
    invoke-virtual {v0, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 393
    move v4, v6

    .line 396
    goto :goto_9

    .line 397
    :cond_13
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    .line 398
    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    .line 400
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    .line 402
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentOffsetY:I

    .line 404
    const/4 v8, 0x0

    .line 406
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 407
    move-result v7

    .line 410
    int-to-float v7, v7

    .line 411
    sub-float/2addr v4, v7

    .line 412
    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    .line 413
    const/high16 v4, 0x3f800000    # 1.0f

    .line 415
    invoke-virtual {v0, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 417
    const/high16 v4, 0x3f800000    # 1.0f

    .line 420
    goto :goto_9

    .line 422
    :cond_14
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    .line 423
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    .line 425
    iget-object v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 427
    invoke-static {v4, v7, v1, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 429
    move-result v4

    .line 432
    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    .line 433
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    .line 435
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    .line 437
    iget-object v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 439
    invoke-static {v4, v7, v1, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 441
    move-result v4

    .line 444
    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    .line 445
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 447
    move v4, v1

    .line 450
    :goto_9
    const/high16 v7, 0x3f800000    # 1.0f

    .line 451
    sub-float v8, v7, v1

    .line 453
    sget-object v9, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 455
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 457
    move-result v8

    .line 460
    sub-float v8, v7, v8

    .line 461
    iput v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextBlend:F

    .line 463
    sget-object v8, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 465
    invoke-static {v2}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 467
    invoke-static {v7, v6, v1, v9}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 470
    move-result v8

    .line 473
    iput v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextBlend:F

    .line 474
    invoke-static {v2}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 476
    iget-object v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 479
    iget-object v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 481
    if-eq v7, v8, :cond_15

    .line 483
    invoke-virtual {v0, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    .line 485
    move-result v7

    .line 488
    iget-object v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 489
    invoke-virtual {v0, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    .line 491
    move-result v8

    .line 494
    invoke-static {v4, v7, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->blendARGB(FII)I

    .line 495
    move-result v4

    .line 498
    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 499
    goto :goto_a

    .line 502
    :cond_15
    invoke-virtual {v0, v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    .line 503
    move-result v4

    .line 506
    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 507
    :goto_a
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedLetterSpacing:F

    .line 510
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    .line 512
    cmpl-float v8, v4, v7

    .line 514
    if-eqz v8, :cond_16

    .line 516
    invoke-static {v7, v4, v1, v9}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 518
    move-result v4

    .line 521
    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 522
    goto :goto_b

    .line 525
    :cond_16
    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 526
    :goto_b
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowRadius:F

    .line 529
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowRadius:F

    .line 531
    invoke-static {v4, v7, v1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 533
    move-result v4

    .line 536
    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    .line 537
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDx:F

    .line 539
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDx:F

    .line 541
    invoke-static {v4, v7, v1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 543
    move-result v4

    .line 546
    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    .line 547
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDy:F

    .line 549
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDy:F

    .line 551
    invoke-static {v4, v7, v1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 553
    move-result v3

    .line 556
    iput v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    .line 557
    iget-object v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowColor:Landroid/content/res/ColorStateList;

    .line 559
    invoke-virtual {v0, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    .line 561
    move-result v3

    .line 564
    iget-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowColor:Landroid/content/res/ColorStateList;

    .line 565
    invoke-virtual {v0, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    .line 567
    move-result v4

    .line 570
    invoke-static {v1, v3, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->blendARGB(FII)I

    .line 571
    move-result v3

    .line 574
    iput v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowColor:I

    .line 575
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    .line 577
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    .line 579
    iget v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    .line 581
    invoke-virtual {v5, v4, v7, v8, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 583
    iget-boolean v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    .line 586
    if-eqz v3, :cond_18

    .line 588
    invoke-virtual {v5}, Landroid/text/TextPaint;->getAlpha()I

    .line 590
    move-result v3

    .line 593
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    .line 594
    cmpg-float v7, v1, v4

    .line 596
    if-gtz v7, :cond_17

    .line 598
    iget v0, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeStartFraction:F

    .line 600
    const/high16 v7, 0x3f800000    # 1.0f

    .line 602
    invoke-static {v7, v6, v0, v4, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    .line 604
    move-result v0

    .line 607
    goto :goto_c

    .line 608
    :cond_17
    const/high16 v7, 0x3f800000    # 1.0f

    .line 609
    invoke-static {v6, v7, v4, v7, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    .line 611
    move-result v0

    .line 614
    :goto_c
    int-to-float v1, v3

    .line 615
    mul-float/2addr v0, v1

    .line 616
    float-to-int v0, v0

    .line 617
    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 618
    :cond_18
    invoke-static {v2}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 621
    :cond_19
    return-void
    .line 624
.end method

.method public final setCollapsedTextAppearance(I)V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    .line 2
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v2

    .line 9
    invoke-direct {v0, v2, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 10
    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 13
    if-eqz p1, :cond_0

    .line 15
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 17
    :cond_0
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    .line 19
    const/4 v2, 0x0

    .line 21
    cmpl-float v2, p1, v2

    .line 22
    if-eqz v2, :cond_1

    .line 24
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    .line 26
    :cond_1
    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    .line 28
    if-eqz p1, :cond_2

    .line 30
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowColor:Landroid/content/res/ColorStateList;

    .line 32
    :cond_2
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    .line 34
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDx:F

    .line 36
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    .line 38
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDy:F

    .line 40
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    .line 42
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowRadius:F

    .line 44
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->letterSpacing:F

    .line 46
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedLetterSpacing:F

    .line 48
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    .line 50
    if-eqz p1, :cond_3

    .line 52
    const/4 v2, 0x1

    .line 54
    iput-boolean v2, p1, Lcom/google/android/material/resources/CancelableFontCallback;->cancelled:Z

    .line 55
    :cond_3
    new-instance p1, Lcom/google/android/material/resources/CancelableFontCallback;

    .line 57
    new-instance v2, Lcom/google/android/material/internal/CollapsingTextHelper$1;

    .line 59
    const/4 v3, 0x0

    .line 61
    invoke-direct {v2, p0, v3}, Lcom/google/android/material/internal/CollapsingTextHelper$1;-><init>(Lcom/google/android/material/internal/CollapsingTextHelper;I)V

    .line 62
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->createFallbackFont()V

    .line 65
    iget-object v4, v0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 68
    invoke-direct {p1, v2, v4}, Lcom/google/android/material/resources/CancelableFontCallback;-><init>(Lcom/google/android/material/internal/CollapsingTextHelper$1;Landroid/graphics/Typeface;)V

    .line 70
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    .line 73
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    move-result-object p1

    .line 78
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    .line 79
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 81
    invoke-virtual {p0, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    .line 84
    return-void
    .line 87
.end method

.method public final setCollapsedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 6
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final setCollapsedTextGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    .line 6
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final setCollapsedTypefaceInternal(Landroid/graphics/Typeface;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iput-boolean v1, v0, Lcom/google/android/material/resources/CancelableFontCallback;->cancelled:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    .line 9
    if-eq v0, p1, :cond_2

    .line 11
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    .line 13
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    move-result-object v0

    .line 28
    invoke-static {v0, p1}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 29
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceBold:Landroid/graphics/Typeface;

    .line 33
    if-nez p1, :cond_1

    .line 35
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    .line 37
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 39
    return v1

    .line 41
    :cond_2
    const/4 p0, 0x0

    .line 42
    return p0
    .line 43
.end method

.method public final setExpandedTextAppearance(I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    .line 2
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v2

    .line 9
    invoke-direct {v0, v2, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 10
    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 13
    if-eqz p1, :cond_0

    .line 15
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 17
    :cond_0
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    .line 19
    const/4 v2, 0x0

    .line 21
    cmpl-float v2, p1, v2

    .line 22
    if-eqz v2, :cond_1

    .line 24
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    .line 26
    :cond_1
    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    .line 28
    if-eqz p1, :cond_2

    .line 30
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowColor:Landroid/content/res/ColorStateList;

    .line 32
    :cond_2
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    .line 34
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDx:F

    .line 36
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    .line 38
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDy:F

    .line 40
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    .line 42
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowRadius:F

    .line 44
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->letterSpacing:F

    .line 46
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    .line 48
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    .line 50
    const/4 v2, 0x1

    .line 52
    if-eqz p1, :cond_3

    .line 53
    iput-boolean v2, p1, Lcom/google/android/material/resources/CancelableFontCallback;->cancelled:Z

    .line 55
    :cond_3
    new-instance p1, Lcom/google/android/material/resources/CancelableFontCallback;

    .line 57
    new-instance v3, Lcom/google/android/material/internal/CollapsingTextHelper$1;

    .line 59
    invoke-direct {v3, p0, v2}, Lcom/google/android/material/internal/CollapsingTextHelper$1;-><init>(Lcom/google/android/material/internal/CollapsingTextHelper;I)V

    .line 61
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->createFallbackFont()V

    .line 64
    iget-object v2, v0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 67
    invoke-direct {p1, v3, v2}, Lcom/google/android/material/resources/CancelableFontCallback;-><init>(Lcom/google/android/material/internal/CollapsingTextHelper$1;Landroid/graphics/Typeface;)V

    .line 69
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    move-result-object p1

    .line 77
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    .line 78
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 80
    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    .line 84
    return-void
    .line 87
.end method

.method public final setExpandedTypefaceInternal(Landroid/graphics/Typeface;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iput-boolean v1, v0, Lcom/google/android/material/resources/CancelableFontCallback;->cancelled:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    .line 9
    if-eq v0, p1, :cond_2

    .line 11
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    .line 13
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    move-result-object v0

    .line 28
    invoke-static {v0, p1}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 29
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceBold:Landroid/graphics/Typeface;

    .line 33
    if-nez p1, :cond_1

    .line 35
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    .line 37
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    .line 39
    return v1

    .line 41
    :cond_2
    const/4 p0, 0x0

    .line 42
    return p0
    .line 43
.end method

.method public final setExpansionFraction(F)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    if-gez v1, :cond_0

    .line 7
    move p1, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    cmpl-float v1, p1, v2

    .line 11
    if-lez v1, :cond_1

    .line 13
    move p1, v2

    .line 15
    :cond_1
    :goto_0
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    .line 16
    cmpl-float v1, p1, v1

    .line 18
    if-eqz v1, :cond_a

    .line 20
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    .line 22
    iget-boolean v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    .line 24
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    .line 26
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 28
    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 30
    if-eqz v1, :cond_3

    .line 32
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    .line 34
    cmpg-float v1, p1, v1

    .line 36
    if-gez v1, :cond_2

    .line 38
    move-object v4, v5

    .line 40
    :cond_2
    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 41
    goto :goto_1

    .line 44
    :cond_3
    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 45
    int-to-float v1, v1

    .line 47
    iget v6, v4, Landroid/graphics/Rect;->left:I

    .line 48
    int-to-float v6, v6

    .line 50
    iget-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 51
    invoke-static {v1, v6, p1, v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 53
    move-result v1

    .line 56
    iput v1, v3, Landroid/graphics/RectF;->left:F

    .line 57
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    .line 59
    iget v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    .line 61
    iget-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 63
    invoke-static {v1, v6, p1, v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 65
    move-result v1

    .line 68
    iput v1, v3, Landroid/graphics/RectF;->top:F

    .line 69
    iget v1, v5, Landroid/graphics/Rect;->right:I

    .line 71
    int-to-float v1, v1

    .line 73
    iget v6, v4, Landroid/graphics/Rect;->right:I

    .line 74
    int-to-float v6, v6

    .line 76
    iget-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 77
    invoke-static {v1, v6, p1, v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 79
    move-result v1

    .line 82
    iput v1, v3, Landroid/graphics/RectF;->right:F

    .line 83
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 85
    int-to-float v1, v1

    .line 87
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 88
    int-to-float v4, v4

    .line 90
    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 91
    invoke-static {v1, v4, p1, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 93
    move-result v1

    .line 96
    iput v1, v3, Landroid/graphics/RectF;->bottom:F

    .line 97
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    .line 99
    if-eqz v1, :cond_5

    .line 101
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    .line 103
    cmpg-float v1, p1, v1

    .line 105
    if-gez v1, :cond_4

    .line 107
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    .line 109
    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    .line 111
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    .line 113
    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    .line 115
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 117
    move v1, v0

    .line 120
    goto :goto_2

    .line 121
    :cond_4
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    .line 122
    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    .line 124
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    .line 126
    const/4 v3, 0x0

    .line 128
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentOffsetY:I

    .line 129
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 131
    move-result v3

    .line 134
    int-to-float v3, v3

    .line 135
    sub-float/2addr v1, v3

    .line 136
    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    .line 137
    invoke-virtual {p0, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 139
    move v1, v2

    .line 142
    goto :goto_2

    .line 143
    :cond_5
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    .line 144
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    .line 146
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 148
    invoke-static {v1, v3, p1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 150
    move-result v1

    .line 153
    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    .line 154
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    .line 156
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    .line 158
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 160
    invoke-static {v1, v3, p1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 162
    move-result v1

    .line 165
    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    .line 166
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 168
    move v1, p1

    .line 171
    :goto_2
    sub-float v3, v2, p1

    .line 172
    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 174
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 176
    move-result v3

    .line 179
    sub-float v3, v2, v3

    .line 180
    iput v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextBlend:F

    .line 182
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 184
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 186
    invoke-static {v3}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 188
    invoke-static {v2, v0, p1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 191
    move-result v5

    .line 194
    iput v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextBlend:F

    .line 195
    invoke-static {v3}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 197
    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 200
    iget-object v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 202
    iget-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 204
    if-eq v5, v6, :cond_6

    .line 206
    invoke-virtual {p0, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    .line 208
    move-result v5

    .line 211
    iget-object v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 212
    invoke-virtual {p0, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    .line 214
    move-result v6

    .line 217
    invoke-static {v1, v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->blendARGB(FII)I

    .line 218
    move-result v1

    .line 221
    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 222
    goto :goto_3

    .line 225
    :cond_6
    invoke-virtual {p0, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    .line 226
    move-result v1

    .line 229
    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 230
    :goto_3
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedLetterSpacing:F

    .line 233
    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    .line 235
    cmpl-float v6, v1, v5

    .line 237
    if-eqz v6, :cond_7

    .line 239
    invoke-static {v5, v1, p1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 241
    move-result v1

    .line 244
    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 245
    goto :goto_4

    .line 248
    :cond_7
    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 249
    :goto_4
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowRadius:F

    .line 252
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowRadius:F

    .line 254
    const/4 v5, 0x0

    .line 256
    invoke-static {v1, v4, p1, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 257
    move-result v1

    .line 260
    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    .line 261
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDx:F

    .line 263
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDx:F

    .line 265
    invoke-static {v1, v4, p1, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 267
    move-result v1

    .line 270
    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    .line 271
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDy:F

    .line 273
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDy:F

    .line 275
    invoke-static {v1, v4, p1, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    .line 277
    move-result v1

    .line 280
    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    .line 281
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowColor:Landroid/content/res/ColorStateList;

    .line 283
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    .line 285
    move-result v1

    .line 288
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowColor:Landroid/content/res/ColorStateList;

    .line 289
    invoke-virtual {p0, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    .line 291
    move-result v4

    .line 294
    invoke-static {p1, v1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->blendARGB(FII)I

    .line 295
    move-result v1

    .line 298
    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowColor:I

    .line 299
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    .line 301
    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    .line 303
    iget v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    .line 305
    invoke-virtual {v7, v4, v5, v6, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 307
    iget-boolean v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    .line 310
    if-eqz v1, :cond_9

    .line 312
    invoke-virtual {v7}, Landroid/text/TextPaint;->getAlpha()I

    .line 314
    move-result v1

    .line 317
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    .line 318
    cmpg-float v5, p1, v4

    .line 320
    if-gtz v5, :cond_8

    .line 322
    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeStartFraction:F

    .line 324
    invoke-static {v2, v0, p0, v4, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    .line 326
    move-result p0

    .line 329
    goto :goto_5

    .line 330
    :cond_8
    invoke-static {v0, v2, v4, v2, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    .line 331
    move-result p0

    .line 334
    :goto_5
    int-to-float p1, v1

    .line 335
    mul-float/2addr p0, p1

    .line 336
    float-to-int p0, p0

    .line 337
    invoke-virtual {v7, p0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 338
    :cond_9
    invoke-static {v3}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 341
    :cond_a
    return-void
    .line 344
.end method

.method public final setInterpolatedTextSize(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(FZ)V

    .line 3
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 6
    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 8
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 10
    return-void
    .line 13
.end method

.method public final setState([I)Z
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->state:[I

    .line 2
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 4
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 10
    move-result p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 16
    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 20
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    :cond_1
    move p1, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    move p1, v1

    .line 28
    :goto_0
    if-eqz p1, :cond_3

    .line 29
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    .line 31
    return v0

    .line 34
    :cond_3
    return v1
    .line 35
.end method
