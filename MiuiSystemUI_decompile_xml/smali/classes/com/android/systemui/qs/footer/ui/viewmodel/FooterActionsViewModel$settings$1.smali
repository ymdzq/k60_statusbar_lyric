.class final synthetic Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$settings$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v1, 0x1

    .line 2
    const-class v3, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;

    .line 3
    const-string v4, "onSettingsButtonClicked"

    .line 5
    const-string v5, "onSettingsButtonClicked(Lcom/android/systemui/animation/Expandable;)V"

    .line 7
    const/4 v6, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p1

    .line 11
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/animation/Expandable;

    .line 2
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 4
    check-cast p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;

    .line 6
    iget-object v0, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 8
    const/4 v1, 0x1

    .line 10
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->footerActionsInteractor:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;

    .line 18
    iget-object v0, p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 20
    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 22
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    .line 24
    move-result v0

    .line 27
    iget-object v2, p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 28
    if-nez v0, :cond_1

    .line 30
    sget-object p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$showSettings$1;->INSTANCE:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$showSettings$1;

    .line 32
    invoke-interface {v2, p0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 34
    goto :goto_0

    .line 37
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 38
    const/16 v0, 0x196

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 42
    new-instance p0, Landroid/content/Intent;

    .line 45
    const-string v0, "android.settings.SETTINGS"

    .line 47
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    const/16 v0, 0x21

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v0

    .line 57
    check-cast p1, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    .line 58
    invoke-virtual {p1, v0}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;->activityLaunchController(Ljava/lang/Integer;)Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    .line 60
    move-result-object p1

    .line 63
    invoke-interface {v2, p0, v1, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    .line 64
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 67
    return-object p0
    .line 69
.end method
