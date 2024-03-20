.class public final Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;
.super Lcom/android/wm/shell/windowdecor/WindowDecoration;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAppIcon:Landroid/graphics/drawable/Drawable;

.field public mAppName:Ljava/lang/CharSequence;

.field public final mChoreographer:Landroid/view/Choreographer;

.field public mCornersListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

.field public mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field public mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

.field public mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

.field public mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

.field public final mHandler:Landroid/os/Handler;

.field public mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

.field public mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

.field public final mPositionInParent:Landroid/graphics/Point;

.field public mRelayoutBlock:I

.field public final mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

.field public mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

.field public final mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

.field public final mTransitionsPausingRelayout:Ljava/util/Set;

.field public mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/windowdecor/WindowDecoration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 2
    new-instance p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    .line 5
    invoke-direct {p1}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    .line 10
    new-instance p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 12
    invoke-direct {p1}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 17
    new-instance p1, Landroid/graphics/Point;

    .line 19
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mPositionInParent:Landroid/graphics/Point;

    .line 24
    new-instance p1, Ljava/util/HashSet;

    .line 26
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mTransitionsPausingRelayout:Ljava/util/Set;

    .line 31
    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandler:Landroid/os/Handler;

    .line 33
    iput-object p7, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    .line 35
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 37
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 39
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 47
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 51
    move-result-object p2

    .line 54
    :try_start_0
    new-instance p3, Lcom/android/launcher3/icons/IconProvider;

    .line 55
    iget-object p4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 57
    invoke-direct {p3, p4}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    .line 59
    iget-object p4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 62
    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 64
    const-wide/16 p5, 0x0

    .line 66
    invoke-static {p5, p6}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    .line 68
    move-result-object p7

    .line 71
    invoke-virtual {p2, p4, p7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    .line 72
    move-result-object p4

    .line 75
    invoke-virtual {p3, p4}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    .line 76
    move-result-object p3

    .line 79
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-static {p5, p6}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 82
    move-result-object p3

    .line 85
    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    .line 86
    move-result-object p3

    .line 89
    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 90
    move-result-object p2

    .line 93
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppName:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    .line 96
    :catch_0
    move-exception p0

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    const-string p3, "Package not found: "

    .line 100
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 111
    const-string p2, "DesktopModeWindowDecoration"

    .line 112
    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :goto_0
    return-void
    .line 117
.end method

.method public static pointInView(Landroid/view/View;FF)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 4
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    cmpg-float v0, v0, p1

    .line 9
    if-gtz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 13
    move-result v0

    .line 16
    int-to-float v0, v0

    .line 17
    cmpl-float p1, v0, p1

    .line 18
    if-ltz p1, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 22
    move-result p1

    .line 25
    int-to-float p1, p1

    .line 26
    cmpg-float p1, p1, p2

    .line 27
    if-gtz p1, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 31
    move-result p0

    .line 34
    int-to-float p0, p0

    .line 35
    cmpl-float p0, p0, p2

    .line 36
    if-ltz p0, :cond_0

    .line 38
    const/4 p0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    :goto_0
    return p0
    .line 43
.end method


# virtual methods
.method public final close()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->close()V

    .line 8
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mCornersListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    .line 16
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 20
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 22
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeController:Ljava/util/Optional;

    .line 24
    new-instance v4, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl$$ExternalSyntheticLambda1;

    .line 26
    const/4 v5, 0x0

    .line 28
    invoke-direct {v4, v2, v5}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl$$ExternalSyntheticLambda1;-><init>(II)V

    .line 29
    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 32
    new-instance v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl$$ExternalSyntheticLambda1;

    .line 35
    const/4 v4, 0x1

    .line 37
    invoke-direct {v3, v2, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl$$ExternalSyntheticLambda1;-><init>(II)V

    .line 38
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Ljava/util/Optional;

    .line 41
    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 43
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    .line 46
    if-nez v0, :cond_1

    .line 48
    goto :goto_1

    .line 50
    :cond_1
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 51
    if-eqz v2, :cond_2

    .line 53
    invoke-virtual {v2}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 55
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 58
    :cond_2
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    .line 60
    if-eqz v2, :cond_3

    .line 62
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    .line 64
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 66
    move-result-object v2

    .line 69
    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    .line 70
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    .line 72
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 74
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    .line 77
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 79
    :cond_3
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    .line 82
    :goto_1
    invoke-super {p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->close()V

    .line 84
    return-void
    .line 87
.end method

.method public final closeHandleMenu()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    .line 9
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 11
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->releaseView()V

    .line 13
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 17
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 19
    if-eqz v2, :cond_1

    .line 21
    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->releaseView()V

    .line 23
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 26
    :cond_1
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 28
    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->releaseView()V

    .line 30
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 33
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    .line 35
    return-void
    .line 37
.end method

.method public final hideResizeVeil()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 7
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 9
    const/4 v1, 0x2

    .line 12
    new-array v1, v1, [F

    .line 13
    fill-array-data v1, :array_0

    .line 15
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 18
    const-wide/16 v1, 0x64

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 23
    new-instance v1, Lcom/android/wm/shell/windowdecor/ResizeVeil$$ExternalSyntheticLambda0;

    .line 26
    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/windowdecor/ResizeVeil$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/ResizeVeil;Landroid/animation/ValueAnimator;)V

    .line 28
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 31
    new-instance v1, Lcom/android/wm/shell/windowdecor/ResizeVeil$1;

    .line 34
    invoke-direct {v1, p0}, Lcom/android/wm/shell/windowdecor/ResizeVeil$1;-><init>(Lcom/android/wm/shell/windowdecor/ResizeVeil;)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 39
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 42
    return-void

    .line 45
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 46
.end method

.method public final isHandleMenuActive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

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

.method public final offsetCaptionLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 4
    move-result v1

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 8
    move-result p1

    .line 11
    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 12
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 15
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 17
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 19
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 21
    move-result-object p1

    .line 24
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 25
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    const/4 v1, 0x0

    .line 32
    int-to-float v1, v1

    .line 33
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->offset(FF)V

    .line 39
    iget p0, p1, Landroid/graphics/Point;->x:I

    .line 42
    neg-int p0, p0

    .line 44
    int-to-float p0, p0

    .line 45
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 46
    neg-int p1, p1

    .line 48
    int-to-float p1, p1

    .line 49
    invoke-virtual {v0, p0, p1}, Landroid/graphics/PointF;->offset(FF)V

    .line 50
    return-object v0
    .line 53
.end method

.method public final relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v0, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move-object/from16 v3, p3

    .line 8
    iget-boolean v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 10
    if-eqz v4, :cond_0

    .line 12
    const v4, 0x7f070361    # @dimen/freeform_decor_shadow_focused_thickness '20.0dp'

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    const v4, 0x7f070362    # @dimen/freeform_decor_shadow_unfocused_thickness '5.0dp'

    .line 18
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 21
    move-result v5

    .line 24
    const/4 v6, 0x5

    .line 25
    const/4 v8, 0x0

    .line 26
    if-ne v5, v6, :cond_1

    .line 27
    const/4 v5, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v5, v8

    .line 31
    :goto_1
    if-eqz v5, :cond_2

    .line 32
    iget-boolean v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    .line 34
    if-eqz v5, :cond_2

    .line 36
    const/4 v5, 0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move v5, v8

    .line 40
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    .line 41
    move-result v9

    .line 44
    if-eqz v9, :cond_4

    .line 45
    iget-object v9, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    .line 47
    iget-object v10, v9, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 49
    if-eqz v10, :cond_4

    .line 51
    invoke-virtual {v9}, Lcom/android/wm/shell/windowdecor/HandleMenu;->updateHandleMenuPillPositions()V

    .line 53
    iget-object v10, v9, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 56
    iget-object v10, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    .line 58
    iget-object v11, v9, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillPosition:Landroid/graphics/PointF;

    .line 60
    iget v12, v11, Landroid/graphics/PointF;->x:F

    .line 62
    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 64
    invoke-virtual {v2, v10, v12, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 66
    sget-boolean v10, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_PROTO2_ENABLED:Z

    .line 69
    if-eqz v10, :cond_3

    .line 71
    iget-object v10, v9, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 73
    iget-object v10, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    .line 75
    iget-object v11, v9, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillPosition:Landroid/graphics/PointF;

    .line 77
    iget v12, v11, Landroid/graphics/PointF;->x:F

    .line 79
    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 81
    invoke-virtual {v2, v10, v12, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 83
    :cond_3
    iget-object v10, v9, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 86
    iget-object v10, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    .line 88
    iget-object v9, v9, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPillPosition:Landroid/graphics/PointF;

    .line 90
    iget v11, v9, Landroid/graphics/PointF;->x:F

    .line 92
    iget v9, v9, Landroid/graphics/PointF;->y:F

    .line 94
    invoke-virtual {v2, v10, v11, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 96
    :cond_4
    iget-object v9, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 99
    iget-object v9, v9, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 101
    check-cast v9, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 103
    iget-object v10, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    .line 105
    new-instance v15, Landroid/window/WindowContainerTransaction;

    .line 107
    invoke-direct {v15}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 112
    move-result v11

    .line 115
    sget-boolean v12, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_SUPPORTED:Z

    .line 116
    if-eqz v12, :cond_5

    .line 118
    goto :goto_3

    .line 120
    :cond_5
    if-ne v11, v6, :cond_6

    .line 121
    :goto_3
    const v11, 0x7f0d00a0    # @layout/desktop_mode_app_controls_window_decor 'res/layout/desktop_mode_app_controls_window_decor.xml'

    .line 123
    goto :goto_4

    .line 126
    :cond_6
    const v11, 0x7f0d00a1    # @layout/desktop_mode_focused_window_decor 'res/layout/desktop_mode_focused_window_decor.xml'

    .line 127
    :goto_4
    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    .line 130
    iput v8, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCornerRadius:I

    .line 132
    iput-object v0, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 134
    iput v11, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    .line 136
    const v0, 0x7f070360    # @dimen/freeform_decor_caption_height '42.0dp'

    .line 138
    iput v0, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionHeightId:I

    .line 141
    iput v4, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mShadowRadiusId:I

    .line 143
    move/from16 v0, p4

    .line 145
    iput-boolean v0, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mApplyStartTransactionOnDraw:Z

    .line 147
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 149
    const v4, 0x1010571    # @android:attr/dialogCornerRadius

    .line 151
    filled-new-array {v4}, [I

    .line 154
    move-result-object v4

    .line 157
    invoke-virtual {v0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 158
    move-result-object v0

    .line 161
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    .line 162
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 164
    move-result v11

    .line 167
    iput v11, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCornerRadius:I

    .line 168
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    .line 173
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 175
    iput v8, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    .line 177
    iput v8, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    .line 179
    const/4 v12, 0x0

    .line 181
    iput-object v12, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 182
    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 184
    invoke-virtual {v11}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 186
    move-result-object v11

    .line 189
    iget-object v13, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 190
    if-eqz v13, :cond_7

    .line 192
    iput-object v13, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 194
    :cond_7
    iget v13, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mLayoutResId:I

    .line 196
    iget v14, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    .line 198
    iput v14, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mLayoutResId:I

    .line 200
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 202
    iget-boolean v8, v6, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 204
    const/16 v17, 0x2

    .line 206
    if-nez v8, :cond_8

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->releaseViews()V

    .line 210
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 213
    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 215
    goto :goto_8

    .line 218
    :cond_8
    if-nez v9, :cond_a

    .line 219
    if-eqz v14, :cond_9

    .line 221
    goto :goto_5

    .line 223
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 224
    const-string v1, "layoutResId and rootView can\'t both be invalid."

    .line 226
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 228
    throw v0

    .line 231
    :cond_a
    :goto_5
    iput-object v9, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 232
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 234
    move-result-object v6

    .line 237
    sget-object v8, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_DENSITY_ALLOWED_RANGE:Lkotlin/ranges/IntRange;

    .line 238
    iget v14, v8, Lkotlin/ranges/IntProgression;->first:I

    .line 240
    iget v8, v8, Lkotlin/ranges/IntProgression;->last:I

    .line 242
    sget v7, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_DENSITY_OVERRIDE:I

    .line 244
    if-gt v14, v7, :cond_b

    .line 246
    if-gt v7, v8, :cond_b

    .line 248
    const/4 v7, 0x1

    .line 250
    goto :goto_6

    .line 251
    :cond_b
    const/4 v7, 0x0

    .line 252
    :goto_6
    if-eqz v7, :cond_c

    .line 253
    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 255
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 257
    move-result-object v7

    .line 260
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 261
    move-result-object v7

    .line 264
    iget v7, v7, Landroid/content/res/Configuration;->densityDpi:I

    .line 265
    iput v7, v6, Landroid/content/res/Configuration;->densityDpi:I

    .line 267
    :cond_c
    iget v7, v11, Landroid/content/res/Configuration;->densityDpi:I

    .line 269
    iget v8, v6, Landroid/content/res/Configuration;->densityDpi:I

    .line 271
    if-ne v7, v8, :cond_d

    .line 273
    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    .line 275
    if-eqz v7, :cond_d

    .line 277
    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    .line 279
    move-result v7

    .line 282
    iget-object v8, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 283
    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 285
    if-ne v7, v8, :cond_d

    .line 287
    iget v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mLayoutResId:I

    .line 289
    if-eq v13, v7, :cond_10

    .line 291
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->releaseViews()V

    .line 293
    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 296
    iget-object v8, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 298
    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 300
    invoke-virtual {v7, v8}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    .line 302
    move-result-object v7

    .line 305
    iput-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    .line 306
    if-nez v7, :cond_e

    .line 308
    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 310
    iget-object v8, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mOnDisplaysChangedListener:Lcom/android/wm/shell/windowdecor/WindowDecoration$1;

    .line 312
    invoke-virtual {v7, v8}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 314
    const/4 v7, 0x0

    .line 317
    goto :goto_7

    .line 318
    :cond_e
    const/4 v7, 0x1

    .line 319
    :goto_7
    if-nez v7, :cond_f

    .line 320
    iput-object v12, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 322
    :goto_8
    move-object/from16 v24, v10

    .line 324
    move-object v10, v15

    .line 326
    goto/16 :goto_d

    .line 327
    :cond_f
    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 329
    invoke-virtual {v7, v6}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 331
    move-result-object v7

    .line 334
    iput-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 335
    iget v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    .line 337
    if-eqz v8, :cond_10

    .line 339
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 341
    move-result-object v7

    .line 344
    iget v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    .line 345
    invoke-virtual {v7, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 347
    move-result-object v7

    .line 350
    iput-object v7, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 351
    :cond_10
    iget-object v7, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 353
    if-nez v7, :cond_11

    .line 355
    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 357
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 359
    move-result-object v7

    .line 362
    iget v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    .line 363
    invoke-virtual {v7, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 365
    move-result-object v7

    .line 368
    iput-object v7, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 369
    :cond_11
    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 371
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 373
    move-result-object v7

    .line 376
    iget-object v8, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 377
    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 379
    move-result-object v8

    .line 382
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 383
    move-result v11

    .line 386
    iput v11, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    .line 387
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 389
    move-result v11

    .line 392
    iput v11, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    .line 393
    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    .line 395
    if-nez v11, :cond_12

    .line 397
    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    .line 399
    invoke-interface {v11}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 401
    move-result-object v11

    .line 404
    check-cast v11, Landroid/view/SurfaceControl$Builder;

    .line 405
    new-instance v13, Ljava/lang/StringBuilder;

    .line 407
    const-string v14, "Decor container of Task="

    .line 409
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    iget-object v14, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 414
    iget v14, v14, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 416
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    move-result-object v13

    .line 424
    invoke-virtual {v11, v13}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 425
    move-result-object v11

    .line 428
    invoke-virtual {v11}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 429
    move-result-object v11

    .line 432
    iget-object v13, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 433
    invoke-virtual {v11, v13}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 435
    move-result-object v11

    .line 438
    invoke-virtual {v11}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 439
    move-result-object v11

    .line 442
    iput-object v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    .line 443
    const/4 v13, 0x1

    .line 445
    invoke-virtual {v2, v11, v13}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 446
    move-result-object v11

    .line 449
    iget-object v13, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    .line 450
    const/16 v14, 0x4e20

    .line 452
    invoke-virtual {v11, v13, v14}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 454
    :cond_12
    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    .line 457
    iget v13, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    .line 459
    iget v14, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    .line 461
    invoke-virtual {v2, v11, v13, v14}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 463
    move-result-object v11

    .line 466
    iget-object v13, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    .line 467
    invoke-virtual {v11, v13}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 469
    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 472
    if-nez v11, :cond_13

    .line 474
    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    .line 476
    invoke-interface {v11}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 478
    move-result-object v11

    .line 481
    check-cast v11, Landroid/view/SurfaceControl$Builder;

    .line 482
    new-instance v13, Ljava/lang/StringBuilder;

    .line 484
    const-string v14, "Caption container of Task="

    .line 486
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 488
    iget-object v14, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 491
    iget v14, v14, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 493
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    move-result-object v13

    .line 501
    invoke-virtual {v11, v13}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 502
    move-result-object v11

    .line 505
    invoke-virtual {v11}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 506
    move-result-object v11

    .line 509
    iget-object v13, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    .line 510
    invoke-virtual {v11, v13}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 512
    move-result-object v11

    .line 515
    invoke-virtual {v11}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 516
    move-result-object v11

    .line 519
    iput-object v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 520
    :cond_13
    iget v11, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionHeightId:I

    .line 522
    if-nez v11, :cond_14

    .line 524
    const/4 v14, 0x0

    .line 526
    goto :goto_9

    .line 527
    :cond_14
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 528
    move-result v11

    .line 531
    move v14, v11

    .line 532
    :goto_9
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 533
    move-result v13

    .line 536
    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 537
    invoke-virtual {v2, v11, v13, v14}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 539
    move-result-object v11

    .line 542
    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 543
    invoke-virtual {v11, v12}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 545
    sget-boolean v11, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    .line 548
    if-eqz v11, :cond_15

    .line 550
    iget-object v11, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 552
    check-cast v11, Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;

    .line 554
    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 556
    iget-boolean v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 558
    invoke-interface {v11, v12}, Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;->setTaskFocusState(Z)V

    .line 560
    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    .line 563
    invoke-virtual {v11, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 565
    iget-object v8, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    .line 568
    iget v11, v8, Landroid/graphics/Rect;->top:I

    .line 570
    add-int/2addr v11, v14

    .line 572
    const/4 v12, 0x0

    .line 573
    add-int/2addr v11, v12

    .line 574
    iput v11, v8, Landroid/graphics/Rect;->bottom:I

    .line 575
    iget-object v8, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 577
    iget-object v12, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 579
    iget-object v8, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mOwner:Landroid/os/Binder;

    .line 581
    const/16 v18, 0x0

    .line 583
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    .line 585
    move-result v19

    .line 588
    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    .line 589
    move-object/from16 v20, v11

    .line 591
    move-object v11, v15

    .line 593
    move-object/from16 v24, v10

    .line 594
    move/from16 v21, v13

    .line 596
    const v10, 0x7f0d00a0    # @layout/desktop_mode_app_controls_window_decor 'res/layout/desktop_mode_app_controls_window_decor.xml'

    .line 598
    move-object v13, v8

    .line 601
    move v8, v14

    .line 602
    const v10, 0x7f0d00a1    # @layout/desktop_mode_focused_window_decor 'res/layout/desktop_mode_focused_window_decor.xml'

    .line 603
    move/from16 v14, v18

    .line 606
    move-object v10, v15

    .line 608
    move/from16 v15, v19

    .line 609
    move-object/from16 v16, v20

    .line 611
    invoke-virtual/range {v11 .. v16}, Landroid/window/WindowContainerTransaction;->addInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;IILandroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 613
    goto :goto_a

    .line 616
    :cond_15
    move-object/from16 v24, v10

    .line 617
    move/from16 v21, v13

    .line 619
    move v8, v14

    .line 621
    move-object v10, v15

    .line 622
    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 623
    invoke-virtual {v2, v11}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 625
    :goto_a
    iget v11, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mShadowRadiusId:I

    .line 628
    if-nez v11, :cond_16

    .line 630
    const/4 v7, 0x0

    .line 632
    goto :goto_b

    .line 633
    :cond_16
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimension(I)F

    .line 634
    move-result v7

    .line 637
    :goto_b
    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 638
    iget-object v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 640
    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 642
    move-result v11

    .line 645
    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTmpColor:[F

    .line 646
    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    .line 648
    move-result v13

    .line 651
    int-to-float v13, v13

    .line 652
    const/high16 v14, 0x437f0000    # 255.0f

    .line 653
    div-float/2addr v13, v14

    .line 655
    const/4 v15, 0x0

    .line 656
    aput v13, v12, v15

    .line 657
    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTmpColor:[F

    .line 659
    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    .line 661
    move-result v13

    .line 664
    int-to-float v13, v13

    .line 665
    div-float/2addr v13, v14

    .line 666
    const/4 v15, 0x1

    .line 667
    aput v13, v12, v15

    .line 668
    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTmpColor:[F

    .line 670
    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    .line 672
    move-result v11

    .line 675
    int-to-float v11, v11

    .line 676
    div-float/2addr v11, v14

    .line 677
    aput v11, v12, v17

    .line 678
    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 680
    iget-object v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 682
    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 684
    iget v13, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    .line 686
    iget v14, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    .line 688
    invoke-virtual {v2, v12, v13, v14}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 690
    move-result-object v12

    .line 693
    iget-object v13, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 694
    invoke-virtual {v12, v13, v7}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 696
    move-result-object v7

    .line 699
    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 700
    iget-object v13, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTmpColor:[F

    .line 702
    invoke-virtual {v7, v12, v13}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 704
    move-result-object v7

    .line 707
    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 708
    invoke-virtual {v7, v12}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 710
    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 713
    iget v12, v11, Landroid/graphics/Point;->x:I

    .line 715
    int-to-float v12, v12

    .line 717
    iget v11, v11, Landroid/graphics/Point;->y:I

    .line 718
    int-to-float v11, v11

    .line 720
    invoke-virtual {v3, v7, v12, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 721
    move-result-object v7

    .line 724
    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 725
    iget v12, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    .line 727
    iget v13, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    .line 729
    invoke-virtual {v7, v11, v12, v13}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 731
    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 734
    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 736
    move-result v7

    .line 739
    const/4 v11, 0x5

    .line 740
    if-ne v7, v11, :cond_17

    .line 741
    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 743
    iget v11, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCornerRadius:I

    .line 745
    int-to-float v11, v11

    .line 747
    invoke-virtual {v2, v7, v11}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 748
    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 751
    iget v11, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCornerRadius:I

    .line 753
    int-to-float v11, v11

    .line 755
    invoke-virtual {v3, v7, v11}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 756
    :cond_17
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    .line 759
    if-nez v3, :cond_18

    .line 761
    new-instance v3, Landroid/view/WindowlessWindowManager;

    .line 763
    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 765
    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 767
    move-result-object v7

    .line 770
    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 771
    const/4 v12, 0x0

    .line 773
    invoke-direct {v3, v7, v11, v12}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    .line 774
    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    .line 777
    goto :goto_c

    .line 779
    :cond_18
    const/4 v12, 0x0

    .line 780
    :goto_c
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    .line 781
    invoke-virtual {v3, v6}, Landroid/view/WindowlessWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 783
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    .line 786
    const/4 v6, 0x2

    .line 788
    const/16 v22, 0x8

    .line 789
    const/16 v23, -0x2

    .line 791
    move-object/from16 v18, v3

    .line 793
    move/from16 v19, v21

    .line 795
    move/from16 v20, v8

    .line 797
    move/from16 v21, v6

    .line 799
    invoke-direct/range {v18 .. v23}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 801
    new-instance v6, Ljava/lang/StringBuilder;

    .line 804
    const-string v7, "Caption of Task="

    .line 806
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 808
    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 811
    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 813
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 818
    move-result-object v6

    .line 821
    invoke-virtual {v3, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 822
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 825
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 828
    if-nez v6, :cond_1a

    .line 830
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlViewHostFactory:Lcom/android/wm/shell/windowdecor/WindowDecoration$2;

    .line 832
    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 834
    iget-object v8, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    .line 836
    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    .line 838
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 840
    new-instance v6, Landroid/view/SurfaceControlViewHost;

    .line 843
    const-string v13, "WindowDecoration"

    .line 845
    invoke-direct {v6, v7, v8, v11, v13}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    .line 847
    iput-object v6, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 850
    iget-boolean v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mApplyStartTransactionOnDraw:Z

    .line 852
    if-eqz v0, :cond_19

    .line 854
    invoke-virtual {v6}, Landroid/view/SurfaceControlViewHost;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    .line 856
    move-result-object v0

    .line 859
    invoke-interface {v0, v2}, Landroid/view/AttachedSurfaceControl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 860
    :cond_19
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 863
    iget-object v2, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 865
    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 867
    goto :goto_d

    .line 870
    :cond_1a
    iget-boolean v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mApplyStartTransactionOnDraw:Z

    .line 871
    if-eqz v0, :cond_1b

    .line 873
    invoke-virtual {v6}, Landroid/view/SurfaceControlViewHost;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    .line 875
    move-result-object v0

    .line 878
    invoke-interface {v0, v2}, Landroid/view/AttachedSurfaceControl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 879
    :cond_1b
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 882
    invoke-virtual {v0, v3}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 884
    :goto_d
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 887
    invoke-virtual {v0, v10}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 889
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 892
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 894
    if-nez v0, :cond_1c

    .line 896
    return-void

    .line 898
    :cond_1c
    if-eq v9, v0, :cond_1f

    .line 899
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    .line 901
    iget v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    .line 903
    const v3, 0x7f0d00a1    # @layout/desktop_mode_focused_window_decor 'res/layout/desktop_mode_focused_window_decor.xml'

    .line 905
    if-ne v2, v3, :cond_1d

    .line 908
    new-instance v2, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeFocusedWindowDecorationViewHolder;

    .line 910
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

    .line 912
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    .line 914
    invoke-direct {v2, v0, v3, v4}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeFocusedWindowDecorationViewHolder;-><init>(Landroid/view/View;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    .line 916
    iput-object v2, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;

    .line 919
    goto :goto_e

    .line 921
    :cond_1d
    const v3, 0x7f0d00a0    # @layout/desktop_mode_app_controls_window_decor 'res/layout/desktop_mode_app_controls_window_decor.xml'

    .line 922
    if-ne v2, v3, :cond_1e

    .line 925
    new-instance v2, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;

    .line 927
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

    .line 929
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    .line 931
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppName:Ljava/lang/CharSequence;

    .line 933
    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 935
    move-object/from16 v18, v2

    .line 937
    move-object/from16 v19, v0

    .line 939
    move-object/from16 v20, v3

    .line 941
    move-object/from16 v21, v4

    .line 943
    move-object/from16 v22, v6

    .line 945
    move-object/from16 v23, v7

    .line 947
    invoke-direct/range {v18 .. v23}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;-><init>(Landroid/view/View;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 949
    iput-object v2, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;

    .line 952
    goto :goto_e

    .line 954
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 955
    const-string v1, "Unexpected layout resource id"

    .line 957
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 959
    throw v0

    .line 962
    :cond_1f
    :goto_e
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;

    .line 963
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 965
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->bindData(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 967
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 970
    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 972
    if-nez v0, :cond_20

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    .line 976
    :cond_20
    if-nez v5, :cond_22

    .line 979
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 981
    if-nez v0, :cond_21

    .line 983
    goto :goto_f

    .line 985
    :cond_21
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->close()V

    .line 986
    iput-object v12, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 989
    :goto_f
    return-void

    .line 991
    :cond_22
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    .line 992
    move-object/from16 v2, v24

    .line 994
    if-ne v2, v0, :cond_23

    .line 996
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 998
    if-nez v0, :cond_25

    .line 1000
    :cond_23
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 1002
    if-nez v0, :cond_24

    .line 1004
    goto :goto_10

    .line 1006
    :cond_24
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->close()V

    .line 1007
    iput-object v12, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 1010
    :goto_10
    new-instance v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 1012
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 1014
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandler:Landroid/os/Handler;

    .line 1016
    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    .line 1018
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    .line 1020
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 1022
    move-result v6

    .line 1025
    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    .line 1026
    iget-object v8, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 1028
    move-object v2, v0

    .line 1030
    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V

    .line 1031
    iput-object v0, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 1034
    :cond_25
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 1036
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 1038
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 1040
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 1042
    move-result-object v0

    .line 1045
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 1046
    move-result-object v0

    .line 1049
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 1050
    move-result v0

    .line 1053
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 1054
    iput v0, v2, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    .line 1056
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 1058
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 1060
    check-cast v2, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 1062
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 1064
    move-result-object v2

    .line 1067
    const v3, 0x7f070364    # @dimen/freeform_resize_handle '0.0dp'

    .line 1068
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1071
    move-result v2

    .line 1074
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 1075
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 1077
    check-cast v3, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 1079
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 1081
    move-result-object v3

    .line 1084
    const v4, 0x7f070363    # @dimen/freeform_resize_corner '44.0dp'

    .line 1085
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1088
    move-result v3

    .line 1091
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 1092
    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 1094
    iget v6, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    .line 1096
    iget v5, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    .line 1098
    iget v7, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 1100
    if-ne v7, v6, :cond_26

    .line 1102
    iget v7, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 1104
    if-ne v7, v5, :cond_26

    .line 1106
    iget v7, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mResizeHandleThickness:I

    .line 1108
    if-ne v7, v2, :cond_26

    .line 1110
    iget v7, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCornerSize:I

    .line 1112
    if-ne v7, v3, :cond_26

    .line 1114
    const/4 v13, 0x0

    .line 1116
    goto/16 :goto_12

    .line 1117
    :cond_26
    iput v6, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 1119
    iput v5, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 1121
    iput v2, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mResizeHandleThickness:I

    .line 1123
    iput v3, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCornerSize:I

    .line 1125
    iget-object v2, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 1127
    iput v0, v2, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    .line 1129
    new-instance v12, Landroid/graphics/Region;

    .line 1131
    invoke-direct {v12}, Landroid/graphics/Region;-><init>()V

    .line 1133
    new-instance v0, Landroid/graphics/Rect;

    .line 1136
    iget v2, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mResizeHandleThickness:I

    .line 1138
    neg-int v3, v2

    .line 1140
    iget v5, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 1141
    add-int/2addr v5, v2

    .line 1143
    const/4 v2, 0x0

    .line 1144
    invoke-direct {v0, v3, v3, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1145
    invoke-virtual {v12, v0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 1148
    new-instance v0, Landroid/graphics/Rect;

    .line 1151
    iget v3, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mResizeHandleThickness:I

    .line 1153
    neg-int v3, v3

    .line 1155
    iget v5, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 1156
    invoke-direct {v0, v3, v2, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1158
    invoke-virtual {v12, v0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 1161
    new-instance v0, Landroid/graphics/Rect;

    .line 1164
    iget v3, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 1166
    iget v5, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mResizeHandleThickness:I

    .line 1168
    add-int/2addr v5, v3

    .line 1170
    iget v6, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 1171
    invoke-direct {v0, v3, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1173
    invoke-virtual {v12, v0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 1176
    new-instance v0, Landroid/graphics/Rect;

    .line 1179
    iget v2, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mResizeHandleThickness:I

    .line 1181
    neg-int v3, v2

    .line 1183
    iget v5, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 1184
    iget v6, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 1186
    add-int/2addr v6, v2

    .line 1188
    add-int/2addr v2, v5

    .line 1189
    invoke-direct {v0, v3, v5, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1190
    invoke-virtual {v12, v0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 1193
    iget v0, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCornerSize:I

    .line 1196
    div-int/lit8 v0, v0, 0x2

    .line 1198
    new-instance v2, Landroid/graphics/Rect;

    .line 1200
    neg-int v3, v0

    .line 1202
    invoke-direct {v2, v3, v3, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1203
    iput-object v2, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftTopCornerBounds:Landroid/graphics/Rect;

    .line 1206
    invoke-virtual {v12, v2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 1208
    new-instance v2, Landroid/graphics/Rect;

    .line 1211
    iget v5, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 1213
    sub-int v6, v5, v0

    .line 1215
    add-int/2addr v5, v0

    .line 1217
    invoke-direct {v2, v6, v3, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1218
    iput-object v2, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightTopCornerBounds:Landroid/graphics/Rect;

    .line 1221
    invoke-virtual {v12, v2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 1223
    new-instance v2, Landroid/graphics/Rect;

    .line 1226
    iget v5, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 1228
    sub-int v6, v5, v0

    .line 1230
    add-int/2addr v5, v0

    .line 1232
    invoke-direct {v2, v3, v6, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1233
    iput-object v2, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftBottomCornerBounds:Landroid/graphics/Rect;

    .line 1236
    invoke-virtual {v12, v2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 1238
    new-instance v2, Landroid/graphics/Rect;

    .line 1241
    iget v3, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 1243
    sub-int v5, v3, v0

    .line 1245
    iget v6, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 1247
    sub-int v7, v6, v0

    .line 1249
    add-int/2addr v3, v0

    .line 1251
    add-int/2addr v6, v0

    .line 1252
    invoke-direct {v2, v5, v7, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1253
    iput-object v2, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightBottomCornerBounds:Landroid/graphics/Rect;

    .line 1256
    invoke-virtual {v12, v2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 1258
    :try_start_0
    iget-object v5, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mWindowSession:Landroid/view/IWindowSession;

    .line 1261
    iget-object v0, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputChannel:Landroid/view/InputChannel;

    .line 1263
    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 1265
    move-result-object v6

    .line 1268
    iget v7, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDisplayId:I

    .line 1269
    iget-object v8, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDecorationSurface:Landroid/view/SurfaceControl;

    .line 1271
    const/16 v9, 0x8

    .line 1273
    const/high16 v10, 0x20000000

    .line 1275
    const/4 v11, 0x0

    .line 1277
    invoke-interface/range {v5 .. v12}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1278
    goto :goto_11

    .line 1281
    :catch_0
    move-exception v0

    .line 1282
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1283
    :goto_11
    const/4 v13, 0x1

    .line 1286
    :goto_12
    if-nez v13, :cond_27

    .line 1287
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1289
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 1291
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mPositionInParent:Landroid/graphics/Point;

    .line 1293
    invoke-virtual {v0, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    .line 1295
    move-result v0

    .line 1298
    if-nez v0, :cond_28

    .line 1299
    :cond_27
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mCornersListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    .line 1301
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1303
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1305
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 1307
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1309
    new-instance v4, Landroid/graphics/Region;

    .line 1312
    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    .line 1314
    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftTopCornerBounds:Landroid/graphics/Rect;

    .line 1317
    invoke-virtual {v4, v5}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 1319
    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftBottomCornerBounds:Landroid/graphics/Rect;

    .line 1322
    invoke-virtual {v4, v5}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 1324
    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightTopCornerBounds:Landroid/graphics/Rect;

    .line 1327
    invoke-virtual {v4, v5}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 1329
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightBottomCornerBounds:Landroid/graphics/Rect;

    .line 1332
    invoke-virtual {v4, v3}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 1334
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mPositionInParent:Landroid/graphics/Point;

    .line 1337
    iget v5, v3, Landroid/graphics/Point;->x:I

    .line 1339
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 1341
    invoke-virtual {v4, v5, v3}, Landroid/graphics/Region;->translate(II)V

    .line 1343
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 1346
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeController:Ljava/util/Optional;

    .line 1348
    new-instance v5, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl$$ExternalSyntheticLambda0;

    .line 1350
    const/4 v6, 0x0

    .line 1352
    invoke-direct {v5, v2, v6, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl$$ExternalSyntheticLambda0;-><init>(IILandroid/graphics/Region;)V

    .line 1353
    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1356
    new-instance v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl$$ExternalSyntheticLambda0;

    .line 1359
    const/4 v5, 0x1

    .line 1361
    invoke-direct {v3, v2, v5, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl$$ExternalSyntheticLambda0;-><init>(IILandroid/graphics/Region;)V

    .line 1362
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Ljava/util/Optional;

    .line 1365
    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1367
    :cond_28
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mPositionInParent:Landroid/graphics/Point;

    .line 1370
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1372
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 1374
    invoke-virtual {v0, v1}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    .line 1376
    return-void
.end method

.method public final releaseViews()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 5
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 10
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 13
    :cond_0
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    .line 17
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 23
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 25
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v2, :cond_1

    .line 29
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 31
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 34
    move v2, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v2, v4

    .line 38
    :goto_0
    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    .line 39
    if-eqz v5, :cond_2

    .line 41
    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 43
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    .line 46
    goto :goto_1

    .line 48
    :cond_2
    move v3, v2

    .line 49
    :goto_1
    if-eqz v3, :cond_3

    .line 50
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowContainerTransactionSupplier:Ljava/util/function/Supplier;

    .line 55
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 60
    check-cast v0, Landroid/window/WindowContainerTransaction;

    .line 61
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 63
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 65
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mOwner:Landroid/os/Binder;

    .line 67
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    .line 69
    move-result v3

    .line 72
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/window/WindowContainerTransaction;->removeInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;II)Landroid/window/WindowContainerTransaction;

    .line 73
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 76
    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 78
    return-void
    .line 81
.end method
