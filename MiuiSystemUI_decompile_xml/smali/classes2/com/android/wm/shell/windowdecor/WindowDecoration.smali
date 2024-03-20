.class public abstract Lcom/android/wm/shell/windowdecor/WindowDecoration;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public mCaptionContainerSurface:Landroid/view/SurfaceControl;

.field public final mCaptionInsetsRect:Landroid/graphics/Rect;

.field public mCaptionWindowManager:Landroid/view/WindowlessWindowManager;

.field public final mContext:Landroid/content/Context;

.field public mDecorWindowContext:Landroid/content/Context;

.field public mDecorationContainerSurface:Landroid/view/SurfaceControl;

.field public mDisplay:Landroid/view/Display;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mLayoutResId:I

.field public final mOnDisplaysChangedListener:Lcom/android/wm/shell/windowdecor/WindowDecoration$1;

.field public final mOwner:Landroid/os/Binder;

.field public final mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

.field public final mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

.field public final mSurfaceControlViewHostFactory:Lcom/android/wm/shell/windowdecor/WindowDecoration$2;

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTaskSurface:Landroid/view/SurfaceControl;

.field public final mTmpColor:[F

.field public mViewHost:Landroid/view/SurfaceControlViewHost;

.field public final mWindowContainerTransactionSupplier:Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$$ExternalSyntheticLambda1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$$ExternalSyntheticLambda1;-><init>(I)V

    .line 5
    new-instance v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$$ExternalSyntheticLambda1;

    .line 8
    const/4 v3, 0x1

    .line 10
    invoke-direct {v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$$ExternalSyntheticLambda1;-><init>(I)V

    .line 11
    new-instance v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$$ExternalSyntheticLambda1;

    .line 14
    const/4 v5, 0x2

    .line 16
    invoke-direct {v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$$ExternalSyntheticLambda1;-><init>(I)V

    .line 17
    new-instance v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$2;

    .line 20
    invoke-direct {v5}, Lcom/android/wm/shell/windowdecor/WindowDecoration$2;-><init>()V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$1;

    .line 28
    move-object v7, p0

    .line 30
    check-cast v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 31
    invoke-direct {v6, v7}, Lcom/android/wm/shell/windowdecor/WindowDecoration$1;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;)V

    .line 33
    iput-object v6, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mOnDisplaysChangedListener:Lcom/android/wm/shell/windowdecor/WindowDecoration$1;

    .line 36
    new-instance v6, Landroid/os/Binder;

    .line 38
    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    .line 40
    iput-object v6, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mOwner:Landroid/os/Binder;

    .line 43
    new-instance v6, Landroid/graphics/Rect;

    .line 45
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 47
    iput-object v6, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    .line 50
    const/4 v6, 0x3

    .line 52
    new-array v6, v6, [F

    .line 53
    iput-object v6, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTmpColor:[F

    .line 55
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 59
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 61
    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 63
    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 65
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    .line 67
    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    .line 69
    iput-object v4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowContainerTransactionSupplier:Ljava/util/function/Supplier;

    .line 71
    iput-object v5, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlViewHostFactory:Lcom/android/wm/shell/windowdecor/WindowDecoration$2;

    .line 73
    iget p3, p4, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 75
    invoke-virtual {p2, p3}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    .line 77
    move-result-object p2

    .line 80
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    .line 81
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 83
    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 85
    move-result-object p2

    .line 88
    sget-object p3, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_DENSITY_ALLOWED_RANGE:Lkotlin/ranges/IntRange;

    .line 89
    iget p4, p3, Lkotlin/ranges/IntProgression;->first:I

    .line 91
    iget p3, p3, Lkotlin/ranges/IntProgression;->last:I

    .line 93
    sget p5, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_DENSITY_OVERRIDE:I

    .line 95
    if-gt p4, p5, :cond_0

    .line 97
    if-gt p5, p3, :cond_0

    .line 99
    move v1, v3

    .line 101
    :cond_0
    if-eqz v1, :cond_1

    .line 102
    iget-object p3, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    move-result-object p3

    .line 109
    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 110
    move-result-object p3

    .line 113
    iget p3, p3, Landroid/content/res/Configuration;->densityDpi:I

    .line 114
    iput p3, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 116
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 118
    move-result-object p1

    .line 121
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 122
    return-void
    .line 124
.end method


# virtual methods
.method public final addWindow(ILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;IIIIII)Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    .line 3
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 5
    move-result-object v1

    .line 8
    check-cast v1, Landroid/view/SurfaceControl$Builder;

    .line 9
    const-string v2, " of Task="

    .line 11
    move-object v3, p2

    .line 13
    invoke-static {p2, v2}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v2

    .line 17
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 29
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 33
    move-result-object v1

    .line 36
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    .line 37
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 39
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 43
    move-result-object v1

    .line 46
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 47
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 49
    move-result-object v2

    .line 52
    const/4 v3, 0x0

    .line 53
    move v4, p1

    .line 54
    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    move-result-object v2

    .line 58
    move/from16 v4, p5

    .line 59
    int-to-float v4, v4

    .line 61
    move/from16 v5, p6

    .line 62
    int-to-float v5, v5

    .line 64
    move-object v6, p3

    .line 65
    invoke-virtual {p3, v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 66
    move-result-object v4

    .line 69
    move/from16 v6, p7

    .line 70
    move/from16 v7, p8

    .line 72
    invoke-virtual {v4, v1, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 74
    move-result-object v4

    .line 77
    move/from16 v5, p9

    .line 78
    int-to-float v5, v5

    .line 80
    invoke-virtual {v4, v1, v5}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 81
    move-result-object v4

    .line 84
    move/from16 v5, p10

    .line 85
    int-to-float v5, v5

    .line 87
    invoke-virtual {v4, v1, v5}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 88
    move-result-object v4

    .line 91
    invoke-virtual {v4, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 92
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    .line 95
    const/4 v8, 0x2

    .line 97
    const/16 v9, 0x8

    .line 98
    const/4 v10, -0x2

    .line 100
    move-object v5, v4

    .line 101
    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    .line 105
    const-string v6, "Additional window of Task="

    .line 107
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 112
    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 114
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v5

    .line 122
    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 126
    new-instance v5, Landroid/view/WindowlessWindowManager;

    .line 129
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 131
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 133
    invoke-direct {v5, v6, v1, v3}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    .line 135
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlViewHostFactory:Lcom/android/wm/shell/windowdecor/WindowDecoration$2;

    .line 138
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 140
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    .line 142
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    new-instance v3, Landroid/view/SurfaceControlViewHost;

    .line 147
    const-string v8, "WindowDecoration"

    .line 149
    invoke-direct {v3, v6, v7, v5, v8}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 154
    move-result-object v5

    .line 157
    new-instance v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$$ExternalSyntheticLambda0;

    .line 158
    invoke-direct {v6, v3, v2, v4}, Lcom/android/wm/shell/windowdecor/WindowDecoration$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControlViewHost;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 160
    move-object v2, p4

    .line 163
    invoke-virtual {p4, v5, v6}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/SurfaceControlViewHost$SurfacePackage;Ljava/lang/Runnable;)Z

    .line 164
    new-instance v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 167
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    .line 169
    invoke-direct {v2, v1, v3, v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;-><init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControlViewHost;Ljava/util/function/Supplier;)V

    .line 171
    return-object v2
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mOnDisplaysChangedListener:Lcom/android/wm/shell/windowdecor/WindowDecoration$1;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->removeDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->releaseViews()V

    .line 9
    return-void
    .line 12
.end method

.method public abstract releaseViews()V
.end method
