.class public final Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$observeDeviceMonitoringDialogRequests$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $quickSettingsContext:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$observeDeviceMonitoringDialogRequests$2;->this$0:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$observeDeviceMonitoringDialogRequests$2;->$quickSettingsContext:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Unit;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$observeDeviceMonitoringDialogRequests$2;->this$0:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;

    .line 4
    iget-object p1, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->footerActionsInteractor:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$observeDeviceMonitoringDialogRequests$2;->$quickSettingsContext:Landroid/content/Context;

    .line 8
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;->showDeviceMonitoringDialog(Landroid/content/Context;Lcom/android/systemui/animation/Expandable;)V

    .line 11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    return-object p0
    .line 16
.end method
