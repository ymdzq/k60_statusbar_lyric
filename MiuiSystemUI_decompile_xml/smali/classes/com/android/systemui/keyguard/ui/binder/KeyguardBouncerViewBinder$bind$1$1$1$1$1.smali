.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$1$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;


# instance fields
.field public final synthetic $securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$1$1$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onViewInflated(Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$1$1$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen()V

    .line 7
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 10
    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    .line 12
    iget-object v0, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 14
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    .line 16
    const/4 v2, 0x0

    .line 18
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v0

    .line 24
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 25
    const/4 v4, 0x1

    .line 27
    if-nez v0, :cond_0

    .line 28
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 30
    if-eq p1, v3, :cond_2

    .line 32
    new-instance p1, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda7;

    .line 34
    const/4 v0, 0x0

    .line 36
    invoke-direct {p1, v1, v2, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda7;-><init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 40
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->getBouncerPromptReason()I

    .line 44
    move-result p1

    .line 47
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 48
    if-eq v0, v3, :cond_2

    .line 50
    if-eqz p1, :cond_1

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "Strong auth required, reason: "

    .line 56
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 67
    const-string v1, "KeyguardSecurityView"

    .line 68
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda6;

    .line 73
    invoke-direct {v0, p1, v4}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda6;-><init>(II)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 78
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 81
    check-cast p1, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 83
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 85
    move-result-object v0

    .line 88
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityContainerController$6;

    .line 89
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$6;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 94
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 97
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onResume(I)V

    .line 100
    return-void
    .line 103
.end method
