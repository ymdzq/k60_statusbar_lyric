.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$9$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

.field public final synthetic $viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$9$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$9$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$9$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$9$1;->$r8$classId:I

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 15
    :pswitch_0
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/BouncerShowMessageModel;

    .line 16
    iget-object p2, p1, Lcom/android/systemui/keyguard/shared/model/BouncerShowMessageModel;->message:Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$9$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 18
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_0

    .line 19
    new-instance v2, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda7;

    iget-object p1, p1, Lcom/android/systemui/keyguard/shared/model/BouncerShowMessageModel;->colorStateList:Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    invoke-direct {v2, p2, p1, v3}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda7;-><init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$9$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->interactor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 21
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 22
    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 23
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_showMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    return-object v0

    .line 25
    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$9$1;->emit(Z)Ljava/lang/Object;

    return-object v0

    .line 26
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$9$1;->emit(Z)Ljava/lang/Object;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final emit(Z)Ljava/lang/Object;
    .locals 2

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$9$1;->$r8$classId:I

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$9$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$9$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->updateResources()V

    .line 2
    iget-object p0, v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->interactor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 3
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 4
    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 5
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_resourceUpdateRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    return-object p1

    .line 7
    :goto_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainerController$2;

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->finish(I)V

    .line 10
    iget-object p0, v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->interactor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 12
    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_keyguardAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
