.class public abstract Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final CAPTION_SPLIT_BOTTOM_OFFSETY:I = 0x8

.field private static final DOT_CENTER_OFFSETY_IN_BOTTOM_SPLIT:I = 0x8

.field private static final PROPERTY_DOT_ENABLE:Ljava/lang/String; = "miui.window.DOT_ENABLED"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mBottomCaptionContainerSurface:Landroid/view/SurfaceControl;

.field private mBottomCaptionInsetsAdded:Z

.field private final mBottomCaptionInsetsRect:Landroid/graphics/Rect;

.field private mBottomCaptionVisibility:Z

.field private mBottomCaptionWindowManager:Landroid/view/WindowlessWindowManager;

.field private mBottomViewHost:Landroid/view/SurfaceControlViewHost;

.field mCaptionContainerSurface:Landroid/view/SurfaceControl;

.field private mCaptionInsetsAdded:Z

.field private final mCaptionInsetsRect:Landroid/graphics/Rect;

.field private mCaptionVisibility:Z

.field private mCaptionWindowManager:Landroid/view/WindowlessWindowManager;

.field final mContext:Landroid/content/Context;

.field protected mDeferRelayout:Z

.field mDisplay:Landroid/view/Display;

.field final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field mFreeformAvoid:Z

.field mFreeformHideEvent:Z

.field mFreeformIsHandlingEvent:Z

.field private mHasSetColor:Z

.field final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field protected final mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

.field private final mMiuiMultiWinSwitchConfig:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;

.field private final mOnDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

.field private final mOwner:Landroid/os/Binder;

.field private mSoScHomeWidth:I

.field protected mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

.field final mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

.field final mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

.field final mSurfaceControlViewHostFactory:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$SurfaceControlViewHostFactory;

.field mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field final mTaskSurface:Landroid/view/SurfaceControl;

