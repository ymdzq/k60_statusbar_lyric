.class public final Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAttachedToWindow:Z

.field public final mBlurDrawInfo:Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

.field public mBlurEnabled:Z

.field public final mCheckSurface:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder$1;

.field public mUserVisible:Z

.field public final mView:Landroid/view/View;

.field public mVisibilityAggregated:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurEnabled:Z

    .line 6
    new-instance v0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder$1;

    .line 8
    invoke-direct {v0, p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder$1;-><init>(Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;)V

    .line 10
    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mCheckSurface:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder$1;

    .line 13
    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mView:Landroid/view/View;

    .line 15
    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurDrawInfo:Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final evaluateUserVisibility()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mView:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 4
    move-result-object v0

    .line 7
    sget-boolean v1, Lcom/miui/blur/sdk/backdrop/BlurManager;->BACKDROP_SAMPLING_ENABLED:Z

    .line 8
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    move v0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v3

    .line 28
    :goto_0
    if-eqz v1, :cond_1

    .line 29
    iget-boolean v1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mVisibilityAggregated:Z

    .line 31
    if-eqz v1, :cond_1

    .line 33
    iget-boolean v1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mAttachedToWindow:Z

    .line 35
    if-eqz v1, :cond_1

    .line 37
    iget-boolean v1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurEnabled:Z

    .line 39
    if-eqz v1, :cond_1

    .line 41
    move v1, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v1, v3

    .line 45
    :goto_1
    if-eqz v1, :cond_2

    .line 46
    if-eqz v0, :cond_2

    .line 48
    move v4, v2

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move v4, v3

    .line 52
    :goto_2
    if-eqz v1, :cond_3

    .line 53
    if-nez v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mView:Landroid/view/View;

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 59
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mCheckSurface:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder$1;

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 65
    :cond_3
    iget-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mUserVisible:Z

    .line 68
    if-eq v0, v4, :cond_8

    .line 70
    if-eqz v4, :cond_7

    .line 72
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mView:Landroid/view/View;

    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurDrawInfo:Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    .line 80
    sget-object v5, Lcom/miui/blur/sdk/backdrop/BlurManager;->sRenderScript:Landroid/renderscript/RenderScript;

    .line 82
    if-nez v5, :cond_4

    .line 84
    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    .line 86
    move-result-object v5

    .line 89
    sput-object v5, Lcom/miui/blur/sdk/backdrop/BlurManager;->sRenderScript:Landroid/renderscript/RenderScript;

    .line 90
    :cond_4
    invoke-interface {v1}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurViewRootImpl()Landroid/view/ViewRootImpl;

    .line 92
    move-result-object v5

    .line 95
    if-eqz v5, :cond_5

    .line 96
    sget-object v6, Lcom/miui/blur/sdk/backdrop/BlurManager;->sBlurLayers:Ljava/util/HashMap;

    .line 98
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    move-result-object v7

    .line 103
    if-nez v7, :cond_5

    .line 104
    new-instance v3, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;

    .line 106
    sget-object v7, Lcom/miui/blur/sdk/backdrop/BlurManager;->sRenderScript:Landroid/renderscript/RenderScript;

    .line 108
    sget-object v8, Lcom/miui/blur/sdk/backdrop/BlurManager;->RS_HANDLER:Landroid/os/Handler;

    .line 110
    invoke-direct {v3, v0, v5, v7, v8}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;-><init>(Landroid/content/Context;Landroid/view/ViewRootImpl;Landroid/renderscript/RenderScript;Landroid/os/Handler;)V

    .line 112
    invoke-virtual {v6, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    goto :goto_3

    .line 118
    :cond_5
    move v2, v3

    .line 119
    :goto_3
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->sBlurLayers:Ljava/util/HashMap;

    .line 120
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    move-result-object v0

    .line 125
    check-cast v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;

    .line 126
    if-eqz v0, :cond_6

    .line 128
    iget-object v3, v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mLock:Ljava/lang/Object;

    .line 130
    monitor-enter v3

    .line 132
    :try_start_0
    iget-object v5, v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    .line 133
    check-cast v5, Ljava/util/HashSet;

    .line 135
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->evaluateBlurRadius()V

    .line 140
    monitor-exit v3

    .line 143
    goto :goto_4

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    throw p0

    .line 147
    :cond_6
    :goto_4
    if-eqz v2, :cond_8

    .line 148
    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->start()V

    .line 150
    goto :goto_5

    .line 153
    :cond_7
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurDrawInfo:Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    .line 154
    invoke-interface {v0}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurViewRootImpl()Landroid/view/ViewRootImpl;

    .line 156
    move-result-object v1

    .line 159
    sget-object v2, Lcom/miui/blur/sdk/backdrop/BlurManager;->sBlurLayers:Ljava/util/HashMap;

    .line 160
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    move-result-object v3

    .line 165
    check-cast v3, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;

    .line 166
    if-eqz v3, :cond_8

    .line 168
    iget-object v5, v3, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mLock:Ljava/lang/Object;

    .line 170
    monitor-enter v5

    .line 172
    :try_start_1
    iget-object v6, v3, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    .line 173
    check-cast v6, Ljava/util/HashSet;

    .line 175
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v3}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->evaluateBlurRadius()V

    .line 180
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    iget-object v0, v3, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    .line 184
    check-cast v0, Ljava/util/HashSet;

    .line 186
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 188
    move-result v0

    .line 191
    if-eqz v0, :cond_8

    .line 192
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v3}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->destroy()V

    .line 197
    goto :goto_5

    .line 200
    :catchall_1
    move-exception p0

    .line 201
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 202
    throw p0

    .line 203
    :cond_8
    :goto_5
    iput-boolean v4, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mUserVisible:Z

    .line 204
    return-void
    .line 206
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v8, p1

    .line 4
    iget-boolean v1, v0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurEnabled:Z

    .line 6
    const/4 v9, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    sget-boolean v1, Lcom/miui/blur/sdk/backdrop/BlurManager;->BACKDROP_SAMPLING_ENABLED:Z

    .line 12
    if-eqz v1, :cond_0

    .line 14
    move v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v9

    .line 18
    :goto_0
    if-eqz v1, :cond_c

    .line 19
    iget-object v10, v0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurDrawInfo:Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    .line 21
    sget-boolean v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->BACKDROP_SAMPLING_ENABLED:Z

    .line 23
    invoke-interface {v10}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurViewRootImpl()Landroid/view/ViewRootImpl;

    .line 25
    move-result-object v0

    .line 28
    sget-object v1, Lcom/miui/blur/sdk/backdrop/BlurManager;->sBlurLayers:Ljava/util/HashMap;

    .line 29
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 34
    move-object v11, v0

    .line 35
    check-cast v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;

    .line 36
    if-eqz v11, :cond_c

    .line 38
    iget-object v0, v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 40
    if-eqz v0, :cond_c

    .line 42
    sget-boolean v1, Lcom/miui/blur/sdk/backdrop/BlurManager;->BACKDROP_SAMPLING_ENABLED:Z

    .line 44
    if-nez v1, :cond_1

    .line 46
    goto/16 :goto_7

    .line 48
    :cond_1
    iget-object v1, v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 56
    move-result-object v1

    .line 59
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 60
    const/4 v3, 0x2

    .line 62
    if-ne v1, v3, :cond_2

    .line 63
    move v1, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move v1, v9

    .line 67
    :goto_1
    iget-object v4, v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpLoc:[I

    .line 68
    invoke-interface {v10, v4}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getLocationOnScreen([I)V

    .line 70
    iget-object v4, v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpLoc:[I

    .line 73
    aget v5, v4, v9

    .line 75
    aget v4, v4, v2

    .line 77
    const/high16 v6, 0x3f800000    # 1.0f

    .line 79
    iget v7, v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScale:F

    .line 81
    div-float/2addr v6, v7

    .line 83
    sget-object v7, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->MATRIX_SIMPLE_POOL:Lcom/miui/blur/sdk/backdrop/Pools$SynchronizedPool;

    .line 84
    iget-object v12, v7, Lcom/miui/blur/sdk/backdrop/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    .line 86
    monitor-enter v12

    .line 88
    :try_start_0
    iget v13, v7, Lcom/miui/blur/sdk/backdrop/Pools$SynchronizedPool;->mPoolSize:I

    .line 89
    const/4 v14, 0x0

    .line 91
    if-lez v13, :cond_3

    .line 92
    add-int/lit8 v13, v13, -0x1

    .line 94
    iget-object v15, v7, Lcom/miui/blur/sdk/backdrop/Pools$SynchronizedPool;->mPool:[Ljava/lang/Object;

    .line 96
    aget-object v16, v15, v13

    .line 98
    aput-object v14, v15, v13

    .line 100
    iput v13, v7, Lcom/miui/blur/sdk/backdrop/Pools$SynchronizedPool;->mPoolSize:I

    .line 102
    move-object/from16 v14, v16

    .line 104
    :cond_3
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    check-cast v14, Landroid/graphics/Matrix;

    .line 107
    if-nez v14, :cond_4

    .line 109
    new-instance v14, Landroid/graphics/Matrix;

    .line 111
    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 113
    :cond_4
    invoke-virtual {v14}, Landroid/graphics/Matrix;->reset()V

    .line 116
    if-eqz v1, :cond_5

    .line 119
    iget v1, v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mBufferWidth:I

    .line 121
    int-to-float v1, v1

    .line 123
    const/high16 v12, 0x40000000    # 2.0f

    .line 124
    div-float/2addr v1, v12

    .line 126
    iget v13, v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mBufferHeight:I

    .line 127
    int-to-float v13, v13

    .line 129
    div-float/2addr v13, v12

    .line 130
    const/high16 v12, 0x43340000    # 180.0f

    .line 131
    invoke-virtual {v14, v12, v1, v13}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 133
    :cond_5
    const/4 v1, 0x0

    .line 136
    invoke-virtual {v14, v6, v6, v1, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 137
    neg-int v1, v5

    .line 140
    int-to-float v1, v1

    .line 141
    neg-int v4, v4

    .line 142
    int-to-float v4, v4

    .line 143
    invoke-virtual {v14, v1, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 144
    iget-object v1, v7, Lcom/miui/blur/sdk/backdrop/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    .line 147
    monitor-enter v1

    .line 149
    move v4, v9

    .line 150
    :goto_2
    :try_start_1
    iget v5, v7, Lcom/miui/blur/sdk/backdrop/Pools$SynchronizedPool;->mPoolSize:I

    .line 151
    iget-object v6, v7, Lcom/miui/blur/sdk/backdrop/Pools$SynchronizedPool;->mPool:[Ljava/lang/Object;

    .line 153
    if-ge v4, v5, :cond_7

    .line 155
    aget-object v12, v6, v4

    .line 157
    if-ne v12, v14, :cond_6

    .line 159
    move v4, v2

    .line 161
    goto :goto_3

    .line 162
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 163
    goto :goto_2

    .line 165
    :cond_7
    move v4, v9

    .line 166
    :goto_3
    if-nez v4, :cond_b

    .line 167
    array-length v4, v6

    .line 169
    if-ge v5, v4, :cond_8

    .line 170
    aput-object v14, v6, v5

    .line 172
    add-int/2addr v5, v2

    .line 174
    iput v5, v7, Lcom/miui/blur/sdk/backdrop/Pools$SynchronizedPool;->mPoolSize:I

    .line 175
    :cond_8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    iget-object v0, v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mShader:Landroid/graphics/BitmapShader;

    .line 178
    invoke-virtual {v0, v14}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 180
    iget-object v0, v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mOutline:Landroid/graphics/Outline;

    .line 183
    invoke-interface {v10, v0}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurOutline(Landroid/graphics/Outline;)V

    .line 185
    iget-object v0, v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mOutline:Landroid/graphics/Outline;

    .line 188
    iget v1, v0, Landroid/graphics/Outline;->mMode:I

    .line 190
    if-ne v1, v3, :cond_9

    .line 192
    iget-object v0, v0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 194
    iget-object v1, v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mPaint:Landroid/graphics/Paint;

    .line 196
    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 198
    invoke-interface {v10}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurStyle()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 201
    move-result-object v1

    .line 204
    iget-object v1, v1, Lcom/miui/blur/sdk/backdrop/BlurStyle;->mBlendConfigs:[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 205
    array-length v2, v1

    .line 207
    :goto_4
    if-ge v9, v2, :cond_c

    .line 208
    aget-object v3, v1, v9

    .line 210
    iget v4, v3, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mColor:I

    .line 212
    iget-object v3, v3, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mBlendMode:Landroid/graphics/BlendMode;

    .line 214
    iget-object v5, v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlendPaint:Landroid/graphics/Paint;

    .line 216
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 221
    iget-object v3, v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlendPaint:Landroid/graphics/Paint;

    .line 224
    invoke-virtual {v8, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 226
    add-int/lit8 v9, v9, 0x1

    .line 229
    goto :goto_4

    .line 231
    :cond_9
    if-ne v1, v2, :cond_a

    .line 232
    iget-object v1, v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpRect:Landroid/graphics/Rect;

    .line 234
    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->getRect(Landroid/graphics/Rect;)Z

    .line 236
    iget-object v12, v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpRect:Landroid/graphics/Rect;

    .line 239
    iget-object v0, v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mOutline:Landroid/graphics/Outline;

    .line 241
    invoke-virtual {v0}, Landroid/graphics/Outline;->getRadius()F

    .line 243
    move-result v13

    .line 246
    iget v0, v12, Landroid/graphics/Rect;->left:I

    .line 247
    int-to-float v1, v0

    .line 249
    iget v0, v12, Landroid/graphics/Rect;->top:I

    .line 250
    int-to-float v2, v0

    .line 252
    iget v0, v12, Landroid/graphics/Rect;->right:I

    .line 253
    int-to-float v3, v0

    .line 255
    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    .line 256
    int-to-float v4, v0

    .line 258
    iget-object v7, v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mPaint:Landroid/graphics/Paint;

    .line 259
    move-object/from16 v0, p1

    .line 261
    move v5, v13

    .line 263
    move v6, v13

    .line 264
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 265
    invoke-interface {v10}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurStyle()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 268
    move-result-object v0

    .line 271
    iget-object v10, v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->mBlendConfigs:[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 272
    array-length v14, v10

    .line 274
    :goto_5
    if-ge v9, v14, :cond_c

    .line 275
    aget-object v0, v10, v9

    .line 277
    iget v1, v0, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mColor:I

    .line 279
    iget-object v0, v0, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mBlendMode:Landroid/graphics/BlendMode;

    .line 281
    iget-object v2, v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlendPaint:Landroid/graphics/Paint;

    .line 283
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 288
    iget v0, v12, Landroid/graphics/Rect;->left:I

    .line 291
    int-to-float v1, v0

    .line 293
    iget v0, v12, Landroid/graphics/Rect;->top:I

    .line 294
    int-to-float v2, v0

    .line 296
    iget v0, v12, Landroid/graphics/Rect;->right:I

    .line 297
    int-to-float v3, v0

    .line 299
    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    .line 300
    int-to-float v4, v0

    .line 302
    iget-object v7, v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlendPaint:Landroid/graphics/Paint;

    .line 303
    move-object/from16 v0, p1

    .line 305
    move v5, v13

    .line 307
    move v6, v13

    .line 308
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 309
    add-int/lit8 v9, v9, 0x1

    .line 312
    goto :goto_5

    .line 314
    :cond_a
    const/4 v1, 0x0

    .line 315
    const/4 v2, 0x0

    .line 316
    invoke-interface {v10}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getWidth()I

    .line 317
    move-result v0

    .line 320
    int-to-float v3, v0

    .line 321
    invoke-interface {v10}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getHeight()I

    .line 322
    move-result v0

    .line 325
    int-to-float v4, v0

    .line 326
    iget-object v5, v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mPaint:Landroid/graphics/Paint;

    .line 327
    move-object/from16 v0, p1

    .line 329
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 331
    invoke-interface {v10}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurStyle()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 334
    move-result-object v0

    .line 337
    iget-object v6, v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->mBlendConfigs:[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 338
    array-length v7, v6

    .line 340
    :goto_6
    if-ge v9, v7, :cond_c

    .line 341
    aget-object v0, v6, v9

    .line 343
    iget v1, v0, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mColor:I

    .line 345
    iget-object v0, v0, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mBlendMode:Landroid/graphics/BlendMode;

    .line 347
    iget-object v2, v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlendPaint:Landroid/graphics/Paint;

    .line 349
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 354
    const/4 v1, 0x0

    .line 357
    const/4 v2, 0x0

    .line 358
    invoke-interface {v10}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getWidth()I

    .line 359
    move-result v0

    .line 362
    int-to-float v3, v0

    .line 363
    invoke-interface {v10}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getHeight()I

    .line 364
    move-result v0

    .line 367
    int-to-float v4, v0

    .line 368
    iget-object v5, v11, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlendPaint:Landroid/graphics/Paint;

    .line 369
    move-object/from16 v0, p1

    .line 371
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 373
    add-int/lit8 v9, v9, 0x1

    .line 376
    goto :goto_6

    .line 378
    :cond_b
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 379
    const-string v2, "Already in the pool!"

    .line 381
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 383
    throw v0

    .line 386
    :catchall_0
    move-exception v0

    .line 387
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    throw v0

    .line 389
    :catchall_1
    move-exception v0

    .line 390
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 391
    throw v0

    .line 392
    :cond_c
    :goto_7
    return-void
    .line 393
.end method
