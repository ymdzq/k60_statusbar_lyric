.class public final Lcom/android/wm/shell/transition/CounterRotatorHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mLastDisplayBounds:Landroid/graphics/Rect;

.field public mLastRotationDelta:I

.field public final mRotatorMap:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mRotatorMap:Landroid/util/ArrayMap;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastDisplayBounds:Landroid/graphics/Rect;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final cleanUp(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mRotatorMap:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    move-result v1

    .line 7
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 8
    if-ltz v1, :cond_1

    .line 10
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 15
    check-cast v2, Lcom/android/wm/shell/util/CounterRotator;

    .line 16
    iget-object v2, v2, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 18
    if-nez v2, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 23
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 27
    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastRotationDelta:I

    .line 31
    return-void
    .line 33
.end method

.method public final handleClosingChanges(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v8, p3

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 8
    move-result v2

    .line 11
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 12
    move-result v3

    .line 15
    invoke-static {v2, v3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    .line 16
    move-result v9

    .line 19
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 20
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 24
    move-result v10

    .line 27
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 28
    move-result v11

    .line 31
    iput v9, v0, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastRotationDelta:I

    .line 32
    iget-object v3, v0, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastDisplayBounds:Landroid/graphics/Rect;

    .line 34
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 39
    move-result-object v12

    .line 42
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 43
    move-result v13

    .line 46
    add-int/lit8 v2, v13, -0x1

    .line 47
    move v14, v2

    .line 49
    :goto_0
    if-ltz v14, :cond_7

    .line 50
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 55
    move-object v15, v2

    .line 56
    check-cast v15, Landroid/window/TransitionInfo$Change;

    .line 57
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 59
    move-result-object v7

    .line 62
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 63
    move-result v2

    .line 66
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 67
    move-result v2

    .line 70
    if-eqz v2, :cond_6

    .line 71
    invoke-static {v15, v1}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    .line 73
    move-result v2

    .line 76
    if-eqz v2, :cond_6

    .line 77
    if-nez v7, :cond_0

    .line 79
    goto/16 :goto_4

    .line 81
    :cond_0
    iget-object v6, v0, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mRotatorMap:Landroid/util/ArrayMap;

    .line 83
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object v2

    .line 88
    check-cast v2, Lcom/android/wm/shell/util/CounterRotator;

    .line 89
    if-nez v2, :cond_4

    .line 91
    new-instance v5, Lcom/android/wm/shell/util/CounterRotator;

    .line 93
    invoke-direct {v5}, Lcom/android/wm/shell/util/CounterRotator;-><init>()V

    .line 95
    invoke-virtual {v1, v7}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 98
    move-result-object v2

    .line 101
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 102
    move-result-object v4

    .line 105
    int-to-float v3, v10

    .line 106
    int-to-float v2, v11

    .line 107
    move/from16 v16, v2

    .line 108
    move-object v2, v5

    .line 110
    move/from16 v17, v3

    .line 111
    move-object/from16 v3, p3

    .line 113
    move-object v0, v5

    .line 115
    move v5, v9

    .line 116
    move-object v1, v6

    .line 117
    move/from16 v6, v17

    .line 118
    move/from16 v17, v9

    .line 120
    move-object v9, v7

    .line 122
    move/from16 v7, v16

    .line 123
    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/util/CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    .line 125
    iget-object v2, v0, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 128
    if-eqz v2, :cond_3

    .line 130
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 132
    move-result v3

    .line 135
    and-int/lit8 v3, v3, 0x2

    .line 136
    const/4 v4, -0x1

    .line 138
    if-nez v3, :cond_1

    .line 139
    sub-int v3, v13, v14

    .line 141
    goto :goto_1

    .line 143
    :cond_1
    move v3, v4

    .line 144
    :goto_1
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 145
    move-result-object v5

    .line 148
    invoke-virtual {v5}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    .line 149
    move-result v5

    .line 152
    if-eqz v5, :cond_2

    .line 153
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 155
    move-result v5

    .line 158
    and-int/lit8 v5, v5, 0x1

    .line 159
    if-eqz v5, :cond_2

    .line 161
    goto :goto_2

    .line 163
    :cond_2
    move v4, v3

    .line 164
    :goto_2
    invoke-virtual {v8, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 165
    :cond_3
    invoke-virtual {v1, v9, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    move-object v2, v0

    .line 171
    goto :goto_3

    .line 172
    :cond_4
    move/from16 v17, v9

    .line 173
    :goto_3
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 175
    move-result-object v0

    .line 178
    iget-object v1, v2, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 179
    if-nez v1, :cond_5

    .line 181
    goto :goto_5

    .line 183
    :cond_5
    invoke-virtual {v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 184
    goto :goto_5

    .line 187
    :cond_6
    :goto_4
    move/from16 v17, v9

    .line 188
    :goto_5
    add-int/lit8 v14, v14, -0x1

    .line 190
    move-object/from16 v0, p0

    .line 192
    move-object/from16 v1, p1

    .line 194
    move/from16 v9, v17

    .line 196
    goto/16 :goto_0

    .line 198
    :cond_7
    return-void
    .line 200
.end method
