.class public final Lcom/android/systemui/statusbar/animation/FloatingIconLayer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final FLOATING_ICON_EXECUTOR:Lcom/android/systemui/statusbar/animation/LooperExecutor;

.field public static final REPARENT_DELAY_COUNT:I

.field public static sFloatingIconHandlerThread:Landroid/os/HandlerThread;

.field public static final sIconLoc:Landroid/graphics/RectF;


# instance fields
.field public final mClipRect:Landroid/graphics/Rect;

.field public mCurRectRatio:F

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public final mFloatingIconRectF:Landroid/graphics/Rect;

.field public mFloatingIconSurface:Landroid/view/Surface;

.field public mFloatingIconSurfaceControl:Landroid/view/SurfaceControl;

.field public mIconTransparentEdge:I

.field public mIsDrawIcon:Z

.field public mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;

.field public final mLock:Ljava/lang/Object;

.field public final mMatrix:Landroid/graphics/Matrix;

.field public final mModifiedRectF:Landroid/graphics/RectF;

.field public mReparentDelayCount:I

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mValidIconRectF:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->sIconLoc:Landroid/graphics/RectF;

    .line 7
    const/4 v0, 0x4

    .line 9
    sput v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->REPARENT_DELAY_COUNT:I

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/animation/LooperExecutor;

    .line 12
    sget-object v1, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->sFloatingIconHandlerThread:Landroid/os/HandlerThread;

    .line 14
    if-nez v1, :cond_0

    .line 16
    new-instance v1, Landroid/os/HandlerThread;

    .line 18
    const-string v2, "FloatingIconThread"

    .line 20
    const/16 v3, -0x14

    .line 22
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 24
    sput-object v1, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->sFloatingIconHandlerThread:Landroid/os/HandlerThread;

    .line 27
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 29
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->sFloatingIconHandlerThread:Landroid/os/HandlerThread;

    .line 32
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 34
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/animation/LooperExecutor;-><init>(Landroid/os/Looper;)V

    .line 38
    sput-object v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/android/systemui/statusbar/animation/LooperExecutor;

    .line 41
    return-void
    .line 43
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mFloatingIconRectF:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mValidIconRectF:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 19
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 24
    new-instance v0, Landroid/graphics/Matrix;

    .line 26
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mMatrix:Landroid/graphics/Matrix;

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    .line 33
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    .line 40
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    iput v0, p0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mCurRectRatio:F

    .line 49
    new-instance v0, Ljava/lang/Object;

    .line 51
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    .line 58
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 60
    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mReparentDelayCount:I

    .line 64
    return-void
    .line 66
.end method


