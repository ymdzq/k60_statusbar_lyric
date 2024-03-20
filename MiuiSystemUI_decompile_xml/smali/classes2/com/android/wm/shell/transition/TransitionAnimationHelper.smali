.class public abstract Lcom/android/wm/shell/transition/TransitionAnimationHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    .line 2
    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 4
    invoke-virtual {v0, p5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 7
    move-result-object p5

    .line 10
    invoke-virtual {p5, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 11
    move-result-object p5

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p5, v0}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 16
    move-result-object p5

    .line 19
    const-string v1, "TransitionAnimationHelper#createExtensionSurface"

    .line 20
    invoke-virtual {p5, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 22
    move-result-object p5

    .line 25
    invoke-virtual {p5, v0}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 26
    move-result-object p5

    .line 29
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 30
    move-result v1

    .line 33
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 34
    move-result v2

    .line 37
    invoke-virtual {p5, v1, v2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    .line 38
    move-result-object p5

    .line 41
    invoke-virtual {p5}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 42
    move-result-object p5

    .line 45
    new-instance v1, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 46
    invoke-direct {v1, p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 48
    invoke-virtual {v1, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 51
    move-result-object p0

    .line 54
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 55
    const/high16 p1, 0x3f800000    # 1.0f

    .line 57
    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 59
    move-result-object p0

    .line 62
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 63
    invoke-virtual {p0, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 65
    move-result-object p0

    .line 68
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 69
    invoke-virtual {p0, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 71
    move-result-object p0

    .line 74
    invoke-virtual {p0, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 75
    move-result-object p0

    .line 78
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 79
    invoke-virtual {p0, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 81
    move-result-object p0

    .line 84
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 85
    invoke-virtual {p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    .line 87
    move-result-object p0

    .line 90
    invoke-static {p0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 91
    move-result-object p0

    .line 94
    if-nez p0, :cond_1

    .line 95
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 97
    if-eqz p0, :cond_0

    .line 99
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 101
    const-string p1, "Failed to capture edge of window."

    .line 103
    const p2, -0x64883b0b

    .line 105
    const/4 p3, 0x0

    .line 108
    const/4 p4, 0x0

    .line 109
    invoke-static {p0, p2, p3, p1, p4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_0
    return-void

    .line 113
    :cond_1
    new-instance p1, Landroid/graphics/BitmapShader;

    .line 114
    invoke-virtual {p0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    .line 116
    move-result-object p0

    .line 119
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 120
    invoke-direct {p1, p0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 122
    new-instance p0, Landroid/graphics/Paint;

    .line 125
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 127
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 130
    new-instance p1, Landroid/view/Surface;

    .line 133
    invoke-direct {p1, p5}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceControl;)V

    .line 135
    invoke-virtual {p1}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    .line 138
    move-result-object v1

    .line 141
    invoke-virtual {v1, p2, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 142
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 145
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 148
    const/high16 p0, -0x80000000

    .line 151
    invoke-virtual {p6, p5, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 153
    int-to-float p0, p3

    .line 156
    int-to-float p1, p4

    .line 157
    invoke-virtual {p6, p5, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 158
    invoke-virtual {p6, p5, v0}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 161
    invoke-virtual {p7, p5}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 164
    return-void
    .line 167
.end method

.method public static edgeExtendWindow(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 4
    move-result v1

    .line 7
    and-int/lit8 v1, v1, 0x8

    .line 8
    if-eqz v1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    new-instance v1, Landroid/view/animation/Transformation;

    .line 13
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    .line 15
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    .line 19
    new-instance v2, Landroid/view/animation/Transformation;

    .line 22
    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    .line 24
    const/high16 v3, 0x3f800000    # 1.0f

    .line 27
    invoke-virtual {v0, v3, v2}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    .line 29
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    .line 32
    move-result-object v0

    .line 35
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    .line 36
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    .line 40
    move-result-object v0

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 44
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 48
    move-result v1

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 52
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 56
    move-result v2

    .line 59
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 60
    move-result v7

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 64
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 68
    move-result v1

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 72
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 76
    move-result v2

    .line 79
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 80
    move-result v1

    .line 83
    iget v2, v0, Landroid/graphics/Insets;->left:I

    .line 84
    const/4 v3, 0x1

    .line 86
    const/4 v4, 0x0

    .line 87
    if-gez v2, :cond_1

    .line 88
    new-instance v9, Landroid/graphics/Rect;

    .line 90
    invoke-direct {v9, v4, v4, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 92
    new-instance v10, Landroid/graphics/Rect;

    .line 95
    iget v2, v0, Landroid/graphics/Insets;->left:I

    .line 97
    neg-int v2, v2

    .line 99
    invoke-direct {v10, v4, v4, v2, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 100
    iget v11, v0, Landroid/graphics/Insets;->left:I

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 105
    move-result-object v8

    .line 108
    const/4 v12, 0x0

    .line 109
    const-string v13, "Left Edge Extension"

    .line 110
    move-object/from16 v14, p2

    .line 112
    move-object/from16 v15, p3

    .line 114
    invoke-static/range {v8 .. v15}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 116
    :cond_1
    iget v2, v0, Landroid/graphics/Insets;->top:I

    .line 119
    if-gez v2, :cond_2

    .line 121
    new-instance v9, Landroid/graphics/Rect;

    .line 123
    invoke-direct {v9, v4, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 125
    new-instance v10, Landroid/graphics/Rect;

    .line 128
    iget v2, v0, Landroid/graphics/Insets;->top:I

    .line 130
    neg-int v2, v2

    .line 132
    invoke-direct {v10, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 133
    iget v12, v0, Landroid/graphics/Insets;->top:I

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 138
    move-result-object v8

    .line 141
    const/4 v11, 0x0

    .line 142
    const-string v13, "Top Edge Extension"

    .line 143
    move-object/from16 v14, p2

    .line 145
    move-object/from16 v15, p3

    .line 147
    invoke-static/range {v8 .. v15}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 149
    :cond_2
    iget v2, v0, Landroid/graphics/Insets;->right:I

    .line 152
    if-gez v2, :cond_3

    .line 154
    new-instance v9, Landroid/graphics/Rect;

    .line 156
    add-int/lit8 v2, v1, -0x1

    .line 158
    invoke-direct {v9, v2, v4, v1, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 160
    new-instance v10, Landroid/graphics/Rect;

    .line 163
    iget v2, v0, Landroid/graphics/Insets;->right:I

    .line 165
    neg-int v2, v2

    .line 167
    invoke-direct {v10, v4, v4, v2, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 171
    move-result-object v8

    .line 174
    const/4 v12, 0x0

    .line 175
    const-string v13, "Right Edge Extension"

    .line 176
    move v11, v1

    .line 178
    move-object/from16 v14, p2

    .line 179
    move-object/from16 v15, p3

    .line 181
    invoke-static/range {v8 .. v15}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 183
    :cond_3
    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    .line 186
    if-gez v2, :cond_4

    .line 188
    new-instance v2, Landroid/graphics/Rect;

    .line 190
    add-int/lit8 v3, v7, -0x1

    .line 192
    invoke-direct {v2, v4, v3, v1, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 194
    new-instance v5, Landroid/graphics/Rect;

    .line 197
    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    .line 199
    neg-int v3, v3

    .line 201
    invoke-direct {v5, v4, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 202
    iget v6, v0, Landroid/graphics/Insets;->left:I

    .line 205
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 207
    move-result-object v3

    .line 210
    const-string v8, "Bottom Edge Extension"

    .line 211
    move-object v4, v2

    .line 213
    move-object/from16 v9, p2

    .line 214
    move-object/from16 v10, p3

    .line 216
    invoke-static/range {v3 .. v10}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 218
    :cond_4
    return-void
    .line 221
.end method

.method public static getTransitionBackgroundColorIfSet(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;I)I
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/animation/Animation;->getShowBackdrop()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return p3

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 9
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/window/TransitionInfo$AnimationOptions;->getBackgroundColor()I

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 25
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/window/TransitionInfo$AnimationOptions;->getBackgroundColor()I

    .line 29
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Animation;->getBackdropColor()I

    .line 34
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    invoke-virtual {p2}, Landroid/view/animation/Animation;->getBackdropColor()I

    .line 40
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_2
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getBackgroundColor()I

    .line 45
    move-result p0

    .line 48
    if-eqz p0, :cond_3

    .line 49
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getBackgroundColor()I

    .line 51
    move-result p0

    .line 54
    return p0

    .line 55
    :cond_3
    return p3
    .line 56
.end method

.method public static loadAttributeAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILcom/android/internal/policy/TransitionAnimation;Z)Landroid/view/animation/Animation;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    move-object/from16 v3, p3

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getType()I

    .line 10
    move-result v4

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 14
    move-result v5

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 18
    move-result v6

    .line 21
    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 22
    move-result v5

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 26
    move-result-object v7

    .line 29
    const/4 v9, 0x1

    .line 30
    if-eqz v7, :cond_0

    .line 31
    move v7, v9

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v7, 0x0

    .line 35
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 36
    move-result-object v10

    .line 39
    if-eqz v10, :cond_1

    .line 40
    invoke-virtual {v10}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 42
    move-result v11

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v11, 0x0

    .line 47
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 48
    move-result-object v12

    .line 51
    const/4 v8, 0x4

    .line 52
    const/16 v15, 0xe

    .line 53
    const/4 v13, 0x2

    .line 55
    if-eqz p4, :cond_5

    .line 56
    if-ne v4, v9, :cond_3

    .line 58
    if-eqz v5, :cond_2

    .line 60
    const/16 v2, 0x1c

    .line 62
    goto/16 :goto_5

    .line 64
    :cond_2
    const/16 v2, 0x1d

    .line 66
    goto/16 :goto_5

    .line 68
    :cond_3
    if-ne v4, v13, :cond_1c

    .line 70
    if-eqz v5, :cond_4

    .line 72
    goto/16 :goto_4

    .line 74
    :cond_4
    const/16 v2, 0x1b

    .line 76
    goto/16 :goto_5

    .line 78
    :cond_5
    const/4 v14, 0x3

    .line 80
    if-ne v2, v14, :cond_7

    .line 81
    if-eqz v5, :cond_6

    .line 83
    const/16 v2, 0x14

    .line 85
    goto/16 :goto_5

    .line 87
    :cond_6
    const/16 v2, 0x15

    .line 89
    goto/16 :goto_5

    .line 91
    :cond_7
    if-ne v2, v8, :cond_9

    .line 93
    if-eqz v5, :cond_8

    .line 95
    const/16 v2, 0x16

    .line 97
    goto/16 :goto_5

    .line 99
    :cond_8
    const/16 v2, 0x17

    .line 101
    goto/16 :goto_5

    .line 103
    :cond_9
    if-ne v2, v9, :cond_b

    .line 105
    if-eqz v5, :cond_a

    .line 107
    const/16 v2, 0x10

    .line 109
    goto/16 :goto_5

    .line 111
    :cond_a
    const/16 v2, 0x11

    .line 113
    goto/16 :goto_5

    .line 115
    :cond_b
    if-ne v2, v13, :cond_d

    .line 117
    if-eqz v5, :cond_c

    .line 119
    const/16 v2, 0x12

    .line 121
    goto/16 :goto_5

    .line 123
    :cond_c
    const/16 v2, 0x13

    .line 125
    goto/16 :goto_5

    .line 127
    :cond_d
    if-ne v4, v9, :cond_14

    .line 129
    and-int/lit8 v2, v6, 0x4

    .line 131
    if-eqz v2, :cond_e

    .line 133
    move v2, v9

    .line 135
    goto :goto_2

    .line 136
    :cond_e
    const/4 v2, 0x0

    .line 137
    :goto_2
    if-eqz v7, :cond_10

    .line 138
    if-eqz v2, :cond_10

    .line 140
    if-nez v5, :cond_10

    .line 142
    :cond_f
    const/4 v13, 0x7

    .line 144
    goto :goto_6

    .line 145
    :cond_10
    if-eqz v7, :cond_12

    .line 146
    if-nez v2, :cond_12

    .line 148
    if-eqz v5, :cond_11

    .line 150
    const/16 v13, 0x8

    .line 152
    goto :goto_6

    .line 154
    :cond_11
    const/16 v13, 0x9

    .line 155
    goto :goto_6

    .line 157
    :cond_12
    if-eqz v5, :cond_13

    .line 158
    move v13, v8

    .line 160
    goto :goto_6

    .line 161
    :cond_13
    const/4 v13, 0x5

    .line 162
    goto :goto_6

    .line 163
    :cond_14
    if-ne v4, v14, :cond_16

    .line 164
    if-eqz v5, :cond_15

    .line 166
    const/16 v2, 0xc

    .line 168
    goto :goto_5

    .line 170
    :cond_15
    const/16 v2, 0xd

    .line 171
    goto :goto_5

    .line 173
    :cond_16
    if-ne v4, v13, :cond_1a

    .line 174
    and-int/lit8 v2, v6, 0x4

    .line 176
    if-eqz v2, :cond_17

    .line 178
    if-nez v5, :cond_17

    .line 180
    move v2, v9

    .line 182
    goto :goto_3

    .line 183
    :cond_17
    const/4 v2, 0x0

    .line 184
    :goto_3
    if-eqz v7, :cond_19

    .line 185
    if-nez v2, :cond_19

    .line 187
    if-eqz v5, :cond_18

    .line 189
    const/16 v13, 0xa

    .line 191
    goto :goto_6

    .line 193
    :cond_18
    const/16 v13, 0xb

    .line 194
    goto :goto_6

    .line 196
    :cond_19
    if-eqz v5, :cond_f

    .line 197
    const/4 v13, 0x6

    .line 199
    goto :goto_6

    .line 200
    :cond_1a
    if-ne v4, v8, :cond_1c

    .line 201
    if-eqz v5, :cond_1b

    .line 203
    move v2, v15

    .line 205
    goto :goto_5

    .line 206
    :cond_1b
    const/16 v2, 0xf

    .line 207
    goto :goto_5

    .line 209
    :cond_1c
    :goto_4
    const/4 v2, 0x0

    .line 210
    :goto_5
    move v13, v2

    .line 211
    const/4 v2, 0x0

    .line 212
    :goto_6
    invoke-virtual {v3, v12, v13, v2}, Lcom/android/internal/policy/TransitionAnimation;->getResIdAttr(Landroid/view/WindowManager$LayoutParams;IZ)I

    .line 213
    move-result v14

    .line 216
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 217
    move-result-object v9

    .line 220
    invoke-virtual {v9, v0, v1, v13}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->loadMiuiDefaultTransitionNotCheck(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;I)Landroid/view/animation/Animation;

    .line 221
    move-result-object v9

    .line 224
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 225
    move-result-object v8

    .line 228
    invoke-virtual {v8, v12}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->enableCustomTranslucentAnimation(Landroid/view/WindowManager$LayoutParams;)Z

    .line 229
    move-result v8

    .line 232
    const/16 v16, 0x0

    .line 233
    if-eqz v13, :cond_28

    .line 235
    if-ne v11, v15, :cond_24

    .line 237
    if-eqz v7, :cond_1d

    .line 239
    if-eqz v8, :cond_24

    .line 241
    :cond_1d
    const/4 v6, 0x4

    .line 243
    if-eq v13, v6, :cond_1f

    .line 244
    const/4 v6, 0x5

    .line 246
    if-eq v13, v6, :cond_1f

    .line 247
    const/4 v6, 0x6

    .line 249
    if-eq v13, v6, :cond_1e

    .line 250
    const/4 v6, 0x7

    .line 252
    if-eq v13, v6, :cond_1e

    .line 253
    goto :goto_8

    .line 255
    :cond_1e
    const/4 v8, 0x0

    .line 256
    goto :goto_7

    .line 257
    :cond_1f
    const/4 v8, 0x1

    .line 258
    :goto_7
    invoke-virtual {v10, v8}, Landroid/window/TransitionInfo$AnimationOptions;->getCustomActivityTransition(Z)Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    .line 259
    move-result-object v16

    .line 262
    :goto_8
    if-eqz v16, :cond_21

    .line 263
    invoke-virtual {v10}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    .line 265
    move-result-object v0

    .line 268
    if-eqz v5, :cond_20

    .line 269
    invoke-virtual/range {v16 .. v16}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->getCustomEnterResId()I

    .line 271
    move-result v1

    .line 274
    goto :goto_9

    .line 275
    :cond_20
    invoke-virtual/range {v16 .. v16}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->getCustomExitResId()I

    .line 276
    move-result v1

    .line 279
    :goto_9
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    .line 280
    move-result-object v0

    .line 283
    if-eqz v0, :cond_23

    .line 284
    invoke-virtual/range {v16 .. v16}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->getCustomBackgroundColor()I

    .line 286
    move-result v1

    .line 289
    if-eqz v1, :cond_23

    .line 290
    invoke-virtual/range {v16 .. v16}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->getCustomBackgroundColor()I

    .line 292
    move-result v1

    .line 295
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setBackdropColor(I)V

    .line 296
    goto :goto_a

    .line 299
    :cond_21
    if-eqz v9, :cond_22

    .line 300
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 302
    move-result-object v6

    .line 305
    invoke-virtual {v6, v12, v14, v0, v1}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->useDefaultAnimationAttr(Landroid/view/WindowManager$LayoutParams;ILandroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z

    .line 306
    move-result v0

    .line 309
    if-eqz v0, :cond_22

    .line 310
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 312
    move-result-object v0

    .line 315
    invoke-virtual {v0}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->isCompatibilityMode()Z

    .line 316
    move-result v0

    .line 319
    if-nez v0, :cond_22

    .line 320
    goto :goto_c

    .line 322
    :cond_22
    invoke-virtual {v10}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    .line 323
    move-result-object v0

    .line 326
    invoke-virtual {v10}, Landroid/window/TransitionInfo$AnimationOptions;->getAnimations()I

    .line 327
    move-result v1

    .line 330
    invoke-virtual {v3, v0, v1, v13, v2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;

    .line 331
    move-result-object v0

    .line 334
    :cond_23
    :goto_a
    move-object v9, v0

    .line 335
    goto :goto_c

    .line 336
    :cond_24
    if-eqz v2, :cond_25

    .line 337
    if-nez v7, :cond_25

    .line 339
    const v0, 0x10102

    .line 341
    and-int/2addr v0, v6

    .line 344
    if-nez v0, :cond_25

    .line 345
    goto :goto_b

    .line 347
    :cond_25
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 348
    move-result-object v0

    .line 351
    invoke-virtual {v0, v7, v12}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->disableTaskAnimation(ZLandroid/view/WindowManager$LayoutParams;)Z

    .line 352
    move-result v0

    .line 355
    if-eqz v0, :cond_26

    .line 356
    goto :goto_b

    .line 358
    :cond_26
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 359
    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->isCompatibilityMode()Z

    .line 363
    move-result v0

    .line 366
    if-nez v0, :cond_27

    .line 367
    goto :goto_c

    .line 369
    :cond_27
    invoke-virtual {v3, v13, v2}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationAttr(IZ)Landroid/view/animation/Animation;

    .line 370
    move-result-object v9

    .line 373
    goto :goto_c

    .line 374
    :cond_28
    :goto_b
    move-object/from16 v9, v16

    .line 375
    :goto_c
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 377
    if-eqz v0, :cond_29

    .line 379
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 381
    move-result-object v0

    .line 384
    int-to-long v1, v13

    .line 385
    invoke-static {v4}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    .line 386
    move-result-object v3

    .line 389
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 390
    move-result-object v3

    .line 393
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 394
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 396
    move-result-object v1

    .line 399
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 400
    move-result-object v2

    .line 403
    filled-new-array {v0, v1, v3, v2}, [Ljava/lang/Object;

    .line 404
    move-result-object v0

    .line 407
    const/16 v1, 0xc4

    .line 408
    const-string v2, "loadAnimation: anim=%s animAttr=0x%x type=%s isEntrance=%b"

    .line 410
    const v3, 0x72e04ae

    .line 412
    invoke-static {v4, v3, v1, v2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 415
    :cond_29
    return-object v9
    .line 418
.end method
