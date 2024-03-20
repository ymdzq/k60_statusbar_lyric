.class public final Lcom/android/wm/shell/pip/phone/PipController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/sysui/ConfigurationChangeListener;
.implements Lcom/android/wm/shell/sysui/KeyguardChangeListener;
.implements Lcom/android/wm/shell/sysui/UserChangeListener;


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final PIP_KEEP_CLEAR_AREAS_DELAY:J


# instance fields
.field public final mAppOpsListener:Lcom/android/wm/shell/pip/PipAppOpsListener;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field final mDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

.field public mEnablePipKeepClearAlgorithm:Z

.field public final mEnterAnimationDuration:I

.field public final mImpl:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

.field public mIsInFixedRotation:Z

.field public mIsKeyguardShowingOrAnimating:Z

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

.field public final mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

.field public final mMovePipInResponseToKeepClearAreasChangeCallback:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;

.field public mOnIsInPipStateChangedListener:Ljava/util/function/Consumer;

.field public final mOneHandedController:Ljava/util/Optional;

.field public mPinnedStackAnimationRecentsCallback:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

.field public final mPinnedTaskListener:Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedTaskListener;

.field public final mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

.field public final mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

.field public final mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

.field public final mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

.field public mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

.field public final mPipKeepClearAlgorithm:Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;

.field public final mPipMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

.field public final mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

.field public final mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

.field public final mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field public final mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

.field public final mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

.field public final mRotationController:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda2;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mTabletopModeController:Lcom/android/wm/shell/common/TabletopModeController;

.field public final mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

.field public final mTmpInsetBounds:Landroid/graphics/Rect;

.field public final mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

