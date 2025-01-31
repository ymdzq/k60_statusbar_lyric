.class public final Lcom/android/systemui/animation/LaunchAnimator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final SRC_MODE:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field public final cornerRadii:[F

.field public final interpolators:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

.field public final launchContainerLocation:[I

.field public final timings:Lcom/android/systemui/animation/LaunchAnimator$Timings;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    sput-object v0, Lcom/android/systemui/animation/LaunchAnimator;->SRC_MODE:Landroid/graphics/PorterDuffXfermode;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Lcom/android/systemui/animation/LaunchAnimator$Timings;Lcom/android/systemui/animation/LaunchAnimator$Interpolators;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/animation/LaunchAnimator;->timings:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/animation/LaunchAnimator;->interpolators:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    .line 7
    const/4 p1, 0x2

    .line 9
    new-array p1, p1, [I

    .line 10
    iput-object p1, p0, Lcom/android/systemui/animation/LaunchAnimator;->launchContainerLocation:[I

    .line 12
    const/16 p1, 0x8

    .line 14
    new-array p1, p1, [F

    .line 16
    iput-object p1, p0, Lcom/android/systemui/animation/LaunchAnimator;->cornerRadii:[F

    .line 18
    return-void
    .line 20
.end method


# virtual methods
.method public final isExpandingFullyAbove$packages__apps__MiuiSystemUI__packages__SystemUI__animation__android_common__MiuiSystemUIAnimationLib(Landroid/view/View;Lcom/android/systemui/animation/LaunchAnimator$State;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/LaunchAnimator;->launchContainerLocation:[I

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4
    iget v0, p2, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 7
    const/4 v1, 0x1

    .line 9
    aget v2, p0, v1

    .line 10
    const/4 v3, 0x0

    .line 12
    if-gt v0, v2, :cond_0

    .line 13
    iget v0, p2, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 17
    move-result v4

    .line 20
    add-int/2addr v4, v2

    .line 21
    if-lt v0, v4, :cond_0

    .line 22
    iget v0, p2, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 24
    aget p0, p0, v3

    .line 26
    if-gt v0, p0, :cond_0

    .line 28
    iget p2, p2, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 32
    move-result p1

    .line 35
    add-int/2addr p1, p0

    .line 36
    if-lt p2, p1, :cond_0

    .line 37
    goto :goto_0

    .line 39
    :cond_0
    move v1, v3

    .line 40
    :goto_0
    return v1
    .line 41
.end method

.method public final startAnimation(Lcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;IZZ)Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;
    .locals 36

    .line 1
    move-object/from16 v2, p0

    .line 2
    move-object/from16 v15, p2

    .line 4
    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 6
    move-result-object v7

    .line 9
    iget v8, v7, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 10
    iget v10, v7, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 12
    iget v0, v7, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 14
    iget v1, v7, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 16
    add-int v3, v0, v1

    .line 18
    int-to-float v3, v3

    .line 20
    const/high16 v4, 0x40000000    # 2.0f

    .line 21
    div-float/2addr v3, v4

    .line 23
    sub-int v5, v1, v0

    .line 24
    iget v12, v7, Lcom/android/systemui/animation/LaunchAnimator$State;->topCornerRadius:F

    .line 26
    iget v14, v7, Lcom/android/systemui/animation/LaunchAnimator$State;->bottomCornerRadius:F

    .line 28
    new-instance v9, Lkotlin/jvm/internal/Ref$IntRef;

    .line 30
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 32
    iget v0, v15, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 35
    iput v0, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 37
    new-instance v11, Lkotlin/jvm/internal/Ref$IntRef;

    .line 39
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 41
    iget v0, v15, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 44
    iput v0, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 46
    new-instance v13, Lkotlin/jvm/internal/Ref$IntRef;

    .line 48
    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 50
    iget v0, v15, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 53
    iput v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 55
    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    .line 57
    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 59
    iget v0, v15, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 62
    iput v0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 64
    new-instance v0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 66
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 68
    iget v1, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 71
    iget v4, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 73
    add-int/2addr v1, v4

    .line 75
    int-to-float v1, v1

    .line 76
    const/high16 v4, 0x40000000    # 2.0f

    .line 77
    div-float/2addr v1, v4

    .line 79
    iput v1, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 80
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    .line 82
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 84
    iget v1, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 87
    move-object/from16 v16, v0

    .line 89
    iget v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 91
    sub-int/2addr v1, v0

    .line 93
    iput v1, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 94
    iget v0, v15, Lcom/android/systemui/animation/LaunchAnimator$State;->topCornerRadius:F

    .line 96
    iget v1, v15, Lcom/android/systemui/animation/LaunchAnimator$State;->bottomCornerRadius:F

    .line 98
    move/from16 v19, v14

    .line 100
    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    .line 102
    move-result-object v14

    .line 105
    invoke-virtual {v2, v14, v15}, Lcom/android/systemui/animation/LaunchAnimator;->isExpandingFullyAbove$packages__apps__MiuiSystemUI__packages__SystemUI__animation__android_common__MiuiSystemUIAnimationLib(Landroid/view/View;Lcom/android/systemui/animation/LaunchAnimator$State;)Z

    .line 106
    move-result v22

    .line 109
    new-instance v15, Landroid/graphics/drawable/GradientDrawable;

    .line 110
    invoke-direct {v15}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 112
    move/from16 v27, v0

    .line 115
    move/from16 v0, p3

    .line 117
    invoke-virtual {v15, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 119
    const/4 v0, 0x0

    .line 122
    invoke-virtual {v15, v0}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 123
    const/4 v0, 0x2

    .line 126
    new-array v0, v0, [F

    .line 127
    fill-array-data v0, :array_0

    .line 129
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 132
    move-result-object v0

    .line 135
    move/from16 v17, v1

    .line 136
    iget-object v1, v2, Lcom/android/systemui/animation/LaunchAnimator;->timings:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 138
    iget-wide v1, v1, Lcom/android/systemui/animation/LaunchAnimator$Timings;->totalDuration:J

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    sget-object v1, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 145
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 147
    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getOpeningWindowSyncView()Landroid/view/View;

    .line 150
    move-result-object v28

    .line 153
    if-eqz v28, :cond_0

    .line 154
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 156
    move-result-object v1

    .line 159
    goto :goto_0

    .line 160
    :cond_0
    const/4 v1, 0x0

    .line 161
    :goto_0
    move-object/from16 v29, v1

    .line 162
    if-eqz v28, :cond_1

    .line 164
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 166
    move-result-object v1

    .line 169
    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    .line 170
    move-result-object v2

    .line 173
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 174
    move-result-object v2

    .line 177
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    move-result v1

    .line 181
    if-nez v1, :cond_1

    .line 182
    const/4 v1, 0x1

    .line 184
    move/from16 v30, v1

    .line 185
    goto :goto_1

    .line 187
    :cond_1
    const/16 v30, 0x0

    .line 188
    :goto_1
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 190
    move-result-object v23

    .line 193
    move-object/from16 v18, v23

    .line 194
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 196
    move/from16 v31, v17

    .line 198
    move-object v1, v2

    .line 200
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 201
    new-instance v20, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 204
    move-object/from16 v17, v20

    .line 206
    invoke-direct/range {v20 .. v20}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 208
    move-object/from16 p3, v2

    .line 211
    new-instance v2, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;

    .line 213
    move-object/from16 v20, v2

    .line 215
    move-object/from16 v21, p1

    .line 217
    move-object/from16 v24, v15

    .line 219
    move/from16 v25, v30

    .line 221
    move-object/from16 v26, v29

    .line 223
    invoke-direct/range {v20 .. v26}, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;-><init>(Lcom/android/systemui/animation/LaunchAnimator$Controller;ZLandroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;ZLandroid/view/ViewOverlay;)V

    .line 225
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 228
    new-instance v2, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;

    .line 231
    move-object/from16 v32, v0

    .line 233
    move/from16 v20, v27

    .line 235
    move-object v0, v2

    .line 237
    move-object/from16 v33, p3

    .line 238
    move-object/from16 v34, v2

    .line 240
    move-object/from16 v2, p0

    .line 242
    move-object/from16 v21, v4

    .line 244
    move-object/from16 v4, v16

    .line 246
    move-object/from16 v35, v6

    .line 248
    move-object/from16 v6, v21

    .line 250
    move-object/from16 v27, v13

    .line 252
    move/from16 v13, v20

    .line 254
    move-object/from16 v21, v14

    .line 256
    move/from16 v14, v19

    .line 258
    move-object/from16 v19, v15

    .line 260
    move/from16 v15, v31

    .line 262
    move/from16 v16, v30

    .line 264
    move-object/from16 v20, v29

    .line 266
    move-object/from16 v22, v28

    .line 268
    move-object/from16 v23, p1

    .line 270
    move/from16 v24, p4

    .line 272
    move/from16 v25, p5

    .line 274
    move-object/from16 v26, p2

    .line 276
    move-object/from16 v28, v35

    .line 278
    invoke-direct/range {v0 .. v28}, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/animation/LaunchAnimator;FLkotlin/jvm/internal/Ref$FloatRef;ILkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/animation/LaunchAnimator$State;ILkotlin/jvm/internal/Ref$IntRef;ILkotlin/jvm/internal/Ref$IntRef;FFFFZLkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;Landroid/view/ViewOverlay;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/animation/LaunchAnimator$Controller;ZZLcom/android/systemui/animation/LaunchAnimator$State;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 280
    move-object/from16 v0, v32

    .line 283
    move-object/from16 v1, v34

    .line 285
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 287
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 290
    new-instance v1, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;

    .line 293
    move-object/from16 v2, v33

    .line 295
    invoke-direct {v1, v2, v0}, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/animation/ValueAnimator;)V

    .line 297
    return-object v1

    .line 300
    nop

    .line 301
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 302
.end method
