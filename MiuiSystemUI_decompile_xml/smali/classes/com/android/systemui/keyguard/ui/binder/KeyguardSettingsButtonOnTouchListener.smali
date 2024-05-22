.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardSettingsButtonOnTouchListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final downPositionDisplayCoords:Landroid/graphics/PointF;

.field public final viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSettingsButtonOnTouchListener;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;

    .line 5
    new-instance p1, Landroid/graphics/PointF;

    .line 7
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSettingsButtonOnTouchListener;->downPositionDisplayCoords:Landroid/graphics/PointF;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_3

    .line 7
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    const/4 p2, 0x3

    .line 12
    if-eq v0, p2, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 16
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSettingsButtonOnTouchListener;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;

    .line 19
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;->interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;

    .line 21
    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->onMenuTouchGestureEnded(Z)V

    .line 23
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 27
    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSettingsButtonOnTouchListener;->downPositionDisplayCoords:Landroid/graphics/PointF;

    .line 30
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 32
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 36
    move-result v4

    .line 39
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 40
    move-result p2

    .line 43
    invoke-static {v4, p2, v3, v0}, Landroid/util/MathUtils;->dist(FFFF)F

    .line 44
    move-result p2

    .line 47
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    .line 48
    move-result v0

    .line 51
    int-to-float v0, v0

    .line 52
    cmpg-float p2, p2, v0

    .line 53
    if-gez p2, :cond_2

    .line 55
    move v2, v1

    .line 57
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSettingsButtonOnTouchListener;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;

    .line 58
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;->interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;

    .line 60
    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->onMenuTouchGestureEnded(Z)V

    .line 62
    if-eqz v2, :cond_5

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 67
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 71
    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSettingsButtonOnTouchListener;->downPositionDisplayCoords:Landroid/graphics/PointF;

    .line 74
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 76
    move-result v0

    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 80
    move-result p2

    .line 83
    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 84
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSettingsButtonOnTouchListener;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;

    .line 87
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;->interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;

    .line 89
    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->delayedHideMenuJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 91
    const/4 p2, 0x0

    .line 93
    if-eqz p1, :cond_4

    .line 94
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 96
    :cond_4
    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->delayedHideMenuJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 99
    :cond_5
    :goto_0
    return v1
    .line 101
.end method
