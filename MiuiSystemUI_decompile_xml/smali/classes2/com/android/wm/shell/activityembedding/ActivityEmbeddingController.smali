.class public final Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field final mAnimationRunner:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

.field public final mTransitionCallbacks:Landroid/util/ArrayMap;

.field final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mTransitionCallbacks:Landroid/util/ArrayMap;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-object v0, p1

    .line 15
    check-cast v0, Landroid/content/Context;

    .line 16
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iput-object p3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 21
    new-instance p3, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

    .line 23
    invoke-direct {p3, p1, p0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;-><init>(Landroid/content/Context;Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;)V

    .line 25
    iput-object p3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mAnimationRunner:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

    .line 28
    new-instance p1, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController$$ExternalSyntheticLambda0;

    .line 30
    invoke-direct {p1, p0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;)V

    .line 32
    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 35
    return-void
    .line 38
.end method


# virtual methods
.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mAnimationRunner:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mActiveAnimator:Landroid/animation/Animator;

    .line 4
    if-nez p0, :cond_0

    .line 6
    const-string p0, "ActivityEmbeddingAnimR"

    .line 8
    const-string p1, "No active ActivityEmbedding animator running but mergeAnimation is trying to cancel one."

    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    .line 16
    :goto_0
    return-void
    .line 19
.end method

.method public final setAnimScaleSetting(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mAnimationRunner:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    .line 4
    iput p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    .line 6
    return-void
    .line 8
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 2
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v1, v2

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    move v5, v4

    .line 14
    :goto_0
    const/16 v6, 0x200

    .line 15
    if-ltz v1, :cond_2

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v7

    .line 22
    check-cast v7, Landroid/window/TransitionInfo$Change;

    .line 23
    invoke-virtual {v7, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 25
    move-result v6

    .line 28
    if-nez v6, :cond_0

    .line 29
    move v5, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/16 v6, 0x400

    .line 33
    invoke-virtual {v7, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 35
    move-result v6

    .line 38
    if-nez v6, :cond_1

    .line 39
    move v4, v2

    .line 41
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    if-nez v4, :cond_3

    .line 45
    return v3

    .line 47
    :cond_3
    if-eqz v5, :cond_b

    .line 48
    new-instance v1, Landroid/graphics/Rect;

    .line 50
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 55
    move-result v4

    .line 58
    sub-int/2addr v4, v2

    .line 59
    :goto_2
    if-ltz v4, :cond_6

    .line 60
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v5

    .line 65
    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 66
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 68
    move-result v7

    .line 71
    invoke-static {v7}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 72
    move-result v7

    .line 75
    if-nez v7, :cond_5

    .line 76
    invoke-virtual {v5, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 78
    move-result v7

    .line 81
    if-eqz v7, :cond_4

    .line 82
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 84
    move-result-object v5

    .line 87
    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 88
    goto :goto_4

    .line 91
    :cond_4
    :goto_3
    move v0, v3

    .line 92
    goto :goto_7

    .line 93
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, -0x1

    .line 94
    goto :goto_2

    .line 96
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 97
    move-result v4

    .line 100
    sub-int/2addr v4, v2

    .line 101
    :goto_5
    if-ltz v4, :cond_8

    .line 102
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v5

    .line 107
    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 108
    invoke-virtual {v5, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 110
    move-result v7

    .line 113
    if-nez v7, :cond_7

    .line 114
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 116
    move-result-object v5

    .line 119
    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 120
    move-result v5

    .line 123
    if-nez v5, :cond_7

    .line 124
    goto :goto_3

    .line 126
    :cond_7
    add-int/lit8 v4, v4, -0x1

    .line 127
    goto :goto_5

    .line 129
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 130
    move-result v1

    .line 133
    sub-int/2addr v1, v2

    .line 134
    :goto_6
    if-ltz v1, :cond_a

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    move-result-object v4

    .line 140
    check-cast v4, Landroid/window/TransitionInfo$Change;

    .line 141
    invoke-virtual {v4, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 143
    move-result v4

    .line 146
    if-nez v4, :cond_9

    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 149
    :cond_9
    add-int/lit8 v1, v1, -0x1

    .line 152
    goto :goto_6

    .line 154
    :cond_a
    move v0, v2

    .line 155
    :goto_7
    if-nez v0, :cond_b

    .line 156
    return v3

    .line 158
    :cond_b
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 159
    move-result-object v0

    .line 162
    if-eqz v0, :cond_f

    .line 163
    invoke-virtual {v0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 165
    move-result v1

    .line 168
    const/4 v4, 0x5

    .line 169
    if-eq v1, v4, :cond_e

    .line 170
    invoke-virtual {v0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 172
    move-result v0

    .line 175
    if-eq v0, v2, :cond_d

    .line 176
    const/4 v1, 0x2

    .line 178
    if-eq v0, v1, :cond_d

    .line 179
    const/4 v1, 0x3

    .line 181
    if-eq v0, v1, :cond_d

    .line 182
    const/4 v1, 0x4

    .line 184
    if-eq v0, v1, :cond_d

    .line 185
    const/16 v1, 0xb

    .line 187
    if-eq v0, v1, :cond_d

    .line 189
    const/16 v1, 0xc

    .line 191
    if-ne v0, v1, :cond_c

    .line 193
    goto :goto_8

    .line 195
    :cond_c
    move v0, v3

    .line 196
    goto :goto_9

    .line 197
    :cond_d
    :goto_8
    move v0, v2

    .line 198
    :goto_9
    if-eqz v0, :cond_f

    .line 199
    :cond_e
    return v3

    .line 201
    :cond_f
    sget-object v0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;->sInstance:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;

    .line 202
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getMiuiTransitionInfo()Landroid/window/TransitionInfoStub;

    .line 204
    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;->disableAnimation(Landroid/window/TransitionInfoStub;)Z

    .line 208
    move-result v0

    .line 211
    if-eqz v0, :cond_10

    .line 212
    new-instance p0, Ljava/lang/StringBuilder;

    .line 214
    const-string p1, "Disable animation, id="

    .line 216
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getDebugId()I

    .line 221
    move-result p1

    .line 224
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object p0

    .line 231
    const-string p1, "ActivityEmbedding"

    .line 232
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 237
    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 240
    const/4 p0, 0x0

    .line 243
    invoke-interface {p5, p0, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 244
    return v2

    .line 247
    :cond_10
    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mTransitionCallbacks:Landroid/util/ArrayMap;

    .line 248
    invoke-virtual {v0, p1, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mAnimationRunner:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

    .line 253
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    new-instance p5, Ljava/util/ArrayList;

    .line 258
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 260
    new-instance v7, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda0;

    .line 263
    invoke-direct {v7, p0, p1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;Landroid/os/IBinder;)V

    .line 265
    move-object v3, p0

    .line 268
    move-object v4, p2

    .line 269
    move-object v5, p3

    .line 270
    move-object v6, p4

    .line 271
    move-object v8, p5

    .line 272
    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createAnimator(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;Ljava/util/List;)Landroid/animation/Animator;

    .line 273
    move-result-object p1

    .line 276
    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mActiveAnimator:Landroid/animation/Animator;

    .line 277
    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 279
    move-result p0

    .line 282
    if-nez p0, :cond_12

    .line 283
    invoke-virtual {p3, v2}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 285
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    .line 288
    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 290
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 293
    move-result-object p2

    .line 296
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 297
    move-result p3

    .line 300
    if-eqz p3, :cond_11

    .line 301
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 303
    move-result-object p3

    .line 306
    check-cast p3, Ljava/util/function/Consumer;

    .line 307
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 309
    goto :goto_a

    .line 312
    :cond_11
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 313
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 316
    goto :goto_b

    .line 319
    :cond_12
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 320
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 323
    :goto_b
    return v2
    .line 326
.end method
