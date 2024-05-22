.class final Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;
.super Landroid/app/Presentation;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mClock:Landroid/view/View;

.field public final mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

.field public mMarginLeft:I

.field public mMarginTop:I

.field public final mMoveTextRunnable:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;

.field public mUsableHeight:I

.field public mUsableWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;)V
    .locals 2

    .line 1
    const v0, 0x7f14056b    # @style/Theme.SystemUI.KeyguardPresentation

    .line 2
    const/16 v1, 0x7d9

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;II)V

    .line 7
    new-instance p1, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;

    .line 10
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;-><init>(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)V

    .line 12
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;

    .line 15
    iput-object p3, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    .line 17
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Presentation;->setCancelable(Z)V

    .line 20
    return-void
    .line 23
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->updateBounds()V

    .line 5
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    move-result-object p1

    .line 15
    const v0, 0x7f0d010d    # @layout/keyguard_presentation 'res/layout/keyguard_presentation.xml'

    .line 16
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Presentation;->setContentView(Landroid/view/View;)V

    .line 24
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    .line 27
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 31
    move-result-object p1

    .line 34
    const/16 v0, 0x700

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    .line 40
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 44
    move-result-object p1

    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 49
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    .line 52
    move-result-object p1

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    .line 59
    move-result-object p1

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 63
    const p1, 0x7f0a01fb    # @id/clock

    .line 66
    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    .line 73
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 77
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    .line 80
    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object p0

    .line 85
    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    .line 86
    invoke-interface {v0, p0}, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;->build(Lcom/android/keyguard/KeyguardStatusView;)Lcom/android/keyguard/dagger/KeyguardStatusViewComponent;

    .line 88
    move-result-object p0

    .line 91
    invoke-interface {p0}, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent;->getKeyguardClockSwitchController()Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 92
    move-result-object p0

    .line 95
    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mOnlyClock:Z

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 99
    return-void
    .line 102
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;

    .line 4
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final onDisplayChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->updateBounds()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 13
    return-void
    .line 16
.end method

.method public final updateBounds()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    .line 6
    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 18
    move-result v1

    .line 21
    mul-int/lit8 v1, v1, 0x50

    .line 22
    div-int/lit8 v1, v1, 0x64

    .line 24
    iput v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableWidth:I

    .line 26
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 28
    move-result v1

    .line 31
    mul-int/lit8 v1, v1, 0x50

    .line 32
    div-int/lit8 v1, v1, 0x64

    .line 34
    iput v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableHeight:I

    .line 36
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 38
    move-result v1

    .line 41
    mul-int/lit8 v1, v1, 0x14

    .line 42
    div-int/lit16 v1, v1, 0xc8

    .line 44
    iput v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginLeft:I

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 48
    move-result v0

    .line 51
    mul-int/lit8 v0, v0, 0x14

    .line 52
    div-int/lit16 v0, v0, 0xc8

    .line 54
    iput v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginTop:I

    .line 56
    return-void
    .line 58
.end method
