.class Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mAnimator:Lmiuix/animation/IStateStyle;

.field private mCaptionHorizontalCenter:I

.field private mCaptionVerticalCenter:I

.field private final mFolmeControl:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$FolmeControl;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mTempFloat9:[F

.field private final mTransactionSupplier:Ljava/util/function/Supplier;

.field private final mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

.field private final mWindowManager:Landroid/view/IWindowManager;

.field mWindowSurface:Landroid/view/SurfaceControl;

.field mWindowViewHost:Landroid/view/SurfaceControlViewHost;

.field private mXPos:I

.field private mYPos:I


# direct methods
.method public static synthetic $r8$lambda$AaTngYUMvdLBZUeoHyicIylIaRI(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->lambda$startAdditionalWindowAnim$0(Landroid/view/SurfaceControl$Transaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$mhideCurrentInputMethod(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->hideCurrentInputMethod()V

    .line 2
    return-void
    .line 5
.end method

.method private constructor <init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControlViewHost;Landroid/view/IWindowManager;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Ljava/util/function/Supplier;IIII)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$FolmeControl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$FolmeControl;-><init>(I)V

    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mFolmeControl:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$FolmeControl;

    .line 4
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mAnimator:Lmiuix/animation/IStateStyle;

    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 6
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mTempFloat9:[F

    .line 7
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    .line 8
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 9
    iput-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mWindowManager:Landroid/view/IWindowManager;

    .line 10
    iput-object p4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 11
    iput-object p5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mTransactionSupplier:Ljava/util/function/Supplier;

    .line 12
    iput p6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mCaptionHorizontalCenter:I

    .line 13
    iput p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mCaptionVerticalCenter:I

    .line 14
    iput p8, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mXPos:I

    .line 15
    iput p9, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mYPos:I

    .line 16
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->createAdditionalWindowAnim()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControlViewHost;Landroid/view/IWindowManager;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Ljava/util/function/Supplier;IIIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;-><init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControlViewHost;Landroid/view/IWindowManager;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Ljava/util/function/Supplier;IIII)V

    return-void
.end method

.method private createAdditionalWindowAnim()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->startAdditionalWindowAnim(Z)V

    .line 3
    return-void
    .line 6
.end method

.method private hideCurrentInputMethod()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->isImeShowing()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mWindowManager:Landroid/view/IWindowManager;

    .line 10
    invoke-interface {p0}, Landroid/view/IWindowManager;->hideCurrentInputMethod()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 17
    :cond_0
    :goto_0
    return-void
    .line 20
.end method

.method private synthetic lambda$startAdditionalWindowAnim$0(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mMatrix:Landroid/graphics/Matrix;

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mMatrix:Landroid/graphics/Matrix;

    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mFolmeControl:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$FolmeControl;

    .line 13
    iget v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$FolmeControl;->scale:F

    .line 15
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mCaptionHorizontalCenter:I

    .line 17
    int-to-float v2, v2

    .line 19
    iget v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mCaptionVerticalCenter:I

    .line 20
    int-to-float v3, v3

    .line 22
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mMatrix:Landroid/graphics/Matrix;

    .line 26
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mXPos:I

    .line 28
    int-to-float v1, v1

    .line 30
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mYPos:I

    .line 31
    int-to-float v2, v2

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 34
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    .line 37
    const/4 v1, 0x3

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->deferAnimation(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 40
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    .line 43
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mMatrix:Landroid/graphics/Matrix;

    .line 45
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mTempFloat9:[F

    .line 47
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 49
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    .line 52
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mFolmeControl:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$FolmeControl;

    .line 54
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$FolmeControl;->alpha:F

    .line 56
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 58
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 61
    :cond_0
    return-void
    .line 64
.end method

.method private startAdditionalWindowAnim(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mTransactionSupplier:Ljava/util/function/Supplier;

    .line 2
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 8
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$$ExternalSyntheticLambda0;

    .line 10
    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;Landroid/view/SurfaceControl$Transaction;)V

    .line 12
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 15
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 17
    const/4 v2, 0x2

    .line 20
    new-array v3, v2, [F

    .line 21
    const v4, 0x3f733333    # 0.95f

    .line 23
    const/4 v5, 0x0

    .line 26
    aput v4, v3, v5

    .line 27
    const v4, 0x3e99999a    # 0.3f

    .line 29
    const/4 v6, 0x1

    .line 32
    aput v4, v3, v6

    .line 33
    const/4 v4, -0x2

    .line 35
    invoke-virtual {v0, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 36
    move-result-object v0

    .line 39
    new-instance v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$1;

    .line 40
    invoke-direct {v3, p0, v1, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;Ljava/lang/Runnable;Z)V

    .line 42
    sget-object v4, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 45
    new-instance v4, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;

    .line 47
    const-string v7, "FF_UI/MULTI_TASK_TYPE_MWS"

    .line 49
    invoke-direct {v4, v3, v7}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/lang/String;)V

    .line 51
    filled-new-array {v4}, [Lmiuix/animation/listener/TransitionListener;

    .line 54
    move-result-object v3

    .line 57
    invoke-virtual {v0, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 58
    move-result-object v0

    .line 61
    invoke-static {v7}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 62
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mAnimator:Lmiuix/animation/IStateStyle;

    .line 65
    const/4 v3, 0x5

    .line 67
    new-array v3, v3, [Ljava/lang/Object;

    .line 68
    const-string v4, "scale"

    .line 70
    aput-object v4, v3, v5

    .line 72
    const/4 v4, 0x0

    .line 74
    const/high16 v5, 0x3f800000    # 1.0f

    .line 75
    if-eqz p1, :cond_0

    .line 77
    move v7, v4

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    move v7, v5

    .line 81
    :goto_0
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 82
    move-result-object v7

    .line 85
    aput-object v7, v3, v6

    .line 86
    const-string v6, "alpha"

    .line 88
    aput-object v6, v3, v2

    .line 90
    if-eqz p1, :cond_1

    .line 92
    goto :goto_1

    .line 94
    :cond_1
    move v4, v5

    .line 95
    :goto_1
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 96
    move-result-object p1

    .line 99
    const/4 v2, 0x3

    .line 100
    aput-object p1, v3, v2

    .line 101
    const/4 p1, 0x4

    .line 103
    aput-object v0, v3, p1

    .line 104
    invoke-interface {p0, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 106
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$$ExternalSyntheticLambda0;->run()V

    .line 109
    return-void
    .line 112
.end method


# virtual methods
.method public releaseView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 2
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getWindowlessWM()Landroid/view/WindowlessWindowManager;

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 7
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 12
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mTransactionSupplier:Ljava/util/function/Supplier;

    .line 17
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 23
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    .line 25
    if-eqz v2, :cond_1

    .line 27
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 29
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    .line 32
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    :goto_0
    if-eqz p0, :cond_2

    .line 37
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 39
    :cond_2
    const/16 p0, 0x9

    .line 42
    invoke-static {p0}, Lmiui/app/MiuiFreeFormManager;->removeFreeFormTipView(I)V

    .line 44
    return-void
    .line 47
.end method

.method public releaseViewWithAnim()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->startAdditionalWindowAnim(Z)V

    .line 3
    return-void
    .line 6
.end method
