.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$2$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$2$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$2$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final emit(F)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$2$1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$2$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 19
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 20
    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-object v0

    .line 21
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x3f666666    # 0.9f

    cmpl-float v1, p1, v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    float-to-double v4, p1

    const-wide v6, 0x3fe3333333333333L    # 0.6

    cmpg-double v1, v4, v6

    if-gez v1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    const v1, 0x3f19999a    # 0.6f

    sub-float/2addr p1, v1

    const v1, 0x3e99999a    # 0.3f

    div-float/2addr p1, v1

    :goto_0
    sub-float v1, v3, p1

    .line 22
    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 23
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v3, v2

    check-cast v3, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 24
    check-cast v2, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mTranslationY:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-object v0

    .line 25
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 26
    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 27
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 28
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;->updatePositionByTouchX(F)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$2$1;->$r8$classId:I

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$2$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$2$1;->emit(Z)Ljava/lang/Object;

    return-object p2

    .line 2
    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$2$1;->emit(F)Ljava/lang/Object;

    return-object p2

    .line 3
    :pswitch_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$2$1;->emit(F)Ljava/lang/Object;

    return-object p2

    .line 4
    :pswitch_3
    check-cast p1, Ljava/lang/Runnable;

    .line 5
    iget-object p0, v1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 6
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_0

    .line 7
    new-instance p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda8;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    :cond_0
    return-object p2

    .line 8
    :pswitch_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$2$1;->emit(Z)Ljava/lang/Object;

    return-object p2

    .line 9
    :pswitch_5
    check-cast p1, Lkotlin/Unit;

    .line 10
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onStartingToHide()V

    return-object p2

    .line 11
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$2$1;->emit(F)Ljava/lang/Object;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final emit(Z)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$2$1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$2$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 12
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSideFpsController:Ljava/util/Optional;

    .line 13
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    sget-object v1, Lcom/android/systemui/biometrics/SideFpsUiRequestSource;->PRIMARY_BOUNCER:Lcom/android/systemui/biometrics/SideFpsUiRequestSource;

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/SideFpsController;

    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/biometrics/SideFpsController;->show(Lcom/android/systemui/biometrics/SideFpsUiRequestSource;I)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/SideFpsController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/biometrics/SideFpsController;->hide(Lcom/android/systemui/biometrics/SideFpsUiRequestSource;)V

    :goto_0
    return-object v0

    .line 17
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 18
    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setInteractable(Z)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
