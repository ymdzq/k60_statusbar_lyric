.class public final Lcom/android/wm/shell/pip/phone/PipTouchHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mBottomOffsetBufferPx:I

.field public final mConnection:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;

.field public final mContext:Landroid/content/Context;

.field public mDeferResizeToNormalBoundsUntilRotation:I

.field public mDisplayRotation:I

.field public mEnablePipKeepClearAlgorithm:Z

.field public mEnableResize:Z

.field public mEnableStash:Z

.field public final mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

.field public final mGesture:Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;

.field public mImeHeight:I

.field public mImeOffset:I

.field public final mInsetBounds:Landroid/graphics/Rect;

.field public mIsImeShowing:Z

.field public mIsShelfShowing:Z

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

.field public mMenuState:I

.field public mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

.field public mMovementBoundsExtraOffsets:I

.field public mMovementWithinDismiss:Z

.field public final mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

.field public final mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

.field public final mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

.field public mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

.field public final mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

.field public final mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field public final mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

.field public mSavedSnapFraction:F

.field public mSendingHoverAccessibilityEvents:Z

.field public mShelfHeight:I

.field public mStashVelocityThreshold:F

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v14, p1

    .line 4
    move-object/from16 v12, p3

    .line 6
    move-object/from16 v15, p4

    .line 8
    move-object/from16 v1, p8

    .line 10
    move-object/from16 v11, p10

    .line 12
    move-object/from16 v13, p11

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v2, "persist.wm.debug.enable_pip_keep_clear_algorithm"

    .line 19
    const/4 v3, 0x1

    .line 21
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    move-result v2

    .line 25
    iput-boolean v2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mEnablePipKeepClearAlgorithm:Z

    .line 26
    iput-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mEnableStash:Z

    .line 28
    new-instance v2, Landroid/graphics/Rect;

    .line 30
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 32
    iput-object v2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    .line 35
    const/4 v2, -0x1

    .line 37
    iput v2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    .line 38
    const/4 v2, 0x0

    .line 40
    iput v2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    .line 41
    const/high16 v4, -0x40800000    # -1.0f

    .line 43
    iput v4, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 45
    new-instance v4, Landroid/graphics/Rect;

    .line 47
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 49
    iput-object v4, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    .line 52
    iput-object v14, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    .line 54
    iput-object v13, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 56
    const-class v4, Landroid/view/accessibility/AccessibilityManager;

    .line 58
    invoke-virtual {v14, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    move-result-object v4

    .line 63
    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    .line 64
    iput-object v4, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 66
    iput-object v15, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 68
    move-object/from16 v10, p5

    .line 70
    iput-object v10, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 72
    move-object/from16 v4, p6

    .line 74
    iput-object v4, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 76
    move-object/from16 v9, p7

    .line 78
    iput-object v9, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 80
    iput-object v12, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 82
    iput-object v11, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 84
    move-object/from16 v4, p9

    .line 86
    iput-object v4, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    .line 88
    new-instance v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler$PipMenuListener;

    .line 90
    invoke-direct {v4, v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$PipMenuListener;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V

    .line 92
    iget-object v5, v12, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 97
    move-result v6

    .line 100
    if-nez v6, :cond_0

    .line 101
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    new-instance v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;

    .line 106
    invoke-direct {v4, v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V

    .line 108
    iput-object v4, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mGesture:Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;

    .line 111
    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 113
    new-instance v8, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 115
    invoke-direct {v8, v14, v11, v1, v13}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 117
    iput-object v8, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 120
    new-instance v6, Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 122
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 124
    move-result-object v1

    .line 127
    new-instance v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;

    .line 128
    invoke-direct {v4, v0, v2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V

    .line 130
    new-instance v5, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;

    .line 133
    invoke-direct {v5, v2, v12}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 135
    invoke-direct {v6, v1, v4, v5, v13}, Lcom/android/wm/shell/pip/phone/PipTouchState;-><init>(Landroid/view/ViewConfiguration;Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 138
    iput-object v6, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 141
    new-instance v7, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 143
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 145
    new-instance v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda2;

    .line 147
    invoke-direct {v4, v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V

    .line 149
    new-instance v2, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;

    .line 152
    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V

    .line 154
    move-object v1, v7

    .line 157
    move-object/from16 v16, v2

    .line 158
    move-object/from16 v2, p1

    .line 160
    move-object/from16 v3, p4

    .line 162
    move-object/from16 v17, v4

    .line 164
    move-object/from16 v4, p5

    .line 166
    move-object v14, v7

    .line 168
    move-object/from16 v7, p7

    .line 169
    move-object/from16 v9, v17

    .line 171
    move-object/from16 v10, v16

    .line 173
    move-object/from16 v11, p10

    .line 175
    move-object/from16 v12, p3

    .line 177
    move-object/from16 v13, p11

    .line 179
    invoke-direct/range {v1 .. v13}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/phone/PipTouchState;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda2;Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 181
    iput-object v14, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 184
    new-instance v11, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;

    .line 186
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 188
    iget-object v6, v15, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 190
    new-instance v7, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda3;

    .line 192
    invoke-direct {v7, v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V

    .line 194
    new-instance v8, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;

    .line 197
    const/4 v1, 0x2

    .line 199
    invoke-direct {v8, v0, v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V

    .line 200
    new-instance v9, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;

    .line 203
    const/4 v1, 0x3

    .line 205
    invoke-direct {v9, v0, v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V

    .line 206
    move-object v1, v11

    .line 209
    move-object/from16 v3, p5

    .line 210
    move-object/from16 v5, p7

    .line 212
    move-object/from16 v10, p11

    .line 214
    invoke-direct/range {v1 .. v10}, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda3;Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 216
    iput-object v11, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mConnection:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;

    .line 219
    new-instance v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;

    .line 221
    const/4 v2, 0x4

    .line 223
    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V

    .line 224
    move-object/from16 v2, p2

    .line 227
    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 229
    return-void
    .line 232
.end method


# virtual methods
.method public final animateToNormalSize(Ljava/lang/Runnable;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 4
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object v2

    .line 9
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 15
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 17
    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->getEstimatedMinMenuSize()Landroid/util/Size;

    .line 23
    move-result-object v0

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    const/4 v3, 0x0

    .line 32
    iget-object v4, v1, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    .line 33
    if-nez v0, :cond_1

    .line 35
    goto/16 :goto_4

    .line 37
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 39
    move-result v5

    .line 42
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 43
    move-result v6

    .line 46
    if-lt v5, v6, :cond_2

    .line 47
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 49
    move-result v5

    .line 52
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 53
    move-result v6

    .line 56
    if-lt v5, v6, :cond_2

    .line 57
    goto/16 :goto_4

    .line 59
    :cond_2
    new-instance v5, Landroid/graphics/Rect;

    .line 61
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 63
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 66
    move-result v6

    .line 69
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 70
    move-result v7

    .line 73
    const/4 v8, 0x1

    .line 74
    if-le v6, v7, :cond_3

    .line 75
    move v6, v8

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move v6, v3

    .line 79
    :goto_1
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 80
    move-result v7

    .line 83
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 84
    move-result v9

    .line 87
    if-le v7, v9, :cond_4

    .line 88
    move v7, v8

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    move v7, v3

    .line 92
    :goto_2
    iget-object v9, v2, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 93
    if-eqz v6, :cond_6

    .line 95
    if-eqz v7, :cond_6

    .line 97
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 99
    move-result v6

    .line 102
    int-to-float v6, v6

    .line 103
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 104
    move-result v7

    .line 107
    int-to-float v7, v7

    .line 108
    div-float/2addr v6, v7

    .line 109
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 110
    move-result v7

    .line 113
    int-to-float v7, v7

    .line 114
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 115
    move-result v4

    .line 118
    int-to-float v4, v4

    .line 119
    div-float/2addr v7, v4

    .line 120
    cmpl-float v4, v6, v7

    .line 121
    if-lez v4, :cond_5

    .line 123
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 125
    move-result v0

    .line 128
    int-to-float v4, v0

    .line 129
    iget v6, v9, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 130
    div-float/2addr v4, v6

    .line 132
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 133
    move-result v4

    .line 136
    goto :goto_3

    .line 137
    :cond_5
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 138
    move-result v4

    .line 141
    int-to-float v0, v4

    .line 142
    iget v6, v9, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 143
    mul-float/2addr v0, v6

    .line 145
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 146
    move-result v0

    .line 149
    goto :goto_3

    .line 150
    :cond_6
    if-eqz v6, :cond_7

    .line 151
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 153
    move-result v0

    .line 156
    int-to-float v4, v0

    .line 157
    iget v6, v9, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 158
    div-float/2addr v4, v6

    .line 160
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 161
    move-result v4

    .line 164
    goto :goto_3

    .line 165
    :cond_7
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 166
    move-result v4

    .line 169
    int-to-float v0, v4

    .line 170
    iget v6, v9, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 171
    mul-float/2addr v0, v6

    .line 173
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 174
    move-result v0

    .line 177
    :goto_3
    invoke-virtual {v5, v3, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 178
    iget v0, v9, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 181
    invoke-virtual {v2, v5, v0, v8, v8}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V

    .line 183
    move-object v4, v5

    .line 186
    :goto_4
    new-instance v0, Landroid/graphics/Rect;

    .line 187
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 189
    iget-boolean v2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    .line 192
    if-eqz v2, :cond_8

    .line 194
    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeHeight:I

    .line 196
    goto :goto_5

    .line 198
    :cond_8
    move v2, v3

    .line 199
    :goto_5
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    .line 200
    invoke-static {v2, v4, v5, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 202
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 205
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    new-instance v5, Landroid/graphics/Rect;

    .line 210
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 212
    move-result-object v6

    .line 215
    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 216
    iget-object v6, v2, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 219
    iget-object v1, v1, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 221
    invoke-virtual {v6, v5, v1, v3}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    .line 223
    move-result v1

    .line 226
    invoke-static {v4, v1, v0}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 227
    iput-object p1, v2, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPostPipTransitionCallback:Ljava/lang/Runnable;

    .line 230
    const/16 p1, 0xfa

    .line 232
    const/16 v0, 0x8

    .line 234
    iget-object v3, v2, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 236
    invoke-virtual {v3, v4, p1, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;II)V

    .line 238
    iget-object p1, v2, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 241
    iget-object p1, p1, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 243
    iget-object p1, p1, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    .line 245
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 247
    iget-object p1, v2, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    .line 250
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->onContentMoved(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V

    .line 252
    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 255
    return-void
    .line 257
.end method

.method public final animateToUnStashedState()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v1

    .line 7
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 8
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 10
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 14
    const/4 v3, 0x0

    .line 16
    if-ge v2, v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v3

    .line 21
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    .line 22
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 24
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 26
    invoke-direct {v2, v3, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 28
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    .line 31
    if-eqz v0, :cond_1

    .line 33
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 35
    goto :goto_1

    .line 37
    :cond_1
    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 38
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 40
    move-result v5

    .line 43
    sub-int/2addr v4, v5

    .line 44
    :goto_1
    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 45
    if-eqz v0, :cond_2

    .line 47
    iget v0, v3, Landroid/graphics/Rect;->left:I

    .line 49
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 51
    move-result v1

    .line 54
    add-int/2addr v1, v0

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    iget v1, v3, Landroid/graphics/Rect;->right:I

    .line 57
    :goto_2
    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 59
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 61
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 63
    const/16 v1, 0xfa

    .line 65
    const/16 v3, 0x8

    .line 67
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;II)V

    .line 69
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 72
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 74
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    .line 76
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 78
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    .line 81
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->onContentMoved(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V

    .line 83
    return-void
    .line 86
.end method

.method public final animateToUnexpandedState(Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    new-instance v3, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeHeight:I

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    .line 20
    invoke-static {v0, p1, v1, v3}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 22
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 25
    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 27
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 29
    iget-object v4, v1, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 31
    const/4 v5, 0x0

    .line 33
    move-object v1, p1

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 35
    const/high16 p1, -0x40800000    # -1.0f

    .line 38
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 40
    return-void
    .line 42
.end method

.method public getPipResizeGestureHandler()Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPossiblyMotionBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 4
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 8
    move-result v0

    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 21
    move-result-object p0

    .line 24
    :goto_0
    return-object p0
    .line 25
.end method

.method public final onRegistrationChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mConnection:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;

    .line 6
    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mConnectionImpl:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V

    .line 15
    :goto_0
    if-nez p1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 20
    iget-boolean p1, p1, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 22
    if-eqz p1, :cond_1

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 26
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/bubbles/DismissView;

    .line 28
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 30
    move-result-object p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mWindowManager:Landroid/view/WindowManager;

    .line 36
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/bubbles/DismissView;

    .line 38
    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 40
    :cond_1
    return-void
    .line 43
.end method

.method public final reloadResources()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f070e7a    # @dimen/pip_bottom_offset_buffer '1.0dp'

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v1

    .line 14
    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mBottomOffsetBufferPx:I

    .line 15
    const v1, 0x7f070e82    # @dimen/pip_ime_offset '48.0dp'

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeOffset:I

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 26
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->updateMagneticTargetSize()V

    .line 28
    return-void
    .line 31
.end method

.method public final sendAccessibilityHoverEvent(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 11
    move-result-object p1

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setImportantForAccessibility(Z)V

    .line 16
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSourceNodeId(J)V

    .line 21
    const/4 v0, -0x3

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 25
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 28
    return-void
    .line 31
.end method

.method public setEnablePipKeepClearAlgorithm(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mEnablePipKeepClearAlgorithm:Z

    .line 2
    return-void
    .line 4
.end method

.method public setPipMotionHelper(Lcom/android/wm/shell/pip/phone/PipMotionHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 2
    return-void
    .line 4
.end method

.method public setPipResizeGestureHandler(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 2
    return-void
    .line 4
.end method

.method public final updateMovementBounds()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v1

    .line 7
    iget-boolean v2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    .line 8
    if-eqz v2, :cond_0

    .line 10
    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeHeight:I

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    .line 21
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 23
    invoke-static {v2, v1, v3, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 25
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 28
    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 30
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 32
    iget-object v2, v1, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 34
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 36
    int-to-float v3, v3

    .line 38
    iget v4, v2, Landroid/graphics/Rect;->right:I

    .line 39
    int-to-float v4, v4

    .line 41
    const v5, 0x3ff33333    # 1.9f

    .line 42
    const/4 v6, 0x0

    .line 45
    invoke-direct {v0, v5, v3, v4, v6}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;-><init>(FFFF)V

    .line 46
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFlingConfigX:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 49
    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 51
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 53
    int-to-float v3, v3

    .line 55
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 56
    int-to-float v2, v2

    .line 58
    invoke-direct {v0, v5, v3, v2, v6}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;-><init>(FFFF)V

    .line 59
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFlingConfigY:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 62
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 64
    move-result-object v0

    .line 67
    new-instance v2, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 68
    iget v3, v1, Lcom/android/wm/shell/pip/PipBoundsState;->mStashOffset:I

    .line 70
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 72
    move-result-object v4

    .line 75
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 76
    move-result v4

    .line 79
    sub-int/2addr v3, v4

    .line 80
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 81
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 83
    add-int/2addr v3, v4

    .line 85
    int-to-float v3, v3

    .line 86
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 87
    move-result-object v4

    .line 90
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 91
    iget v7, v1, Lcom/android/wm/shell/pip/PipBoundsState;->mStashOffset:I

    .line 93
    sub-int/2addr v4, v7

    .line 95
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 96
    sub-int/2addr v4, v0

    .line 98
    int-to-float v0, v4

    .line 99
    invoke-direct {v2, v5, v3, v0, v6}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;-><init>(FFFF)V

    .line 100
    iput-object v2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mStashConfigX:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 103
    iget-object v0, v1, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 105
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingAllowedArea:Landroid/graphics/Rect;

    .line 107
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 109
    iget v0, v1, Landroid/graphics/Rect;->right:I

    .line 112
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 114
    move-result-object v2

    .line 117
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 118
    move-result v2

    .line 121
    add-int/2addr v2, v0

    .line 122
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 123
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 125
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 127
    move-result-object p0

    .line 130
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 131
    move-result p0

    .line 134
    add-int/2addr p0, v0

    .line 135
    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    .line 136
    return-void
    .line 138
.end method

.method public final updatePipSizeConstraints(Landroid/graphics/Rect;F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 2
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 10
    iget-object v0, p1, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    .line 12
    invoke-interface {v0, p2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;->getMinSize(F)Landroid/util/Size;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 18
    move-result v0

    .line 21
    iget-object p1, p1, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    .line 22
    invoke-interface {p1, p2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;->getMinSize(F)Landroid/util/Size;

    .line 24
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 28
    move-result v1

    .line 31
    invoke-interface {p1, p2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;->getMaxSize(F)Landroid/util/Size;

    .line 32
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 36
    move-result v3

    .line 39
    invoke-interface {p1, p2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;->getMaxSize(F)Landroid/util/Size;

    .line 40
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 44
    move-result p1

    .line 47
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 48
    invoke-virtual {p2, v0, v1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->updateMinSize(II)V

    .line 50
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 53
    invoke-virtual {p0, v3, p1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->updateMaxSize(II)V

    .line 55
    iget-object p0, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    .line 58
    invoke-virtual {p0, v3, p1}, Landroid/graphics/Point;->set(II)V

    .line 60
    iget-object p0, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mMinSize:Landroid/graphics/Point;

    .line 63
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 65
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 69
    move-result p2

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 73
    move-result p1

    .line 76
    invoke-virtual {v0, p2, p1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->updateMinSize(II)V

    .line 77
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 80
    iget-object p1, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mExpandedBounds:Landroid/graphics/Rect;

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 84
    move-result p1

    .line 87
    iget-object p2, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mExpandedBounds:Landroid/graphics/Rect;

    .line 88
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 90
    move-result p2

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->updateMaxSize(II)V

    .line 94
    :goto_0
    return-void
    .line 97
.end method

.method public final willResizeMenu()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mEnableResize:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 8
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 10
    if-nez v0, :cond_1

    .line 12
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->getEstimatedMinMenuSize()Landroid/util/Size;

    .line 16
    move-result-object v0

    .line 19
    :goto_0
    if-nez v0, :cond_3

    .line 20
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 22
    if-eqz p0, :cond_2

    .line 24
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 26
    const-string v0, "PipTouchHandler"

    .line 28
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    const v2, -0x1efeb1df

    .line 34
    const-string v3, "%s: Failed to get estimated menu size"

    .line 37
    invoke-static {p0, v2, v1, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->wtf(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_2
    return v1

    .line 42
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 43
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 45
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 49
    move-result v2

    .line 52
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 53
    move-result v3

    .line 56
    if-lt v2, v3, :cond_4

    .line 57
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 59
    move-result p0

    .line 62
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 63
    move-result v0

    .line 66
    if-ge p0, v0, :cond_5

    .line 67
    :cond_4
    const/4 v1, 0x1

    .line 69
    :cond_5
    return v1
    .line 70
.end method