.field public final mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "persist.wm.debug.pip_keep_clear_areas_delay"

    .line 2
    const-wide/16 v1, 0xc8

    .line 4
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 6
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/wm/shell/pip/phone/PipController;->PIP_KEEP_CLEAR_AREAS_DELAY:J

    .line 10
    return-void
    .line 12
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipAppOpsListener;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TabletopModeController;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 4

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v1, "persist.wm.debug.enable_pip_keep_clear_algorithm"

    .line 6
    const/4 v2, 0x1

    .line 8
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    move-result v1

    .line 12
    iput-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mEnablePipKeepClearAlgorithm:Z

    .line 13
    new-instance v1, Landroid/graphics/Rect;

    .line 15
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 17
    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTmpInsetBounds:Landroid/graphics/Rect;

    .line 20
    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;

    .line 22
    const/4 v3, 0x0

    .line 24
    invoke-direct {v1, v3, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 25
    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMovePipInResponseToKeepClearAreasChangeCallback:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;

    .line 28
    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedTaskListener;

    .line 30
    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedTaskListener;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    .line 32
    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedTaskListener:Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedTaskListener;

    .line 35
    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda2;

    .line 37
    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    .line 39
    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mRotationController:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda2;

    .line 42
    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$1;

    .line 44
    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$1;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    .line 46
    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    .line 49
    move-object v1, p1

    .line 51
    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    .line 52
    move-object v3, p3

    .line 54
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 55
    move-object v3, p4

    .line 57
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 58
    new-instance v3, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    .line 60
    invoke-direct {v3, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    .line 62
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mImpl:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    .line 65
    move-object/from16 v3, p20

    .line 67
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

    .line 69
    move-object v3, p5

    .line 71
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 72
    move-object v3, p8

    .line 74
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 75
    move-object v3, p9

    .line 77
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipKeepClearAlgorithm:Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;

    .line 78
    move-object v3, p10

    .line 80
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 81
    move-object v3, p11

    .line 83
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 84
    move-object/from16 v3, p12

    .line 86
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 88
    move-object/from16 v3, p13

    .line 90
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 92
    move-object/from16 v3, p16

    .line 94
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 96
    move-object/from16 v3, p17

    .line 98
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 100
    move-object/from16 v3, p26

    .line 102
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 104
    move-object/from16 v3, p14

    .line 106
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    .line 108
    move-object/from16 v3, p15

    .line 110
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 112
    move-object/from16 v3, p18

    .line 114
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 116
    move-object v3, p6

    .line 118
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 119
    move-object v3, p7

    .line 121
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mAppOpsListener:Lcom/android/wm/shell/pip/PipAppOpsListener;

    .line 122
    move-object/from16 v3, p25

    .line 124
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mOneHandedController:Ljava/util/Optional;

    .line 126
    move-object/from16 v3, p19

    .line 128
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 130
    move-object/from16 v3, p21

    .line 132
    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 136
    move-result-object v1

    .line 139
    const v3, 0x7f0b0043    # @integer/config_pipEnterAnimationDuration '425'

    .line 140
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 143
    move-result v1

    .line 146
    iput v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mEnterAnimationDuration:I

    .line 147
    move-object/from16 v1, p22

    .line 149
    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    .line 151
    move-object/from16 v1, p23

    .line 153
    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 155
    move-object/from16 v1, p24

    .line 157
    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTabletopModeController:Lcom/android/wm/shell/common/TabletopModeController;

    .line 159
    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;

    .line 161
    invoke-direct {v1, v2, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 163
    move-object v2, p2

    .line 166
    invoke-virtual {p2, p0, v1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 167
    return-void
    .line 170
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    return-object p0
    .line 4
.end method

.method public hasPinnedStackAnimationListener()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedStackAnimationRecentsCallback:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

    .line 2
    if-eqz p0, :cond_0

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

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->onConfigurationChanged(Landroid/content/Context;)V

    .line 6
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 9
    iget-object v0, p1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 11
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->reloadResources()V

    .line 13
    iget-object v0, p1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 16
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    .line 18
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->reloadResources()V

    .line 21
    iget-object v0, p1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 24
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    iget-object p1, p1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 32
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->createOrUpdateDismissTarget()V

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 37
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->onConfigurationChanged()V

    .line 39
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 42
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->reloadResources()V

    .line 44
    return-void
    .line 47
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v2

    .line 14
    const v3, 0x7f070e7b    # @dimen/pip_corner_radius '16.0dp'

    .line 15
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    move-result v2

    .line 21
    iput v2, v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->mCornerRadius:I

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v1

    .line 27
    const v2, 0x7f070e97    # @dimen/pip_shadow_radius '5.0dp'

    .line 28
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    move-result v1

    .line 34
    iput v1, v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->mShadowRadius:I

    .line 35
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipController;->onPipResourceDimensionsChanged()V

    .line 37
    return-void
    .line 40
.end method

.method public final onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 4
    move-result-object v0

    .line 7
    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 8
    iget v2, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 10
    if-ne v1, v2, :cond_0

    .line 12
    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 14
    iget v2, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 16
    if-ne v1, v2, :cond_0

    .line 18
    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 20
    iget v2, p1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 22
    if-ne v1, v2, :cond_0

    .line 24
    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 26
    iget v2, p1, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 28
    if-ne v1, v2, :cond_0

    .line 30
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 32
    iget-object v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 34
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    if-nez v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 47
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 49
    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 53
    move-result v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 59
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayChangedUncheck(Lcom/android/wm/shell/common/DisplayLayout;Z)V

    .line 62
    :cond_2
    return-void
    .line 65
.end method

.method public final onDisplayChangedUncheck(Lcom/android/wm/shell/common/DisplayLayout;Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    new-instance v2, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;

    .line 6
    const/4 v3, 0x0

    .line 8
    invoke-direct {v2, v3, v0, v1}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 12
    invoke-virtual {v4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    .line 14
    move-result v5

    .line 17
    if-eqz v5, :cond_4

    .line 18
    if-eqz p2, :cond_4

    .line 20
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 22
    invoke-virtual {v5}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->attachPipMenuView()V

    .line 24
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 27
    iget-object v6, v5, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 29
    new-instance v14, Landroid/graphics/Rect;

    .line 31
    iget-object v15, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 33
    invoke-virtual {v15}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 35
    move-result-object v7

    .line 38
    invoke-direct {v14, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 39
    const/4 v13, 0x1

    .line 42
    invoke-virtual {v5, v14, v13}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 43
    move-result-object v7

    .line 46
    iget v8, v15, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    .line 47
    invoke-virtual {v6, v14, v7, v8}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    .line 49
    move-result v6

    .line 52
    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 53
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 55
    move-result-object v8

    .line 58
    iget v8, v8, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 59
    if-eqz v8, :cond_0

    .line 61
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 63
    move-result-object v8

    .line 66
    iget v8, v8, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 67
    iget v9, v1, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 69
    if-eq v8, v9, :cond_0

    .line 71
    move/from16 v16, v13

    .line 73
    goto :goto_0

    .line 75
    :cond_0
    move/from16 v16, v3

    .line 76
    :goto_0
    if-eqz v16, :cond_1

    .line 78
    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 80
    int-to-float v1, v1

    .line 82
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 83
    move-result-object v8

    .line 86
    iget v8, v8, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 87
    int-to-float v8, v8

    .line 89
    div-float/2addr v1, v8

    .line 90
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 91
    move-result v8

    .line 94
    int-to-float v8, v8

    .line 95
    mul-float/2addr v8, v1

    .line 96
    float-to-int v8, v8

    .line 97
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 98
    move-result v9

    .line 101
    int-to-float v9, v9

    .line 102
    mul-float/2addr v9, v1

    .line 103
    float-to-int v1, v9

    .line 104
    invoke-virtual {v14, v3, v3, v8, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 105
    :cond_1
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;->run()V

    .line 108
    invoke-virtual {v5, v14, v3}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 111
    move-result-object v8

    .line 114
    iget v10, v15, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    .line 115
    iget v11, v15, Lcom/android/wm/shell/pip/PipBoundsState;->mStashOffset:I

    .line 117
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 119
    move-result-object v12

    .line 122
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 123
    move-result-object v1

    .line 126
    iget-object v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 127
    move-object v7, v14

    .line 129
    move v9, v6

    .line 130
    move v2, v13

    .line 131
    move-object v13, v1

    .line 132
    invoke-static/range {v7 .. v13}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;FIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 133
    const/4 v1, 0x0

    .line 136
    if-eqz v16, :cond_2

    .line 137
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    .line 139
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 141
    move-result-object v5

    .line 144
    const v7, 0x7f0b0043    # @integer/config_pipEnterAnimationDuration '425'

    .line 145
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 148
    move-result v5

    .line 151
    invoke-virtual {v4, v14, v5, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;II)V

    .line 152
    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {v4, v14, v3, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    .line 156
    :goto_1
    invoke-virtual {v15}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 159
    move-result-object v4

    .line 162
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 163
    move-result v4

    .line 166
    iget-object v5, v15, Lcom/android/wm/shell/pip/PipBoundsState;->mMinSize:Landroid/graphics/Point;

    .line 167
    iget v7, v5, Landroid/graphics/Point;->x:I

    .line 169
    if-lt v4, v7, :cond_3

    .line 171
    invoke-virtual {v15}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 173
    move-result-object v4

    .line 176
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 177
    move-result v4

    .line 180
    iget-object v7, v15, Lcom/android/wm/shell/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    .line 181
    iget v8, v7, Landroid/graphics/Point;->x:I

    .line 183
    if-gt v4, v8, :cond_3

    .line 185
    invoke-virtual {v15}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 187
    move-result-object v4

    .line 190
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 191
    move-result v4

    .line 194
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 195
    if-lt v4, v5, :cond_3

    .line 197
    invoke-virtual {v15}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 199
    move-result-object v4

    .line 202
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 203
    move-result v4

    .line 206
    iget v5, v7, Landroid/graphics/Point;->y:I

    .line 207
    if-le v4, v5, :cond_5

    .line 209
    :cond_3
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 211
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 213
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    new-instance v4, Landroid/graphics/Rect;

    .line 218
    iget-object v5, v15, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    .line 220
    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 222
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 225
    invoke-virtual {v5, v4, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 227
    move-result-object v7

    .line 230
    invoke-virtual {v0, v4, v7}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->snapToMovementBoundsEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 231
    invoke-virtual {v5, v4, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 234
    move-result-object v7

    .line 237
    iget-object v5, v5, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 238
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    invoke-static {v4, v6, v7}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 243
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 246
    invoke-virtual {v5}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 248
    move-result-object v6

    .line 251
    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 252
    const/4 v8, 0x0

    .line 254
    invoke-virtual {v7, v6, v4, v8, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;)V

    .line 255
    iput-boolean v2, v5, Lcom/android/wm/shell/pip/PipBoundsState;->mHasUserResizedPip:Z

    .line 258
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUpdateResizeBoundsCallback:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

    .line 260
    invoke-virtual {v7, v4, v3, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    .line 262
    goto :goto_2

    .line 265
    :cond_4
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;->run()V

    .line 266
    :cond_5
    :goto_2
    return-void
    .line 269
.end method

.method public final onKeyguardDismissAnimationFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    .line 11
    const/4 p0, 0x1

    .line 13
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->setPipVisibility(Z)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public final onKeyguardVisibilityChanged(ZZZ)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 2
    iget p2, p2, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 4
    const/4 v0, 0x4

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    move p2, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p2, v2

    .line 13
    :goto_0
    if-nez p2, :cond_1

    .line 14
    return-void

    .line 16
    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 17
    if-eqz p1, :cond_3

    .line 19
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 23
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    .line 25
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 31
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu$1()V

    .line 33
    :cond_2
    invoke-virtual {p2, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->setPipVisibility(Z)V

    .line 36
    goto :goto_1

    .line 39
    :cond_3
    if-nez p3, :cond_4

    .line 40
    iput-boolean v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    .line 42
    invoke-virtual {p2, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->setPipVisibility(Z)V

    .line 44
    :cond_4
    :goto_1
    return-void
    .line 47
.end method

.method public final onPipResourceDimensionsChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedStackAnimationRecentsCallback:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v1

    .line 11
    const v2, 0x7f070e7b    # @dimen/pip_corner_radius '16.0dp'

    .line 12
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result v1

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object p0

    .line 22
    const v2, 0x7f070e97    # @dimen/pip_shadow_radius '5.0dp'

    .line 23
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    move-result p0

    .line 29
    invoke-interface {v0, v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;->onPipResourceDimensionsChanged(II)V

    .line 30
    :cond_0
    return-void
    .line 33
.end method

.method public final onPipTransitionCanceled(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->onPipTransitionFinishedOrCanceled(I)V

    .line 2
    return-void
    .line 5
.end method

.method public final onPipTransitionFinished(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->onPipTransitionFinishedOrCanceled(I)V

    .line 2
    return-void
    .line 5
.end method

.method public final onPipTransitionFinishedOrCanceled(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 2
    move-result-object v0

    .line 5
    const/16 v1, 0x23

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 13
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowTouches:Z

    .line 16
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 18
    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 25
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    .line 27
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->updateMovementBounds()V

    .line 30
    const/4 v0, 0x2

    .line 33
    if-ne p1, v0, :cond_1

    .line 34
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 36
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 38
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 40
    move-result-object p0

    .line 43
    iget-object p1, p1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 44
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 46
    :cond_1
    return-void
    .line 49
.end method

.method public final onPipTransitionStarted(ILandroid/graphics/Rect;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 4
    const/16 v1, 0x23

    .line 6
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    .line 8
    invoke-static {v1, v2, v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withSurface(ILandroid/content/Context;Landroid/view/SurfaceControl;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 10
    move-result-object v0

    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    const-string v1, "TRANSITION_LEAVE_UNKNOWN"

    .line 17
    goto :goto_0

    .line 19
    :pswitch_0
    const-string v1, "TRANSITION_EXPAND_OR_UNEXPAND"

    .line 20
    goto :goto_0

    .line 22
    :pswitch_1
    const-string v1, "TRANSITION_USER_RESIZE"

    .line 23
    goto :goto_0

    .line 25
    :pswitch_2
    const-string v1, "TRANSITION_SNAP_AFTER_RESIZE"

    .line 26
    goto :goto_0

    .line 28
    :pswitch_3
    const-string v1, "TRANSITION_REMOVE_STACK"

    .line 29
    goto :goto_0

    .line 31
    :pswitch_4
    const-string v1, "TRANSITION_LEAVE_PIP_TO_SPLIT_SCREEN"

    .line 32
    goto :goto_0

    .line 34
    :pswitch_5
    const-string v1, "TRANSITION_LEAVE_PIP"

    .line 35
    goto :goto_0

    .line 37
    :pswitch_6
    const-string v1, "TRANSITION_TO_PIP"

    .line 38
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 40
    move-result-object v0

    .line 43
    const-wide/16 v1, 0x7d0

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTimeout(J)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 46
    move-result-object v0

    .line 49
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 50
    move-result-object v1

    .line 53
    invoke-virtual {v1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    .line 54
    invoke-static {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    .line 57
    move-result v0

    .line 60
    const/4 v1, 0x0

    .line 61
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 62
    if-eqz v0, :cond_3

    .line 64
    const/4 v0, 0x1

    .line 66
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 67
    invoke-virtual {v3, p2, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 69
    move-result-object v0

    .line 72
    iget-object v4, v3, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 73
    invoke-virtual {v4, p2, v0, v1}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    .line 75
    move-result v0

    .line 78
    new-instance v4, Landroid/graphics/Rect;

    .line 79
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 81
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 84
    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 87
    move-result v3

    .line 90
    if-nez v3, :cond_0

    .line 91
    const-string p2, "PipController"

    .line 93
    const-string v0, "The pip bounds is invalid, skip."

    .line 95
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    goto :goto_1

    .line 100
    :cond_0
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 101
    iget-boolean v4, v3, Lcom/android/wm/shell/pip/PipBoundsState;->mHasUserResizedPip:Z

    .line 103
    if-nez v4, :cond_1

    .line 105
    new-instance p2, Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;

    .line 107
    const/4 v4, 0x0

    .line 109
    invoke-direct {p2, v0, v4}, Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;-><init>(FLandroid/util/Size;)V

    .line 110
    iput-object p2, v3, Lcom/android/wm/shell/pip/PipBoundsState;->mPipReentryState:Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;

    .line 113
    goto :goto_1

    .line 115
    :cond_1
    new-instance v4, Landroid/util/Size;

    .line 116
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 118
    move-result v5

    .line 121
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 122
    move-result p2

    .line 125
    invoke-direct {v4, v5, p2}, Landroid/util/Size;-><init>(II)V

    .line 126
    iget-object p2, v2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 129
    iget-object p2, p2, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 131
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 133
    move-result p2

    .line 136
    if-nez p2, :cond_2

    .line 137
    iget-object p2, v2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 139
    iget-object p2, p2, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 141
    new-instance v4, Landroid/util/Size;

    .line 143
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 145
    move-result v5

    .line 148
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 149
    move-result p2

    .line 152
    invoke-direct {v4, v5, p2}, Landroid/util/Size;-><init>(II)V

    .line 153
    :cond_2
    new-instance p2, Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;

    .line 156
    invoke-direct {p2, v0, v4}, Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;-><init>(FLandroid/util/Size;)V

    .line 158
    iput-object p2, v3, Lcom/android/wm/shell/pip/PipBoundsState;->mPipReentryState:Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;

    .line 161
    :cond_3
    :goto_1
    iget-object p2, v2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 163
    iput-boolean v1, p2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowTouches:Z

    .line 165
    iget-boolean v0, p2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 167
    if-eqz v0, :cond_4

    .line 169
    invoke-virtual {p2}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    .line 171
    :cond_4
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedStackAnimationRecentsCallback:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

    .line 174
    if-eqz p2, :cond_5

    .line 176
    invoke-interface {p2}, Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;->onPipAnimationStarted()V

    .line 178
    const/4 p2, 0x3

    .line 181
    if-ne p1, p2, :cond_5

    .line 182
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedStackAnimationRecentsCallback:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

    .line 184
    invoke-interface {p0}, Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;->onExpandPip()V

    .line 186
    :cond_5
    return-void

    .line 189
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 190
.end method

.method public final onThemeChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 4
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->init()V

    .line 6
    new-instance v0, Lcom/android/wm/shell/common/DisplayLayout;

    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 13
    move-result-object v2

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 17
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;Z)V

    .line 21
    return-void
    .line 24
.end method

.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    .line 2
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 4
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mSessionsChangedListener:Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda0;

    .line 6
    invoke-virtual {p1, p2}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 8
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 13
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v1, v0, p0, p2}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 16
    return-void
    .line 19
.end method

.method public setEnablePipKeepClearAlgorithm(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mEnablePipKeepClearAlgorithm:Z

    .line 2
    return-void
    .line 4
.end method

.method public setPinnedStackAnimationListener(Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedStackAnimationRecentsCallback:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipController;->onPipResourceDimensionsChanged()V

    .line 4
    return-void
    .line 7
.end method

.method public final updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    .line 4
    move-object/from16 v2, p1

    .line 6
    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 8
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 11
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 13
    move-result-object v2

    .line 16
    iget v2, v2, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 17
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 19
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTmpInsetBounds:Landroid/graphics/Rect;

    .line 21
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 23
    const/high16 v5, -0x40800000    # -1.0f

    .line 26
    const/4 v6, 0x0

    .line 28
    invoke-virtual {v3, v5, v6}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getDefaultBounds(FLandroid/util/Size;)Landroid/graphics/Rect;

    .line 29
    move-result-object v7

    .line 32
    iget-object v8, v3, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 33
    iget v8, v8, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 35
    new-instance v9, Landroid/graphics/Rect;

    .line 37
    invoke-direct {v9, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 39
    iget v7, v3, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    .line 42
    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    .line 44
    move-result v7

    .line 47
    const/4 v10, 0x0

    .line 48
    if-gtz v7, :cond_0

    .line 49
    iget v7, v3, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    .line 51
    invoke-static {v8, v7}, Ljava/lang/Float;->compare(FF)I

    .line 53
    move-result v7

    .line 56
    if-gtz v7, :cond_0

    .line 57
    const/4 v7, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move v7, v10

    .line 61
    :goto_0
    if-eqz v7, :cond_1

    .line 62
    invoke-virtual {v3, v9, v8, v10, v10}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V

    .line 64
    :cond_1
    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 67
    iget-object v8, v7, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    .line 69
    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 71
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 74
    move-result v8

    .line 77
    if-eqz v8, :cond_2

    .line 78
    invoke-virtual {v3, v5, v6}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getDefaultBounds(FLandroid/util/Size;)Landroid/graphics/Rect;

    .line 80
    move-result-object v3

    .line 83
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 84
    :cond_2
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 87
    iget-boolean v6, v3, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    .line 89
    iget-object v8, v3, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 91
    if-eqz v6, :cond_3

    .line 93
    iget v9, v8, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 95
    const/4 v12, 0x4

    .line 97
    if-eq v9, v12, :cond_3

    .line 98
    const/4 v9, 0x1

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    move v9, v10

    .line 102
    :goto_1
    iget-boolean v12, v8, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    .line 103
    if-nez v12, :cond_4

    .line 105
    if-eqz v9, :cond_5

    .line 107
    :cond_4
    if-eqz p2, :cond_5

    .line 109
    sget-boolean v9, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 111
    if-eqz v9, :cond_10

    .line 113
    iget v8, v8, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 115
    int-to-long v8, v8

    .line 117
    sget-object v13, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 118
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 120
    move-result-object v12

    .line 123
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 124
    move-result-object v6

    .line 127
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    move-result-object v8

    .line 131
    const-string v9, "PipTaskOrganizer"

    .line 132
    filled-new-array {v9, v12, v6, v8}, [Ljava/lang/Object;

    .line 134
    move-result-object v6

    .line 137
    const-string v8, "%s: Skip onMovementBoundsChanged on rotation change InSwipePipToHomeTransition=%b mWaitForFixedRotation=%b getTransitionState=%d"

    .line 138
    const v9, -0x5d641c0c

    .line 140
    const/16 v12, 0x7c

    .line 143
    invoke-static {v13, v9, v12, v8, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 145
    goto/16 :goto_5

    .line 148
    :cond_5
    iget-object v6, v3, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 150
    iget-object v6, v6, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 152
    iget-object v9, v3, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 154
    if-eqz v6, :cond_9

    .line 156
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 158
    move-result v12

    .line 161
    if-eqz v12, :cond_9

    .line 162
    invoke-virtual {v6}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    .line 164
    move-result v12

    .line 167
    const/4 v13, 0x2

    .line 168
    if-eq v12, v13, :cond_6

    .line 169
    goto :goto_2

    .line 171
    :cond_6
    iget-object v6, v6, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    .line 172
    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 174
    if-nez p3, :cond_7

    .line 177
    if-nez p4, :cond_7

    .line 179
    invoke-virtual {v9}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 181
    move-result-object v8

    .line 184
    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 185
    move-result v8

    .line 188
    if-eqz v8, :cond_7

    .line 189
    goto/16 :goto_5

    .line 191
    :cond_7
    iget-object v8, v3, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 193
    invoke-virtual {v8}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    .line 195
    move-result-object v8

    .line 198
    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 199
    move-result v6

    .line 202
    if-eqz v6, :cond_8

    .line 203
    goto/16 :goto_5

    .line 205
    :cond_8
    invoke-virtual {v3, v8}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->updateAnimatorBounds(Landroid/graphics/Rect;)V

    .line 207
    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 210
    goto/16 :goto_5

    .line 213
    :cond_9
    :goto_2
    invoke-virtual {v8}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip()Z

    .line 215
    move-result v8

    .line 218
    if-eqz v8, :cond_a

    .line 219
    if-eqz p2, :cond_a

    .line 221
    const/4 v8, 0x1

    .line 223
    goto :goto_3

    .line 224
    :cond_a
    move v8, v10

    .line 225
    :goto_3
    if-eqz v8, :cond_b

    .line 226
    sget-boolean v12, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 228
    if-eqz v12, :cond_b

    .line 230
    invoke-virtual {v9, v1}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    .line 232
    goto :goto_5

    .line 235
    :cond_b
    if-eqz v8, :cond_c

    .line 236
    iget-boolean v12, v3, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    .line 238
    if-eqz v12, :cond_c

    .line 240
    iget-boolean v12, v3, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mHasFadeOut:Z

    .line 242
    if-eqz v12, :cond_c

    .line 244
    invoke-virtual {v9, v1}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    .line 246
    goto :goto_5

    .line 249
    :cond_c
    if-eqz v8, :cond_e

    .line 250
    invoke-virtual {v9, v1}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    .line 252
    if-eqz v6, :cond_d

    .line 255
    invoke-virtual {v6}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    .line 257
    move-result v8

    .line 260
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 261
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 264
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    .line 267
    iget-object v6, v3, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 270
    invoke-virtual {v6, v8}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionCancelled(I)V

    .line 272
    invoke-virtual {v3, v8}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    .line 275
    goto :goto_4

    .line 278
    :cond_d
    move v8, v10

    .line 279
    :goto_4
    invoke-virtual {v3, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->createFinishResizeSurfaceTransaction(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 280
    move-result-object v6

    .line 283
    move-object/from16 v9, p5

    .line 284
    invoke-virtual {v3, v1, v8, v6, v9}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->prepareFinishResizeTransaction(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 286
    goto :goto_5

    .line 289
    :cond_e
    if-eqz v6, :cond_f

    .line 290
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 292
    move-result v8

    .line 295
    if-eqz v8, :cond_f

    .line 296
    iget-object v8, v6, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    .line 298
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    .line 300
    move-result v8

    .line 303
    if-nez v8, :cond_10

    .line 304
    iget-object v6, v6, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    .line 306
    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 308
    goto :goto_5

    .line 311
    :cond_f
    invoke-virtual {v9}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 312
    move-result-object v6

    .line 315
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    .line 316
    move-result v6

    .line 319
    if-nez v6, :cond_10

    .line 320
    invoke-virtual {v9}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 322
    move-result-object v6

    .line 325
    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 326
    :cond_10
    :goto_5
    invoke-virtual {v3, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResizeForMenu(Landroid/graphics/Rect;)V

    .line 329
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 332
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 334
    iget-object v3, v3, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 336
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 338
    move-result v3

    .line 341
    iget-object v6, v7, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    .line 342
    if-eqz v3, :cond_11

    .line 344
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 346
    iget-object v3, v3, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 348
    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 350
    :cond_11
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    .line 353
    if-eqz v3, :cond_12

    .line 355
    iget v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeHeight:I

    .line 357
    goto :goto_6

    .line 359
    :cond_12
    move v3, v10

    .line 360
    :goto_6
    iget v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDisplayRotation:I

    .line 361
    if-eq v7, v2, :cond_13

    .line 363
    const/4 v7, 0x1

    .line 365
    goto :goto_7

    .line 366
    :cond_13
    move v7, v10

    .line 367
    :goto_7
    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 368
    if-eqz v7, :cond_14

    .line 370
    invoke-virtual {v8}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    .line 372
    :cond_14
    new-instance v7, Landroid/graphics/Rect;

    .line 375
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 377
    iget-object v9, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 380
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    invoke-static {v3, v6, v4, v7}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 385
    iget-object v12, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 388
    iget-object v13, v12, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 390
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    .line 392
    move-result v13

    .line 395
    iget-object v14, v12, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 396
    if-eqz v13, :cond_15

    .line 398
    invoke-static {v10, v1, v4, v14}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 400
    :cond_15
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 403
    move-result v13

    .line 406
    int-to-float v13, v13

    .line 407
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 408
    move-result v15

    .line 411
    int-to-float v15, v15

    .line 412
    div-float/2addr v13, v15

    .line 413
    iget-object v15, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 414
    iget-object v15, v15, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    .line 416
    invoke-interface {v15, v13}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;->getDefaultSize(F)Landroid/util/Size;

    .line 418
    move-result-object v15

    .line 421
    new-instance v5, Landroid/graphics/Rect;

    .line 422
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    .line 424
    move-result v11

    .line 427
    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    .line 428
    move-result v15

    .line 431
    invoke-direct {v5, v10, v10, v11, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 432
    iget-object v11, v12, Lcom/android/wm/shell/pip/PipBoundsState;->mExpandedBounds:Landroid/graphics/Rect;

    .line 435
    invoke-virtual {v11, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 437
    new-instance v5, Landroid/graphics/Rect;

    .line 440
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 442
    invoke-static {v3, v11, v4, v5}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 445
    invoke-virtual {v0, v6, v13}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->updatePipSizeConstraints(Landroid/graphics/Rect;F)V

    .line 448
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    .line 451
    if-eqz v3, :cond_16

    .line 453
    iget v13, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeOffset:I

    .line 455
    goto :goto_8

    .line 457
    :cond_16
    move v13, v10

    .line 458
    :goto_8
    if-nez v3, :cond_17

    .line 459
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsShelfShowing:Z

    .line 461
    if-eqz v3, :cond_17

    .line 463
    iget v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mShelfHeight:I

    .line 465
    goto :goto_9

    .line 467
    :cond_17
    move v3, v10

    .line 468
    :goto_9
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    .line 469
    move-result v3

    .line 472
    if-nez p3, :cond_18

    .line 473
    if-eqz p4, :cond_20

    .line 475
    :cond_18
    iget-boolean v13, v8, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 477
    if-eqz v13, :cond_19

    .line 479
    iget-boolean v8, v8, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsDragging:Z

    .line 481
    if-eqz v8, :cond_19

    .line 483
    goto :goto_c

    .line 485
    :cond_19
    iget-boolean v8, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mEnablePipKeepClearAlgorithm:Z

    .line 486
    if-eqz v8, :cond_1a

    .line 488
    goto :goto_c

    .line 490
    :cond_1a
    iget v8, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    .line 491
    const/4 v13, 0x1

    .line 493
    if-ne v8, v13, :cond_1b

    .line 494
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->willResizeMenu()Z

    .line 496
    move-result v8

    .line 499
    if-eqz v8, :cond_1b

    .line 500
    goto :goto_a

    .line 502
    :cond_1b
    move v13, v10

    .line 503
    :goto_a
    new-instance v8, Landroid/graphics/Rect;

    .line 504
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 506
    iget-boolean v15, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    .line 509
    if-eqz v15, :cond_1c

    .line 511
    iget v10, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeHeight:I

    .line 513
    :cond_1c
    invoke-static {v10, v1, v4, v8}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 515
    iget v10, v14, Landroid/graphics/Rect;->bottom:I

    .line 518
    iget v14, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMovementBoundsExtraOffsets:I

    .line 520
    sub-int/2addr v10, v14

    .line 522
    iget v14, v8, Landroid/graphics/Rect;->bottom:I

    .line 523
    iget v15, v8, Landroid/graphics/Rect;->top:I

    .line 525
    if-ge v14, v15, :cond_1d

    .line 527
    goto :goto_b

    .line 529
    :cond_1d
    sub-int/2addr v14, v3

    .line 530
    :goto_b
    if-eqz v13, :cond_1e

    .line 531
    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 533
    iget v13, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 536
    iget-object v9, v9, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 538
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    invoke-static {v1, v13, v8}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 543
    :cond_1e
    if-ge v10, v14, :cond_1f

    .line 546
    iget v8, v1, Landroid/graphics/Rect;->top:I

    .line 548
    iget v9, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mBottomOffsetBufferPx:I

    .line 550
    sub-int/2addr v10, v9

    .line 552
    if-le v8, v10, :cond_20

    .line 553
    iget-object v9, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 555
    sub-int/2addr v14, v8

    .line 557
    invoke-virtual {v9, v14, v1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->animateToOffset(ILandroid/graphics/Rect;)V

    .line 558
    goto :goto_c

    .line 561
    :cond_1f
    if-le v10, v14, :cond_20

    .line 562
    iget v8, v1, Landroid/graphics/Rect;->top:I

    .line 564
    iget v9, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mBottomOffsetBufferPx:I

    .line 566
    sub-int v9, v14, v9

    .line 568
    if-le v8, v9, :cond_20

    .line 570
    iget-object v9, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 572
    sub-int/2addr v14, v8

    .line 574
    invoke-virtual {v9, v14, v1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->animateToOffset(ILandroid/graphics/Rect;)V

    .line 575
    :cond_20
    :goto_c
    iget-object v1, v12, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalMovementBounds:Landroid/graphics/Rect;

    .line 578
    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 580
    iget-object v7, v12, Lcom/android/wm/shell/pip/PipBoundsState;->mExpandedMovementBounds:Landroid/graphics/Rect;

    .line 583
    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 585
    iput v2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDisplayRotation:I

    .line 588
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    .line 590
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 592
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->updateMovementBounds()V

    .line 595
    iput v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMovementBoundsExtraOffsets:I

    .line 598
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mConnection:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;

    .line 600
    iget-object v4, v3, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mNormalBounds:Landroid/graphics/Rect;

    .line 602
    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 604
    iget-object v4, v3, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mExpandedBounds:Landroid/graphics/Rect;

    .line 607
    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 609
    iget-object v4, v3, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mNormalMovementBounds:Landroid/graphics/Rect;

    .line 612
    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 614
    iget-object v1, v3, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mExpandedMovementBounds:Landroid/graphics/Rect;

    .line 617
    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 619
    iget v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    .line 622
    if-ne v1, v2, :cond_21

    .line 624
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 626
    iget v2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 628
    iget-object v3, v12, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalMovementBounds:Landroid/graphics/Rect;

    .line 630
    iget-object v4, v12, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 632
    const/4 v5, 0x1

    .line 634
    move-object/from16 p0, v1

    .line 635
    move-object/from16 p1, v6

    .line 637
    move/from16 p2, v2

    .line 639
    move-object/from16 p3, v3

    .line 641
    move-object/from16 p4, v4

    .line 643
    move/from16 p5, v5

    .line 645
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 647
    const/high16 v1, -0x40800000    # -1.0f

    .line 650
    iput v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 652
    const/4 v1, -0x1

    .line 654
    iput v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    .line 655
    :cond_21
    return-void
    .line 657
.end method

.method public final updatePipPositionForKeepClearAreas()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mEnablePipKeepClearAlgorithm:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    .line 7
    if-eqz v0, :cond_1

    .line 9
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 12
    iget v1, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 14
    const/4 v2, 0x3

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-lt v1, v2, :cond_3

    .line 19
    const/4 v5, 0x5

    .line 21
    if-ne v1, v5, :cond_2

    .line 22
    goto :goto_0

    .line 24
    :cond_2
    move v1, v4

    .line 25
    goto :goto_1

    .line 26
    :cond_3
    :goto_0
    move v1, v3

    .line 27
    :goto_1
    if-nez v1, :cond_7

    .line 28
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipKeepClearAlgorithm:Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;

    .line 30
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 32
    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 34
    invoke-interface {v1, v5, v6}, Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;->adjust(Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;)Landroid/graphics/Rect;

    .line 36
    move-result-object v1

    .line 39
    invoke-virtual {v5}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 40
    move-result-object v5

    .line 43
    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v5

    .line 47
    if-nez v5, :cond_7

    .line 48
    iget v0, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 50
    const/4 v5, 0x4

    .line 52
    if-ne v0, v5, :cond_4

    .line 53
    move v5, v3

    .line 55
    goto :goto_2

    .line 56
    :cond_4
    move v5, v4

    .line 57
    :goto_2
    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 58
    if-eqz v5, :cond_5

    .line 60
    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mEnterAnimationDuration:I

    .line 62
    invoke-virtual {v6, v1, p0, v4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;II)V

    .line 64
    goto :goto_4

    .line 67
    :cond_5
    if-ne v0, v2, :cond_6

    .line 68
    goto :goto_3

    .line 70
    :cond_6
    move v3, v4

    .line 71
    :goto_3
    if-eqz v3, :cond_7

    .line 72
    invoke-virtual {v6, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->updateAnimatorBounds(Landroid/graphics/Rect;)V

    .line 74
    :cond_7
    :goto_4
    return-void
    .line 77
.end method
