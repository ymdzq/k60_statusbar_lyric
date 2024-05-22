.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public animation:Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;

.field public final callback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$5;

.field public cancelled:Z

.field public final context:Landroid/content/Context;

.field public final controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field public final invertMatrix:Landroid/graphics/Matrix;

.field public final launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

.field public final launchContainer:Landroid/view/ViewGroup;

.field public final listener:Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;

.field public final matrix:Landroid/graphics/Matrix;

.field public final onTimeout:Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$onTimeout$1;

.field public timedOut:Z

.field public final transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field public final transactionApplierView:Landroid/view/View;

.field public final windowCrop:Landroid/graphics/Rect;

.field public final windowCropF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$5;Lcom/android/systemui/animation/ActivityLaunchAnimator$lifecycleListener$1;Lcom/android/systemui/animation/LaunchAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->callback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$5;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->listener:Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 11
    invoke-interface {p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    .line 13
    move-result-object p2

    .line 16
    iput-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->launchContainer:Landroid/view/ViewGroup;

    .line 17
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->context:Landroid/content/Context;

    .line 23
    invoke-interface {p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getOpeningWindowSyncView()Landroid/view/View;

    .line 25
    move-result-object p2

    .line 28
    if-nez p2, :cond_0

    .line 29
    invoke-interface {p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    .line 31
    move-result-object p2

    .line 34
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->transactionApplierView:Landroid/view/View;

    .line 35
    new-instance p1, Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 37
    invoke-direct {p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    .line 39
    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 42
    new-instance p1, Landroid/graphics/Matrix;

    .line 44
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->matrix:Landroid/graphics/Matrix;

    .line 49
    new-instance p1, Landroid/graphics/Matrix;

    .line 51
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->invertMatrix:Landroid/graphics/Matrix;

    .line 56
    new-instance p1, Landroid/graphics/Rect;

    .line 58
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->windowCrop:Landroid/graphics/Rect;

    .line 63
    new-instance p1, Landroid/graphics/RectF;

    .line 65
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->windowCropF:Landroid/graphics/RectF;

    .line 70
    new-instance p1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$onTimeout$1;

    .line 72
    const/4 p2, 0x0

    .line 74
    invoke-direct {p1, p2, p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$onTimeout$1;-><init>(ILjava/lang/Object;)V

    .line 75
    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->onTimeout:Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$onTimeout$1;

    .line 78
    return-void
    .line 80
.end method