# virtual methods
.method public final showSurfaceControl(Landroid/view/SurfaceControl;Landroid/graphics/RectF;F)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mFloatingIconSurfaceControl:Landroid/view/SurfaceControl;

    .line 6
    iget-object v3, v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 8
    if-eqz v2, :cond_9

    .line 10
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    .line 12
    move-result v2

    .line 15
    if-eqz v2, :cond_9

    .line 16
    iget-object v2, v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mFloatingIconSurface:Landroid/view/Surface;

    .line 18
    if-eqz v2, :cond_9

    .line 20
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    .line 22
    move-result v2

    .line 25
    if-eqz v2, :cond_9

    .line 26
    iget-object v2, v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mFloatingIconSurfaceControl:Landroid/view/SurfaceControl;

    .line 28
    iget-object v4, v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 30
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x1

    .line 33
    if-eqz v4, :cond_1

    .line 34
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 39
    if-nez v4, :cond_0

    .line 40
    goto :goto_0

    .line 42
    :cond_0
    move v4, v5

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    move v4, v6

    .line 45
    :goto_1
    if-eqz v4, :cond_2

    .line 46
    const/4 v4, 0x0

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    iget-object v4, v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 50
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 52
    move-result-object v4

    .line 55
    check-cast v4, Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;

    .line 56
    :goto_2
    iget-object v7, v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    .line 58
    move-object/from16 v8, p2

    .line 60
    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 62
    iget-object v9, v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mMatrix:Landroid/graphics/Matrix;

    .line 65
    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 67
    iget-object v10, v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mValidIconRectF:Landroid/graphics/RectF;

    .line 70
    iget-object v11, v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    .line 72
    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 74
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    .line 77
    move-result v12

    .line 80
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    .line 81
    move-result v13

    .line 84
    div-float/2addr v12, v13

    .line 85
    const/4 v13, 0x0

    .line 86
    const/high16 v14, 0x40000000    # 2.0f

    .line 87
    if-nez v4, :cond_3

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    .line 91
    move-result v4

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    .line 95
    move-result v15

    .line 98
    sub-float/2addr v4, v15

    .line 99
    div-float/2addr v4, v14

    .line 100
    cmpl-float v15, v4, v13

    .line 101
    if-lez v15, :cond_5

    .line 103
    iget v15, v7, Landroid/graphics/RectF;->left:F

    .line 105
    sub-float/2addr v15, v4

    .line 107
    iput v15, v7, Landroid/graphics/RectF;->left:F

    .line 108
    iget v15, v7, Landroid/graphics/RectF;->right:F

    .line 110
    add-float/2addr v15, v4

    .line 112
    iput v15, v7, Landroid/graphics/RectF;->right:F

    .line 113
    goto :goto_3

    .line 115
    :cond_3
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 116
    move-result v4

    .line 119
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 120
    move-result v15

    .line 123
    div-float/2addr v4, v15

    .line 124
    cmpg-float v15, v4, v12

    .line 125
    if-gez v15, :cond_4

    .line 127
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 129
    move-result v4

    .line 132
    mul-float/2addr v4, v12

    .line 133
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 134
    move-result v15

    .line 137
    sub-float/2addr v4, v15

    .line 138
    div-float/2addr v4, v14

    .line 139
    iget v15, v7, Landroid/graphics/RectF;->left:F

    .line 140
    sub-float/2addr v15, v4

    .line 142
    iput v15, v7, Landroid/graphics/RectF;->left:F

    .line 143
    iget v15, v7, Landroid/graphics/RectF;->right:F

    .line 145
    add-float/2addr v15, v4

    .line 147
    iput v15, v7, Landroid/graphics/RectF;->right:F

    .line 148
    goto :goto_3

    .line 150
    :cond_4
    cmpl-float v4, v4, v12

    .line 151
    if-lez v4, :cond_5

    .line 153
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 155
    move-result v4

    .line 158
    div-float/2addr v4, v12

    .line 159
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 160
    move-result v15

    .line 163
    sub-float/2addr v4, v15

    .line 164
    div-float/2addr v4, v14

    .line 165
    iget v15, v7, Landroid/graphics/RectF;->top:F

    .line 166
    sub-float/2addr v15, v4

    .line 168
    iput v15, v7, Landroid/graphics/RectF;->top:F

    .line 169
    iget v15, v7, Landroid/graphics/RectF;->bottom:F

    .line 171
    add-float/2addr v15, v4

    .line 173
    iput v15, v7, Landroid/graphics/RectF;->bottom:F

    .line 174
    :cond_5
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    .line 176
    move-result v4

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    .line 180
    move-result v8

    .line 183
    div-float/2addr v4, v8

    .line 184
    iput v4, v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mCurRectRatio:F

    .line 185
    cmpg-float v8, v4, v12

    .line 187
    if-gez v8, :cond_6

    .line 189
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 191
    move-result v4

    .line 194
    int-to-float v4, v4

    .line 195
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 196
    move-result v8

    .line 199
    int-to-float v8, v8

    .line 200
    iget v12, v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mCurRectRatio:F

    .line 201
    invoke-static {v8, v12, v4, v14}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 203
    move-result v4

    .line 206
    float-to-double v14, v4

    .line 207
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    .line 208
    move-result-wide v14

    .line 211
    double-to-int v4, v14

    .line 212
    invoke-virtual {v11, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 213
    goto :goto_4

    .line 216
    :cond_6
    cmpl-float v4, v4, v12

    .line 217
    if-lez v4, :cond_7

    .line 219
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 221
    move-result v4

    .line 224
    int-to-float v4, v4

    .line 225
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 226
    move-result v8

    .line 229
    int-to-float v8, v8

    .line 230
    iget v12, v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mCurRectRatio:F

    .line 231
    div-float/2addr v8, v12

    .line 233
    sub-float/2addr v4, v8

    .line 234
    div-float/2addr v4, v14

    .line 235
    float-to-double v14, v4

    .line 236
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    .line 237
    move-result-wide v14

    .line 240
    double-to-int v4, v14

    .line 241
    invoke-virtual {v11, v5, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 242
    :cond_7
    :goto_4
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    .line 245
    invoke-virtual {v9, v10, v7, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 247
    const/16 v4, 0x9

    .line 250
    new-array v4, v4, [F

    .line 252
    invoke-virtual {v3, v2, v9, v4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 254
    invoke-virtual {v3, v2, v11}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 257
    iget-object v2, v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mFloatingIconSurfaceControl:Landroid/view/SurfaceControl;

    .line 260
    move/from16 v4, p3

    .line 262
    invoke-virtual {v3, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 264
    iget-object v2, v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mFloatingIconSurfaceControl:Landroid/view/SurfaceControl;

    .line 267
    const/high16 v4, 0x3f800000    # 1.0f

    .line 269
    invoke-static {v13, v4}, Ljava/lang/Math;->max(FF)F

    .line 271
    move-result v5

    .line 274
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    .line 275
    move-result v4

    .line 278
    invoke-virtual {v3, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 279
    if-eqz v1, :cond_8

    .line 282
    invoke-virtual/range {p1 .. p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 284
    move-result v2

    .line 287
    if-eqz v2, :cond_8

    .line 288
    iget-object v2, v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mFloatingIconSurfaceControl:Landroid/view/SurfaceControl;

    .line 290
    invoke-virtual {v3, v2, v1, v6}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 292
    :cond_8
    iget-object v0, v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mFloatingIconSurfaceControl:Landroid/view/SurfaceControl;

    .line 295
    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 297
    :cond_9
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 300
    return-void
    .line 303
.end method
