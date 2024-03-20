.class public Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;
.super Lcom/android/wm/shell/common/transition/DefaultTransitionStub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final DEFAULT_ACTIVITY_TRANSITION_DURATION:I = 0x1f4

.field private static final DEFAULT_SWAP_TRANSITION_DURATION:I = 0x1c2

.field private static final DEFAULT_TASK_TRANSITION_DURATION:I = 0x28a

.field private static final DEFAULT_WALLPAPER_TRANSITION_DURATION:I = 0x226

.field private static final DEFAULT_WALLPAPER_TRANSITION_R_CTS_DURATION:I = 0x190

.field private static final ENABLE_SWAP_ANIMATION:Z

.field private static final IS_FOLD_DEVICE:Z

.field private static final TAG:Ljava/lang/String; = "DefaultTransitionImpl"

.field private static final TIME_RESET_SWAP_STATE:I = 0x5dc

.field private static final WHITE_LIST_LIMIT_ALPHA_ANIMATION:Ljava/util/ArrayList;

.field private static final WHITE_LIST_NEED_CONTROL_ANIMATION:Ljava/util/ArrayList;

.field private static final WHITE_LIST_NEED_CONTROL_ROTATION:Ljava/util/ArrayList;

.field private static sActivityTransitionInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mBlackCoverLeash:Landroid/view/SurfaceControl;

.field private mContext:Landroid/content/Context;

.field private mDimmer:Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;

.field private mFold:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitFold:Z

.field private mOnTimeout:Ljava/lang/Runnable;

.field private mScaleUpDownTransition:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;

.field private mSwapCount:I


