.class public final Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mActiveAnimator:Landroid/animation/Animator;

.field final mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

.field public final mController:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mController:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    .line 5
    new-instance p2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    .line 7
    invoke-direct {p2, p1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object p2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    .line 12
    return-void
    .line 14
.end method

.method public static createOpenCloseAnimationAdapter(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;Landroid/graphics/Rect;)Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    const/4 v3, 0x0

    .line 6
    iget-object p2, p2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    .line 7
    packed-switch v2, :pswitch_data_0

    .line 9
    goto :goto_4

    .line 12
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 16
    move-result v2

    .line 19
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 20
    move-result v2

    .line 23
    iget-object v4, p2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 24
    invoke-static {p0, p1, v1, v4, v1}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->loadAttributeAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILcom/android/internal/policy/TransitionAnimation;Z)Landroid/view/animation/Animation;

    .line 26
    move-result-object v5

    .line 29
    if-eqz v5, :cond_0

    .line 30
    invoke-virtual {v5}, Landroid/view/animation/Animation;->getShowBackdrop()Z

    .line 32
    move-result v5

    .line 35
    if-eqz v5, :cond_0

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    move v0, v1

    .line 39
    :goto_0
    if-eqz v0, :cond_2

    .line 40
    if-eqz v2, :cond_1

    .line 42
    const v0, 0x10a00b1    # @android:anim/task_open_enter_cross_profile_apps

    .line 44
    goto :goto_1

    .line 47
    :cond_1
    const v0, 0x10a00b2    # @android:anim/task_open_exit

    .line 48
    :goto_1
    invoke-virtual {v4, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    .line 51
    move-result-object v0

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    if-eqz v2, :cond_3

    .line 56
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 58
    invoke-direct {v0, v3, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 60
    goto :goto_2

    .line 63
    :cond_3
    const v0, 0x10a000e    # @android:anim/activity_close_exit

    .line 64
    invoke-virtual {v4, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    .line 67
    move-result-object v0

    .line 70
    :goto_2
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 71
    move-result v1

    .line 74
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 75
    move-result v2

    .line 78
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 79
    move-result v3

    .line 82
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 83
    move-result v4

    .line 86
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 87
    iget p2, p2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    .line 90
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 92
    :goto_3
    move-object v2, v0

    .line 95
    goto :goto_8

    .line 96
    :goto_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 100
    move-result v2

    .line 103
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 104
    move-result v2

    .line 107
    iget-object v4, p2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 108
    invoke-static {p0, p1, v1, v4, v1}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->loadAttributeAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILcom/android/internal/policy/TransitionAnimation;Z)Landroid/view/animation/Animation;

    .line 110
    move-result-object v5

    .line 113
    if-eqz v5, :cond_4

    .line 114
    invoke-virtual {v5}, Landroid/view/animation/Animation;->getShowBackdrop()Z

    .line 116
    move-result v5

    .line 119
    if-eqz v5, :cond_4

    .line 120
    goto :goto_5

    .line 122
    :cond_4
    move v0, v1

    .line 123
    :goto_5
    if-eqz v0, :cond_6

    .line 124
    if-eqz v2, :cond_5

    .line 126
    const v0, 0x10a00b3    # @android:anim/toast_enter

    .line 128
    goto :goto_6

    .line 131
    :cond_5
    const v0, 0x10a00b4    # @android:anim/toast_exit

    .line 132
    :goto_6
    invoke-virtual {v4, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    .line 135
    move-result-object v0

    .line 138
    goto :goto_7

    .line 139
    :cond_6
    if-eqz v2, :cond_7

    .line 140
    const v0, 0x10a000f    # @android:anim/activity_open_enter

    .line 142
    invoke-virtual {v4, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    .line 145
    move-result-object v0

    .line 148
    goto :goto_7

    .line 149
    :cond_7
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 150
    invoke-direct {v0, v3, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 152
    :goto_7
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 155
    move-result v1

    .line 158
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 159
    move-result v2

    .line 162
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 163
    move-result v3

    .line 166
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 167
    move-result v4

    .line 170
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 171
    iget p2, p2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    .line 174
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 176
    goto :goto_3

    .line 179
    :goto_8
    new-instance p2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    .line 180
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 182
    move-result-object v4

    .line 185
    invoke-static {p0, p1}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)I

    .line 186
    move-result v0

    .line 189
    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 190
    move-result-object v6

    .line 193
    move-object v1, p2

    .line 194
    move-object v3, p1

    .line 195
    move-object v5, p3

    .line 196
    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/window/TransitionInfo$Root;)V

    .line 197
    return-object p2

    .line 200
    nop

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 202
.end method

.method public static createOpenCloseAnimationAdapters(Landroid/window/TransitionInfo;ZLcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v2, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 14
    new-instance v3, Landroid/graphics/Rect;

    .line 17
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 19
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 22
    move-result-object v4

    .line 25
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v4

    .line 29
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v5

    .line 33
    if-eqz v5, :cond_1

    .line 34
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v5

    .line 39
    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 40
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 42
    move-result v6

    .line 45
    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 46
    move-result v6

    .line 49
    if-eqz v6, :cond_0

    .line 50
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 55
    move-result-object v5

    .line 58
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 59
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 66
    move-result-object v6

    .line 69
    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 70
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 73
    move-result-object v5

    .line 76
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 77
    goto :goto_0

    .line 80
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 81
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object v0

    .line 89
    const/16 v5, 0x3e8

    .line 90
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    move-result v6

    .line 95
    if-eqz v6, :cond_3

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    move-result-object v6

    .line 101
    check-cast v6, Landroid/window/TransitionInfo$Change;

    .line 102
    invoke-static {p0, v6, p2, v2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createOpenCloseAnimationAdapter(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;Landroid/graphics/Rect;)Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    .line 104
    move-result-object v6

    .line 107
    if-eqz p1, :cond_2

    .line 108
    add-int/lit8 v7, v5, 0x1

    .line 110
    iput v5, v6, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mOverrideLayer:I

    .line 112
    move v5, v7

    .line 114
    :cond_2
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 119
    move-result-object v0

    .line 122
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    move-result v1

    .line 126
    if-eqz v1, :cond_8

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    move-result-object v1

    .line 132
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 133
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 135
    move-result v2

    .line 138
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 139
    move-result v2

    .line 142
    if-nez v2, :cond_4

    .line 143
    const/4 v2, 0x0

    .line 145
    goto :goto_3

    .line 146
    :cond_4
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 147
    move-result-object v2

    .line 150
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 151
    move-result-object v6

    .line 154
    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 155
    move-result v2

    .line 158
    xor-int/lit8 v2, v2, 0x1

    .line 159
    :goto_3
    if-eqz v2, :cond_6

    .line 161
    invoke-static {v1, v1, p3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->getOrCreateScreenshot(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    .line 163
    move-result-object v2

    .line 166
    if-eqz v2, :cond_6

    .line 167
    new-instance v6, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$SnapshotAdapter;

    .line 169
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    .line 171
    const/high16 v8, 0x3f800000    # 1.0f

    .line 173
    invoke-direct {v7, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 175
    invoke-static {p0, v1}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)I

    .line 178
    move-result v8

    .line 181
    invoke-virtual {p0, v8}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 182
    move-result-object v8

    .line 185
    invoke-direct {v6, v7, v1, v2, v8}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$SnapshotAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Root;)V

    .line 186
    if-nez p1, :cond_5

    .line 189
    add-int/lit8 v2, v5, 0x1

    .line 191
    iput v5, v6, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mOverrideLayer:I

    .line 193
    move v5, v2

    .line 195
    :cond_5
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_6
    invoke-static {p0, v1, p2, v3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createOpenCloseAnimationAdapter(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;Landroid/graphics/Rect;)Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    .line 199
    move-result-object v1

    .line 202
    if-nez p1, :cond_7

    .line 203
    add-int/lit8 v2, v5, 0x1

    .line 205
    iput v5, v1, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mOverrideLayer:I

    .line 207
    move v5, v2

    .line 209
    :cond_7
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    goto :goto_2

    .line 213
    :cond_8
    return-object v4
    .line 214
.end method

.method public static getOrCreateScreenshot(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p2, v0, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 12
    return-object v0

    .line 15
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 16
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 18
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 22
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 26
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 29
    move-result-object p0

    .line 32
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 33
    move-result-object p1

    .line 36
    const v1, 0x7fffffff

    .line 37
    invoke-static {p2, p0, p1, v0, v1}, Lcom/android/wm/shell/common/ScreenshotUtils;->takeScreenshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl;

    .line 40
    move-result-object p0

    .line 43
    return-object p0
    .line 44
.end method


# virtual methods
.method public createAnimator(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;Ljava/util/List;)Landroid/animation/Animator;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move-object/from16 v3, p3

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 10
    move-result-object v4

    .line 13
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v4

    .line 17
    const/4 v6, 0x0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v7

    .line 22
    const/4 v8, 0x6

    .line 23
    if-eqz v7, :cond_2

    .line 24
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v7

    .line 29
    check-cast v7, Landroid/window/TransitionInfo$Change;

    .line 30
    const/16 v12, 0x4000

    .line 32
    invoke-virtual {v7, v12}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 34
    move-result v12

    .line 37
    if-eqz v12, :cond_1

    .line 38
    new-instance v4, Ljava/util/ArrayList;

    .line 40
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 42
    move-object v14, v1

    .line 45
    move-object v1, v2

    .line 46
    move-object v2, v4

    .line 47
    move-object v4, v14

    .line 48
    goto/16 :goto_17

    .line 49
    :cond_1
    if-nez v6, :cond_0

    .line 51
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 53
    move-result v9

    .line 56
    if-ne v9, v8, :cond_0

    .line 57
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 59
    move-result-object v8

    .line 62
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 63
    move-result-object v7

    .line 66
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v7

    .line 70
    if-nez v7, :cond_0

    .line 71
    const/4 v6, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    if-eqz v6, :cond_22

    .line 75
    new-instance v4, Ljava/util/ArrayList;

    .line 77
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 82
    move-result-object v6

    .line 85
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object v6

    .line 89
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    move-result v7

    .line 93
    if-eqz v7, :cond_5

    .line 94
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v7

    .line 99
    check-cast v7, Landroid/window/TransitionInfo$Change;

    .line 100
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 102
    move-result v12

    .line 105
    if-ne v12, v8, :cond_3

    .line 106
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 108
    move-result-object v12

    .line 111
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 112
    move-result-object v13

    .line 115
    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v12

    .line 119
    if-eqz v12, :cond_4

    .line 120
    goto :goto_1

    .line 122
    :cond_4
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 126
    move-result-object v7

    .line 129
    if-eqz v7, :cond_3

    .line 130
    invoke-virtual {v1, v7}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 132
    move-result-object v7

    .line 135
    if-eqz v7, :cond_3

    .line 136
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 138
    move-result v12

    .line 141
    invoke-static {v12}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 142
    move-result v12

    .line 145
    if-eqz v12, :cond_3

    .line 146
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    goto :goto_1

    .line 151
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 152
    move-result v6

    .line 155
    if-eqz v6, :cond_6

    .line 156
    goto :goto_3

    .line 158
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 159
    move-result-object v6

    .line 162
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 163
    move-result-object v6

    .line 166
    const/4 v7, 0x0

    .line 167
    const/4 v12, 0x0

    .line 168
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    move-result v13

    .line 172
    if-eqz v13, :cond_9

    .line 173
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    move-result-object v13

    .line 178
    check-cast v13, Landroid/window/TransitionInfo$Change;

    .line 179
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 181
    move-result v14

    .line 184
    if-eqz v14, :cond_7

    .line 185
    goto :goto_2

    .line 187
    :cond_7
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 188
    move-result-object v14

    .line 191
    if-eqz v14, :cond_8

    .line 192
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 194
    move-result-object v14

    .line 197
    invoke-virtual {v1, v14}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 198
    move-result-object v14

    .line 201
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 202
    move-result v14

    .line 205
    if-eqz v14, :cond_8

    .line 206
    goto :goto_2

    .line 208
    :cond_8
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 209
    move-result v14

    .line 212
    invoke-static {v14}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 213
    move-result v14

    .line 216
    or-int/2addr v7, v14

    .line 217
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 218
    move-result v13

    .line 221
    invoke-static {v13}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 222
    move-result v13

    .line 225
    or-int/2addr v12, v13

    .line 226
    goto :goto_2

    .line 227
    :cond_9
    if-eqz v7, :cond_a

    .line 228
    if-eqz v12, :cond_a

    .line 230
    :goto_3
    const/4 v4, 0x1

    .line 232
    goto :goto_4

    .line 233
    :cond_a
    const/4 v4, 0x0

    .line 234
    :goto_4
    if-eqz v4, :cond_b

    .line 235
    new-instance v4, Ljava/util/ArrayList;

    .line 237
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 239
    move-object v14, v1

    .line 242
    move-object v3, v4

    .line 243
    move-object v4, v14

    .line 244
    goto/16 :goto_15

    .line 245
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    .line 247
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 249
    new-instance v6, Landroid/util/ArraySet;

    .line 252
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 254
    new-instance v7, Landroid/graphics/Rect;

    .line 257
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 262
    move-result-object v12

    .line 265
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 266
    move-result-object v12

    .line 269
    const/4 v13, 0x0

    .line 270
    move-object v11, v0

    .line 271
    move-object v14, v1

    .line 272
    move-object v15, v14

    .line 273
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 274
    move-result v16

    .line 277
    if-eqz v16, :cond_11

    .line 278
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    move-result-object v16

    .line 283
    move-object/from16 v9, v16

    .line 284
    check-cast v9, Landroid/window/TransitionInfo$Change;

    .line 286
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 288
    move-result v10

    .line 291
    if-ne v10, v8, :cond_10

    .line 292
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 294
    move-result-object v10

    .line 297
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 298
    move-result-object v8

    .line 301
    invoke-virtual {v10, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 302
    move-result v8

    .line 305
    if-eqz v8, :cond_c

    .line 306
    goto/16 :goto_8

    .line 308
    :cond_c
    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 313
    move-result-object v8

    .line 316
    if-eqz v8, :cond_d

    .line 317
    invoke-virtual {v15, v8}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 319
    move-result-object v8

    .line 322
    if-eqz v8, :cond_d

    .line 323
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 325
    move-result v10

    .line 328
    invoke-static {v10}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 329
    move-result v10

    .line 332
    if-eqz v10, :cond_d

    .line 333
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 335
    goto :goto_6

    .line 338
    :cond_d
    move-object v8, v9

    .line 339
    :goto_6
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 340
    move-result-object v10

    .line 343
    invoke-virtual {v7, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 344
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 347
    move-result-object v10

    .line 350
    invoke-virtual {v7, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 351
    if-eq v8, v9, :cond_e

    .line 354
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 356
    move-result-object v10

    .line 359
    invoke-virtual {v7, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 360
    :cond_e
    iget-object v10, v11, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    .line 363
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 368
    move-result-object v11

    .line 371
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 372
    move-result-object v13

    .line 375
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 376
    move-result v14

    .line 379
    int-to-float v14, v14

    .line 380
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 381
    move-result v15

    .line 384
    int-to-float v15, v15

    .line 385
    div-float/2addr v14, v15

    .line 386
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 387
    move-result v15

    .line 390
    int-to-float v15, v15

    .line 391
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 392
    move-result v5

    .line 395
    int-to-float v5, v5

    .line 396
    div-float/2addr v15, v5

    .line 397
    move-object/from16 v17, v12

    .line 398
    const/high16 v5, 0x3f800000    # 1.0f

    .line 400
    div-float v12, v5, v14

    .line 402
    div-float v3, v5, v15

    .line 404
    new-instance v5, Landroid/view/animation/AnimationSet;

    .line 406
    const/4 v0, 0x0

    .line 408
    invoke-direct {v5, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 409
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 412
    move-object/from16 v19, v4

    .line 414
    move-object/from16 v18, v6

    .line 416
    const/4 v4, 0x0

    .line 418
    const/high16 v6, 0x3f800000    # 1.0f

    .line 419
    invoke-direct {v0, v6, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 421
    iget-object v4, v10, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 424
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 426
    const-wide/16 v1, 0x50

    .line 429
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 431
    const-wide/16 v1, 0x1e

    .line 434
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 436
    invoke-virtual {v5, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 439
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .line 442
    invoke-direct {v0, v12, v12, v3, v3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 444
    iget-object v1, v10, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 447
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 449
    const-wide/16 v2, 0x205

    .line 452
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 454
    invoke-virtual {v5, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 457
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 460
    move-result v0

    .line 463
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 464
    move-result v2

    .line 467
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 468
    move-result v3

    .line 471
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 472
    move-result v4

    .line 475
    invoke-virtual {v5, v0, v2, v3, v4}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 476
    iget v0, v10, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    .line 479
    invoke-virtual {v5, v0}, Landroid/view/animation/AnimationSet;->scaleCurrentDuration(F)V

    .line 481
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 484
    const/4 v2, 0x1

    .line 486
    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 487
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 490
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    .line 493
    const/high16 v2, 0x3f800000    # 1.0f

    .line 495
    invoke-direct {v1, v14, v2, v15, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 497
    const-wide/16 v2, 0x205

    .line 500
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 502
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 505
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .line 508
    iget v2, v11, Landroid/graphics/Rect;->left:I

    .line 510
    iget v3, v13, Landroid/graphics/Rect;->left:I

    .line 512
    sub-int/2addr v2, v3

    .line 514
    int-to-float v2, v2

    .line 515
    iget v3, v11, Landroid/graphics/Rect;->top:I

    .line 516
    iget v4, v13, Landroid/graphics/Rect;->top:I

    .line 518
    sub-int/2addr v3, v4

    .line 520
    int-to-float v3, v3

    .line 521
    const/4 v4, 0x0

    .line 522
    invoke-direct {v1, v2, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 523
    const-wide/16 v2, 0x205

    .line 526
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 528
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 531
    new-instance v1, Landroid/graphics/Rect;

    .line 534
    invoke-direct {v1, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 536
    new-instance v4, Landroid/graphics/Rect;

    .line 539
    invoke-direct {v4, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 541
    const/4 v6, 0x0

    .line 544
    invoke-virtual {v1, v6, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 545
    invoke-virtual {v4, v6, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 548
    new-instance v6, Landroid/view/animation/ClipRectAnimation;

    .line 551
    invoke-direct {v6, v1, v4}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 553
    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 556
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 559
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 562
    move-result v1

    .line 565
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 566
    move-result v2

    .line 569
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 570
    move-result v3

    .line 573
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 574
    move-result v4

    .line 577
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 578
    iget v1, v10, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    .line 581
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->scaleCurrentDuration(F)V

    .line 583
    filled-new-array {v5, v0}, [Landroid/view/animation/Animation;

    .line 586
    move-result-object v0

    .line 589
    const/4 v1, 0x1

    .line 590
    aget-object v2, v0, v1

    .line 591
    move-object/from16 v1, p2

    .line 593
    invoke-static {v9, v8, v1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->getOrCreateScreenshot(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    .line 595
    move-result-object v3

    .line 598
    move-object/from16 v4, p1

    .line 599
    invoke-static {v4, v9}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)I

    .line 601
    move-result v5

    .line 604
    invoke-virtual {v4, v5}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 605
    move-result-object v5

    .line 608
    if-eqz v3, :cond_f

    .line 609
    new-instance v6, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$SnapshotAdapter;

    .line 611
    const/4 v10, 0x0

    .line 613
    aget-object v11, v0, v10

    .line 614
    invoke-direct {v6, v11, v9, v3, v5}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$SnapshotAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Root;)V

    .line 616
    move-object/from16 v3, v19

    .line 619
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    goto :goto_7

    .line 624
    :cond_f
    move-object/from16 v3, v19

    .line 625
    new-instance v6, Ljava/lang/StringBuilder;

    .line 627
    const-string v10, "Failed to take screenshot for change="

    .line 629
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    move-result-object v6

    .line 640
    const-string v9, "ActivityEmbeddingAnimR"

    .line 641
    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :goto_7
    new-instance v6, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$BoundsChangeAdapter;

    .line 646
    const/4 v9, 0x1

    .line 648
    aget-object v0, v0, v9

    .line 649
    invoke-direct {v6, v0, v8, v5}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$BoundsChangeAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Root;)V

    .line 651
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    move-object/from16 v11, p0

    .line 657
    move-object v13, v2

    .line 659
    move-object v14, v4

    .line 660
    move-object v15, v14

    .line 661
    goto :goto_9

    .line 662
    :cond_10
    :goto_8
    move-object v3, v4

    .line 663
    move-object/from16 v18, v6

    .line 664
    move-object/from16 v17, v12

    .line 666
    move-object v4, v1

    .line 668
    move-object v1, v2

    .line 669
    :goto_9
    move-object/from16 v0, p0

    .line 670
    move-object v2, v1

    .line 672
    move-object v1, v4

    .line 673
    move-object/from16 v12, v17

    .line 674
    move-object/from16 v6, v18

    .line 676
    const/4 v8, 0x6

    .line 678
    move-object v4, v3

    .line 679
    move-object/from16 v3, p3

    .line 680
    goto/16 :goto_5

    .line 682
    :cond_11
    move-object v3, v4

    .line 684
    move-object/from16 v18, v6

    .line 685
    move-object v4, v1

    .line 687
    move-object v1, v2

    .line 688
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    .line 689
    move-result v0

    .line 692
    if-nez v0, :cond_21

    .line 693
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 695
    move-result-object v0

    .line 698
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 699
    move-result-object v0

    .line 702
    const/4 v2, 0x1

    .line 703
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 704
    move-result v5

    .line 707
    if-eqz v5, :cond_1f

    .line 708
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 710
    move-result-object v5

    .line 713
    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 714
    move-object/from16 v6, v18

    .line 716
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 718
    move-result v8

    .line 721
    if-eqz v8, :cond_12

    .line 722
    move-object/from16 v18, v6

    .line 724
    goto :goto_a

    .line 726
    :cond_12
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 727
    move-result-object v8

    .line 730
    if-eqz v8, :cond_14

    .line 731
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 733
    move-result-object v8

    .line 736
    invoke-virtual {v15, v8}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 737
    move-result-object v8

    .line 740
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 741
    move-result v8

    .line 744
    if-nez v8, :cond_13

    .line 745
    goto :goto_b

    .line 747
    :cond_13
    const/4 v9, 0x6

    .line 748
    goto :goto_c

    .line 749
    :cond_14
    :goto_b
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 750
    move-result v8

    .line 753
    const/4 v9, 0x6

    .line 754
    if-ne v8, v9, :cond_16

    .line 755
    :goto_c
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 757
    move-result v8

    .line 760
    invoke-static {v8}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 761
    move-result v8

    .line 764
    if-eqz v8, :cond_15

    .line 765
    const/4 v8, 0x0

    .line 767
    goto :goto_d

    .line 768
    :cond_15
    const/high16 v8, 0x3f800000    # 1.0f

    .line 769
    :goto_d
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    .line 771
    invoke-direct {v10, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 773
    move-object/from16 v17, v0

    .line 776
    move-object/from16 v18, v6

    .line 778
    move-object v8, v7

    .line 780
    const-wide/16 v6, 0x205

    .line 781
    goto/16 :goto_14

    .line 783
    :cond_16
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 785
    move-result v2

    .line 788
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 789
    move-result v2

    .line 792
    if-eqz v2, :cond_1b

    .line 793
    iget-object v2, v11, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    .line 795
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 797
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 800
    move-result-object v8

    .line 803
    iget v10, v7, Landroid/graphics/Rect;->top:I

    .line 804
    iget v12, v8, Landroid/graphics/Rect;->top:I

    .line 806
    if-ne v10, v12, :cond_18

    .line 808
    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    .line 810
    move-object/from16 v17, v0

    .line 812
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 814
    if-ne v9, v0, :cond_19

    .line 816
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 818
    iget v9, v8, Landroid/graphics/Rect;->left:I

    .line 820
    if-ne v0, v9, :cond_17

    .line 822
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 824
    move-result v0

    .line 827
    neg-int v0, v0

    .line 828
    goto :goto_e

    .line 829
    :cond_17
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 830
    move-result v0

    .line 833
    :goto_e
    const/4 v9, 0x0

    .line 834
    goto :goto_f

    .line 835
    :cond_18
    move-object/from16 v17, v0

    .line 836
    :cond_19
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 838
    move-result v0

    .line 841
    if-ne v10, v12, :cond_1a

    .line 842
    neg-int v0, v0

    .line 844
    :cond_1a
    move v9, v0

    .line 845
    const/4 v0, 0x0

    .line 846
    :goto_f
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    .line 847
    int-to-float v0, v0

    .line 849
    int-to-float v9, v9

    .line 850
    const/4 v12, 0x0

    .line 851
    invoke-direct {v10, v12, v0, v12, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 852
    iget-object v0, v2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 855
    invoke-virtual {v10, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 857
    const-wide/16 v0, 0x205

    .line 860
    invoke-virtual {v10, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 862
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 865
    move-result v0

    .line 868
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 869
    move-result v1

    .line 872
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 873
    move-result v9

    .line 876
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 877
    move-result v8

    .line 880
    invoke-virtual {v10, v0, v1, v9, v8}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 881
    iget v0, v2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    .line 884
    invoke-virtual {v10, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 886
    move-object/from16 v18, v6

    .line 889
    move-object v8, v7

    .line 891
    const-wide/16 v6, 0x205

    .line 892
    goto :goto_13

    .line 894
    :cond_1b
    move-object/from16 v17, v0

    .line 895
    iget-object v0, v11, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    .line 897
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 899
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 902
    move-result-object v1

    .line 905
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 906
    iget v8, v1, Landroid/graphics/Rect;->top:I

    .line 908
    if-ne v2, v8, :cond_1d

    .line 910
    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    .line 912
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    .line 914
    if-ne v9, v10, :cond_1d

    .line 916
    iget v2, v7, Landroid/graphics/Rect;->left:I

    .line 918
    iget v8, v1, Landroid/graphics/Rect;->left:I

    .line 920
    if-ne v2, v8, :cond_1c

    .line 922
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 924
    move-result v2

    .line 927
    neg-int v2, v2

    .line 928
    goto :goto_10

    .line 929
    :cond_1c
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 930
    move-result v2

    .line 933
    :goto_10
    const/4 v8, 0x0

    .line 934
    goto :goto_12

    .line 935
    :cond_1d
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 936
    move-result v9

    .line 939
    if-ne v2, v8, :cond_1e

    .line 940
    neg-int v2, v9

    .line 942
    goto :goto_11

    .line 943
    :cond_1e
    move v2, v9

    .line 944
    :goto_11
    move v8, v2

    .line 945
    const/4 v2, 0x0

    .line 946
    :goto_12
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    .line 947
    int-to-float v2, v2

    .line 949
    int-to-float v8, v8

    .line 950
    const/4 v10, 0x0

    .line 951
    invoke-direct {v9, v2, v10, v8, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 952
    iget-object v2, v0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 955
    invoke-virtual {v9, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 957
    move-object/from16 v18, v6

    .line 960
    move-object v8, v7

    .line 962
    const-wide/16 v6, 0x205

    .line 963
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 965
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 968
    move-result v2

    .line 971
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 972
    move-result v10

    .line 975
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 976
    move-result v12

    .line 979
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 980
    move-result v1

    .line 983
    invoke-virtual {v9, v2, v10, v12, v1}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 984
    iget v0, v0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    .line 987
    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 989
    move-object v10, v9

    .line 992
    :goto_13
    const/4 v2, 0x0

    .line 993
    :goto_14
    new-instance v0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    .line 994
    invoke-static {v15, v5}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)I

    .line 996
    move-result v1

    .line 999
    invoke-virtual {v15, v1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 1000
    move-result-object v1

    .line 1003
    invoke-direct {v0, v10, v5, v1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Root;)V

    .line 1004
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    move-object/from16 v1, p2

    .line 1010
    move-object v7, v8

    .line 1012
    move-object/from16 v0, v17

    .line 1013
    goto/16 :goto_a

    .line 1015
    :cond_1f
    if-eqz v2, :cond_20

    .line 1017
    if-eqz v13, :cond_20

    .line 1019
    const/4 v0, 0x1

    .line 1021
    invoke-virtual {v13, v0}, Landroid/view/animation/Animation;->setShowBackdrop(Z)V

    .line 1022
    :cond_20
    :goto_15
    move-object/from16 v0, p0

    .line 1025
    move-object/from16 v1, p2

    .line 1027
    move-object v2, v3

    .line 1029
    goto :goto_17

    .line 1030
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1031
    const-string v1, "There should be at least one changing window to play the change animation"

    .line 1033
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1035
    throw v0

    .line 1038
    :cond_22
    move-object v4, v1

    .line 1039
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getType()I

    .line 1040
    move-result v0

    .line 1043
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 1044
    move-result v0

    .line 1047
    if-eqz v0, :cond_23

    .line 1048
    move-object/from16 v0, p0

    .line 1050
    iget-object v1, v0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    .line 1052
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    new-instance v2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;

    .line 1057
    const/4 v3, 0x0

    .line 1059
    invoke-direct {v2, v1, v3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;I)V

    .line 1060
    move-object/from16 v1, p2

    .line 1063
    invoke-static {v4, v3, v2, v1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createOpenCloseAnimationAdapters(Landroid/window/TransitionInfo;ZLcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;

    .line 1065
    move-result-object v2

    .line 1068
    goto :goto_16

    .line 1069
    :cond_23
    move-object/from16 v0, p0

    .line 1070
    move-object/from16 v1, p2

    .line 1072
    iget-object v2, v0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    .line 1074
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    new-instance v3, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;

    .line 1079
    const/4 v5, 0x1

    .line 1081
    invoke-direct {v3, v2, v5}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;I)V

    .line 1082
    invoke-static {v4, v5, v3, v1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createOpenCloseAnimationAdapters(Landroid/window/TransitionInfo;ZLcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;

    .line 1085
    move-result-object v2

    .line 1088
    :goto_16
    move-object v14, v4

    .line 1089
    :goto_17
    const/4 v3, 0x2

    .line 1090
    new-array v5, v3, [F

    .line 1091
    fill-array-data v5, :array_0

    .line 1093
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 1096
    move-result-object v5

    .line 1099
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 1100
    move-result v6

    .line 1103
    const-wide/16 v7, 0x0

    .line 1104
    if-eqz v6, :cond_26

    .line 1106
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1108
    move-result-object v4

    .line 1111
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1112
    move-result-object v4

    .line 1115
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1116
    move-result v6

    .line 1119
    if-eqz v6, :cond_2f

    .line 1120
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1122
    move-result-object v6

    .line 1125
    check-cast v6, Landroid/window/TransitionInfo$Change;

    .line 1126
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1128
    move-result-object v9

    .line 1131
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 1132
    move-result-object v10

    .line 1135
    if-eqz v10, :cond_24

    .line 1136
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 1138
    move-result-object v10

    .line 1141
    iget v10, v10, Landroid/graphics/Point;->x:I

    .line 1142
    int-to-float v10, v10

    .line 1144
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 1145
    move-result-object v11

    .line 1148
    iget v11, v11, Landroid/graphics/Point;->y:I

    .line 1149
    int-to-float v11, v11

    .line 1151
    invoke-virtual {v1, v9, v10, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1152
    goto :goto_19

    .line 1155
    :cond_24
    invoke-static {v14, v6}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)I

    .line 1156
    move-result v10

    .line 1159
    invoke-virtual {v14, v10}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 1160
    move-result-object v10

    .line 1163
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1164
    move-result-object v11

    .line 1167
    iget v11, v11, Landroid/graphics/Rect;->left:I

    .line 1168
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    .line 1170
    move-result-object v12

    .line 1173
    iget v12, v12, Landroid/graphics/Point;->x:I

    .line 1174
    sub-int/2addr v11, v12

    .line 1176
    int-to-float v11, v11

    .line 1177
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1178
    move-result-object v12

    .line 1181
    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 1182
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    .line 1184
    move-result-object v10

    .line 1187
    iget v10, v10, Landroid/graphics/Point;->y:I

    .line 1188
    sub-int/2addr v12, v10

    .line 1190
    int-to-float v10, v12

    .line 1191
    invoke-virtual {v1, v9, v11, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1192
    :goto_19
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1195
    move-result-object v10

    .line 1198
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 1199
    move-result v10

    .line 1202
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1203
    move-result-object v11

    .line 1206
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 1207
    move-result v11

    .line 1210
    invoke-virtual {v1, v9, v10, v11}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1211
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1214
    move-result v6

    .line 1217
    if-ne v6, v3, :cond_25

    .line 1218
    invoke-virtual {v1, v9}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1220
    goto :goto_18

    .line 1223
    :cond_25
    invoke-virtual {v1, v9}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1224
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1227
    invoke-virtual {v1, v9, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1229
    goto :goto_18

    .line 1232
    :cond_26
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1233
    move-result-object v6

    .line 1236
    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1237
    move-result v9

    .line 1240
    if-eqz v9, :cond_29

    .line 1241
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1243
    move-result-object v9

    .line 1246
    check-cast v9, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    .line 1247
    iget-object v10, v9, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    .line 1249
    invoke-virtual {v10}, Landroid/view/animation/Animation;->hasExtension()Z

    .line 1251
    move-result v11

    .line 1254
    if-nez v11, :cond_27

    .line 1255
    goto :goto_1a

    .line 1257
    :cond_27
    iget-object v9, v9, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mChange:Landroid/window/TransitionInfo$Change;

    .line 1258
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1260
    move-result v11

    .line 1263
    invoke-static {v11}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 1264
    move-result v11

    .line 1267
    if-eqz v11, :cond_28

    .line 1268
    new-instance v11, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda3;

    .line 1270
    move-object/from16 v12, p3

    .line 1272
    invoke-direct {v11, v9, v10, v12}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda3;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)V

    .line 1274
    move-object/from16 v13, p5

    .line 1277
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1279
    goto :goto_1a

    .line 1282
    :cond_28
    move-object/from16 v12, p3

    .line 1283
    move-object/from16 v13, p5

    .line 1285
    invoke-static {v9, v10, v1, v12}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->edgeExtendWindow(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 1287
    goto :goto_1a

    .line 1290
    :cond_29
    move-object/from16 v12, p3

    .line 1291
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1293
    move-result-object v6

    .line 1296
    :cond_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1297
    move-result v9

    .line 1300
    if-eqz v9, :cond_2c

    .line 1301
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1303
    move-result-object v9

    .line 1306
    check-cast v9, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    .line 1307
    iget-object v10, v9, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mChange:Landroid/window/TransitionInfo$Change;

    .line 1309
    iget-object v9, v9, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    .line 1311
    const/4 v11, 0x0

    .line 1313
    invoke-static {v14, v10, v9, v11}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->getTransitionBackgroundColorIfSet(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;I)I

    .line 1314
    move-result v9

    .line 1317
    if-eqz v9, :cond_2a

    .line 1318
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 1320
    move-result-object v4

    .line 1323
    if-nez v9, :cond_2b

    .line 1324
    goto :goto_1b

    .line 1326
    :cond_2b
    invoke-static {v9}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 1327
    move-result-object v6

    .line 1330
    const/4 v9, 0x3

    .line 1331
    new-array v9, v9, [F

    .line 1332
    invoke-virtual {v6}, Landroid/graphics/Color;->red()F

    .line 1334
    move-result v10

    .line 1337
    aput v10, v9, v11

    .line 1338
    invoke-virtual {v6}, Landroid/graphics/Color;->green()F

    .line 1340
    move-result v10

    .line 1343
    const/4 v13, 0x1

    .line 1344
    aput v10, v9, v13

    .line 1345
    invoke-virtual {v6}, Landroid/graphics/Color;->blue()F

    .line 1347
    move-result v6

    .line 1350
    aput v6, v9, v3

    .line 1351
    new-instance v3, Landroid/view/SurfaceControl$Builder;

    .line 1353
    invoke-direct {v3}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 1355
    const-string v6, "Animation Background"

    .line 1358
    invoke-virtual {v3, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 1360
    move-result-object v3

    .line 1363
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 1364
    move-result-object v3

    .line 1367
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 1368
    move-result-object v3

    .line 1371
    invoke-virtual {v3, v13}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 1372
    move-result-object v3

    .line 1375
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 1376
    move-result-object v3

    .line 1379
    const/high16 v4, -0x80000000

    .line 1380
    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1382
    move-result-object v4

    .line 1385
    invoke-virtual {v4, v3, v9}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 1386
    move-result-object v4

    .line 1389
    invoke-virtual {v4, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1390
    invoke-virtual {v12, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1393
    :cond_2c
    :goto_1b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1396
    move-result-object v3

    .line 1399
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1400
    move-result v4

    .line 1403
    if-eqz v4, :cond_2d

    .line 1404
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1406
    move-result-object v4

    .line 1409
    check-cast v4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    .line 1410
    iget-object v4, v4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    .line 1412
    invoke-virtual {v4}, Landroid/view/animation/Animation;->computeDurationHint()J

    .line 1414
    move-result-wide v9

    .line 1417
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 1418
    move-result-wide v7

    .line 1421
    goto :goto_1c

    .line 1422
    :cond_2d
    new-instance v3, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda1;

    .line 1423
    invoke-direct {v3, v2, v5}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;Landroid/animation/ValueAnimator;)V

    .line 1425
    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1428
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 1431
    move-result-object v3

    .line 1434
    invoke-virtual {v3}, Landroid/view/Choreographer;->getVsyncId()J

    .line 1435
    move-result-wide v3

    .line 1438
    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 1439
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1442
    move-result-object v3

    .line 1445
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1446
    move-result v4

    .line 1449
    if-eqz v4, :cond_2f

    .line 1450
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1452
    move-result-object v4

    .line 1455
    check-cast v4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    .line 1456
    iget-object v6, v4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    .line 1458
    invoke-virtual {v1, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1460
    iget v9, v4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mOverrideLayer:I

    .line 1463
    const/4 v10, -0x1

    .line 1465
    if-eq v9, v10, :cond_2e

    .line 1466
    invoke-virtual {v1, v6, v9}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1468
    :cond_2e
    iget-object v6, v4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    .line 1471
    iget-object v9, v4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    .line 1473
    const/4 v10, 0x0

    .line 1475
    invoke-virtual {v9, v10, v6}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    .line 1476
    sget-object v6, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;->sInstance:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;

    .line 1479
    iget-object v9, v4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mChange:Landroid/window/TransitionInfo$Change;

    .line 1481
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getMiuiChange()Landroid/window/TransitionInfoStub$MiuiChange;

    .line 1483
    move-result-object v9

    .line 1486
    invoke-virtual {v6, v4, v9}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;->updateTransformation(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;Landroid/window/TransitionInfoStub$MiuiChange;)V

    .line 1487
    invoke-virtual {v4, v1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->onAnimationUpdateInner(Landroid/view/SurfaceControl$Transaction;)V

    .line 1490
    goto :goto_1d

    .line 1493
    :cond_2f
    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1494
    new-instance v1, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$1;

    .line 1497
    move-object/from16 v3, p4

    .line 1499
    invoke-direct {v1, v0, v2, v3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$1;-><init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;Ljava/util/List;Ljava/lang/Runnable;)V

    .line 1501
    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1504
    return-object v5

    .line 1507
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 1508
.end method