.field private final mTmpColor:[F

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field mViewHost:Landroid/view/SurfaceControlViewHost;

.field final mWindowContainerTransactionSupplier:Ljava/util/function/Supplier;

.field protected final mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;


# direct methods
.method public static synthetic $r8$lambda$asbcnB7DIKUfCIDe0Y6F4N572Gw(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->lambda$updateTaskColor$0()V

    .line 2
    return-void
    .line 5
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;

    .line 2
    const-string v0, "MiuiBaseWindowDecoration"

    .line 4
    sput-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    .line 6
    return-void
    .line 8
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 15

    .line 1
    new-instance v6, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {v8, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$2;

    invoke-direct {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$2;-><init>()V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    invoke-direct/range {v0 .. v14}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$SurfaceControlViewHostFactory;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$SurfaceControlViewHostFactory;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    const/4 v3, 0x3

    new-array v3, v3, [F

    .line 4
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTmpColor:[F

    .line 5
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionInsetsRect:Landroid/graphics/Rect;

    .line 6
    new-instance v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$1;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;)V

    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mOnDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    const/4 v3, 0x0

    .line 7
    iput-boolean v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformIsHandlingEvent:Z

    .line 8
    iput-boolean v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformHideEvent:Z

    .line 9
    iput-boolean v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformAvoid:Z

    const/4 v4, 0x1

    .line 10
    iput-boolean v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionVisibility:Z

    .line 11
    iput-boolean v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionVisibility:Z

    .line 12
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iput-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mOwner:Landroid/os/Binder;

    .line 13
    iput-boolean v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mDeferRelayout:Z

    .line 14
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 15
    iput-boolean v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionInsetsAdded:Z

    .line 16
    iput-boolean v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionInsetsAdded:Z

    .line 17
    iput-boolean v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mHasSetColor:Z

    move-object v3, p1

    .line 18
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    .line 19
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object v3, p3

    .line 20
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object/from16 v3, p14

    .line 21
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 22
    iput-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    move-object v3, p5

    .line 23
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    move-object v3, p6

    .line 24
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    move-object v3, p7

    .line 25
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    move-object v3, p8

    .line 26
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowContainerTransactionSupplier:Ljava/util/function/Supplier;

    move-object v3, p9

    .line 27
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSurfaceControlViewHostFactory:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$SurfaceControlViewHostFactory;

    .line 28
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {p2, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mDisplay:Landroid/view/Display;

    move-object v1, p10

    .line 29
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    move-object/from16 v1, p11

    .line 30
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    move-object/from16 v1, p12

    .line 31
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    move-object/from16 v1, p13

    .line 32
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mMiuiMultiWinSwitchConfig:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;

    return-void
.end method

.method public static calCulateCaptionOffsetY(Landroid/content/Context;Landroid/app/TaskInfo;IIZLcom/android/wm/shell/sosc/SoScSplitScreenController;)I
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    move/from16 v1, p2

    .line 4
    move/from16 v2, p3

    .line 6
    move-object/from16 v3, p5

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/app/TaskInfo;->getWindowingMode()I

    .line 10
    move-result v4

    .line 13
    const/4 v5, 0x5

    .line 14
    const/4 v6, 0x0

    .line 15
    if-ne v4, v5, :cond_0

    .line 16
    return v6

    .line 18
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 19
    move-result-object v4

    .line 22
    if-nez v4, :cond_1

    .line 23
    return v6

    .line 25
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    move-result-object v5

    .line 29
    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 30
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 32
    move-result-object v5

    .line 35
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 36
    move-result-object v7

    .line 39
    const/4 v8, 0x0

    .line 40
    invoke-virtual {v7, v8}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getVerticalSplitBoolOrUpdate(Landroid/content/Context;)Z

    .line 41
    move-result v7

    .line 44
    const/4 v8, 0x1

    .line 45
    if-nez v7, :cond_3

    .line 46
    invoke-static/range {p5 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->isSoScFullOpen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)Z

    .line 48
    move-result v9

    .line 51
    if-eqz v9, :cond_3

    .line 52
    iget v9, v0, Landroid/app/TaskInfo;->taskId:I

    .line 54
    invoke-virtual {v3, v9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScRightOrBottomScreen(I)Z

    .line 56
    move-result v9

    .line 59
    if-eqz v9, :cond_3

    .line 60
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getDividerTouchBottom()I

    .line 62
    move-result v0

    .line 65
    if-lez v0, :cond_2

    .line 66
    iget v1, v5, Landroid/graphics/Rect;->top:I

    .line 68
    sub-int/2addr v0, v1

    .line 70
    add-int/2addr v0, v8

    .line 71
    return v0

    .line 72
    :cond_2
    const/high16 v0, 0x41000000    # 8.0f

    .line 73
    move-object/from16 v9, p0

    .line 75
    invoke-static {v9, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;->dip2px(Landroid/content/Context;F)I

    .line 77
    move-result v0

    .line 80
    return v0

    .line 81
    :cond_3
    move-object/from16 v9, p0

    .line 82
    invoke-virtual {v4}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    .line 84
    move-result-object v4

    .line 87
    if-eqz v4, :cond_a

    .line 88
    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    .line 90
    move-result-object v10

    .line 93
    if-eqz v10, :cond_a

    .line 94
    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    .line 96
    move-result-object v10

    .line 99
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    .line 100
    move-result v10

    .line 103
    if-nez v10, :cond_a

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    move-result-object v10

    .line 109
    const v11, 0x7f0702db    # @dimen/dotRadius '2.0dp'

    .line 110
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 113
    move-result v10

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    move-result-object v11

    .line 120
    const v12, 0x7f0702dc    # @dimen/dot_cutout_margin '6.0dp'

    .line 121
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 124
    move-result v11

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/app/TaskInfo;->getWindowingMode()I

    .line 128
    move-result v12

    .line 131
    const/high16 v13, 0x40000000    # 2.0f

    .line 132
    if-ne v12, v8, :cond_5

    .line 134
    if-eqz p4, :cond_4

    .line 136
    invoke-static/range {p0 .. p0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 138
    move-result v0

    .line 141
    return v0

    .line 142
    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    .line 143
    iget v3, v5, Landroid/graphics/Rect;->left:I

    .line 145
    int-to-float v3, v3

    .line 147
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 148
    move-result v7

    .line 151
    int-to-float v7, v7

    .line 152
    div-float/2addr v7, v13

    .line 153
    add-float/2addr v7, v3

    .line 154
    int-to-float v1, v1

    .line 155
    div-float/2addr v1, v13

    .line 156
    sub-float/2addr v7, v1

    .line 157
    float-to-int v3, v7

    .line 158
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 159
    iget v8, v5, Landroid/graphics/Rect;->left:I

    .line 161
    int-to-float v8, v8

    .line 163
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 164
    move-result v9

    .line 167
    int-to-float v9, v9

    .line 168
    div-float/2addr v9, v13

    .line 169
    add-float/2addr v9, v8

    .line 170
    add-float/2addr v9, v1

    .line 171
    float-to-int v1, v9

    .line 172
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 173
    add-int/2addr v5, v2

    .line 175
    invoke-direct {v0, v3, v7, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 176
    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    .line 179
    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 183
    move-result v0

    .line 186
    if-eqz v0, :cond_a

    .line 187
    invoke-static {v1, v2, v10, v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->getCaptionOffsetY(Landroid/graphics/Rect;III)I

    .line 189
    move-result v0

    .line 192
    return v0

    .line 193
    :cond_5
    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    .line 194
    move-result-object v4

    .line 197
    new-instance v5, Landroid/graphics/Rect;

    .line 198
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 200
    new-instance v8, Landroid/graphics/Rect;

    .line 203
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 205
    invoke-virtual {v3, v5, v8}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 208
    new-instance v9, Landroid/graphics/Rect;

    .line 211
    iget v12, v5, Landroid/graphics/Rect;->left:I

    .line 213
    int-to-float v12, v12

    .line 215
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 216
    move-result v14

    .line 219
    int-to-float v14, v14

    .line 220
    div-float/2addr v14, v13

    .line 221
    add-float/2addr v14, v12

    .line 222
    int-to-float v1, v1

    .line 223
    div-float/2addr v1, v13

    .line 224
    sub-float/2addr v14, v1

    .line 225
    float-to-int v12, v14

    .line 226
    iget v14, v5, Landroid/graphics/Rect;->top:I

    .line 227
    iget v15, v5, Landroid/graphics/Rect;->left:I

    .line 229
    int-to-float v15, v15

    .line 231
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 232
    move-result v6

    .line 235
    int-to-float v6, v6

    .line 236
    div-float/2addr v6, v13

    .line 237
    add-float/2addr v6, v15

    .line 238
    add-float/2addr v6, v1

    .line 239
    float-to-int v6, v6

    .line 240
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 241
    add-int/2addr v5, v2

    .line 243
    invoke-direct {v9, v12, v14, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 244
    new-instance v5, Landroid/graphics/Rect;

    .line 247
    iget v6, v8, Landroid/graphics/Rect;->left:I

    .line 249
    int-to-float v6, v6

    .line 251
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 252
    move-result v12

    .line 255
    int-to-float v12, v12

    .line 256
    div-float/2addr v12, v13

    .line 257
    add-float/2addr v12, v6

    .line 258
    sub-float/2addr v12, v1

    .line 259
    float-to-int v6, v12

    .line 260
    iget v12, v8, Landroid/graphics/Rect;->top:I

    .line 261
    iget v14, v8, Landroid/graphics/Rect;->left:I

    .line 263
    int-to-float v14, v14

    .line 265
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 266
    move-result v15

    .line 269
    int-to-float v15, v15

    .line 270
    div-float/2addr v15, v13

    .line 271
    add-float/2addr v15, v14

    .line 272
    add-float/2addr v15, v1

    .line 273
    float-to-int v1, v15

    .line 274
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 275
    add-int/2addr v8, v2

    .line 277
    invoke-direct {v5, v6, v12, v1, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 278
    if-eqz v7, :cond_7

    .line 281
    invoke-static/range {p5 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->isSoScFullOpen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)Z

    .line 283
    move-result v1

    .line 286
    if-eqz v1, :cond_7

    .line 287
    invoke-virtual {v9, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 289
    move-result v0

    .line 292
    if-nez v0, :cond_6

    .line 293
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 295
    move-result v0

    .line 298
    if-eqz v0, :cond_9

    .line 299
    :cond_6
    invoke-static {v4, v2, v10, v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->getCaptionOffsetY(Landroid/graphics/Rect;III)I

    .line 301
    move-result v0

    .line 304
    return v0

    .line 305
    :cond_7
    iget v0, v0, Landroid/app/TaskInfo;->taskId:I

    .line 306
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScLeftOrTopScreen(I)Z

    .line 308
    move-result v0

    .line 311
    if-eqz v0, :cond_8

    .line 312
    goto :goto_0

    .line 314
    :cond_8
    move-object v9, v5

    .line 315
    :goto_0
    invoke-virtual {v9, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 316
    move-result v0

    .line 319
    if-eqz v0, :cond_9

    .line 320
    invoke-static {v4, v2, v10, v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->getCaptionOffsetY(Landroid/graphics/Rect;III)I

    .line 322
    move-result v0

    .line 325
    return v0

    .line 326
    :cond_9
    const/4 v0, 0x0

    .line 327
    goto :goto_1

    .line 328
    :cond_a
    move v0, v6

    .line 329
    :goto_1
    return v0
    .line 330
.end method

.method private createBottomCaption()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {v0, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    .line 9
    const/4 v1, -0x1

    .line 11
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 12
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    return-object v0
    .line 18
.end method

.method private createTopCaption()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 9
    const/4 v2, -0x1

    .line 11
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object p0

    .line 23
    const v1, 0x7f13084a    # @string/multiwin_windowcontrol 'Window control bar'

    .line 24
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 31
    return-object v0
    .line 34
.end method

.method private getBooleanProperty(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method private getBooleanProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method private static getCaptionOffsetY(Landroid/graphics/Rect;III)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 2
    add-int/2addr p0, p3

    .line 4
    mul-int/lit8 p2, p2, 0x2

    .line 5
    add-int/2addr p2, p0

    .line 7
    sub-int/2addr p2, p1

    .line 8
    return p2
    .line 9
.end method

.method private inBottomCaptionInsetsBlackList()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mMiuiMultiWinSwitchConfig:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;

    .line 8
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->getBottomCaptionInsetsBlackList()Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 16
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
    .line 31
.end method

.method private inTopCaptionInsetsBlackList()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mMiuiMultiWinSwitchConfig:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;

    .line 8
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->getTopCaptionInsetsBlackList()Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 16
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
    .line 31
.end method

.method private isExcludeDisplay(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/view/Display;->getOwnerPackageName()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    const-string p1, "com.xiaomi.mirror"

    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    const-string p1, "com.miui.carlink"

    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    const-string p1, "com.xiaomi.ucar.minimap"

    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 39
    :goto_1
    return p0
    .line 40
.end method

.method private static isSoScFullOpen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isInSoScFullMode()Z

    .line 9
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 18
    :goto_1
    return p0
    .line 19
.end method

.method private synthetic lambda$updateTaskColor$0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mHasSetColor:Z

    .line 9
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v2, "setColor finished, taskId="

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 21
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 23
    invoke-static {v1, p0, v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method public static loadDimension(Landroid/content/res/Resources;I)F
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public static loadDimensionPixelSize(Landroid/content/res/Resources;I)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method private needShowSoScNavigationHandle()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->needSupportNavigationHandle()Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 16
    move-result v0

    .line 19
    const/4 v2, 0x6

    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    return v3

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 25
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 27
    move-result v0

    .line 30
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 31
    move-result-object v2

    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 35
    invoke-virtual {v2, p0}, Lcom/android/wm/shell/sosc/SoScUtils;->isHome(Landroid/app/TaskInfo;)Z

    .line 37
    move-result p0

    .line 40
    if-eqz p0, :cond_3

    .line 41
    if-eqz v0, :cond_2

    .line 43
    if-ne v0, v3, :cond_3

    .line 45
    :cond_2
    move v1, v3

    .line 47
    :cond_3
    return v1
    .line 48
.end method

.method private obtainDisplayOrRegisterListener()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mDisplay:Landroid/view/Display;

    .line 12
    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mOnDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    .line 18
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 20
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
    .line 26
.end method

.method private releaseBottomCaptionViews(Landroid/view/SurfaceControl$Transaction;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomViewHost:Landroid/view/SurfaceControlViewHost;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 7
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomViewHost:Landroid/view/SurfaceControlViewHost;

    .line 10
    :cond_0
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 18
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 21
    sget-object p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    .line 23
    const-string p1, "Release bottom caption views"

    .line 25
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    return p0
    .line 33
.end method

.method private releaseCaptionViews(Landroid/view/SurfaceControl$Transaction;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 7
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 10
    :cond_0
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 18
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 21
    sget-object p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    .line 23
    const-string p1, "Release caption views"

    .line 25
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    return p0
    .line 33
.end method

.method private shouldHideCaption()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getScreenType(Landroid/content/Context;)I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 10
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    move v1, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 21
    invoke-static {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->isSoScFullOpen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)Z

    .line 23
    move-result v4

    .line 26
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 27
    iget-object v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 29
    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 31
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScLeftOrTopScreen(I)Z

    .line 33
    move-result v5

    .line 36
    if-nez v5, :cond_2

    .line 37
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 39
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 43
    invoke-virtual {v5, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScRightOrBottomScreen(I)Z

    .line 45
    move-result p0

    .line 48
    if-eqz p0, :cond_1

    .line 49
    goto :goto_1

    .line 51
    :cond_1
    move p0, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    :goto_1
    move p0, v3

    .line 54
    :goto_2
    if-eqz v0, :cond_3

    .line 55
    if-ne v0, v3, :cond_5

    .line 57
    :cond_3
    if-nez v1, :cond_4

    .line 59
    if-nez v4, :cond_5

    .line 61
    if-eqz p0, :cond_5

    .line 63
    :cond_4
    move v2, v3

    .line 65
    :cond_5
    sget-object v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    const-string/jumbo v6, "shouldHideCaption="

    .line 70
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    const-string v6, ", screenType="

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v0, ", isFullscreen="

    .line 87
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v0, ", isSoScFullOpen="

    .line 92
    const-string v6, ", isTaskInSoSc="

    .line 94
    invoke-static {v5, v1, v0, v4, v6}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 96
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 105
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return v2
    .line 109
.end method

.method private updateBottomCaption(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;Landroid/view/SurfaceControl$Transaction;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mBottomRootView:Landroid/view/View;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->releaseBottomCaptionViews(Landroid/view/SurfaceControl$Transaction;)Z

    .line 6
    return-void

    .line 9
    :cond_0
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 12
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 14
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 16
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 18
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 22
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 24
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getBottomCaptionHeight(Landroid/app/ActivityManager$RunningTaskInfo;)I

    .line 26
    move-result v6

    .line 29
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 32
    move-result v2

    .line 35
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 36
    move-result-object v3

    .line 39
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 40
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/sosc/SoScUtils;->isHome(Landroid/app/TaskInfo;)Z

    .line 42
    move-result v3

    .line 45
    invoke-virtual {v0, v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->updateWidth(IZ)V

    .line 46
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->getBottomBarSurfaceWidth()F

    .line 49
    move-result v2

    .line 52
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 53
    move-result v3

    .line 56
    int-to-float v3, v3

    .line 57
    sub-float/2addr v3, v2

    .line 58
    const/high16 v4, 0x40000000    # 2.0f

    .line 59
    div-float/2addr v3, v4

    .line 61
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 62
    move-result-object v5

    .line 65
    iget-object v7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 66
    invoke-virtual {v5, v7}, Lcom/android/wm/shell/sosc/SoScUtils;->isHome(Landroid/app/TaskInfo;)Z

    .line 68
    move-result v5

    .line 71
    if-eqz v5, :cond_2

    .line 72
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 74
    invoke-virtual {v5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 76
    move-result v5

    .line 79
    if-nez v5, :cond_1

    .line 80
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 82
    move-result v3

    .line 85
    iget v7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSoScHomeWidth:I

    .line 86
    sub-int/2addr v3, v7

    .line 88
    int-to-float v3, v3

    .line 89
    int-to-float v7, v7

    .line 90
    div-float/2addr v7, v4

    .line 91
    add-float/2addr v7, v3

    .line 92
    div-float v3, v2, v4

    .line 93
    sub-float v3, v7, v3

    .line 95
    :cond_1
    const/4 v7, 0x1

    .line 97
    if-ne v5, v7, :cond_2

    .line 98
    iget v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSoScHomeWidth:I

    .line 100
    int-to-float v3, v3

    .line 102
    div-float/2addr v3, v4

    .line 103
    div-float v4, v2, v4

    .line 104
    sub-float/2addr v3, v4

    .line 106
    :cond_2
    sget-object v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v7, "updateBottomCaption bottomCaptionWidth="

    .line 111
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 117
    const-string v7, ", bottomCaptionHeight="

    .line 120
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v5

    .line 131
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 135
    if-nez v4, :cond_3

    .line 137
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    .line 139
    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 141
    move-result-object v4

    .line 144
    check-cast v4, Landroid/view/SurfaceControl$Builder;

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    .line 147
    const-string v7, "Bottom Caption container of Task="

    .line 149
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    iget-object v7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 154
    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 156
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v5

    .line 164
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 165
    move-result-object v4

    .line 168
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 169
    move-result-object v4

    .line 172
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 173
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 175
    move-result-object v4

    .line 178
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 179
    move-result-object v4

    .line 182
    iput-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 183
    :cond_3
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 185
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 187
    move-result v1

    .line 190
    sub-int/2addr v1, v6

    .line 191
    int-to-float v1, v1

    .line 192
    invoke-virtual {p2, v4, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 193
    move-result-object p2

    .line 196
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 197
    const/16 v3, 0x4e20

    .line 199
    invoke-virtual {p2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 201
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    .line 204
    if-nez p2, :cond_4

    .line 206
    new-instance p2, Landroid/view/WindowlessWindowManager;

    .line 208
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 210
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 212
    move-result-object v1

    .line 215
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 216
    const/4 v4, 0x0

    .line 218
    invoke-direct {p2, v1, v3, v4}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    .line 219
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    .line 222
    :cond_4
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    .line 224
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 226
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 228
    invoke-virtual {p2, v1}, Landroid/view/WindowlessWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 230
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    .line 233
    float-to-int v5, v2

    .line 235
    const/4 v7, 0x2

    .line 236
    const/16 v8, 0x8

    .line 237
    const/4 v9, -0x2

    .line 239
    move-object v4, p2

    .line 240
    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    .line 244
    const-string v2, "Miui Bottom Caption of Task="

    .line 246
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 251
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    move-result-object v1

    .line 261
    invoke-virtual {p2, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 265
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomViewHost:Landroid/view/SurfaceControlViewHost;

    .line 268
    if-nez v1, :cond_5

    .line 270
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSurfaceControlViewHostFactory:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$SurfaceControlViewHostFactory;

    .line 272
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    .line 274
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mDisplay:Landroid/view/Display;

    .line 276
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    .line 278
    invoke-interface {v1, v2, v3, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$SurfaceControlViewHostFactory;->create(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;)Landroid/view/SurfaceControlViewHost;

    .line 280
    move-result-object v1

    .line 283
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomViewHost:Landroid/view/SurfaceControlViewHost;

    .line 284
    iget-object p1, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mBottomRootView:Landroid/view/View;

    .line 286
    invoke-virtual {v1, p1, p2}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 288
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 291
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 293
    move-result p1

    .line 296
    const/4 p2, 0x5

    .line 297
    if-ne p1, p2, :cond_6

    .line 298
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 300
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getMiuiFreeFormStackInfo()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 302
    move-result-object p1

    .line 305
    if-eqz p1, :cond_6

    .line 306
    iget-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionVisibility:Z

    .line 308
    if-eqz p1, :cond_6

    .line 310
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 312
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getMiuiFreeFormStackInfo()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 314
    move-result-object p0

    .line 317
    iget p0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 318
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->onMiuiFreeformScaleChange(F)V

    .line 320
    goto :goto_0

    .line 323
    :cond_5
    invoke-virtual {v1, p2}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 324
    :cond_6
    :goto_0
    return-void
    .line 327
.end method

.method private updateFocus(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskFocusStateConsumer;

    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 10
    invoke-interface {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskFocusStateConsumer;->setTaskFocusState(Z)V

    .line 12
    :cond_0
    iget-object p1, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mBottomRootView:Landroid/view/View;

    .line 15
    instance-of v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    check-cast p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;

    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 23
    iget-boolean p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 25
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->setTaskFocusState(Z)V

    .line 27
    :cond_1
    return-void
    .line 30
.end method

.method private updateInsets(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;Landroid/window/WindowContainerTransaction;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 4
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 6
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v1

    .line 17
    const v2, 0x7f07027a    # @dimen/decor_caption_width '62.0dp'

    .line 18
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    .line 21
    move-result v5

    .line 24
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 25
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 27
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 29
    move-result v2

    .line 32
    const/4 v3, 0x5

    .line 33
    const/4 v9, 0x1

    .line 34
    const/4 v10, 0x0

    .line 35
    if-ne v2, v3, :cond_0

    .line 36
    move v2, v9

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v2, v10

    .line 40
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getCaptionHeight(Z)I

    .line 41
    move-result v1

    .line 44
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 45
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 47
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getBottomCaptionHeight(Landroid/app/ActivityManager$RunningTaskInfo;)I

    .line 49
    move-result v2

    .line 52
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    .line 53
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 55
    iget-object v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 57
    invoke-virtual {v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->isForceBlack()Z

    .line 59
    move-result v7

    .line 62
    iget-object v8, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 63
    move v6, v1

    .line 65
    invoke-static/range {v3 .. v8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->calCulateCaptionOffsetY(Landroid/content/Context;Landroid/app/TaskInfo;IIZLcom/android/wm/shell/sosc/SoScSplitScreenController;)I

    .line 66
    move-result v3

    .line 69
    iput v3, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mCaptionOffsetY:I

    .line 70
    iget-object v3, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 72
    if-eqz v3, :cond_3

    .line 74
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->inTopCaptionInsetsBlackList()Z

    .line 76
    move-result v3

    .line 79
    if-nez v3, :cond_3

    .line 80
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    .line 82
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 84
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 87
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 89
    move-result v3

    .line 92
    const/4 v4, 0x6

    .line 93
    if-ne v3, v4, :cond_1

    .line 94
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 96
    if-lez v3, :cond_1

    .line 98
    move v3, v9

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    move v3, v10

    .line 102
    :goto_1
    if-eqz v3, :cond_2

    .line 103
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    .line 105
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 107
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    .line 109
    invoke-static {v4}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 111
    move-result v4

    .line 114
    add-int/2addr v4, v3

    .line 115
    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 116
    goto :goto_2

    .line 118
    :cond_2
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    .line 119
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 121
    iget v5, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mCaptionOffsetY:I

    .line 123
    add-int/2addr v4, v5

    .line 125
    add-int/2addr v4, v1

    .line 126
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 127
    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 129
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 131
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mOwner:Landroid/os/Binder;

    .line 133
    const/4 v6, 0x0

    .line 135
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    .line 136
    move-result v7

    .line 139
    iget-object v8, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    .line 140
    move-object v3, p2

    .line 142
    invoke-virtual/range {v3 .. v8}, Landroid/window/WindowContainerTransaction;->addInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;IILandroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 143
    iput-boolean v9, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionInsetsAdded:Z

    .line 146
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    .line 150
    const-string v4, "Add caption insets: "

    .line 152
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v3

    .line 165
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    goto :goto_3

    .line 169
    :cond_3
    iget-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionInsetsAdded:Z

    .line 170
    if-eqz v1, :cond_4

    .line 172
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 174
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 176
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mOwner:Landroid/os/Binder;

    .line 178
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    .line 180
    move-result v4

    .line 183
    invoke-virtual {p2, v1, v3, v10, v4}, Landroid/window/WindowContainerTransaction;->removeInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;II)Landroid/window/WindowContainerTransaction;

    .line 184
    iput-boolean v10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionInsetsAdded:Z

    .line 187
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    .line 189
    const-string v3, "Remove caption insets"

    .line 191
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 196
    move-result-object v1

    .line 199
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 200
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/sosc/SoScUtils;->isHome(Landroid/app/TaskInfo;)Z

    .line 202
    move-result v1

    .line 205
    if-eqz v1, :cond_5

    .line 206
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 208
    move-result-object v1

    .line 211
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScUtils;->needSupportNavigationHandle()Z

    .line 212
    move-result v1

    .line 215
    if-eqz v1, :cond_5

    .line 216
    move v1, v9

    .line 218
    goto :goto_4

    .line 219
    :cond_5
    move v1, v10

    .line 220
    :goto_4
    iget-object p1, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mBottomRootView:Landroid/view/View;

    .line 221
    if-nez p1, :cond_6

    .line 223
    if-eqz v1, :cond_7

    .line 225
    :cond_6
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->inBottomCaptionInsetsBlackList()Z

    .line 227
    move-result p1

    .line 230
    if-nez p1, :cond_7

    .line 231
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionInsetsRect:Landroid/graphics/Rect;

    .line 233
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 235
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionInsetsRect:Landroid/graphics/Rect;

    .line 238
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 240
    sub-int/2addr v0, v2

    .line 242
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 243
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 245
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 247
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mOwner:Landroid/os/Binder;

    .line 249
    const/4 v3, 0x1

    .line 251
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    .line 252
    move-result v4

    .line 255
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionInsetsRect:Landroid/graphics/Rect;

    .line 256
    move-object v0, p2

    .line 258
    invoke-virtual/range {v0 .. v5}, Landroid/window/WindowContainerTransaction;->addInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;IILandroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 259
    iput-boolean v9, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionInsetsAdded:Z

    .line 262
    sget-object p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    .line 264
    new-instance p2, Ljava/lang/StringBuilder;

    .line 266
    const-string v0, "Add bottom caption insets: "

    .line 268
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionInsetsRect:Landroid/graphics/Rect;

    .line 273
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    move-result-object p0

    .line 281
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    goto :goto_5

    .line 285
    :cond_7
    iget-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionInsetsAdded:Z

    .line 286
    if-eqz p1, :cond_8

    .line 288
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 290
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 292
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mOwner:Landroid/os/Binder;

    .line 294
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    .line 296
    move-result v1

    .line 299
    invoke-virtual {p2, p1, v0, v9, v1}, Landroid/window/WindowContainerTransaction;->removeInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;II)Landroid/window/WindowContainerTransaction;

    .line 300
    iput-boolean v10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionInsetsAdded:Z

    .line 303
    sget-object p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    .line 305
    const-string p1, "Remove bottom caption insets"

    .line 307
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_8
    :goto_5
    return-void
    .line 312
.end method

.method private updateTaskColor(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x5

    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mHasSetColor:Z

    .line 11
    if-nez v0, :cond_0

    .line 13
    if-eqz p2, :cond_2

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 31
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 43
    move-result-object v0

    .line 46
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 47
    and-int/lit8 v0, v0, 0x30

    .line 49
    const/16 v1, 0x20

    .line 51
    if-ne v0, v1, :cond_1

    .line 53
    const v0, 0x191919

    .line 55
    goto :goto_0

    .line 58
    :cond_1
    const v0, 0xffffff

    .line 59
    :goto_0
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    .line 62
    const-string/jumbo v2, "updateTaskColor color="

    .line 64
    const-string v3, ", mHasSetColor="

    .line 67
    invoke-static {v2, v0, v3}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    move-result-object v2

    .line 72
    iget-boolean v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mHasSetColor:Z

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    const-string v3, ", fromOnTransitionReady="

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 89
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTmpColor:[F

    .line 93
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 95
    move-result v2

    .line 98
    int-to-float v2, v2

    .line 99
    const/high16 v3, 0x437f0000    # 255.0f

    .line 100
    div-float/2addr v2, v3

    .line 102
    const/4 v4, 0x0

    .line 103
    aput v2, v1, v4

    .line 104
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTmpColor:[F

    .line 106
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 108
    move-result v2

    .line 111
    int-to-float v2, v2

    .line 112
    div-float/2addr v2, v3

    .line 113
    const/4 v4, 0x1

    .line 114
    aput v2, v1, v4

    .line 115
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTmpColor:[F

    .line 117
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 119
    move-result v0

    .line 122
    int-to-float v0, v0

    .line 123
    div-float/2addr v0, v3

    .line 124
    const/4 v2, 0x2

    .line 125
    aput v0, v1, v2

    .line 126
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 128
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTmpColor:[F

    .line 130
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 132
    if-eqz p2, :cond_2

    .line 135
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 137
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$$ExternalSyntheticLambda0;

    .line 139
    invoke-direct {v0, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;)V

    .line 141
    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 144
    :cond_2
    return-void
    .line 147
.end method

.method private updateTopCaption(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;Landroid/view/SurfaceControl$Transaction;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->releaseCaptionViews(Landroid/view/SurfaceControl$Transaction;)Z

    .line 6
    return-void

    .line 9
    :cond_0
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 12
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 14
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;->setWindowingMode(I)V

    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 21
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 23
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 25
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 27
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v2

    .line 36
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;->getDotSurfaceWidth()F

    .line 37
    move-result v3

    .line 40
    float-to-int v5, v3

    .line 41
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 42
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 44
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 46
    move-result v4

    .line 49
    const/4 v6, 0x1

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v10, 0x5

    .line 52
    if-ne v4, v10, :cond_1

    .line 53
    move v4, v6

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v4, v7

    .line 57
    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getCaptionHeight(Z)I

    .line 58
    move-result v3

    .line 61
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 62
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 64
    move-result v4

    .line 67
    const/4 v8, 0x6

    .line 68
    if-ne v4, v8, :cond_2

    .line 69
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 71
    if-lez v4, :cond_2

    .line 73
    move v4, v6

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move v4, v7

    .line 77
    :goto_1
    iget-object v9, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 78
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 80
    move-result v9

    .line 83
    if-eq v9, v10, :cond_4

    .line 84
    if-eqz v4, :cond_3

    .line 86
    goto :goto_2

    .line 88
    :cond_3
    const v7, 0x7f070277    # @dimen/decor_caption_bottom_padding '6.0dp'

    .line 89
    invoke-static {v2, v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    .line 92
    move-result v7

    .line 95
    :cond_4
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 96
    move-result v9

    .line 99
    div-int/lit8 v9, v9, 0x2

    .line 100
    div-int/lit8 v11, v5, 0x2

    .line 102
    sub-int/2addr v9, v11

    .line 104
    iput v9, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mCaptionX:I

    .line 105
    iget v9, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mCaptionOffsetY:I

    .line 107
    iput v9, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mCaptionY:I

    .line 109
    iput v9, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mSamplingOffsetY:I

    .line 111
    iget-object v9, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 113
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 115
    move-result v9

    .line 118
    if-eq v9, v10, :cond_6

    .line 119
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 121
    if-nez v1, :cond_6

    .line 123
    iget v1, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mCaptionOffsetY:I

    .line 125
    if-eqz v1, :cond_6

    .line 127
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 129
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 131
    move-result v1

    .line 134
    if-eq v1, v8, :cond_5

    .line 135
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 137
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->isForceBlack()Z

    .line 139
    move-result v1

    .line 142
    if-nez v1, :cond_6

    .line 143
    :cond_5
    const v1, 0x7f0702db    # @dimen/dotRadius '2.0dp'

    .line 145
    invoke-static {v2, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    .line 148
    move-result v1

    .line 151
    sub-int v1, v3, v1

    .line 152
    iget v2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mSamplingOffsetY:I

    .line 154
    div-int/lit8 v4, v3, 0x2

    .line 156
    sub-int v4, v1, v4

    .line 158
    add-int/2addr v4, v2

    .line 160
    iput v4, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mSamplingOffsetY:I

    .line 161
    goto :goto_3

    .line 163
    :cond_6
    if-eqz v4, :cond_7

    .line 164
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    .line 166
    const/16 v2, 0x8

    .line 168
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->dpToPx(Landroid/content/Context;I)I

    .line 170
    move-result v1

    .line 173
    div-int/lit8 v2, v3, 0x2

    .line 174
    sub-int/2addr v2, v1

    .line 176
    iget v4, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mSamplingOffsetY:I

    .line 177
    sub-int/2addr v4, v1

    .line 179
    iput v4, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mSamplingOffsetY:I

    .line 180
    move v1, v2

    .line 182
    goto :goto_3

    .line 183
    :cond_7
    div-int/lit8 v1, v3, 0x2

    .line 184
    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;->setDotY(I)V

    .line 186
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    .line 189
    const-string/jumbo v2, "updateTopCaption captionWidth="

    .line 191
    const-string v4, ", captionHeight="

    .line 194
    const-string v8, ", captionBottomPadding="

    .line 196
    invoke-static {v2, v5, v4, v3, v8}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    move-result-object v2

    .line 201
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    const-string v4, ", captionOffsetY="

    .line 205
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget v4, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mCaptionOffsetY:I

    .line 210
    const-string v8, ", dotY="

    .line 212
    const-string v9, ", samplingOffsetY="

    .line 214
    invoke-static {v2, v4, v8, v1, v9}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 216
    iget v1, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mSamplingOffsetY:I

    .line 219
    invoke-static {v2, v1, v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 224
    if-nez v0, :cond_8

    .line 226
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    .line 228
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 230
    move-result-object v0

    .line 233
    check-cast v0, Landroid/view/SurfaceControl$Builder;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    .line 236
    const-string v2, "Caption container of Task="

    .line 238
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 243
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 254
    move-result-object v0

    .line 257
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 258
    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 262
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 264
    move-result-object v0

    .line 267
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 268
    move-result-object v0

    .line 271
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 272
    invoke-virtual {p2, v0, v6}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 274
    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 278
    const/16 v2, 0x4e20

    .line 280
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 282
    :cond_8
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 285
    invoke-static {}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getInstance()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    .line 287
    move-result-object v1

    .line 290
    invoke-virtual {v1}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getExtraScreenProjectFlag()I

    .line 291
    move-result v1

    .line 294
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    .line 295
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 298
    iget v1, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mCaptionX:I

    .line 300
    int-to-float v1, v1

    .line 302
    iget v2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mCaptionY:I

    .line 303
    int-to-float v2, v2

    .line 305
    invoke-virtual {p2, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 306
    move-result-object p2

    .line 309
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 310
    add-int v6, v3, v7

    .line 312
    invoke-virtual {p2, v0, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 314
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    .line 317
    if-nez p2, :cond_9

    .line 319
    new-instance p2, Landroid/view/WindowlessWindowManager;

    .line 321
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 323
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 325
    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 329
    const/4 v2, 0x0

    .line 331
    invoke-direct {p2, v0, v1, v2}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    .line 332
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    .line 335
    :cond_9
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    .line 337
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 339
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 341
    invoke-virtual {p2, v0}, Landroid/view/WindowlessWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 343
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    .line 346
    const/4 v7, 0x2

    .line 348
    const/16 v8, 0x8

    .line 349
    const/4 v9, -0x2

    .line 351
    move-object v4, p2

    .line 352
    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    .line 356
    const-string v1, "Miui Caption of Task="

    .line 358
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 363
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    move-result-object v0

    .line 373
    invoke-virtual {p2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 374
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 377
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 380
    if-nez v0, :cond_a

    .line 382
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSurfaceControlViewHostFactory:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$SurfaceControlViewHostFactory;

    .line 384
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    .line 386
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mDisplay:Landroid/view/Display;

    .line 388
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    .line 390
    invoke-interface {v0, v1, v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$SurfaceControlViewHostFactory;->create(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;)Landroid/view/SurfaceControlViewHost;

    .line 392
    move-result-object v0

    .line 395
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 396
    iget-object v1, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 398
    invoke-virtual {v0, v1, p2}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 400
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 403
    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 405
    move-result p2

    .line 408
    if-ne p2, v10, :cond_b

    .line 409
    iget-object p2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 411
    instance-of p2, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;

    .line 413
    if-eqz p2, :cond_b

    .line 415
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 417
    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getMiuiFreeFormStackInfo()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 419
    move-result-object p2

    .line 422
    if-eqz p2, :cond_b

    .line 423
    iget-boolean p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionVisibility:Z

    .line 425
    if-eqz p2, :cond_b

    .line 427
    iget-object p1, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 429
    check-cast p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;

    .line 431
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 433
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getMiuiFreeFormStackInfo()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 435
    move-result-object p0

    .line 438
    iget p0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 439
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;->onMiuiFreeformScaleChange(F)V

    .line 441
    goto :goto_4

    .line 444
    :cond_a
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 445
    :cond_b
    :goto_4
    return-void
    .line 448
.end method

.method private updateViews(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;Landroid/view/View;Landroid/view/View;Landroid/window/WindowContainerTransaction;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->shouldHideCaption()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    xor-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 11
    move-result-object v3

    .line 14
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 15
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/sosc/SoScUtils;->isHome(Landroid/app/TaskInfo;)Z

    .line 17
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 23
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 25
    if-eqz v4, :cond_0

    .line 27
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 29
    if-eqz v3, :cond_0

    .line 31
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 36
    const-string v4, "miui.window.DOT_ENABLED"

    .line 37
    invoke-direct {p0, v4, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->getBooleanProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 45
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 47
    invoke-direct {p0, v4, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->getBooleanProperty(Ljava/lang/String;Landroid/content/ComponentName;)Z

    .line 49
    move-result v3

    .line 52
    if-eqz v3, :cond_0

    .line 53
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mMiuiMultiWinSwitchConfig:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;

    .line 55
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->getDotBlackList()Ljava/util/Set;

    .line 57
    move-result-object v3

    .line 60
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 61
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 63
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 68
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 69
    move-result v3

    .line 72
    if-nez v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mMiuiMultiWinSwitchConfig:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;

    .line 75
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->getActivityDotBlackList()Ljava/util/Set;

    .line 77
    move-result-object v3

    .line 80
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 81
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 83
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 85
    move-result v3

    .line 88
    if-nez v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 91
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 93
    invoke-direct {p0, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->isExcludeDisplay(I)Z

    .line 95
    move-result v3

    .line 98
    if-nez v3, :cond_0

    .line 99
    move v3, v1

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    move v3, v2

    .line 103
    :goto_0
    if-eqz v0, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->needShowSoScNavigationHandle()Z

    .line 106
    move-result v4

    .line 109
    if-nez v4, :cond_2

    .line 110
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 112
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 114
    move-result v4

    .line 117
    const/4 v5, 0x5

    .line 118
    if-ne v4, v5, :cond_1

    .line 119
    goto :goto_1

    .line 121
    :cond_1
    move v1, v2

    .line 122
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 123
    if-eqz v3, :cond_3

    .line 124
    if-nez p2, :cond_4

    .line 126
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->createTopCaption()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;

    .line 128
    move-result-object p2

    .line 131
    goto :goto_2

    .line 132
    :cond_3
    move-object p2, v2

    .line 133
    :cond_4
    :goto_2
    iput-object p2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 134
    if-eqz v1, :cond_5

    .line 136
    if-nez p3, :cond_6

    .line 138
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->createBottomCaption()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;

    .line 140
    move-result-object p3

    .line 143
    goto :goto_3

    .line 144
    :cond_5
    move-object p3, v2

    .line 145
    :cond_6
    :goto_3
    iput-object p3, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mBottomRootView:Landroid/view/View;

    .line 146
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 148
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 150
    invoke-virtual {p4, p0, v3}, Landroid/window/WindowContainerTransaction;->setHasDot(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 152
    sget-object p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    .line 155
    const-string/jumbo p2, "updateViews needCaption="

    .line 157
    const-string p3, ", needTopCaption="

    .line 160
    const-string p4, ", needBottomCaption="

    .line 162
    invoke-static {p2, v0, p3, v3, p4}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    move-result-object p2

    .line 167
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 168
    const-string p3, ", topCaptionView="

    .line 171
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object p3, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 176
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    const-string p3, ", bottomCaptionView="

    .line 181
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object p1, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mBottomRootView:Landroid/view/View;

    .line 186
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object p1

    .line 194
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
    .line 198
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "close taskId="

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 11
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 13
    invoke-static {v1, v2, v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mOnDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->removeDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->releaseViews()V

    .line 25
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowContainerTransactionSupplier:Ljava/util/function/Supplier;

    .line 28
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/window/WindowContainerTransaction;

    .line 34
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 36
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 38
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mOwner:Landroid/os/Binder;

    .line 40
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    .line 42
    move-result v3

    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/window/WindowContainerTransaction;->removeInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;II)Landroid/window/WindowContainerTransaction;

    .line 47
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 50
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 52
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mOwner:Landroid/os/Binder;

    .line 54
    const/4 v3, 0x1

    .line 56
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    .line 57
    move-result v5

    .line 60
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/window/WindowContainerTransaction;->removeInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;II)Landroid/window/WindowContainerTransaction;

    .line 61
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 64
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 66
    invoke-virtual {v0, v1, v4}, Landroid/window/WindowContainerTransaction;->setHasDot(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 68
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 71
    invoke-virtual {v1, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 73
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    .line 76
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 81
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 82
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->unsetColor(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 86
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 89
    iput-boolean v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mHasSetColor:Z

    .line 92
    return-void
    .line 94
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "  "

    .line 2
    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 7
    const-string v1, "mFreeformIsHandlingEvent: "

    .line 8
    invoke-static {p2, v1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v1

    .line 13
    iget-boolean v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformIsHandlingEvent:Z

    .line 14
    invoke-static {v1, v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 19
    if-eqz v1, :cond_0

    .line 21
    const-string v1, "TaskInfo: "

    .line 23
    invoke-static {p2, v1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v2, "Task Bounds: "

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 54
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 56
    move-result-object v2

    .line 59
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 60
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 62
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 72
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    goto :goto_0

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v2, "TaskInfo: null"

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 93
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 97
    const-string v2, "mSamplingHelper:"

    .line 99
    const-string v3, "mSamplingHelper: null"

    .line 101
    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 105
    move-result-object v1

    .line 108
    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 111
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 113
    move-result-object v1

    .line 116
    instance-of v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;

    .line 117
    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 121
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 123
    move-result-object v1

    .line 126
    check-cast v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;

    .line 127
    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object v4

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    .line 133
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v6, "TopCaption: "

    .line 141
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v5

    .line 149
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    .line 153
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v6, "mCaptionVisibility: "

    .line 161
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-boolean v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionVisibility:Z

    .line 166
    const-string v7, "mCaptionInsetsAdded: "

    .line 168
    invoke-static {v5, v6, p1, v4, v7}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    move-result-object v5

    .line 173
    iget-boolean v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionInsetsAdded:Z

    .line 174
    const-string v7, "mCaptionInsetsRect: "

    .line 176
    invoke-static {v5, v6, p1, v4, v7}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    move-result-object v5

    .line 181
    iget-object v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    .line 182
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v5

    .line 190
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    iget-object v5, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;->mSamplingHelper:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;

    .line 194
    if-eqz v5, :cond_1

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    .line 198
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v5

    .line 212
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;->mSamplingHelper:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;

    .line 216
    invoke-virtual {v1, p1, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 218
    goto :goto_1

    .line 221
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 222
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object v1

    .line 236
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    goto :goto_1

    .line 240
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 241
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v4, "TopCaption: null"

    .line 249
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object v1

    .line 257
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomViewHost:Landroid/view/SurfaceControlViewHost;

    .line 261
    if-eqz v1, :cond_4

    .line 263
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 265
    move-result-object v1

    .line 268
    if-eqz v1, :cond_4

    .line 269
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomViewHost:Landroid/view/SurfaceControlViewHost;

    .line 271
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 273
    move-result-object v1

    .line 276
    instance-of v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;

    .line 277
    if-eqz v1, :cond_4

    .line 279
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomViewHost:Landroid/view/SurfaceControlViewHost;

    .line 281
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 283
    move-result-object v1

    .line 286
    check-cast v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;

    .line 287
    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    move-result-object v0

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    .line 293
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string p2, "BottomCaption: "

    .line 301
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    move-result-object p2

    .line 309
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    new-instance p2, Ljava/lang/StringBuilder;

    .line 313
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v4, "mBottomCaptionVisibility: "

    .line 321
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget-boolean v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionVisibility:Z

    .line 326
    const-string v5, "mBottomCaptionInsetsAdded: "

    .line 328
    invoke-static {p2, v4, p1, v0, v5}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    move-result-object p2

    .line 333
    iget-boolean v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionInsetsAdded:Z

    .line 334
    const-string v5, "mBottomCaptionInsetsRect: "

    .line 336
    invoke-static {p2, v4, p1, v0, v5}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    move-result-object p2

    .line 341
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionInsetsRect:Landroid/graphics/Rect;

    .line 342
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    move-result-object p0

    .line 350
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    iget-object p0, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mSamplingHelper:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;

    .line 354
    if-eqz p0, :cond_3

    .line 356
    new-instance p0, Ljava/lang/StringBuilder;

    .line 358
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    move-result-object p0

    .line 372
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    iget-object p0, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mSamplingHelper:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;

    .line 376
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 378
    goto :goto_2

    .line 381
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 382
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    move-result-object p0

    .line 396
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    goto :goto_2

    .line 400
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 401
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string p2, "BottomCaption: null"

    .line 409
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    move-result-object p0

    .line 417
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    :goto_2
    return-void
    .line 421
.end method

.method public getCaptionVisibility()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionVisibility:Z

    .line 2
    return p0
    .line 4
.end method

.method public abstract relayout(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Landroid/view/View;Landroid/view/View;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;Z)V
    .locals 3

    .line 1
    invoke-virtual {p7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->reset()V

    .line 2
    iget-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p3}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    :cond_0
    sget-object p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "relayout taskId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 5
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", windowMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 7
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", baseActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 8
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v0, :cond_3

    iget p3, p3, Landroid/content/res/Configuration;->densityDpi:I

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-ne p3, p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mDisplay:Landroid/view/Display;

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    iget-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eq p1, p3, :cond_3

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->releaseViews()V

    .line 14
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->obtainDisplayOrRegisterListener()Z

    move-result p1

    const/4 p5, 0x0

    if-nez p1, :cond_2

    .line 15
    iput-object p5, p7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 16
    iput-object p5, p7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mBottomRootView:Landroid/view/View;

    return-void

    :cond_2
    move-object p6, p5

    .line 17
    :cond_3
    invoke-direct {p0, p7, p5, p6, p4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->updateViews(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;Landroid/view/View;Landroid/view/View;Landroid/window/WindowContainerTransaction;)V

    .line 18
    invoke-direct {p0, p7, p4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->updateInsets(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;Landroid/window/WindowContainerTransaction;)V

    .line 19
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean p3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-nez p3, :cond_5

    .line 20
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 21
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Transaction;->unsetColor(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mHasSetColor:Z

    .line 23
    :cond_4
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->releaseViews()V

    return-void

    .line 24
    :cond_5
    invoke-direct {p0, p7, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->updateTopCaption(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;Landroid/view/SurfaceControl$Transaction;)V

    .line 25
    invoke-direct {p0, p7, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->updateBottomCaption(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;Landroid/view/SurfaceControl$Transaction;)V

    .line 26
    invoke-direct {p0, p2, p8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->updateTaskColor(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 27
    invoke-direct {p0, p7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->updateFocus(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;)V

    .line 28
    invoke-virtual {p0, p7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->updateSampling(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;)V

    .line 29
    invoke-virtual {p0, p2, p8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->updateVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method public relayoutWhileInfiniteModeResizing(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 2
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 12
    move-result-object v0

    .line 15
    instance-of v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 20
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;

    .line 26
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;->getDotSurfaceWidth()F

    .line 28
    move-result v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v0

    .line 38
    const v2, 0x7f07027a    # @dimen/decor_caption_width '62.0dp'

    .line 39
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 42
    move-result v0

    .line 45
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 46
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 48
    move-result v3

    .line 51
    int-to-float v3, v3

    .line 52
    sub-float/2addr v3, v0

    .line 53
    div-float/2addr v3, v1

    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v2, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 59
    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomViewHost:Landroid/view/SurfaceControlViewHost;

    .line 63
    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 67
    move-result-object v0

    .line 70
    instance-of v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;

    .line 71
    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomViewHost:Landroid/view/SurfaceControlViewHost;

    .line 75
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 77
    move-result-object v0

    .line 80
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;

    .line 81
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->getBottomBarSurfaceWidth()F

    .line 83
    move-result v0

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 88
    move-result v0

    .line 91
    int-to-float v0, v0

    .line 92
    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 93
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getBottomCaptionHeight()I

    .line 95
    move-result v2

    .line 98
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 99
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 101
    move-result v3

    .line 104
    int-to-float v3, v3

    .line 105
    sub-float/2addr v3, v0

    .line 106
    div-float/2addr v3, v1

    .line 107
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 108
    move-result p2

    .line 111
    sub-int/2addr p2, v2

    .line 112
    int-to-float p2, p2

    .line 113
    invoke-virtual {p1, p0, v3, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 114
    :cond_3
    return-void
    .line 117
.end method

.method public releaseViews()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    .line 2
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 8
    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->releaseCaptionViews(Landroid/view/SurfaceControl$Transaction;)Z

    .line 10
    move-result v1

    .line 13
    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->releaseBottomCaptionViews(Landroid/view/SurfaceControl$Transaction;)Z

    .line 14
    move-result p0

    .line 17
    if-nez v1, :cond_0

    .line 18
    if-eqz p0, :cond_1

    .line 20
    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 22
    :cond_1
    return-void
    .line 25
.end method

.method public setBottomCaptionVisibility(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionVisibility:Z

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionVisibility:Z

    .line 6
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mDeferRelayout:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 16
    invoke-virtual {v1, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 22
    :cond_0
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    .line 25
    const-string/jumbo v1, "setBottomCaptionVisibility visibility="

    .line 27
    const-string v2, ", taskId="

    .line 30
    invoke-static {v1, p1, v2}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object p1

    .line 35
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 36
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, ", mDeferRelayout="

    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mDeferRelayout:Z

    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    const-string p0, ", callers="

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const/4 p0, 0x5

    .line 58
    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 69
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    return-void
    .line 73
.end method

.method public setCaptionVisibility(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionVisibility:Z

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionVisibility:Z

    .line 6
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mDeferRelayout:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 16
    invoke-virtual {v1, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 22
    :cond_0
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    .line 25
    const-string/jumbo v1, "setCaptionVisibility visibility="

    .line 27
    const-string v2, ", taskId="

    .line 30
    invoke-static {v1, p1, v2}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object p1

    .line 35
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 36
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, ", mDeferRelayout="

    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mDeferRelayout:Z

    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    const-string p0, ", callers="

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const/4 p0, 0x5

    .line 58
    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 69
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    return-void
    .line 73
.end method

.method public setSoScHomeWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSoScHomeWidth:I

    .line 2
    return-void
    .line 4
.end method

.method public updateSampling(FLcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;)V
    .locals 13

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    iget-boolean v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRotationAnimationRunning:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMultiWinSwitchAnimationRunning:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformIsHandlingEvent:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformHideEvent:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformAvoid:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsDraggingDot:Z

    if-nez v2, :cond_0

    iget-boolean v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsDraggingRecents:Z

    if-nez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 7
    :goto_0
    iget-object v2, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;

    .line 8
    iget-object v5, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mBottomRootView:Landroid/view/View;

    check-cast v5, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;

    if-eqz v1, :cond_1

    .line 9
    iget-boolean v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionVisibility:Z

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 10
    iget-boolean v7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionVisibility:Z

    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move v7, v3

    .line 11
    :goto_2
    sget-object v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "updateSampling taskId="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", taskBounds="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", scale="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", samplingOffsetY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mSamplingOffsetY:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", shouldEnableSampling="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", topSamplingEnabled="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomSamplingEnabled="

    const-string v10, ", captionVisibility="

    .line 12
    invoke-static {v9, v6, v1, v7, v10}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 13
    iget-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionVisibility:Z

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bottomCaptionVisibility="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionVisibility:Z

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rotationAnimationRunning="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    iget-boolean v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRotationAnimationRunning:Z

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", multiWinSwitchAnimationRunning="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    iget-boolean v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMultiWinSwitchAnimationRunning:Z

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", freeformIsHandlingEvent="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformIsHandlingEvent:Z

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFreeformHideEvent="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformHideEvent:Z

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFreeformAvoid="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformAvoid:Z

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDraggingDot="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    iget-boolean v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsDraggingDot:Z

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDraggingRecents="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    iget-boolean v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsDraggingRecents:Z

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", topView="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomView="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5

    if-eqz v6, :cond_4

    .line 14
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;->getDotWidth()F

    move-result v1

    float-to-int v1, v1

    .line 15
    iget-object v8, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    iget-object v9, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v8, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getCaptionHeight(Z)I

    move-result v3

    .line 16
    new-instance v8, Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, p1

    int-to-float v1, v1

    sub-float/2addr v10, v1

    float-to-int v10, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v9

    iget v9, v0, Landroid/graphics/Rect;->top:I

    iget v11, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mSamplingOffsetY:I

    add-int/2addr v9, v11

    iget v11, v0, Landroid/graphics/Rect;->left:I

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, p1

    add-float/2addr v12, v1

    float-to-int v1, v12

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v11

    iget v11, v0, Landroid/graphics/Rect;->top:I

    iget p2, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mSamplingOffsetY:I

    add-int/2addr v11, p2

    int-to-float p2, v3

    mul-float/2addr p2, p1

    float-to-int p2, p2

    add-int/2addr v11, p2

    invoke-direct {v8, v10, v9, v1, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 19
    iget-object p2, v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;->mSamplingHelper:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;

    invoke-virtual {p2, v8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;->setSamplingRect(Landroid/graphics/Rect;)V

    .line 20
    :cond_4
    iget-object p2, v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiDotView;->mSamplingHelper:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;

    invoke-virtual {p2, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;->setSamplingEnabled(Z)V

    :cond_5
    if-eqz v5, :cond_9

    if-eqz v7, :cond_8

    .line 21
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->getBottomBarWidth()F

    move-result p2

    float-to-int p2, p2

    .line 22
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getBottomCaptionHeight(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v1

    .line 23
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    int-to-float v6, p2

    sub-float/2addr v3, v6

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    .line 24
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    move-result-object v2

    iget-object v8, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2, v8}, Lcom/android/wm/shell/sosc/SoScUtils;->isHome(Landroid/app/TaskInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 25
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    move-result v2

    const/high16 v8, 0x40000000    # 2.0f

    if-nez v2, :cond_6

    .line 26
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v9, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSoScHomeWidth:I

    sub-int/2addr v3, v9

    int-to-float v3, v3

    int-to-float v9, v9

    div-float/2addr v9, v8

    add-float/2addr v9, v3

    div-float v3, v6, v8

    sub-float/2addr v9, v3

    float-to-int v3, v9

    :cond_6
    if-ne v2, v4, :cond_7

    .line 27
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSoScHomeWidth:I

    int-to-float p0, p0

    div-float/2addr p0, v8

    div-float/2addr v6, v8

    sub-float/2addr p0, v6

    float-to-int v3, p0

    .line 28
    :cond_7
    new-instance p0, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 29
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-float v1, v4

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v2, v1

    add-int/2addr p2, v3

    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 30
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr v1, p1

    invoke-direct {p0, v3, v2, p2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 31
    iget-object p1, v5, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mSamplingHelper:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;->setSamplingRect(Landroid/graphics/Rect;)V

    .line 32
    :cond_8
    iget-object p0, v5, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mSamplingHelper:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;

    invoke-virtual {p0, v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;->setSamplingEnabled(Z)V

    :cond_9
    return-void
.end method

.method public updateSampling(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->updateSampling(FLcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;)V

    return-void
.end method

.method public updateVisibility(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 11
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 13
    move-result v0

    .line 16
    const/4 v1, 0x5

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    if-nez p2, :cond_1

    .line 20
    iget-boolean p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mHasSetColor:Z

    .line 22
    if-nez p2, :cond_1

    .line 24
    sget-object p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    .line 26
    const-string/jumbo p1, "updateVisibility is deferred until startTransaction of onTransitionReady is applied"

    .line 28
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void

    .line 34
    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 35
    iget-boolean p2, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRotationAnimationRunning:Z

    .line 37
    const/4 v0, 0x1

    .line 39
    xor-int/2addr p2, v0

    .line 40
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->TAG:Ljava/lang/String;

    .line 41
    const-string/jumbo v2, "updateVisibility captionVisible="

    .line 43
    const-string v3, ", mRotationAnimationRunning="

    .line 46
    invoke-static {v2, p2, v3}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    move-result-object v2

    .line 51
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 52
    iget-boolean v3, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRotationAnimationRunning:Z

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 62
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 66
    const/4 v3, 0x0

    .line 68
    if-eqz v2, :cond_3

    .line 69
    if-eqz p2, :cond_2

    .line 71
    iget-boolean v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionVisibility:Z

    .line 73
    if-eqz v4, :cond_2

    .line 75
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 77
    iget-boolean v4, v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMultiWinSwitchAnimationRunning:Z

    .line 79
    if-nez v4, :cond_2

    .line 81
    move v4, v0

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    move v4, v3

    .line 85
    :goto_0
    invoke-virtual {p1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    const-string/jumbo v5, "topCaptionVisible="

    .line 91
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    const-string v4, ", mCaptionVisibility="

    .line 100
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-boolean v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mCaptionVisibility:Z

    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    const-string v4, ", mMultiWinSwitchAnimationRunning="

    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 115
    iget-boolean v4, v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMultiWinSwitchAnimationRunning:Z

    .line 117
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 125
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_3
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 129
    if-eqz v2, :cond_7

    .line 131
    if-eqz p2, :cond_4

    .line 133
    iget-boolean p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionVisibility:Z

    .line 135
    if-eqz p2, :cond_4

    .line 137
    move p2, v0

    .line 139
    goto :goto_1

    .line 140
    :cond_4
    move p2, v3

    .line 141
    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 142
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 144
    move-result v2

    .line 147
    const/4 v4, 0x6

    .line 148
    if-ne v2, v4, :cond_6

    .line 149
    if-eqz p2, :cond_5

    .line 151
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 153
    invoke-virtual {p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 155
    move-result p2

    .line 158
    const/4 v2, -0x1

    .line 159
    if-eq p2, v2, :cond_5

    .line 160
    goto :goto_2

    .line 162
    :cond_5
    move v0, v3

    .line 163
    :goto_2
    move p2, v0

    .line 164
    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 165
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    .line 170
    const-string v0, "bottomCaptionVisible="

    .line 172
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 177
    const-string p2, ", mBottomCaptionVisibility="

    .line 180
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mBottomCaptionVisibility:Z

    .line 185
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object p0

    .line 193
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_7
    return-void
    .line 197
.end method