# direct methods
.method public static synthetic $r8$lambda$MHRM6Ri4TDC-ldDbx8sSR2VdA80(Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->lambda$registerListener$0()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$yFcmnkhAncIfI06tgzWMbqzOp_4(Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->lambda$registerListener$1(Ljava/lang/Boolean;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fgetmBlackCoverLeash(Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;)Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mBlackCoverLeash:Landroid/view/SurfaceControl;

    .line 2
    return-object p0
    .line 4
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "persist.wm.debug.swap_animation"

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->ENABLE_SWAP_ANIMATION:Z

    .line 9
    const-string v0, "persist.sys.muiltdisplay_type"

    .line 11
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 14
    move-result v0

    .line 17
    const/4 v3, 0x2

    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    move v1, v2

    .line 22
    :goto_0
    sput-boolean v1, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->IS_FOLD_DEVICE:Z

    .line 23
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->sActivityTransitionInterpolator:Landroid/view/animation/Interpolator;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    sput-object v0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->WHITE_LIST_NEED_CONTROL_ANIMATION:Ljava/util/ArrayList;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    sput-object v1, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->WHITE_LIST_NEED_CONTROL_ROTATION:Ljava/util/ArrayList;

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    .line 42
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    sput-object v2, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->WHITE_LIST_LIMIT_ALPHA_ANIMATION:Ljava/util/ArrayList;

    .line 47
    const-string v3, "com.android.incallui"

    .line 49
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v3, "com.android.contacts"

    .line 54
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v3, "com.google.android.dialer"

    .line 59
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v0, "com.android.provision/.activities.LocalePickerActivity"

    .line 64
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v0, "com.ss.android.ugc.aweme/.splash.SplashActivity"

    .line 69
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
    .line 74
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;-><init>()V

    .line 2
    new-instance v0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;

    .line 5
    invoke-direct {v0}, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mScaleUpDownTransition:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mSwapCount:I

    .line 13
    iput-boolean v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mInitFold:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mFold:Z

    .line 17
    return-void
    .line 19
.end method

.method public static createActivityOpenCloseTransition(ZZFLandroid/graphics/Rect;Landroid/view/SurfaceControl;)Landroid/view/animation/Animation;
    .locals 23

    .line 1
    move/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move-object/from16 v2, p3

    .line 6
    move-object/from16 v3, p4

    .line 8
    new-instance v11, Landroid/view/animation/AnimationSet;

    .line 10
    const/4 v12, 0x1

    .line 12
    invoke-direct {v11, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 13
    const/4 v4, 0x0

    .line 16
    const/high16 v5, 0x3f000000    # 0.5f

    .line 17
    const/high16 v6, 0x3f800000    # 1.0f

    .line 19
    if-eqz v1, :cond_2

    .line 21
    if-eqz v0, :cond_0

    .line 23
    new-instance v13, Landroid/view/animation/TranslateAnimation;

    .line 25
    const/4 v3, 0x1

    .line 27
    const/4 v5, 0x1

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x1

    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v9, 0x1

    .line 32
    const/4 v10, 0x0

    .line 33
    move-object v2, v13

    .line 34
    move/from16 v4, p2

    .line 35
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 37
    invoke-virtual {v11, v12}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 40
    goto :goto_0

    .line 43
    :cond_0
    new-instance v13, Landroid/view/animation/TranslateAnimation;

    .line 44
    const/4 v15, 0x1

    .line 46
    const/16 v16, 0x0

    .line 47
    const/16 v17, 0x1

    .line 49
    const/high16 v18, -0x41800000    # -0.25f

    .line 51
    const/16 v19, 0x1

    .line 53
    const/16 v20, 0x0

    .line 55
    const/16 v21, 0x1

    .line 57
    const/16 v22, 0x0

    .line 59
    move-object v14, v13

    .line 61
    invoke-direct/range {v14 .. v22}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 62
    cmpg-float v7, p2, v6

    .line 65
    if-gez v7, :cond_1

    .line 67
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    .line 69
    invoke-direct {v2, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 71
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 74
    goto :goto_0

    .line 77
    :cond_1
    new-instance v6, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;

    .line 78
    invoke-direct {v6, v4, v5, v2, v3}, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;-><init>(FFLandroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    .line 80
    invoke-virtual {v11, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 83
    goto :goto_0

    .line 86
    :cond_2
    if-eqz v0, :cond_4

    .line 87
    new-instance v13, Landroid/view/animation/TranslateAnimation;

    .line 89
    const/4 v15, 0x1

    .line 91
    const/high16 v16, -0x41800000    # -0.25f

    .line 92
    const/16 v17, 0x1

    .line 94
    const/16 v18, 0x0

    .line 96
    const/16 v19, 0x1

    .line 98
    const/16 v20, 0x0

    .line 100
    const/16 v21, 0x1

    .line 102
    const/16 v22, 0x0

    .line 104
    move-object v14, v13

    .line 106
    invoke-direct/range {v14 .. v22}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 107
    cmpg-float v7, p2, v6

    .line 110
    if-gez v7, :cond_3

    .line 112
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    .line 114
    invoke-direct {v2, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 116
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 119
    goto :goto_0

    .line 122
    :cond_3
    new-instance v6, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;

    .line 123
    invoke-direct {v6, v5, v4, v2, v3}, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;-><init>(FFLandroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    .line 125
    invoke-virtual {v11, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 128
    goto :goto_0

    .line 131
    :cond_4
    new-instance v13, Landroid/view/animation/TranslateAnimation;

    .line 132
    const/4 v3, 0x1

    .line 134
    const/4 v4, 0x0

    .line 135
    const/4 v5, 0x1

    .line 136
    const/4 v7, 0x1

    .line 137
    const/4 v8, 0x0

    .line 138
    const/4 v9, 0x1

    .line 139
    const/4 v10, 0x0

    .line 140
    move-object v2, v13

    .line 141
    move/from16 v6, p2

    .line 142
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 144
    invoke-virtual {v11, v12}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 147
    :goto_0
    new-instance v2, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$ActivityTranstionInterpolator;

    .line 150
    const v3, 0x3f4ccccd    # 0.8f

    .line 152
    const v4, 0x3f733333    # 0.95f

    .line 155
    invoke-direct {v2, v3, v4}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$ActivityTranstionInterpolator;-><init>(FF)V

    .line 158
    sput-object v2, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->sActivityTransitionInterpolator:Landroid/view/animation/Interpolator;

    .line 161
    invoke-virtual {v11, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 163
    sget-object v2, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->sActivityTransitionInterpolator:Landroid/view/animation/Interpolator;

    .line 166
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 168
    const-wide/16 v2, 0x1f4

    .line 171
    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 173
    invoke-virtual {v11, v12}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    .line 176
    if-eq v1, v0, :cond_5

    .line 179
    const/4 v0, 0x0

    .line 181
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    .line 182
    :cond_5
    return-object v11
    .line 185
.end method

.method public static createTaskOpenCloseTransition(ZLandroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .locals 32

    .line 1
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    .line 8
    move-result v2

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    .line 12
    move-result v3

    .line 15
    const-wide/16 v4, 0x96

    .line 16
    if-eqz p2, :cond_1

    .line 18
    if-eqz p0, :cond_0

    .line 20
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .line 22
    const/4 v7, 0x1

    .line 24
    const/high16 v8, 0x3f800000    # 1.0f

    .line 25
    const/4 v9, 0x1

    .line 27
    const/4 v10, 0x0

    .line 28
    const/4 v11, 0x1

    .line 29
    const/4 v12, 0x0

    .line 30
    const/4 v13, 0x1

    .line 31
    const/4 v14, 0x0

    .line 32
    move-object v6, v15

    .line 33
    invoke-direct/range {v6 .. v14}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 34
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    .line 37
    const v17, 0x3f666666    # 0.9f

    .line 39
    const/high16 v18, 0x3f800000    # 1.0f

    .line 42
    const v19, 0x3f666666    # 0.9f

    .line 44
    const/high16 v20, 0x3f800000    # 1.0f

    .line 47
    div-int/lit8 v2, v2, 0x2

    .line 49
    int-to-float v2, v2

    .line 51
    div-int/lit8 v3, v3, 0x2

    .line 52
    int-to-float v3, v3

    .line 54
    move-object/from16 v16, v6

    .line 55
    move/from16 v21, v2

    .line 57
    move/from16 v22, v3

    .line 59
    invoke-direct/range {v16 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 61
    invoke-virtual {v6, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 64
    goto/16 :goto_1

    .line 67
    :cond_0
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    .line 69
    const/high16 v8, 0x3f800000    # 1.0f

    .line 71
    const v9, 0x3f666666    # 0.9f

    .line 73
    const/high16 v10, 0x3f800000    # 1.0f

    .line 76
    const v11, 0x3f666666    # 0.9f

    .line 78
    div-int/lit8 v2, v2, 0x2

    .line 81
    int-to-float v12, v2

    .line 83
    div-int/lit8 v3, v3, 0x2

    .line 84
    int-to-float v13, v3

    .line 86
    move-object v7, v6

    .line 87
    invoke-direct/range {v7 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 88
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .line 91
    const/4 v15, 0x1

    .line 93
    const/16 v16, 0x0

    .line 94
    const/16 v17, 0x1

    .line 96
    const/high16 v18, -0x40800000    # -1.0f

    .line 98
    const/16 v19, 0x1

    .line 100
    const/16 v20, 0x0

    .line 102
    const/16 v21, 0x1

    .line 104
    const/16 v22, 0x0

    .line 106
    move-object v14, v2

    .line 108
    invoke-direct/range {v14 .. v22}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 109
    goto :goto_0

    .line 112
    :cond_1
    if-eqz p0, :cond_2

    .line 113
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .line 115
    const/16 v24, 0x1

    .line 117
    const/high16 v25, -0x40800000    # -1.0f

    .line 119
    const/16 v26, 0x1

    .line 121
    const/16 v27, 0x0

    .line 123
    const/16 v28, 0x1

    .line 125
    const/16 v29, 0x0

    .line 127
    const/16 v30, 0x1

    .line 129
    const/16 v31, 0x0

    .line 131
    move-object/from16 v23, v15

    .line 133
    invoke-direct/range {v23 .. v31}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 135
    new-instance v13, Landroid/view/animation/ScaleAnimation;

    .line 138
    const v7, 0x3f666666    # 0.9f

    .line 140
    const/high16 v8, 0x3f800000    # 1.0f

    .line 143
    const v9, 0x3f666666    # 0.9f

    .line 145
    const/high16 v10, 0x3f800000    # 1.0f

    .line 148
    div-int/lit8 v2, v2, 0x2

    .line 150
    int-to-float v11, v2

    .line 152
    div-int/lit8 v3, v3, 0x2

    .line 153
    int-to-float v12, v3

    .line 155
    move-object v6, v13

    .line 156
    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 157
    invoke-virtual {v13, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 160
    goto :goto_1

    .line 163
    :cond_2
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    .line 164
    const/high16 v17, 0x3f800000    # 1.0f

    .line 166
    const v18, 0x3f666666    # 0.9f

    .line 168
    const/high16 v19, 0x3f800000    # 1.0f

    .line 171
    const v20, 0x3f666666    # 0.9f

    .line 173
    div-int/lit8 v2, v2, 0x2

    .line 176
    int-to-float v2, v2

    .line 178
    div-int/lit8 v3, v3, 0x2

    .line 179
    int-to-float v3, v3

    .line 181
    move-object/from16 v16, v6

    .line 182
    move/from16 v21, v2

    .line 184
    move/from16 v22, v3

    .line 186
    invoke-direct/range {v16 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 188
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .line 191
    const/4 v8, 0x1

    .line 193
    const/4 v9, 0x0

    .line 194
    const/4 v10, 0x1

    .line 195
    const/high16 v11, 0x3f800000    # 1.0f

    .line 196
    const/4 v12, 0x1

    .line 198
    const/4 v13, 0x0

    .line 199
    const/4 v14, 0x1

    .line 200
    const/4 v15, 0x0

    .line 201
    move-object v7, v2

    .line 202
    invoke-direct/range {v7 .. v15}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 203
    :goto_0
    move-object v15, v2

    .line 206
    :goto_1
    new-instance v2, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$ActivityTranstionInterpolator;

    .line 207
    const v3, 0x3f19999a    # 0.6f

    .line 209
    const v4, 0x3f7d70a4    # 0.99f

    .line 212
    invoke-direct {v2, v3, v4}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$ActivityTranstionInterpolator;-><init>(FF)V

    .line 215
    sput-object v2, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->sActivityTransitionInterpolator:Landroid/view/animation/Interpolator;

    .line 218
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 220
    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 223
    sget-object v2, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->sActivityTransitionInterpolator:Landroid/view/animation/Interpolator;

    .line 226
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 228
    const-wide/16 v2, 0x28a

    .line 231
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 233
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    .line 236
    return-object v0
    .line 239
.end method

.method private isWallpaperCloseTransition(I)Z
    .locals 0

    .line 1
    const/16 p0, 0x12

    .line 2
    if-eq p1, p0, :cond_1

    .line 4
    const/16 p0, 0x13

    .line 6
    if-ne p1, p0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
    .line 14
.end method

.method private isWallpaperOpenTransition(I)Z
    .locals 0

    .line 1
    const/16 p0, 0x10

    .line 2
    if-eq p1, p0, :cond_1

    .line 4
    const/16 p0, 0x11

    .line 6
    if-ne p1, p0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
    .line 14
.end method

.method private synthetic lambda$registerListener$0()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "Reset swap count to 0 after 1500ms, Before: mSwapCount = "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mSwapCount:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    const-string v1, "DefaultTransitionImpl"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mSwapCount:I

    .line 24
    return-void
    .line 26
.end method

.method private synthetic lambda$registerListener$1(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mInitFold:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    iput-boolean v1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mInitFold:Z

    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    move-result p1

    .line 12
    iput-boolean p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mFold:Z

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mFold:Z

    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    move-result v2

    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    move-result p1

    .line 27
    iput-boolean p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mFold:Z

    .line 28
    iget p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mSwapCount:I

    .line 30
    add-int/2addr p1, v1

    .line 32
    iput p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mSwapCount:I

    .line 33
    iget-object p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mHandler:Landroid/os/Handler;

    .line 35
    iget-object v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mOnTimeout:Ljava/lang/Runnable;

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    iget-object p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mHandler:Landroid/os/Handler;

    .line 42
    iget-object v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mOnTimeout:Ljava/lang/Runnable;

    .line 44
    const-wide/16 v1, 0x5dc

    .line 46
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    const-string v0, "Screen swap, need to start swap animation, mSwapCount = "

    .line 53
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    iget p0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mSwapCount:I

    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    const-string p1, "DefaultTransitionImpl"

    .line 67
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_1
    :goto_0
    return-void
    .line 72
.end method

.method private updateToTranslucentAnimIfNeeded(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const p0, 0x10a0012    # @android:anim/activity_translucent_open_enter

    .line 4
    return p0

    .line 7
    :cond_0
    const p0, 0x10a0011    # @android:anim/activity_translucent_close_exit

    .line 8
    return p0
    .line 11
.end method


# virtual methods
.method public allowDisplayRotationAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;I)Z
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 2
    move-result p0

    .line 5
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 6
    move-result v0

    .line 9
    invoke-static {v0, p0}, Landroid/util/RotationUtils;->deltaRotation(II)I

    .line 10
    move-result p0

    .line 13
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 18
    move-result v0

    .line 21
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 26
    move-result v1

    .line 29
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 34
    move-result v2

    .line 37
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 38
    move-result-object p2

    .line 41
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 42
    move-result p2

    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x1

    .line 47
    if-le v2, v0, :cond_0

    .line 48
    move v5, v4

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move v5, v3

    .line 52
    :goto_0
    if-le p2, v1, :cond_1

    .line 53
    move v6, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v6, v3

    .line 57
    :goto_1
    if-ne v5, v6, :cond_3

    .line 58
    if-ne v2, v0, :cond_2

    .line 60
    if-eq p2, v1, :cond_3

    .line 62
    :cond_2
    move p2, v4

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    move p2, v3

    .line 66
    :goto_2
    if-nez p0, :cond_a

    .line 67
    if-eqz p2, :cond_4

    .line 69
    goto :goto_6

    .line 71
    :cond_4
    sub-int/2addr p3, v4

    .line 72
    :goto_3
    if-ltz p3, :cond_a

    .line 73
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 75
    move-result-object p0

    .line 78
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object p0

    .line 82
    check-cast p0, Landroid/window/TransitionInfo$Change;

    .line 83
    const/16 p2, 0x4200

    .line 85
    invoke-virtual {p0, p2}, Landroid/window/TransitionInfo$Change;->hasAllFlags(I)Z

    .line 87
    move-result p2

    .line 90
    if-eqz p2, :cond_5

    .line 91
    goto :goto_5

    .line 93
    :cond_5
    const p2, 0x10102

    .line 94
    invoke-virtual {p0, p2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 97
    move-result p2

    .line 100
    if-eqz p2, :cond_6

    .line 101
    goto :goto_5

    .line 103
    :cond_6
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 104
    move-result-object p2

    .line 107
    if-nez p2, :cond_7

    .line 108
    goto :goto_5

    .line 110
    :cond_7
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 111
    move-result p2

    .line 114
    invoke-static {p2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 115
    move-result p2

    .line 118
    if-eqz p2, :cond_9

    .line 119
    move p2, v3

    .line 121
    :goto_4
    sget-object v0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->WHITE_LIST_NEED_CONTROL_ROTATION:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 124
    move-result v1

    .line 127
    if-ge p2, v1, :cond_9

    .line 128
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 130
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 137
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    move-result-object v0

    .line 141
    check-cast v0, Ljava/lang/CharSequence;

    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 144
    move-result v0

    .line 147
    if-eqz v0, :cond_8

    .line 148
    return v3

    .line 150
    :cond_8
    add-int/lit8 p2, p2, 0x1

    .line 151
    goto :goto_4

    .line 153
    :cond_9
    :goto_5
    add-int/lit8 p3, p3, -0x1

    .line 154
    goto :goto_3

    .line 156
    :cond_a
    :goto_6
    return v4
    .line 157
.end method

.method public applyScaleTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mScaleUpDownTransition:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->mScaleTransformation:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;

    .line 4
    invoke-virtual {v0}, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;->clear()V

    .line 6
    instance-of v0, p5, Landroid/view/animation/AnimationSet;

    .line 9
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    check-cast p5, Landroid/view/animation/AnimationSet;

    .line 14
    invoke-virtual {p5}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    .line 16
    move-result-object p5

    .line 19
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 20
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    sub-int/2addr v0, v2

    .line 25
    move v3, v1

    .line 26
    :goto_0
    if-ltz v0, :cond_3

    .line 27
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 32
    check-cast v4, Landroid/view/animation/Animation;

    .line 33
    instance-of v5, v4, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$RadiusAnimation;

    .line 35
    if-eqz v5, :cond_0

    .line 37
    iget-object v5, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->mScaleTransformation:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;

    .line 39
    invoke-virtual {v4, p1, p2, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 41
    goto :goto_1

    .line 44
    :cond_0
    instance-of v4, v4, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleWithClipAnimation;

    .line 45
    if-eqz v4, :cond_1

    .line 47
    invoke-virtual {p6}, Landroid/view/animation/Transformation;->hasClipRect()Z

    .line 49
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    invoke-virtual {p6}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    .line 55
    move-result-object v3

    .line 58
    invoke-virtual {p3, p4, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 59
    move v3, v2

    .line 62
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    move v3, v1

    .line 66
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->mBackgroundForScale:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;

    .line 67
    if-eqz p1, :cond_7

    .line 69
    monitor-enter p1

    .line 71
    :try_start_0
    iget-object p2, p1, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;->mLeash:Landroid/view/SurfaceControl;

    .line 72
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 74
    if-eqz p2, :cond_7

    .line 75
    if-eqz v3, :cond_6

    .line 77
    monitor-enter p0

    .line 79
    :try_start_1
    invoke-virtual {p6}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    .line 80
    move-result-object p1

    .line 83
    iget-object p2, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->mRect:Landroid/graphics/Rect;

    .line 84
    invoke-virtual {p6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 86
    move-result-object p5

    .line 89
    iget-object p6, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->mBackgroundForScale:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;

    .line 90
    monitor-enter p6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    :try_start_2
    iget-object v0, p6, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;->mLeash:Landroid/view/SurfaceControl;

    .line 93
    monitor-exit p6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    if-eqz p1, :cond_5

    .line 96
    if-eqz p2, :cond_5

    .line 98
    if-eqz p5, :cond_5

    .line 100
    if-eqz v0, :cond_5

    .line 102
    if-nez p3, :cond_4

    .line 104
    goto :goto_2

    .line 106
    :cond_4
    const/16 p2, 0x9

    .line 107
    :try_start_3
    new-array p2, p2, [F

    .line 109
    invoke-virtual {p5, p2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 111
    const/4 p5, 0x2

    .line 114
    aget p5, p2, p5

    .line 115
    const/4 p6, 0x5

    .line 117
    aget p6, p2, p6

    .line 118
    aget v2, p2, v1

    .line 120
    const/4 v3, 0x4

    .line 122
    aget p2, p2, v3

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 125
    move-result v3

    .line 128
    int-to-float v3, v3

    .line 129
    mul-float/2addr v3, v2

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 131
    move-result p1

    .line 134
    int-to-float p1, p1

    .line 135
    mul-float/2addr p1, p2

    .line 136
    new-instance p2, Landroid/graphics/Rect;

    .line 137
    float-to-int v2, v3

    .line 139
    float-to-int p1, p1

    .line 140
    invoke-direct {p2, v1, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 141
    invoke-virtual {p3, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 144
    invoke-virtual {p3, v0, p5, p6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 147
    const/high16 p1, 0x3f800000    # 1.0f

    .line 150
    invoke-virtual {p3, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 152
    :cond_5
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 155
    goto :goto_3

    .line 156
    :catchall_0
    move-exception p1

    .line 157
    :try_start_4
    monitor-exit p6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    :try_start_5
    throw p1

    .line 159
    :catchall_1
    move-exception p1

    .line 160
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 161
    throw p1

    .line 162
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->mBackgroundForScale:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;

    .line 163
    monitor-enter p1

    .line 165
    :try_start_6
    iget-object p2, p1, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;->mLeash:Landroid/view/SurfaceControl;

    .line 166
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 168
    iget-object p1, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->mScaleTransformation:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;

    .line 169
    iget p1, p1, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;->mRadius:F

    .line 171
    invoke-virtual {p3, p2, p1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 173
    iget-object p0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->mScaleTransformation:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;

    .line 176
    iget p0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;->mRadius:F

    .line 178
    invoke-virtual {p3, p4, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 180
    goto :goto_4

    .line 183
    :catchall_2
    move-exception p0

    .line 184
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 185
    throw p0

    .line 186
    :catchall_3
    move-exception p0

    .line 187
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 188
    throw p0

    .line 189
    :cond_7
    :goto_4
    return-void
    .line 190
.end method

.method public applySwapAnimationTransformation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    instance-of p0, p2, Landroid/view/animation/AnimationSet;

    .line 2
    if-eqz p0, :cond_2

    .line 4
    check-cast p2, Landroid/view/animation/AnimationSet;

    .line 6
    invoke-virtual {p2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    .line 8
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 12
    move-result p2

    .line 15
    add-int/lit8 p2, p2, -0x1

    .line 16
    :goto_0
    if-ltz p2, :cond_2

    .line 18
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Landroid/view/animation/Animation;

    .line 24
    instance-of v1, v0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$BlackCoverLeashAlphaAnimation;

    .line 26
    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$BlackCoverLeashAlphaAnimation;

    .line 30
    iget-object v1, v0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$BlackCoverLeashAlphaAnimation;->this$0:Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;

    .line 32
    monitor-enter v1

    .line 34
    :try_start_0
    iget-object v2, v0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$BlackCoverLeashAlphaAnimation;->this$0:Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;

    .line 35
    invoke-static {v2}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->-$$Nest$fgetmBlackCoverLeash(Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;)Landroid/view/SurfaceControl;

    .line 37
    move-result-object v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    iget-object v2, v0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$BlackCoverLeashAlphaAnimation;->this$0:Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;

    .line 43
    invoke-static {v2}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->-$$Nest$fgetmBlackCoverLeash(Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;)Landroid/view/SurfaceControl;

    .line 45
    move-result-object v2

    .line 48
    iget v0, v0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$BlackCoverLeashAlphaAnimation;->mAlpha:F

    .line 49
    invoke-virtual {p1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 51
    :cond_0
    monitor-exit v1

    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0

    .line 58
    :cond_1
    :goto_1
    add-int/lit8 p2, p2, -0x1

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    return-void
    .line 62
.end method

.method public beginSchedThreads([IJI)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lmiui/process/ProcessManager;->beginSchedThreads([IJI)V

    .line 2
    return-void
    .line 5
.end method

.method public createAlphaAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 1
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-direct {p0, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 6
    const-wide/16 v0, 0x32

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 11
    return-object p0
    .line 14
.end method

.method public createBlackCoverLeashIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mSwapCount:I

    .line 2
    if-gtz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 7
    move-result v0

    .line 10
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 11
    move-result v1

    .line 14
    invoke-static {v1, v0}, Landroid/util/RotationUtils;->deltaRotation(II)I

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    return-void

    .line 21
    :cond_1
    monitor-enter p0

    .line 22
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    .line 23
    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 25
    const/4 v1, -0x3

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    .line 29
    move-result-object v0

    .line 32
    const-string v1, "blackCoverLeash of swapAnimation"

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 35
    move-result-object v0

    .line 38
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 39
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 43
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 47
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 51
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mBlackCoverLeash:Landroid/view/SurfaceControl;

    .line 55
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 57
    move-result-object p2

    .line 60
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 61
    iget-object p2, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mBlackCoverLeash:Landroid/view/SurfaceControl;

    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 68
    iget-object p2, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mBlackCoverLeash:Landroid/view/SurfaceControl;

    .line 71
    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, p2, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 74
    iget-object p2, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mBlackCoverLeash:Landroid/view/SurfaceControl;

    .line 77
    const v0, 0x7fffffff

    .line 79
    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 82
    iget-object p2, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mBlackCoverLeash:Landroid/view/SurfaceControl;

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mSwapCount:I

    .line 91
    add-int/lit8 p1, p1, -0x1

    .line 93
    iput p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mSwapCount:I

    .line 95
    const-string p1, "DefaultTransitionImpl"

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 99
    const-string v0, "BlackCoverLeash has been created, mSwapCount minus 1, mSwapCount = "

    .line 101
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    iget p0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mSwapCount:I

    .line 106
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 114
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 118
    :catchall_0
    move-exception p1

    .line 119
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    throw p1
    .line 121
.end method

.method public createWallpaperCloseTransitionAnimation(Z)Landroid/view/animation/Animation;
    .locals 13

    .line 1
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 5
    const/4 v2, 0x0

    .line 8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    if-eqz p1, :cond_0

    .line 11
    new-instance p1, Landroid/view/animation/ScaleAnimation;

    .line 13
    const/high16 v5, 0x3f000000    # 0.5f

    .line 15
    const/high16 v6, 0x3f800000    # 1.0f

    .line 17
    const/high16 v7, 0x3f000000    # 0.5f

    .line 19
    const/high16 v8, 0x3f800000    # 1.0f

    .line 21
    const/4 v9, 0x1

    .line 23
    const/high16 v10, 0x3f000000    # 0.5f

    .line 24
    const/4 v11, 0x1

    .line 26
    const/high16 v12, 0x3f000000    # 0.5f

    .line 27
    move-object v4, p1

    .line 29
    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 30
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    .line 33
    invoke-direct {v4, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 35
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 38
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 45
    invoke-direct {p1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 47
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 50
    :goto_0
    new-instance p1, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$ActivityTranstionInterpolator;

    .line 53
    const v2, 0x3f266666    # 0.65f

    .line 55
    const v3, 0x3f733333    # 0.95f

    .line 58
    invoke-direct {p1, v2, v3}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$ActivityTranstionInterpolator;-><init>(FF)V

    .line 61
    sput-object p1, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->sActivityTransitionInterpolator:Landroid/view/animation/Interpolator;

    .line 64
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->isCompatibilityMode()Z

    .line 69
    move-result p0

    .line 72
    if-eqz p0, :cond_1

    .line 73
    const-wide/16 p0, 0x190

    .line 75
    goto :goto_1

    .line 77
    :cond_1
    const-wide/16 p0, 0x226

    .line 78
    :goto_1
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    .line 83
    return-object v0
    .line 86
.end method

.method public dimAnimationDimmerAboveIfNeeded(Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)Landroid/view/animation/Animation;
    .locals 1

    .line 1
    instance-of p2, p1, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;

    .line 2
    if-eqz p2, :cond_0

    .line 4
    check-cast p1, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;

    .line 6
    iput-object p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mDimmer:Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;

    .line 8
    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p1, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->isFloatWindow:Z

    .line 11
    const/4 p2, 0x1

    .line 13
    iget v0, p1, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mFromAlpha:F

    .line 14
    invoke-virtual {p1, p3, p2, v0}, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->dim(Landroid/view/SurfaceControl$Transaction;IF)V

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mDimmer:Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;

    .line 19
    return-object p0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mDimmer:Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;

    .line 22
    const/4 p2, 0x0

    .line 24
    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->stopDim(Landroid/view/SurfaceControl$Transaction;)V

    .line 27
    iput-object p2, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mDimmer:Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;

    .line 30
    :cond_1
    return-object p2
    .line 32
.end method

.method public dimAnimationDimmerBelowIfNeeded(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Landroid/view/animation/Animation;
    .locals 3

    .line 1
    instance-of p0, p1, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;

    .line 2
    if-eqz p0, :cond_1

    .line 4
    check-cast p1, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;

    .line 6
    const/4 p0, 0x1

    .line 8
    iput-boolean p0, p1, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->isFloatWindow:Z

    .line 9
    const/4 p0, -0x1

    .line 11
    iget v0, p1, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mFromAlpha:F

    .line 12
    invoke-virtual {p1, p2, p0, v0}, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->dim(Landroid/view/SurfaceControl$Transaction;IF)V

    .line 14
    iget-object p0, p1, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mClipRect:Landroid/graphics/Rect;

    .line 17
    iget-object v0, p1, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 19
    invoke-virtual {p2, v0, p3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 21
    if-eqz p0, :cond_0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    iget p3, p0, Landroid/graphics/Rect;->right:I

    .line 28
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 30
    sub-int/2addr p3, v1

    .line 32
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 33
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 35
    sub-int/2addr v1, v2

    .line 37
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 38
    iget p3, p0, Landroid/graphics/Rect;->left:I

    .line 41
    int-to-float p3, p3

    .line 43
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 44
    int-to-float p0, p0

    .line 46
    invoke-virtual {p2, v0, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 47
    :cond_0
    return-object p1

    .line 50
    :cond_1
    const/4 p0, 0x0

    .line 51
    return-object p0
    .line 52
.end method

.method public disableTaskAnimation(ZLandroid/view/WindowManager$LayoutParams;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    return p0

    .line 5
    :cond_0
    if-eqz p1, :cond_1

    .line 6
    sget-object p1, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->WHITE_LIST_NEED_CONTROL_ANIMATION:Ljava/util/ArrayList;

    .line 8
    iget-object p2, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    const/4 p0, 0x1

    .line 18
    :cond_1
    return p0
    .line 19
.end method

.method public enableCustomTranslucentAnimation(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 4
    and-int/lit16 p0, p0, 0x80

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
    .line 13
.end method

.method public getScaleCurrentDuration(Landroid/window/TransitionInfo;F)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->isInNoAnimationDisplay()Z

    .line 2
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    const/4 p2, 0x0

    .line 8
    :cond_0
    return p2
    .line 9
.end method

.method public hasBlackCoverLeash()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mBlackCoverLeash:Landroid/view/SurfaceControl;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    monitor-exit p0

    .line 10
    return v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v0
    .line 14
.end method

.method public initContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mContext:Landroid/content/Context;

    .line 2
    return-void
    .line 4
.end method

.method public isCompatibilityMode()Z
    .locals 1

    .line 1
    const-string p0, "ro.miui.cts"

    .line 2
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    const-string v0, "1"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 13
    xor-int/lit8 p0, p0, 0x1

    .line 14
    const-string v0, "persist.sys.miui_optimization"

    .line 16
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    move-result p0

    .line 21
    xor-int/lit8 p0, p0, 0x1

    .line 22
    return p0
    .line 24
.end method

.method public isOpeningOrClosingType(I)Z
    .locals 1

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p1, p0, :cond_1

    .line 3
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    const/4 v0, 0x4

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :cond_1
    :goto_0
    return p0
    .line 16
.end method

.method public isScaleType(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mScaleUpDownTransition:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/16 p0, 0x67

    .line 7
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-ne p1, p0, :cond_0

    .line 11
    move p0, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p0, v1

    .line 15
    :goto_0
    if-nez p0, :cond_3

    .line 16
    const/16 p0, 0x68

    .line 18
    if-ne p1, p0, :cond_1

    .line 20
    move p0, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move p0, v1

    .line 24
    :goto_1
    if-eqz p0, :cond_2

    .line 25
    goto :goto_2

    .line 27
    :cond_2
    move v0, v1

    .line 28
    :cond_3
    :goto_2
    return v0
    .line 29
.end method

.method public isUseActivityAnimation(Landroid/window/TransitionInfo;)Z
    .locals 5

    .line 1
    const/4 p0, 0x0

    .line 2
    move v0, p0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 4
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ge v0, v1, :cond_1

    .line 13
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 15
    move-result-object v1

    .line 18
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 23
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 25
    move-result v3

    .line 28
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 29
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 35
    move-result v3

    .line 38
    const/4 v4, 0x7

    .line 39
    if-eq v3, v4, :cond_0

    .line 40
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->isAllowModifyAnimation()Z

    .line 42
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    move v0, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 50
    goto :goto_0

    .line 52
    :cond_1
    move v0, p0

    .line 53
    :goto_1
    move v1, p0

    .line 54
    :goto_2
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 55
    move-result-object v3

    .line 58
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 59
    move-result v3

    .line 62
    if-ge v1, v3, :cond_3

    .line 63
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 65
    move-result-object v3

    .line 68
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v3

    .line 72
    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 73
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 75
    move-result v4

    .line 78
    invoke-static {v4}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 79
    move-result v4

    .line 82
    if-eqz v4, :cond_2

    .line 83
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->isAllowModifyAnimation()Z

    .line 85
    move-result v3

    .line 88
    if-eqz v3, :cond_2

    .line 89
    move p1, v2

    .line 91
    goto :goto_3

    .line 92
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 93
    goto :goto_2

    .line 95
    :cond_3
    move p1, p0

    .line 96
    :goto_3
    if-eqz v0, :cond_4

    .line 97
    if-eqz p1, :cond_4

    .line 99
    move p0, v2

    .line 101
    :cond_4
    return p0
    .line 102
.end method

.method public loadMiuiDefaultTransitionNotCheck(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;I)Landroid/view/animation/Animation;
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 6
    move-result v1

    .line 9
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 10
    move-result v1

    .line 13
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-eqz v2, :cond_0

    .line 20
    move v2, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v2, v3

    .line 24
    :goto_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 25
    move-result-object v5

    .line 28
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 29
    move-result-object v6

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->isUseActivityAnimation(Landroid/window/TransitionInfo;)Z

    .line 33
    move-result p1

    .line 36
    const/4 v7, 0x3

    .line 37
    const/4 v8, 0x4

    .line 38
    const/4 v9, 0x2

    .line 39
    if-eqz p1, :cond_2

    .line 40
    if-ne v0, v7, :cond_1

    .line 42
    move v0, v4

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    if-ne v0, v8, :cond_2

    .line 46
    move v0, v9

    .line 48
    :cond_2
    :goto_1
    const/4 v10, 0x0

    .line 49
    if-eqz v2, :cond_4

    .line 50
    if-nez p1, :cond_4

    .line 52
    if-ne v0, v4, :cond_3

    .line 54
    invoke-static {v1, v5, v4}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->createTaskOpenCloseTransition(ZLandroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    .line 56
    move-result-object p1

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    if-ne v0, v9, :cond_6

    .line 61
    invoke-static {v1, v5, v3}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->createTaskOpenCloseTransition(ZLandroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    .line 63
    move-result-object p1

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 68
    if-ne v0, v4, :cond_5

    .line 70
    invoke-static {v1, v4, p1, v5, v6}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->createActivityOpenCloseTransition(ZZFLandroid/graphics/Rect;Landroid/view/SurfaceControl;)Landroid/view/animation/Animation;

    .line 72
    move-result-object p1

    .line 75
    goto :goto_2

    .line 76
    :cond_5
    if-ne v0, v9, :cond_6

    .line 77
    invoke-static {v1, v3, p1, v5, v6}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->createActivityOpenCloseTransition(ZZFLandroid/graphics/Rect;Landroid/view/SurfaceControl;)Landroid/view/animation/Animation;

    .line 79
    move-result-object p1

    .line 82
    goto :goto_2

    .line 83
    :cond_6
    move-object p1, v10

    .line 84
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->isOpeningOrClosingType(I)Z

    .line 85
    move-result v11

    .line 88
    if-eqz v11, :cond_8

    .line 89
    invoke-virtual {p2, v8}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 91
    move-result p2

    .line 94
    if-eqz p2, :cond_8

    .line 95
    if-eqz v2, :cond_8

    .line 97
    iget-object p2, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mContext:Landroid/content/Context;

    .line 99
    if-eqz p2, :cond_a

    .line 101
    if-ne v0, v9, :cond_7

    .line 103
    if-nez v1, :cond_a

    .line 105
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->updateToTranslucentAnimIfNeeded(Z)I

    .line 107
    move-result p1

    .line 110
    invoke-static {p2, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 111
    move-result-object p1

    .line 114
    goto :goto_3

    .line 115
    :cond_8
    if-ne v0, v7, :cond_9

    .line 116
    invoke-static {v1, v5, v4}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->createTaskOpenCloseTransition(ZLandroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    .line 118
    move-result-object p1

    .line 121
    goto :goto_3

    .line 122
    :cond_9
    if-ne v0, v8, :cond_a

    .line 123
    invoke-static {v1, v5, v3}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->createTaskOpenCloseTransition(ZLandroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    .line 125
    move-result-object p1

    .line 128
    :cond_a
    :goto_3
    invoke-direct {p0, p3}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->isWallpaperCloseTransition(I)Z

    .line 129
    move-result p2

    .line 132
    if-eqz p2, :cond_b

    .line 133
    if-eqz v1, :cond_d

    .line 135
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->createWallpaperCloseTransitionAnimation(Z)Landroid/view/animation/Animation;

    .line 137
    move-result-object v10

    .line 140
    goto :goto_4

    .line 141
    :cond_b
    invoke-direct {p0, p3}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->isWallpaperOpenTransition(I)Z

    .line 142
    move-result p2

    .line 145
    if-eqz p2, :cond_c

    .line 146
    goto :goto_4

    .line 148
    :cond_c
    move-object v10, p1

    .line 149
    :cond_d
    :goto_4
    sget-object p1, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->WHITE_LIST_LIMIT_ALPHA_ANIMATION:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 152
    move-result p2

    .line 155
    if-ge v3, p2, :cond_f

    .line 156
    invoke-virtual {v6}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    .line 158
    move-result-object p2

    .line 161
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 162
    move-result-object p1

    .line 165
    check-cast p1, Ljava/lang/CharSequence;

    .line 166
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 168
    move-result p1

    .line 171
    if-eqz p1, :cond_e

    .line 172
    invoke-virtual {p0}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->createAlphaAnimation()Landroid/view/animation/Animation;

    .line 174
    move-result-object p1

    .line 177
    move-object v10, p1

    .line 178
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 179
    goto :goto_4

    .line 181
    :cond_f
    return-object v10
    .line 182
.end method

.method public loadScaleAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Landroid/view/animation/Animation;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mScaleUpDownTransition:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 9
    move-result v1

    .line 12
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 13
    move-result v1

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 17
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/window/TransitionInfo$AnimationOptions;->getCustomTypeForScale()I

    .line 21
    move-result v3

    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 25
    move-result-object v4

    .line 28
    invoke-virtual {v2}, Landroid/window/TransitionInfo$AnimationOptions;->getLauncherRectForScale()Landroid/graphics/Rect;

    .line 29
    move-result-object v5

    .line 32
    invoke-virtual {v2}, Landroid/window/TransitionInfo$AnimationOptions;->getRadiusForScale()I

    .line 33
    move-result v2

    .line 36
    const/16 v6, 0x67

    .line 37
    const/4 v7, 0x1

    .line 39
    const/4 v8, 0x0

    .line 40
    if-ne v3, v6, :cond_0

    .line 41
    move v6, v7

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v6, v8

    .line 45
    :goto_0
    iget-object v12, v0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->QUART_EASE_OUT_INTERPOLATOR:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$QuartEaseOutInterpolator;

    .line 46
    const/high16 v13, 0x42700000    # 60.0f

    .line 48
    const/4 v14, 0x0

    .line 50
    const v15, 0x3f4ccccd    # 0.8f

    .line 51
    const/high16 v11, 0x3f800000    # 1.0f

    .line 54
    if-eqz v6, :cond_2

    .line 56
    int-to-float v2, v2

    .line 58
    iget-object v0, v0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->SCALE_UP_PHYSIC_BASED_INTERPOLATOR:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$PhysicBasedInterpolator;

    .line 59
    const-wide/16 v9, 0x1f4

    .line 61
    if-eqz v1, :cond_1

    .line 63
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 65
    invoke-direct {v1, v14, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 67
    new-instance v3, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$RadiusAnimation;

    .line 70
    invoke-direct {v3, v2, v13}, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$RadiusAnimation;-><init>(FF)V

    .line 72
    new-instance v2, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleWithClipAnimation;

    .line 75
    invoke-direct {v2, v5, v4}, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleWithClipAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 77
    new-instance v4, Landroid/view/animation/AnimationSet;

    .line 80
    invoke-direct {v4, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 82
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 85
    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 88
    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 91
    invoke-virtual {v1, v12}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 94
    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 97
    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 100
    invoke-virtual {v4, v7}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 103
    const-wide/16 v5, 0x64

    .line 106
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 108
    invoke-virtual {v3, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 111
    invoke-virtual {v2, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 114
    goto/16 :goto_2

    .line 117
    :cond_1
    new-instance v4, Landroid/view/animation/AnimationSet;

    .line 119
    invoke-direct {v4, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 121
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 124
    invoke-direct {v1, v11, v15}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 126
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 129
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 132
    const/4 v0, -0x1

    .line 135
    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 136
    invoke-virtual {v1, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 139
    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 142
    goto :goto_2

    .line 145
    :cond_2
    const/16 v6, 0x68

    .line 146
    if-ne v3, v6, :cond_3

    .line 148
    move v3, v7

    .line 150
    goto :goto_1

    .line 151
    :cond_3
    move v3, v8

    .line 152
    :goto_1
    if-eqz v3, :cond_5

    .line 153
    int-to-float v2, v2

    .line 155
    iget-object v0, v0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->SCALE_DOWN_PHYSIC_BASED_INTERPOLATOR:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$PhysicBasedInterpolator;

    .line 156
    const-wide/16 v9, 0x1c2

    .line 158
    if-eqz v1, :cond_4

    .line 160
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 162
    invoke-direct {v1, v15, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 164
    new-instance v4, Landroid/view/animation/AnimationSet;

    .line 167
    invoke-direct {v4, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 169
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 172
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 175
    const/4 v0, -0x1

    .line 178
    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 179
    invoke-virtual {v1, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 182
    goto :goto_2

    .line 185
    :cond_4
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 186
    invoke-direct {v1, v11, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 188
    new-instance v3, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$RadiusAnimation;

    .line 191
    invoke-direct {v3, v13, v2}, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$RadiusAnimation;-><init>(FF)V

    .line 193
    new-instance v2, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleWithClipAnimation;

    .line 196
    invoke-direct {v2, v4, v5}, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleWithClipAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 198
    new-instance v4, Landroid/view/animation/AnimationSet;

    .line 201
    invoke-direct {v4, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 203
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 206
    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 209
    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 212
    const-wide/16 v5, 0x64

    .line 215
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 217
    invoke-virtual {v1, v12}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 220
    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 223
    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 226
    invoke-virtual {v4, v7}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 229
    const-wide/16 v5, 0xc8

    .line 232
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 234
    invoke-virtual {v3, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 237
    invoke-virtual {v2, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 240
    goto :goto_2

    .line 243
    :cond_5
    const/4 v4, 0x0

    .line 244
    :goto_2
    return-object v4
    .line 245
.end method

.method public onScaleAnimationFinish(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mScaleUpDownTransition:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->mBackgroundForScale:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;

    .line 4
    if-eqz v0, :cond_1

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, v0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;->mLeash:Landroid/view/SurfaceControl;

    .line 9
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 14
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 17
    iget-object p1, v0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;->mLeash:Landroid/view/SurfaceControl;

    .line 20
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 22
    iput-object v2, v0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;->mLeash:Landroid/view/SurfaceControl;

    .line 25
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iput-object v2, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->mBackgroundForScale:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;

    .line 28
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0

    .line 33
    :cond_1
    :goto_0
    return-void
    .line 34
.end method

.method public onSwapAnimationFinish(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mBlackCoverLeash:Landroid/view/SurfaceControl;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 7
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mBlackCoverLeash:Landroid/view/SurfaceControl;

    .line 13
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 15
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mBlackCoverLeash:Landroid/view/SurfaceControl;

    .line 19
    const-string p1, "DefaultTransitionImpl"

    .line 21
    const-string v0, "Set BlackCoverLeash to null"

    .line 23
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method

.method public prepareScaleAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p3

    .line 4
    iget-object v0, v0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mScaleUpDownTransition:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 11
    move-result-object v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    goto/16 :goto_6

    .line 17
    :cond_0
    invoke-virtual {v2}, Landroid/window/TransitionInfo$AnimationOptions;->getCustomTypeForScale()I

    .line 19
    move-result v3

    .line 22
    const/16 v4, 0x67

    .line 23
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x1

    .line 26
    if-ne v3, v4, :cond_1

    .line 27
    move v7, v6

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v7, v5

    .line 31
    :goto_0
    const/16 v8, 0x68

    .line 32
    if-nez v7, :cond_4

    .line 34
    if-ne v3, v8, :cond_2

    .line 36
    move v7, v6

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v7, v5

    .line 40
    :goto_1
    if-eqz v7, :cond_3

    .line 41
    goto :goto_2

    .line 43
    :cond_3
    move v7, v5

    .line 44
    goto :goto_3

    .line 45
    :cond_4
    :goto_2
    move v7, v6

    .line 46
    :goto_3
    if-nez v7, :cond_5

    .line 47
    goto/16 :goto_6

    .line 49
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 51
    move-result v7

    .line 54
    if-ne v3, v4, :cond_6

    .line 55
    move v4, v6

    .line 57
    goto :goto_4

    .line 58
    :cond_6
    move v4, v5

    .line 59
    :goto_4
    if-eqz v4, :cond_7

    .line 60
    if-ne v7, v6, :cond_c

    .line 62
    :cond_7
    if-ne v3, v8, :cond_8

    .line 64
    move v3, v6

    .line 66
    goto :goto_5

    .line 67
    :cond_8
    move v3, v5

    .line 68
    :goto_5
    if-eqz v3, :cond_9

    .line 69
    const/4 v3, 0x2

    .line 71
    if-eq v7, v3, :cond_9

    .line 72
    goto/16 :goto_6

    .line 74
    :cond_9
    invoke-virtual {v2}, Landroid/window/TransitionInfo$AnimationOptions;->getBufferForScale()Landroid/hardware/HardwareBuffer;

    .line 76
    move-result-object v3

    .line 79
    if-nez v3, :cond_a

    .line 80
    goto/16 :goto_6

    .line 82
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 84
    move-result-object v3

    .line 87
    iput-object v3, v0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->mRect:Landroid/graphics/Rect;

    .line 88
    new-instance v3, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;

    .line 90
    invoke-direct {v3, v0}, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;-><init>(Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;)V

    .line 92
    iput-object v3, v0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->mBackgroundForScale:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;

    .line 95
    const-string v4, "child leash of"

    .line 97
    monitor-enter v3

    .line 99
    :try_start_0
    invoke-virtual {v2}, Landroid/window/TransitionInfo$AnimationOptions;->getBufferForScale()Landroid/hardware/HardwareBuffer;

    .line 100
    move-result-object v7

    .line 103
    invoke-virtual {v2}, Landroid/window/TransitionInfo$AnimationOptions;->getColorForScale()I

    .line 104
    move-result v2

    .line 107
    new-instance v8, Landroid/view/SurfaceControl$Builder;

    .line 108
    invoke-direct {v8}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 113
    move-result-object v9

    .line 116
    invoke-virtual {v8, v9}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 117
    move-result-object v8

    .line 120
    new-instance v9, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 126
    move-result-object v4

    .line 129
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v4

    .line 136
    invoke-virtual {v8, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 137
    move-result-object v4

    .line 140
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    .line 141
    move-result-object v4

    .line 144
    iget-object v8, v0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->mRect:Landroid/graphics/Rect;

    .line 145
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 147
    move-result v8

    .line 150
    iget-object v9, v0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->mRect:Landroid/graphics/Rect;

    .line 151
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 153
    move-result v9

    .line 156
    invoke-virtual {v4, v8, v9}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    .line 157
    move-result-object v4

    .line 160
    const/4 v8, -0x3

    .line 161
    invoke-virtual {v4, v8}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    .line 162
    move-result-object v4

    .line 165
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 166
    move-result-object v4

    .line 169
    new-instance v15, Landroid/graphics/BLASTBufferQueue;

    .line 170
    const-string v10, "blastBufferQueue for scaleUpDown"

    .line 172
    iget-object v9, v0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->mRect:Landroid/graphics/Rect;

    .line 174
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 176
    move-result v12

    .line 179
    iget-object v9, v0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->mRect:Landroid/graphics/Rect;

    .line 180
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 182
    move-result v13

    .line 185
    const/4 v14, 0x1

    .line 186
    move-object v9, v15

    .line 187
    move-object v11, v4

    .line 188
    invoke-direct/range {v9 .. v14}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    .line 189
    invoke-virtual {v15}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    .line 192
    move-result-object v9

    .line 195
    invoke-virtual {v7}, Landroid/hardware/HardwareBuffer;->getWidth()I

    .line 196
    move-result v10

    .line 199
    invoke-virtual {v7}, Landroid/hardware/HardwareBuffer;->getHeight()I

    .line 200
    move-result v11

    .line 203
    invoke-virtual {v9}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    .line 204
    move-result-object v12

    .line 207
    invoke-virtual {v12, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 208
    const/4 v2, 0x0

    .line 211
    invoke-static {v7, v2}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    .line 212
    move-result-object v7

    .line 215
    new-instance v13, Landroid/graphics/Paint;

    .line 216
    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 218
    new-instance v14, Landroid/graphics/RectF;

    .line 221
    int-to-float v10, v10

    .line 223
    int-to-float v11, v11

    .line 224
    const/4 v15, 0x0

    .line 225
    invoke-direct {v14, v15, v15, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 226
    invoke-virtual {v12, v7, v2, v14, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 229
    invoke-virtual {v9, v12}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 232
    sget-object v7, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 235
    invoke-static {v7}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 237
    move-result-object v7

    .line 240
    invoke-virtual {v1, v4, v7}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 241
    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 244
    const v7, 0x7fffffff

    .line 247
    invoke-virtual {v1, v4, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 253
    move-result v7

    .line 256
    if-ne v7, v6, :cond_b

    .line 257
    move-object/from16 v6, p1

    .line 259
    invoke-virtual {v6, v5}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 261
    move-result-object v2

    .line 264
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 265
    move-result-object v2

    .line 268
    :cond_b
    new-instance v6, Landroid/view/SurfaceControl$Builder;

    .line 269
    invoke-direct {v6}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 271
    invoke-virtual {v6, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 274
    move-result-object v2

    .line 277
    invoke-virtual {v2, v8}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    .line 278
    move-result-object v2

    .line 281
    const-string v6, "backGroundLeash of scaleUpDown"

    .line 282
    invoke-virtual {v2, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 284
    move-result-object v2

    .line 287
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    .line 288
    move-result-object v2

    .line 291
    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 292
    move-result-object v2

    .line 295
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 296
    move-result-object v2

    .line 299
    iput-object v2, v3, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;->mLeash:Landroid/view/SurfaceControl;

    .line 300
    iget-object v5, v0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->mRect:Landroid/graphics/Rect;

    .line 302
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 304
    move-result v5

    .line 307
    iget-object v0, v0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->mRect:Landroid/graphics/Rect;

    .line 308
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 310
    move-result v0

    .line 313
    invoke-virtual {v1, v2, v5, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 314
    iget-object v0, v3, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;->mLeash:Landroid/view/SurfaceControl;

    .line 317
    invoke-virtual {v1, v0, v15, v15}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 319
    iget-object v0, v3, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;->mLeash:Landroid/view/SurfaceControl;

    .line 322
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 324
    iget-object v0, v3, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;->mLeash:Landroid/view/SurfaceControl;

    .line 327
    invoke-virtual {v1, v4, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 329
    iget-object v0, v3, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;->mLeash:Landroid/view/SurfaceControl;

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 334
    move-result-object v2

    .line 337
    const/4 v4, -0x1

    .line 338
    invoke-virtual {v1, v0, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 339
    iget-object v0, v3, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;->mLeash:Landroid/view/SurfaceControl;

    .line 342
    invoke-virtual {v1, v0, v15}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 344
    monitor-exit v3

    .line 347
    :cond_c
    :goto_6
    return-void

    .line 348
    :catchall_0
    move-exception v0

    .line 349
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    throw v0
    .line 351
.end method

.method public registerListener(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->ENABLE_SWAP_ANIMATION:Z

    .line 2
    const-string v1, "DefaultTransitionImpl"

    .line 4
    if-nez v0, :cond_0

    .line 6
    const-string p0, "Disable swap animation!!!"

    .line 8
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 13
    :cond_0
    if-eqz p1, :cond_3

    .line 14
    if-eqz p2, :cond_3

    .line 16
    sget-boolean v0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->IS_FOLD_DEVICE:Z

    .line 18
    if-nez v0, :cond_1

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    iput-object p3, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mHandler:Landroid/os/Handler;

    .line 23
    new-instance p3, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$$ExternalSyntheticLambda0;

    .line 25
    invoke-direct {p3, p0}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;)V

    .line 27
    iput-object p3, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mOnTimeout:Ljava/lang/Runnable;

    .line 30
    const-class p3, Landroid/hardware/devicestate/DeviceStateManager;

    .line 32
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object p3

    .line 37
    check-cast p3, Landroid/hardware/devicestate/DeviceStateManager;

    .line 38
    if-eqz p3, :cond_2

    .line 40
    new-instance v0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 42
    new-instance v1, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$$ExternalSyntheticLambda1;

    .line 44
    invoke-direct {v1, p0}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;)V

    .line 46
    invoke-direct {v0, p2, v1}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 49
    invoke-virtual {p3, p1, v0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 52
    :cond_2
    return-void

    .line 55
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    const-string p3, "Do not register listener for swap animation: IS_FOLD_DEVICE = "

    .line 58
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    sget-boolean p3, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->IS_FOLD_DEVICE:Z

    .line 63
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    const-string p3, "  context = "

    .line 68
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    const-string p2, "  executor = "

    .line 76
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 87
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
    .line 91
.end method

.method public replaceWithSwapAnimationIfNeeded(Landroid/view/animation/Animation;Z)Landroid/view/animation/Animation;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->hasBlackCoverLeash()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object p1

    .line 8
    :cond_0
    if-eqz p2, :cond_1

    .line 9
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    .line 11
    const v2, 0x3f733333    # 0.95f

    .line 13
    const/high16 v3, 0x3f800000    # 1.0f

    .line 16
    const v4, 0x3f733333    # 0.95f

    .line 18
    const/high16 v5, 0x3f800000    # 1.0f

    .line 21
    const/4 v6, 0x1

    .line 23
    const/high16 v7, 0x3f000000    # 0.5f

    .line 24
    const/4 v8, 0x1

    .line 26
    const/high16 v9, 0x3f000000    # 0.5f

    .line 27
    move-object v1, p0

    .line 29
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 30
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 33
    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_1
    new-instance p1, Landroid/view/animation/AnimationSet;

    .line 42
    const/4 v0, 0x1

    .line 44
    invoke-direct {p1, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 45
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 48
    const/4 v1, 0x0

    .line 50
    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 51
    new-instance v1, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$BlackCoverLeashAlphaAnimation;

    .line 54
    invoke-direct {v1, p0}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$BlackCoverLeashAlphaAnimation;-><init>(Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;)V

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 59
    invoke-virtual {p1, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 62
    move-object p0, p1

    .line 65
    :goto_0
    const-wide/16 v0, 0x1c2

    .line 66
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    const-string v0, "Load swap animation, enter = "

    .line 73
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 84
    const-string p2, "DefaultTransitionImpl"

    .line 85
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-object p0
    .line 90
.end method

.method public shouldApplySwapAnimation()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->mSwapCount:I

    .line 2
    if-lez p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public stepAnimationDimmerIfNeeded(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 1

    .line 1
    instance-of p0, p1, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;

    .line 2
    if-eqz p0, :cond_3

    .line 4
    check-cast p1, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;

    .line 6
    iget p0, p1, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mCurrentAlpha:F

    .line 8
    iget-boolean v0, p1, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->isVisible:Z

    .line 10
    if-nez v0, :cond_0

    .line 12
    goto :goto_1

    .line 14
    :cond_0
    monitor-enter p1

    .line 15
    :try_start_0
    iget-object v0, p1, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 16
    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 20
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p1, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 27
    invoke-virtual {p2, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 29
    monitor-exit p1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    monitor-exit p1

    .line 34
    :goto_1
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0

    .line 39
    :cond_3
    const/4 p0, 0x0

    .line 40
    return p0
    .line 41
.end method

.method public stopAnimationDimmer(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;

    .line 2
    if-eqz p0, :cond_1

    .line 4
    check-cast p1, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;

    .line 6
    iget-boolean p0, p1, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->isVisible:Z

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->stopDim(Landroid/view/SurfaceControl$Transaction;)V

    .line 13
    :cond_1
    return-void
    .line 16
.end method

.method public updateAnimationIfNeed(Landroid/content/Context;Landroid/view/animation/Animation;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Z)Landroid/view/animation/Animation;
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    move-object/from16 v1, p4

    .line 4
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 6
    move-result v2

    .line 9
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 10
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 13
    move-result v2

    .line 16
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 17
    move-result-object v9

    .line 20
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 21
    move-result-object v10

    .line 24
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 25
    move-result-object v3

    .line 28
    const/4 v11, 0x0

    .line 29
    const/4 v12, 0x1

    .line 30
    if-eqz v3, :cond_0

    .line 31
    move v13, v12

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v13, v11

    .line 35
    :goto_0
    instance-of v3, v0, Landroid/view/animation/AnimationSet;

    .line 36
    if-eqz v3, :cond_8

    .line 38
    move-object v3, v0

    .line 40
    check-cast v3, Landroid/view/animation/AnimationSet;

    .line 41
    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    .line 43
    move-result-object v3

    .line 46
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v14

    .line 50
    const/4 v3, 0x0

    .line 51
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v4

    .line 55
    if-eqz v4, :cond_7

    .line 56
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v4

    .line 61
    check-cast v4, Landroid/view/animation/Animation;

    .line 62
    instance-of v5, v4, Landroid/view/animation/TranslateWithClipAnimation;

    .line 64
    if-eqz v5, :cond_6

    .line 66
    check-cast v4, Landroid/view/animation/TranslateWithClipAnimation;

    .line 68
    invoke-virtual {v4}, Landroid/view/animation/TranslateWithClipAnimation;->getHeight()F

    .line 70
    move-result v5

    .line 73
    const/4 v6, 0x0

    .line 74
    cmpl-float v5, v5, v6

    .line 75
    if-eqz v5, :cond_5

    .line 77
    invoke-virtual {v4}, Landroid/view/animation/TranslateWithClipAnimation;->getWidth()F

    .line 79
    move-result v5

    .line 82
    cmpl-float v5, v5, v6

    .line 83
    if-nez v5, :cond_1

    .line 85
    goto/16 :goto_3

    .line 87
    :cond_1
    move/from16 v15, p5

    .line 89
    invoke-virtual {v4, v2, v9, v15}, Landroid/view/animation/TranslateWithClipAnimation;->updateValueIfNeed(ZLandroid/graphics/Rect;Z)V

    .line 91
    if-nez v13, :cond_4

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo;->getType()I

    .line 96
    move-result v5

    .line 99
    const/4 v6, 0x2

    .line 100
    if-eq v5, v12, :cond_2

    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo;->getType()I

    .line 103
    move-result v5

    .line 106
    if-ne v5, v6, :cond_4

    .line 107
    :cond_2
    const/4 v5, 0x4

    .line 109
    invoke-virtual {v1, v5}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 110
    move-result v5

    .line 113
    if-eqz v5, :cond_4

    .line 114
    invoke-virtual {v4}, Landroid/view/animation/TranslateWithClipAnimation;->getWidth()F

    .line 116
    move-result v3

    .line 119
    float-to-int v3, v3

    .line 120
    invoke-virtual {v4}, Landroid/view/animation/TranslateWithClipAnimation;->getHeight()F

    .line 121
    move-result v5

    .line 124
    float-to-int v5, v5

    .line 125
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 126
    move-result v7

    .line 129
    sub-int/2addr v7, v3

    .line 130
    div-int/2addr v7, v6

    .line 131
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 132
    move-result v8

    .line 135
    sub-int/2addr v8, v5

    .line 136
    div-int/2addr v8, v6

    .line 137
    invoke-virtual {v4}, Landroid/view/animation/TranslateWithClipAnimation;->getCornerRadius()F

    .line 138
    move-result v16

    .line 141
    add-int/2addr v3, v7

    .line 142
    add-int/2addr v5, v8

    .line 143
    invoke-virtual {v9, v7, v8, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 144
    if-eqz v2, :cond_3

    .line 147
    new-instance v17, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;

    .line 149
    const/4 v4, 0x0

    .line 151
    const v5, 0x3e4ccccd    # 0.2f

    .line 152
    move-object/from16 v3, v17

    .line 155
    move-object v6, v9

    .line 157
    move-object v7, v10

    .line 158
    move/from16 v8, v16

    .line 159
    invoke-direct/range {v3 .. v8}, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;-><init>(FFLandroid/graphics/Rect;Landroid/view/SurfaceControl;F)V

    .line 161
    goto :goto_2

    .line 164
    :cond_3
    new-instance v17, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;

    .line 165
    const v4, 0x3e4ccccd    # 0.2f

    .line 167
    const/4 v5, 0x0

    .line 170
    move-object/from16 v3, v17

    .line 171
    move-object v6, v9

    .line 173
    move-object v7, v10

    .line 174
    move/from16 v8, v16

    .line 175
    invoke-direct/range {v3 .. v8}, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;-><init>(FFLandroid/graphics/Rect;Landroid/view/SurfaceControl;F)V

    .line 177
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Animation;->getDuration()J

    .line 180
    move-result-wide v4

    .line 183
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Animation;->getZAdjustment()I

    .line 187
    move-result v4

    .line 190
    sub-int/2addr v4, v12

    .line 191
    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 192
    :cond_4
    move-object/from16 v4, p0

    .line 195
    move-object/from16 v5, p3

    .line 197
    goto/16 :goto_1

    .line 199
    :cond_5
    :goto_3
    move-object/from16 v4, p0

    .line 201
    move-object/from16 v5, p3

    .line 203
    invoke-virtual {v4, v5, v1, v11}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;->loadMiuiDefaultTransitionNotCheck(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;I)Landroid/view/animation/Animation;

    .line 205
    move-result-object v0

    .line 208
    goto :goto_4

    .line 209
    :cond_6
    move-object/from16 v4, p0

    .line 210
    move-object/from16 v5, p3

    .line 212
    move/from16 v15, p5

    .line 214
    goto/16 :goto_1

    .line 216
    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    .line 218
    move-object v1, v0

    .line 220
    check-cast v1, Landroid/view/animation/AnimationSet;

    .line 221
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 223
    :cond_8
    return-object v0
    .line 226
.end method

.method public updateFloatingWindowAnimation(Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Transformation;)V
    .locals 0

    .line 1
    instance-of p0, p1, Landroid/view/animation/TranslateWithClipAnimation;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p4}, Landroid/view/animation/Transformation;->hasClipRect()Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p4}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p3, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 16
    check-cast p1, Landroid/view/animation/TranslateWithClipAnimation;

    .line 19
    invoke-virtual {p1}, Landroid/view/animation/TranslateWithClipAnimation;->getCornerRadius()F

    .line 21
    move-result p0

    .line 24
    invoke-virtual {p3, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method public useDefaultAnimationAttr(Landroid/view/WindowManager$LayoutParams;ILandroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z
    .locals 1

    .line 1
    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 2
    move-result p0

    .line 5
    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 6
    move-result p3

    .line 9
    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 10
    move-result p0

    .line 13
    const/4 v0, 0x4

    .line 14
    invoke-virtual {p4, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 15
    move-result p4

    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p4, :cond_0

    .line 20
    return v0

    .line 22
    :cond_0
    if-nez p1, :cond_1

    .line 23
    return v0

    .line 25
    :cond_1
    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 26
    if-eqz p1, :cond_3

    .line 28
    const/high16 p4, -0x1000000

    .line 30
    and-int/2addr p4, p2

    .line 32
    const/high16 v0, 0x1000000

    .line 33
    if-eq p4, v0, :cond_3

    .line 35
    if-eqz p0, :cond_2

    .line 37
    and-int/lit8 p0, p3, 0x2

    .line 39
    if-eqz p0, :cond_2

    .line 41
    if-nez p2, :cond_2

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    const-string p0, "android"

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 53
    return p0
    .line 54
.end method
