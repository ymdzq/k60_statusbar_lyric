.class public Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiFreeformModeResizeHandler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

.field private final mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

.field private final mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

.field private final mMiuiFreeformModeVibrateHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;

.field private final mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

.field private final mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private final mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 11
    iput-object p5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mContext:Landroid/content/Context;

    .line 13
    iput-object p6, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 15
    iput-object p7, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeVibrateHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;

    .line 17
    iput-object p8, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 19
    return-void
    .line 21
.end method

.method private calBoundsAfterMoving(FFFFLandroid/graphics/Rect;IILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;F)Landroid/graphics/Rect;
    .locals 5

    .line 1
    sub-float/2addr p1, p3

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 3
    move-result p1

    .line 6
    iget p4, p5, Landroid/graphics/Rect;->left:I

    .line 7
    iget v0, p5, Landroid/graphics/Rect;->top:I

    .line 9
    iget v1, p5, Landroid/graphics/Rect;->right:I

    .line 11
    iget v2, p5, Landroid/graphics/Rect;->bottom:I

    .line 13
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    .line 15
    move-result p2

    .line 18
    int-to-float p2, p2

    .line 19
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    .line 20
    move-result p3

    .line 23
    int-to-float p3, p3

    .line 24
    div-float/2addr p2, p3

    .line 25
    sub-int p3, v1, p4

    .line 26
    invoke-virtual {p8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCtrlType()I

    .line 28
    move-result p5

    .line 31
    const/4 v3, 0x1

    .line 32
    and-int/2addr p5, v3

    .line 33
    if-eqz p5, :cond_0

    .line 34
    sub-int/2addr p3, p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCtrlType()I

    .line 38
    move-result p5

    .line 41
    and-int/lit8 p5, p5, 0x2

    .line 42
    if-eqz p5, :cond_1

    .line 44
    add-int/2addr p3, p1

    .line 46
    :cond_1
    :goto_0
    if-le p3, p7, :cond_2

    .line 47
    sub-int/2addr p3, p7

    .line 49
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 50
    move-result p1

    .line 53
    int-to-float p1, p1

    .line 54
    int-to-float p3, p7

    .line 55
    invoke-static {p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->afterFriction(FF)F

    .line 56
    move-result p1

    .line 59
    float-to-int p1, p1

    .line 60
    add-int/2addr p7, p1

    .line 61
    move p1, p7

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    if-ge p3, p6, :cond_3

    .line 64
    sub-int/2addr p3, p6

    .line 66
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 67
    move-result p1

    .line 70
    int-to-float p1, p1

    .line 71
    int-to-float p3, p6

    .line 72
    invoke-static {p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->afterFriction(FF)F

    .line 73
    move-result p1

    .line 76
    float-to-int p1, p1

    .line 77
    sub-int/2addr p6, p1

    .line 78
    move p1, p6

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    move p1, p3

    .line 81
    :goto_1
    int-to-float p3, p1

    .line 82
    div-float/2addr p3, p2

    .line 83
    float-to-int v4, p3

    .line 84
    invoke-virtual {p8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 85
    move-result-object p2

    .line 88
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 89
    move-result p2

    .line 92
    int-to-float p2, p2

    .line 93
    sget p3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->miniResizeLimit:F

    .line 94
    add-float/2addr p9, p3

    .line 96
    mul-float/2addr p9, p2

    .line 97
    float-to-int p2, p9

    .line 98
    const/4 p3, 0x0

    .line 99
    if-ge p1, p2, :cond_4

    .line 100
    move p2, v3

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    move p2, p3

    .line 104
    :goto_2
    invoke-virtual {p8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpTargetIsMini()Z

    .line 105
    move-result p5

    .line 108
    if-eq p2, p5, :cond_6

    .line 109
    invoke-virtual {p8, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setTmpMode(I)V

    .line 111
    if-eqz p2, :cond_5

    .line 114
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeVibrateHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;

    .line 116
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 118
    move-result-object p5

    .line 121
    invoke-virtual {p5}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHapticNormal()I

    .line 122
    move-result p5

    .line 125
    iget-object p6, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p2, p5, p3, p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;->hapticFeedback(IZLandroid/content/Context;)V

    .line 128
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 131
    invoke-virtual {p8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 133
    move-result-object p5

    .line 136
    iget-object p5, p5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 137
    invoke-interface {p2, p5, p3}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 139
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 142
    invoke-virtual {p8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 144
    move-result-object p5

    .line 147
    iget-object p5, p5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 148
    invoke-interface {p2, p5, p3}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 150
    goto :goto_3

    .line 153
    :cond_5
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeVibrateHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;

    .line 154
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 156
    move-result-object p5

    .line 159
    invoke-virtual {p5}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHapticNormal()I

    .line 160
    move-result p5

    .line 163
    iget-object p6, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {p2, p5, p3, p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;->hapticFeedback(IZLandroid/content/Context;)V

    .line 166
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 169
    invoke-virtual {p8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 171
    move-result-object p3

    .line 174
    iget-object p3, p3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 175
    invoke-interface {p2, p3, v3}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 177
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 180
    invoke-virtual {p8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 182
    move-result-object p3

    .line 185
    iget-object p3, p3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 186
    invoke-interface {p2, p3, v3}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 188
    :goto_3
    iput-boolean v3, p8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpModeChanged:Z

    .line 191
    :cond_6
    invoke-virtual {p8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCtrlType()I

    .line 193
    move-result p3

    .line 196
    move-object p2, p0

    .line 197
    move p5, v0

    .line 198
    move p6, v1

    .line 199
    move p7, v2

    .line 200
    move p8, p1

    .line 201
    move p9, v4

    .line 202
    invoke-direct/range {p2 .. p9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->resizeAboutCtrlType(IIIIIII)Landroid/graphics/Rect;

    .line 203
    move-result-object p0

    .line 206
    return-object p0
    .line 207
.end method

.method private calFinalBoundsAfterResizeBackAnim(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FF)Landroid/graphics/Rect;
    .locals 14

    .line 1
    move-object v8, p0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 5
    move-result-object v1

    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 9
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 12
    move-result v1

    .line 15
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 16
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 19
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 23
    move-result v1

    .line 26
    int-to-float v1, v1

    .line 27
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 28
    move-result v2

    .line 31
    mul-float/2addr v2, v1

    .line 32
    float-to-int v1, v2

    .line 33
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 34
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 38
    move-result v2

    .line 41
    int-to-float v2, v2

    .line 42
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 43
    move-result v3

    .line 46
    mul-float/2addr v3, v2

    .line 47
    float-to-int v2, v3

    .line 48
    int-to-float v3, v1

    .line 49
    int-to-float v2, v2

    .line 50
    div-float/2addr v3, v2

    .line 51
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getResizeMode()I

    .line 52
    move-result v2

    .line 55
    const/4 v9, 0x3

    .line 56
    const/4 v10, 0x2

    .line 57
    const/4 v11, 0x0

    .line 58
    const/4 v12, 0x1

    .line 59
    if-ne v2, v12, :cond_1

    .line 60
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 62
    move-result-object v1

    .line 65
    iget-object v2, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mContext:Landroid/content/Context;

    .line 66
    iget-object v4, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 68
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayHeight()I

    .line 70
    move-result v4

    .line 73
    iget-object v5, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 74
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 76
    move-result v5

    .line 79
    if-le v4, v5, :cond_0

    .line 80
    move v4, v12

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    move v4, v11

    .line 84
    :goto_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLandcapeFreeform()Z

    .line 85
    move-result v5

    .line 88
    invoke-virtual {v1, v2, v4, v5}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getScalingMaxValue(Landroid/content/Context;ZZ)F

    .line 89
    move-result v1

    .line 92
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 93
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 97
    move-result v2

    .line 100
    int-to-float v2, v2

    .line 101
    mul-float v2, v2, p2

    .line 102
    mul-float/2addr v2, v1

    .line 104
    float-to-int v1, v2

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getResizeMode()I

    .line 107
    move-result v2

    .line 110
    if-eq v2, v10, :cond_2

    .line 111
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getResizeMode()I

    .line 113
    move-result v2

    .line 116
    if-ne v2, v9, :cond_3

    .line 117
    :cond_2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 119
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 123
    move-result v1

    .line 126
    int-to-float v1, v1

    .line 127
    mul-float v1, v1, p3

    .line 128
    float-to-int v1, v1

    .line 130
    :cond_3
    :goto_1
    move v13, v1

    .line 131
    int-to-float v1, v13

    .line 132
    div-float/2addr v1, v3

    .line 133
    float-to-int v7, v1

    .line 134
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCtrlType()I

    .line 135
    move-result v1

    .line 138
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 139
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 141
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 143
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 145
    move-object v0, p0

    .line 147
    move v6, v13

    .line 148
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->resizeAboutCtrlType(IIIIIII)Landroid/graphics/Rect;

    .line 149
    move-result-object v0

    .line 152
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getResizeMode()I

    .line 153
    move-result v1

    .line 156
    if-ne v1, v9, :cond_8

    .line 157
    iget-object v1, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 159
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->isImeShowing()Z

    .line 161
    move-result v2

    .line 164
    const/16 v3, 0x14

    .line 165
    if-eqz v2, :cond_4

    .line 167
    iget-object v2, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 169
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getImeHeight()I

    .line 171
    move-result v2

    .line 174
    add-int/lit8 v11, v2, 0x14

    .line 175
    :cond_4
    invoke-virtual {v1, v3, v3, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBounds(III)Landroid/graphics/Rect;

    .line 177
    move-result-object v1

    .line 180
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 181
    move-result v2

    .line 184
    iget-object v3, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 185
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 187
    move-result v3

    .line 190
    div-int/2addr v3, v10

    .line 191
    if-le v2, v3, :cond_5

    .line 192
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 194
    sub-int/2addr v2, v13

    .line 196
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 197
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 199
    goto :goto_2

    .line 202
    :cond_5
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 203
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 205
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 207
    :goto_2
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 210
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 212
    if-ge v2, v3, :cond_6

    .line 214
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 216
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 218
    :cond_6
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 221
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 223
    if-le v2, v3, :cond_7

    .line 225
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 227
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 229
    move-result v4

    .line 232
    sub-int/2addr v3, v4

    .line 233
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 234
    :cond_7
    iget-object v2, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 237
    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->adjustBoundsForSidebarIfNeed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 239
    move-result-object v1

    .line 242
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 243
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 245
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 247
    goto :goto_3

    .line 250
    :cond_8
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getResizeMode()I

    .line 251
    move-result v1

    .line 254
    if-eqz v1, :cond_9

    .line 255
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getResizeMode()I

    .line 257
    move-result v1

    .line 260
    if-ne v1, v12, :cond_d

    .line 261
    :cond_9
    iget-object v1, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 263
    invoke-virtual {v1, v11, v11, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBounds(III)Landroid/graphics/Rect;

    .line 265
    move-result-object v1

    .line 268
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 269
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 271
    if-ge v2, v3, :cond_a

    .line 273
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 275
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 277
    :cond_a
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 280
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 282
    if-le v2, v3, :cond_b

    .line 284
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 286
    move-result v2

    .line 289
    sub-int/2addr v3, v2

    .line 290
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 291
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 293
    :cond_b
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 296
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 298
    if-ge v2, v3, :cond_c

    .line 300
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 302
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 304
    :cond_c
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 307
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 309
    if-le v2, v1, :cond_d

    .line 311
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 313
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 315
    move-result v3

    .line 318
    sub-int/2addr v1, v3

    .line 319
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 320
    :cond_d
    :goto_3
    return-object v0
    .line 323
.end method

.method private calResizeTaskMode(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 11
    move-result v1

    .line 14
    mul-float/2addr v1, v0

    .line 15
    int-to-float p3, p3

    .line 16
    cmpl-float p3, v1, p3

    .line 17
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-ltz p3, :cond_0

    .line 21
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setResizeMode(I)V

    .line 23
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 26
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMode()I

    .line 28
    move-result p3

    .line 31
    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IIZ)V

    .line 32
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMode(I)V

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->setMiuiFreeformMode(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;I)V

    .line 38
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 42
    move-result-object p3

    .line 45
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 46
    move-result p3

    .line 49
    int-to-float p3, p3

    .line 50
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 51
    move-result v2

    .line 54
    mul-float/2addr v2, p3

    .line 55
    int-to-float p2, p2

    .line 56
    cmpg-float p2, v2, p2

    .line 57
    if-gez p2, :cond_2

    .line 59
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 61
    move-result p2

    .line 64
    if-eqz p2, :cond_1

    .line 65
    const/4 p0, 0x2

    .line 67
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setResizeMode(I)V

    .line 68
    goto :goto_0

    .line 71
    :cond_1
    const/4 p2, 0x3

    .line 72
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setResizeMode(I)V

    .line 73
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 76
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMode()I

    .line 78
    move-result p3

    .line 81
    invoke-virtual {p2, p1, p3, v1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IIZ)V

    .line 82
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMode(I)V

    .line 85
    invoke-direct {p0, p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->setMiuiFreeformMode(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;I)V

    .line 88
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setResizeMode(I)V

    .line 92
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 95
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMode()I

    .line 97
    move-result p3

    .line 100
    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IIZ)V

    .line 101
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMode(I)V

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->setMiuiFreeformMode(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;I)V

    .line 107
    :goto_0
    return-void
    .line 110
.end method

.method private resizeAboutCtrlType(IIIIIII)Landroid/graphics/Rect;
    .locals 0

    .line 1
    and-int/lit8 p0, p1, 0x1

    .line 2
    if-eqz p0, :cond_0

    .line 4
    sub-int p2, p4, p6

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    add-int p4, p2, p6

    .line 9
    :goto_0
    and-int/lit8 p0, p1, 0x4

    .line 11
    if-eqz p0, :cond_1

    .line 13
    sub-int p3, p5, p7

    .line 15
    goto :goto_1

    .line 17
    :cond_1
    add-int p5, p3, p7

    .line 18
    :goto_1
    new-instance p0, Landroid/graphics/Rect;

    .line 20
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 22
    return-object p0
    .line 25
.end method

.method private setMiuiFreeformMode(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    new-instance v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 7
    invoke-direct {v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 9
    invoke-virtual {v1, p2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformMode(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 12
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 15
    move-result-object p1

    .line 18
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 19
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 21
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 23
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 26
    invoke-virtual {p0, v0}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 28
    return-void
    .line 31
.end method


# virtual methods
.method public handleResize(FFLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/PointF;I)V
    .locals 16

    .line 1
    move-object/from16 v10, p0

    .line 2
    move-object/from16 v11, p3

    .line 4
    move-object/from16 v0, p4

    .line 6
    move/from16 v1, p5

    .line 8
    invoke-virtual {v11, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setActionMode(I)V

    .line 10
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 13
    move-result-object v12

    .line 16
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 17
    move-result-object v2

    .line 20
    iget-object v3, v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mContext:Landroid/content/Context;

    .line 21
    iget-object v4, v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 23
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayHeight()I

    .line 25
    move-result v4

    .line 28
    iget-object v5, v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 29
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 31
    move-result v5

    .line 34
    const/4 v13, 0x0

    .line 35
    const/4 v14, 0x1

    .line 36
    if-le v4, v5, :cond_0

    .line 37
    move v4, v14

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v4, v13

    .line 41
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLandcapeFreeform()Z

    .line 42
    move-result v5

    .line 45
    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getScalingMaxValue(Landroid/content/Context;ZZ)F

    .line 46
    move-result v2

    .line 49
    if-nez v1, :cond_3

    .line 50
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 52
    move-result-object v0

    .line 55
    iget-object v1, v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLandcapeFreeform()Z

    .line 58
    move-result v2

    .line 61
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalFreeForm()Z

    .line 62
    move-result v3

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getOriFreeformScale(Landroid/content/Context;ZZ)F

    .line 66
    move-result v0

    .line 69
    invoke-virtual {v11, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setOriFreeformScale(F)V

    .line 70
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 73
    move-result-object v0

    .line 76
    iget-object v1, v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLandcapeFreeform()Z

    .line 79
    move-result v2

    .line 82
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 83
    move-result-object v3

    .line 86
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getPackageName()Ljava/lang/String;

    .line 87
    move-result-object v4

    .line 90
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getMiniFreeformScale(Landroid/content/Context;ZLandroid/graphics/Rect;Ljava/lang/String;)F

    .line 91
    move-result v0

    .line 94
    invoke-virtual {v11, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMiniScale(F)V

    .line 95
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMode()I

    .line 98
    move-result v0

    .line 101
    invoke-virtual {v11, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setTmpDownMode(I)V

    .line 102
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMode()I

    .line 105
    move-result v0

    .line 108
    invoke-virtual {v11, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setTmpMode(I)V

    .line 109
    iget-object v0, v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 114
    move-result v1

    .line 117
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 118
    move-result v0

    .line 121
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 122
    move-result v1

    .line 125
    div-float/2addr v0, v1

    .line 126
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 127
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {v11, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedRadius(F)V

    .line 133
    invoke-virtual {v11, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationRadius(F)V

    .line 136
    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 140
    move-result v1

    .line 143
    if-eqz v1, :cond_2

    .line 144
    invoke-virtual {v11, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedRadius(F)V

    .line 146
    invoke-virtual {v11, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationRadius(F)V

    .line 149
    :cond_2
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 152
    move-result v0

    .line 155
    if-nez v0, :cond_8

    .line 156
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 158
    move-result v0

    .line 161
    invoke-virtual {v11, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMiniRestoreScaleX(F)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 165
    move-result v0

    .line 168
    invoke-virtual {v11, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMiniRestoreScaleY(F)V

    .line 169
    goto/16 :goto_4

    .line 172
    :cond_3
    const/4 v3, 0x2

    .line 174
    const/high16 v15, 0x3f800000    # 1.0f

    .line 175
    if-ne v1, v3, :cond_6

    .line 177
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 179
    move-result v1

    .line 182
    if-eqz v1, :cond_4

    .line 183
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 185
    move-result v1

    .line 188
    int-to-float v1, v1

    .line 189
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMiniScale()F

    .line 190
    move-result v3

    .line 193
    goto :goto_2

    .line 194
    :cond_4
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 195
    move-result v1

    .line 198
    int-to-float v1, v1

    .line 199
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMiniScale()F

    .line 200
    move-result v3

    .line 203
    sget v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->miniResizeLimit:F

    .line 204
    add-float/2addr v3, v4

    .line 206
    :goto_2
    mul-float/2addr v3, v1

    .line 207
    float-to-int v1, v3

    .line 208
    move v6, v1

    .line 209
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 210
    move-result v1

    .line 213
    int-to-float v1, v1

    .line 214
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getOriFreeformScale()F

    .line 215
    move-result v3

    .line 218
    mul-float/2addr v3, v1

    .line 219
    mul-float/2addr v3, v2

    .line 220
    float-to-int v7, v3

    .line 221
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 222
    move-result-object v5

    .line 225
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 226
    move-result v1

    .line 229
    invoke-static {v5, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 230
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 233
    iget v4, v0, Landroid/graphics/PointF;->y:F

    .line 235
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMiniScale()F

    .line 237
    move-result v9

    .line 240
    move-object/from16 v0, p0

    .line 241
    move/from16 v1, p1

    .line 243
    move/from16 v2, p2

    .line 245
    move-object/from16 v8, p3

    .line 247
    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->calBoundsAfterMoving(FFFFLandroid/graphics/Rect;IILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;F)Landroid/graphics/Rect;

    .line 249
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 253
    move-result v1

    .line 256
    int-to-float v1, v1

    .line 257
    mul-float/2addr v1, v15

    .line 258
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 259
    move-result v2

    .line 262
    int-to-float v2, v2

    .line 263
    div-float/2addr v1, v2

    .line 264
    div-float/2addr v15, v1

    .line 265
    invoke-static {v0, v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 266
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpMode()I

    .line 269
    move-result v2

    .line 272
    if-nez v2, :cond_5

    .line 273
    iget-object v2, v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mContext:Landroid/content/Context;

    .line 275
    invoke-virtual {v11, v14, v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius(ZI)F

    .line 277
    move-result v3

    .line 280
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 281
    move-result v2

    .line 284
    div-float/2addr v2, v1

    .line 285
    invoke-virtual {v11, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationRadius(F)V

    .line 286
    goto :goto_3

    .line 289
    :cond_5
    iget-object v2, v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mContext:Landroid/content/Context;

    .line 290
    invoke-virtual {v11, v14, v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius(ZI)F

    .line 292
    move-result v3

    .line 295
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 296
    move-result v2

    .line 299
    div-float/2addr v2, v1

    .line 300
    invoke-virtual {v11, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationRadius(F)V

    .line 301
    :goto_3
    invoke-virtual {v11, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleX(F)V

    .line 304
    invoke-virtual {v11, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleY(F)V

    .line 307
    invoke-virtual {v11, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 310
    goto :goto_4

    .line 313
    :cond_6
    if-ne v1, v14, :cond_8

    .line 314
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 316
    move-result v0

    .line 319
    int-to-float v0, v0

    .line 320
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMiniScale()F

    .line 321
    move-result v1

    .line 324
    sget v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->miniResizeLimit:F

    .line 325
    add-float/2addr v1, v3

    .line 327
    mul-float/2addr v1, v0

    .line 328
    float-to-int v0, v1

    .line 329
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 330
    move-result v1

    .line 333
    int-to-float v1, v1

    .line 334
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getOriFreeformScale()F

    .line 335
    move-result v3

    .line 338
    mul-float/2addr v3, v1

    .line 339
    mul-float/2addr v3, v2

    .line 340
    float-to-int v1, v3

    .line 341
    invoke-direct {v10, v11, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->calResizeTaskMode(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V

    .line 342
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getOriFreeformScale()F

    .line 345
    move-result v0

    .line 348
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMiniScale()F

    .line 349
    move-result v1

    .line 352
    invoke-direct {v10, v11, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->calFinalBoundsAfterResizeBackAnim(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FF)Landroid/graphics/Rect;

    .line 353
    move-result-object v0

    .line 356
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 357
    move-result v1

    .line 360
    int-to-float v1, v1

    .line 361
    mul-float/2addr v1, v15

    .line 362
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 363
    move-result v2

    .line 366
    int-to-float v2, v2

    .line 367
    div-float/2addr v1, v2

    .line 368
    div-float/2addr v15, v1

    .line 369
    invoke-static {v0, v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 370
    invoke-virtual {v11, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 373
    invoke-virtual {v11, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleX(F)V

    .line 376
    invoke-virtual {v11, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleY(F)V

    .line 379
    invoke-virtual {v11, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setScale(F)V

    .line 382
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 385
    move-result v0

    .line 388
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpDownModeIsMini()Z

    .line 389
    move-result v1

    .line 392
    if-eq v0, v1, :cond_8

    .line 393
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 395
    move-result v0

    .line 398
    if-eqz v0, :cond_7

    .line 399
    iget-object v0, v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 401
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->clearAllRestoreMiniBounds()V

    .line 403
    goto :goto_4

    .line 406
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 407
    move-result v0

    .line 410
    if-eqz v0, :cond_8

    .line 411
    iget-object v0, v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 413
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->clearAllRestoreMiniBounds()V

    .line 415
    iget-object v0, v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 418
    invoke-virtual {v0, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->miniFreeformAvoidIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 420
    :cond_8
    :goto_4
    iget-object v0, v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeResizeHandler;->mMiuiFreefromAnimation:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 423
    const/4 v1, 0x3

    .line 425
    invoke-virtual {v0, v1, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startGestureAnimation(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 426
    return-void
    .line 429
.end method
