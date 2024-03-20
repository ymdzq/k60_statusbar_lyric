.class public final Lcom/android/keyguard/KeyguardSecurityViewFlipperController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAsyncLayoutInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

.field public final mChildren:Ljava/util/List;

.field public final mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityViewFlipper;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Lcom/android/keyguard/KeyguardInputViewController$Factory;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    .line 10
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    .line 12
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mAsyncLayoutInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public final asynchronouslyInflateView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_4

    .line 7
    const/4 v1, 0x3

    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    const/4 v1, 0x4

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    const/4 v1, 0x5

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    const/4 v1, 0x6

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const v0, 0x7f0d0112    # @layout/keyguard_sim_puk_view 'res/layout/keyguard_sim_puk_view.xml'

    .line 23
    goto :goto_0

    .line 26
    :cond_1
    const v0, 0x7f0d0111    # @layout/keyguard_sim_pin_view 'res/layout/keyguard_sim_pin_view.xml'

    .line 27
    goto :goto_0

    .line 30
    :cond_2
    const v0, 0x7f0d010c    # @layout/keyguard_pin_view 'res/layout/keyguard_pin_view.xml'

    .line 31
    goto :goto_0

    .line 34
    :cond_3
    const v0, 0x7f0d0108    # @layout/keyguard_password_view 'res/layout/keyguard_password_view.xml'

    .line 35
    goto :goto_0

    .line 38
    :cond_4
    const v0, 0x7f0d0109    # @layout/keyguard_pattern_view 'res/layout/keyguard_pattern_view.xml'

    .line 39
    :goto_0
    if-eqz v0, :cond_5

    .line 42
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 44
    check-cast v1, Landroid/view/ViewGroup;

    .line 46
    new-instance v2, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$$ExternalSyntheticLambda0;

    .line 48
    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 50
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mAsyncLayoutInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 53
    invoke-virtual {p0, v0, v1, v2}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    .line 55
    :cond_5
    return-void
    .line 58
.end method

.method public getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/keyguard/KeyguardInputViewController;

    .line 20
    iget-object v2, v1, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 22
    if-ne v2, p1, :cond_0

    .line 24
    invoke-interface {p3, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;->onViewInflated(Lcom/android/keyguard/KeyguardInputViewController;)V

    .line 26
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->asynchronouslyInflateView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 30
    return-void
    .line 33
.end method

.method public final onViewAttached()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onViewDetached()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
