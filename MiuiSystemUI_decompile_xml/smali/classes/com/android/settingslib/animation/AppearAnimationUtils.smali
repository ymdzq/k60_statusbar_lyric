.class public Lcom/android/settingslib/animation/AppearAnimationUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;


# instance fields
.field public mAppearing:Z

.field public final mDelayScale:F

.field public final mDuration:J

.field public final mInterpolator:Landroid/view/animation/Interpolator;

.field public final mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

.field public mRowTranslationScaler:Lcom/android/settingslib/animation/DisappearAnimationUtils$1;

.field public final mStartTranslation:F


# direct methods
.method public constructor <init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    .line 5
    invoke-direct {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    .line 10
    iput-object p6, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p1

    .line 17
    const p6, 0x7f0700a0    # @dimen/appear_y_translation_start '32.0dp'

    .line 18
    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 21
    move-result p1

    .line 24
    int-to-float p1, p1

    .line 25
    mul-float/2addr p1, p4

    .line 26
    iput p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mStartTranslation:F

    .line 27
    iput p5, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDelayScale:F

    .line 29
    iput-wide p2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDuration:J

    .line 31
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    .line 34
    return-void
    .line 36
.end method

.method public static createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 11

    move-object v0, p0

    if-eqz v0, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p6, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz p6, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move/from16 v5, p5

    :goto_1
    sub-float/2addr v1, v3

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    sub-float v1, p5, v5

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    .line 5
    new-instance v1, Landroid/view/RenderNodeAnimator;

    const/16 v4, 0xb

    invoke-direct {v1, v4, v3}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 6
    invoke-virtual {v1, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    goto :goto_2

    .line 7
    :cond_2
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v2, [F

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v4, v6

    const/4 v6, 0x1

    aput v3, v4, v6

    invoke-static {p0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_2
    move-object/from16 v6, p7

    .line 8
    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide v7, p3

    .line 9
    invoke-virtual {v1, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-wide v9, p1

    .line 10
    invoke-virtual {v1, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    .line 12
    invoke-virtual {p0, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 13
    new-instance v2, Lcom/android/settingslib/animation/AppearAnimationUtils$1;

    invoke-direct {v2, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    :cond_3
    new-instance v2, Lcom/android/settingslib/animation/AppearAnimationUtils$2;

    move-object/from16 v4, p8

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settingslib/animation/AppearAnimationUtils$2;-><init>(Landroid/view/View;FLjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 15
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object/from16 v6, p7

    .line 16
    invoke-static/range {v0 .. v6}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    :cond_4
    return-void
.end method

.method public static startTranslationYAnimation(Landroid/view/View;JFLandroid/view/animation/Interpolator;)V
    .locals 7

    const-wide/16 v1, 0x0

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V
    .locals 5

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {v0, v1, p5}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 4
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v2, v3

    aput p5, v2, v1

    .line 7
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 8
    :goto_0
    invoke-virtual {v0, p6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    invoke-virtual {v0, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 10
    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 11
    new-instance p1, Lcom/android/settingslib/animation/AppearAnimationUtils$3;

    invoke-direct {p1, p5, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils$3;-><init>(FLandroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public calculateDelay(II)J
    .locals 6

    .line 1
    mul-int/lit8 v0, p1, 0x28

    .line 2
    int-to-double v0, v0

    .line 4
    int-to-double v2, p2

    .line 5
    int-to-double p1, p1

    .line 6
    const-wide v4, 0x3fd999999999999aL    # 0.4

    .line 7
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 12
    move-result-wide p1

    .line 15
    add-double/2addr p1, v4

    .line 16
    mul-double/2addr p1, v2

    .line 17
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    .line 18
    mul-double/2addr p1, v2

    .line 20
    add-double/2addr p1, v0

    .line 21
    iget p0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDelayScale:F

    .line 22
    float-to-double v0, p0

    .line 24
    mul-double/2addr p1, v0

    .line 25
    double-to-long p0, p1

    .line 26
    return-wide p0
    .line 27
.end method

.method public final bridge synthetic createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-static/range {p1 .. p9}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    .line 6
    const/4 v3, -0x1

    .line 8
    iput v3, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 9
    iput v3, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 11
    array-length v4, v1

    .line 13
    new-array v4, v4, [[J

    .line 14
    iput-object v4, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    .line 16
    const/4 v4, 0x0

    .line 18
    const-wide/16 v5, -0x1

    .line 19
    move v7, v4

    .line 21
    :goto_0
    array-length v8, v1

    .line 22
    if-ge v7, v8, :cond_2

    .line 23
    aget-object v8, v1, v7

    .line 25
    iget-object v9, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    .line 27
    array-length v10, v8

    .line 29
    new-array v10, v10, [J

    .line 30
    aput-object v10, v9, v7

    .line 32
    move v9, v4

    .line 34
    :goto_1
    array-length v10, v8

    .line 35
    if-ge v9, v10, :cond_1

    .line 36
    invoke-virtual {v0, v7, v9}, Lcom/android/settingslib/animation/AppearAnimationUtils;->calculateDelay(II)J

    .line 38
    move-result-wide v10

    .line 41
    iget-object v12, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    .line 42
    aget-object v12, v12, v7

    .line 44
    aput-wide v10, v12, v9

    .line 46
    aget-object v12, v1, v7

    .line 48
    aget-object v12, v12, v9

    .line 50
    if-eqz v12, :cond_0

    .line 52
    cmp-long v12, v10, v5

    .line 54
    if-lez v12, :cond_0

    .line 56
    iput v9, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 58
    iput v7, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 60
    move-wide v5, v10

    .line 62
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 63
    goto :goto_1

    .line 65
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 66
    goto :goto_0

    .line 68
    :cond_2
    iget v5, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 69
    if-eq v5, v3, :cond_8

    .line 71
    iget v5, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 73
    if-ne v5, v3, :cond_3

    .line 75
    goto :goto_7

    .line 77
    :cond_3
    move v3, v4

    .line 78
    :goto_2
    iget-object v5, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    .line 79
    array-length v6, v5

    .line 81
    if-ge v3, v6, :cond_9

    .line 82
    aget-object v6, v5, v3

    .line 84
    iget-object v7, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mRowTranslationScaler:Lcom/android/settingslib/animation/DisappearAnimationUtils$1;

    .line 86
    if-eqz v7, :cond_4

    .line 88
    array-length v5, v5

    .line 90
    sub-int v7, v5, v3

    .line 91
    int-to-double v7, v7

    .line 93
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 94
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 96
    move-result-wide v7

    .line 99
    int-to-double v9, v5

    .line 100
    div-double/2addr v7, v9

    .line 101
    double-to-float v5, v7

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    const/high16 v5, 0x3f800000    # 1.0f

    .line 104
    :goto_3
    iget v7, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mStartTranslation:F

    .line 106
    mul-float/2addr v5, v7

    .line 108
    move v7, v4

    .line 109
    :goto_4
    array-length v8, v6

    .line 110
    if-ge v7, v8, :cond_7

    .line 111
    aget-wide v11, v6, v7

    .line 113
    iget v8, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 115
    if-ne v8, v3, :cond_5

    .line 117
    iget v8, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 119
    if-ne v8, v7, :cond_5

    .line 121
    move-object/from16 v18, p2

    .line 123
    goto :goto_5

    .line 125
    :cond_5
    const/4 v8, 0x0

    .line 126
    move-object/from16 v18, v8

    .line 127
    :goto_5
    aget-object v8, v1, v3

    .line 129
    aget-object v10, v8, v7

    .line 131
    iget-wide v13, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDuration:J

    .line 133
    iget-boolean v8, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    .line 135
    if-eqz v8, :cond_6

    .line 137
    move v15, v5

    .line 139
    goto :goto_6

    .line 140
    :cond_6
    neg-float v9, v5

    .line 141
    move v15, v9

    .line 142
    :goto_6
    iget-object v9, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 143
    move-object/from16 v17, v9

    .line 145
    move-object/from16 v9, p3

    .line 147
    move/from16 v16, v8

    .line 149
    invoke-interface/range {v9 .. v18}, Lcom/android/settingslib/animation/AppearAnimationCreator;->createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 151
    add-int/lit8 v7, v7, 0x1

    .line 154
    goto :goto_4

    .line 156
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 157
    goto :goto_2

    .line 159
    :cond_8
    :goto_7
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    .line 160
    :cond_9
    return-void
    .line 163
.end method
