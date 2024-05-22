.class public Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public finalAnimatorSet:Landroid/animation/AnimatorSet;

.field public hidingAnimator:Landroid/animation/ObjectAnimator;

.field public mDisplayHeight:I

.field public mDisplayWidth:I

.field public mFinalTranslate:F

.field public mIsSetAnimCanceled:Z

.field public movingAnimator:Landroid/animation/ObjectAnimator;

.field public scaleAnimator:Landroid/animation/ObjectAnimator;

.field public showingAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d00c5    # @layout/fs_gesture_swipe_view 'res/layout/fs_gesture_swipe_view.xml'

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 7
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo p3, "window"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 9
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 10
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    .line 11
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07038a    # @dimen/fsgesture_swipe_final_translateX '131.0dp'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mFinalTranslate:F

    return-void
.end method


# virtual methods
.method public final cancelAnimation()V
    .locals 2

    .line 1
    const-string v0, "FsGestureDemoSwipeView"

    .line 2
    const-string v1, "cancelAnimation"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mIsSetAnimCanceled:Z

    .line 10
    const/16 v0, 0x8

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 21
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 24
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 26
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 30
    :cond_0
    return-void
    .line 32
.end method

.method public final prepare(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    const v0, 0x7f07038b    # @dimen/fsgesture_swipe_translateY '424.0dp'

    .line 10
    packed-switch p1, :pswitch_data_0

    .line 13
    goto :goto_0

    .line 16
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object p1

    .line 20
    const v0, 0x7f070389    # @dimen/fsgesture_swipe_drawer_translateY '135.0dp'

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 24
    move-result p1

    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 31
    move-result p1

    .line 34
    neg-int p1, p1

    .line 35
    div-int/lit8 p1, p1, 0x2

    .line 36
    int-to-float p1, p1

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 39
    goto :goto_0

    .line 42
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    .line 43
    move-result p1

    .line 46
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 47
    move-result v0

    .line 50
    div-int/lit8 v0, v0, 0x2

    .line 51
    add-int/2addr v0, p1

    .line 53
    iget p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    .line 54
    div-int/lit8 p1, p1, 0x2

    .line 56
    sub-int/2addr p1, v0

    .line 58
    int-to-float p1, p1

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 60
    iget p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    .line 63
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 65
    move-result v0

    .line 68
    div-int/lit8 v0, v0, 0x2

    .line 69
    sub-int/2addr p1, v0

    .line 71
    int-to-float p1, p1

    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 73
    goto :goto_0

    .line 76
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 77
    move-result-object p1

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 81
    move-result p1

    .line 84
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 85
    iget p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    .line 88
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 90
    move-result v0

    .line 93
    div-int/lit8 v0, v0, 0x2

    .line 94
    sub-int/2addr p1, v0

    .line 96
    int-to-float p1, p1

    .line 97
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 98
    goto :goto_0

    .line 101
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 102
    move-result-object p1

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 106
    move-result p1

    .line 109
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 110
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 113
    move-result p1

    .line 116
    neg-int p1, p1

    .line 117
    div-int/lit8 p1, p1, 0x2

    .line 118
    int-to-float p1, p1

    .line 120
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 121
    :goto_0
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
    .line 126
.end method

.method public final startAnimation(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mIsSetAnimCanceled:Z

    .line 7
    iget-object v3, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    .line 9
    const-wide/16 v4, 0x12c

    .line 11
    const-string v6, "alpha"

    .line 13
    const-string/jumbo v7, "scaleY"

    .line 15
    const-string/jumbo v8, "scaleX"

    .line 18
    const/4 v9, 0x2

    .line 21
    if-eqz v3, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    new-array v3, v9, [F

    .line 25
    fill-array-data v3, :array_0

    .line 27
    invoke-static {v8, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 30
    move-result-object v3

    .line 33
    new-array v10, v9, [F

    .line 34
    fill-array-data v10, :array_1

    .line 36
    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 39
    move-result-object v10

    .line 42
    new-array v11, v9, [F

    .line 43
    fill-array-data v11, :array_2

    .line 45
    invoke-static {v6, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 48
    move-result-object v11

    .line 51
    filled-new-array {v3, v10, v11}, [Landroid/animation/PropertyValuesHolder;

    .line 52
    move-result-object v3

    .line 55
    invoke-static {v0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 56
    move-result-object v3

    .line 59
    iput-object v3, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    .line 60
    const-wide/16 v10, 0xc8

    .line 62
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 64
    iget-object v3, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    .line 67
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 69
    :goto_0
    iget-object v3, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    .line 72
    const-wide/16 v10, 0x3e8

    .line 74
    if-eqz v3, :cond_1

    .line 76
    goto/16 :goto_2

    .line 78
    :cond_1
    const-string/jumbo v3, "translationY"

    .line 80
    const/4 v12, 0x1

    .line 83
    const-string/jumbo v13, "translationX"

    .line 84
    packed-switch v1, :pswitch_data_0

    .line 87
    goto/16 :goto_1

    .line 90
    :pswitch_0
    iget v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    .line 92
    div-int/2addr v2, v9

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLeft()I

    .line 95
    move-result v12

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 99
    move-result v14

    .line 102
    add-int/2addr v14, v12

    .line 103
    div-int/2addr v14, v9

    .line 104
    sub-int/2addr v2, v14

    .line 105
    iget v12, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 108
    move-result v14

    .line 111
    div-int/2addr v14, v9

    .line 112
    sub-int/2addr v12, v14

    .line 113
    new-instance v14, Landroid/graphics/Path;

    .line 114
    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    .line 116
    int-to-float v2, v2

    .line 119
    int-to-float v12, v12

    .line 120
    invoke-virtual {v14, v2, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 121
    iget v15, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mFinalTranslate:F

    .line 124
    const/high16 v16, 0x40000000    # 2.0f

    .line 126
    div-float v15, v15, v16

    .line 128
    sub-float v15, v12, v15

    .line 130
    invoke-virtual {v14, v2, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    iget v15, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mFinalTranslate:F

    .line 135
    add-float/2addr v2, v15

    .line 137
    div-float v15, v15, v16

    .line 138
    sub-float/2addr v12, v15

    .line 140
    invoke-virtual {v14, v2, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 141
    invoke-static {v0, v13, v3, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 144
    move-result-object v2

    .line 147
    iput-object v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    .line 148
    goto :goto_1

    .line 150
    :pswitch_1
    iget v3, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    .line 151
    div-int/2addr v3, v9

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLeft()I

    .line 154
    move-result v14

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 158
    move-result v15

    .line 161
    add-int/2addr v15, v14

    .line 162
    div-int/2addr v15, v9

    .line 163
    sub-int/2addr v3, v15

    .line 164
    int-to-float v3, v3

    .line 165
    iget v14, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mFinalTranslate:F

    .line 166
    add-float/2addr v14, v3

    .line 168
    new-array v15, v9, [F

    .line 169
    aput v3, v15, v2

    .line 171
    aput v14, v15, v12

    .line 173
    invoke-static {v0, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 175
    move-result-object v2

    .line 178
    iput-object v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    .line 179
    goto :goto_1

    .line 181
    :pswitch_2
    iget v13, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 184
    move-result v14

    .line 187
    div-int/2addr v14, v9

    .line 188
    sub-int/2addr v13, v14

    .line 189
    int-to-float v13, v13

    .line 190
    iget v14, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    .line 191
    add-int/lit16 v14, v14, -0x3e8

    .line 193
    int-to-float v14, v14

    .line 195
    new-array v15, v9, [F

    .line 196
    aput v13, v15, v2

    .line 198
    aput v14, v15, v12

    .line 200
    invoke-static {v0, v3, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 202
    move-result-object v2

    .line 205
    iput-object v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    .line 206
    goto :goto_1

    .line 208
    :pswitch_3
    iget v3, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    .line 209
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 211
    move-result v14

    .line 214
    div-int/2addr v14, v9

    .line 215
    sub-int/2addr v3, v14

    .line 216
    int-to-float v3, v3

    .line 217
    iget v14, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    .line 218
    int-to-float v14, v14

    .line 220
    iget v15, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mFinalTranslate:F

    .line 221
    sub-float/2addr v14, v15

    .line 223
    new-array v15, v9, [F

    .line 224
    aput v3, v15, v2

    .line 226
    aput v14, v15, v12

    .line 228
    invoke-static {v0, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 230
    move-result-object v2

    .line 233
    iput-object v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    .line 234
    goto :goto_1

    .line 236
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 237
    move-result v3

    .line 240
    neg-int v3, v3

    .line 241
    div-int/2addr v3, v9

    .line 242
    int-to-float v3, v3

    .line 243
    iget v14, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mFinalTranslate:F

    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 246
    move-result v15

    .line 249
    div-int/2addr v15, v9

    .line 250
    int-to-float v15, v15

    .line 251
    sub-float/2addr v14, v15

    .line 252
    new-array v15, v9, [F

    .line 253
    aput v3, v15, v2

    .line 255
    aput v14, v15, v12

    .line 257
    invoke-static {v0, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 259
    move-result-object v2

    .line 262
    iput-object v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    .line 263
    :goto_1
    iget-object v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    .line 265
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 267
    const/4 v2, 0x6

    .line 270
    if-ne v1, v2, :cond_2

    .line 271
    iget-object v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    .line 273
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 275
    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 277
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 280
    iget-object v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    .line 283
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 285
    goto :goto_2

    .line 288
    :cond_2
    iget-object v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    .line 289
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    .line 291
    const/high16 v12, 0x3fc00000    # 1.5f

    .line 293
    invoke-direct {v3, v12}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 295
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 298
    iget-object v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    .line 301
    const-wide/16 v12, 0x1f4

    .line 303
    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 305
    :goto_2
    iget-object v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    .line 308
    if-eqz v2, :cond_3

    .line 310
    goto :goto_3

    .line 312
    :cond_3
    new-array v2, v9, [F

    .line 313
    fill-array-data v2, :array_3

    .line 315
    invoke-static {v8, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 318
    move-result-object v2

    .line 321
    new-array v3, v9, [F

    .line 322
    fill-array-data v3, :array_4

    .line 324
    invoke-static {v7, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 327
    move-result-object v3

    .line 330
    filled-new-array {v2, v3}, [Landroid/animation/PropertyValuesHolder;

    .line 331
    move-result-object v2

    .line 334
    invoke-static {v0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 335
    move-result-object v2

    .line 338
    iput-object v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    .line 339
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 341
    :goto_3
    iget-object v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    .line 344
    const/4 v3, 0x4

    .line 346
    if-eqz v2, :cond_4

    .line 347
    goto :goto_4

    .line 349
    :cond_4
    if-eq v1, v3, :cond_5

    .line 350
    new-array v2, v9, [F

    .line 352
    fill-array-data v2, :array_5

    .line 354
    invoke-static {v0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 357
    move-result-object v2

    .line 360
    iput-object v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    .line 361
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 363
    goto :goto_4

    .line 366
    :cond_5
    new-array v2, v9, [F

    .line 367
    fill-array-data v2, :array_6

    .line 369
    invoke-static {v8, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 372
    move-result-object v2

    .line 375
    new-array v4, v9, [F

    .line 376
    fill-array-data v4, :array_7

    .line 378
    invoke-static {v7, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 381
    move-result-object v4

    .line 384
    new-array v5, v9, [F

    .line 385
    fill-array-data v5, :array_8

    .line 387
    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 390
    move-result-object v5

    .line 393
    filled-new-array {v2, v4, v5}, [Landroid/animation/PropertyValuesHolder;

    .line 394
    move-result-object v2

    .line 397
    invoke-static {v0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 398
    move-result-object v2

    .line 401
    iput-object v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    .line 402
    const-wide/16 v4, 0x64

    .line 404
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 406
    :goto_4
    iget-object v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 409
    if-eqz v2, :cond_6

    .line 411
    goto :goto_6

    .line 413
    :cond_6
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 414
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 416
    iput-object v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 419
    if-eq v1, v3, :cond_7

    .line 421
    iget-object v3, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    .line 423
    iget-object v4, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    .line 425
    iget-object v5, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    .line 427
    filled-new-array {v3, v4, v5}, [Landroid/animation/Animator;

    .line 429
    move-result-object v3

    .line 432
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 433
    goto :goto_5

    .line 436
    :cond_7
    iget-object v3, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    .line 437
    iget-object v4, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    .line 439
    iget-object v5, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    .line 441
    iget-object v6, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    .line 443
    filled-new-array {v3, v4, v5, v6}, [Landroid/animation/Animator;

    .line 445
    move-result-object v3

    .line 448
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 449
    :goto_5
    iget-object v2, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 452
    new-instance v3, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;

    .line 454
    invoke-direct {v3, v0, v1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;-><init>(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;I)V

    .line 456
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 459
    :goto_6
    iget-object v0, v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 462
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 464
    return-void

    .line 467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 468
    :array_0
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 486
    :array_1
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 494
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 502
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    .line 510
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    .line 518
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 526
    :array_6
    .array-data 4
        0x3f99999a    # 1.2f
        0x3fc00000    # 1.5f
    .end array-data

    .line 534
    :array_7
    .array-data 4
        0x3f99999a    # 1.2f
        0x3fc00000    # 1.5f
    .end array-data

    .line 542
    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 550
.end method
