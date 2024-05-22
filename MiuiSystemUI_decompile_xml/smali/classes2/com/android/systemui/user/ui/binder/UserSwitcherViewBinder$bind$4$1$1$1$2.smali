.class public final Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1$1$1$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $onFinish:Lkotlin/jvm/functions/Function0;

.field public final synthetic $popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1$1$1$2;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1$1$1$2;->$onFinish:Lkotlin/jvm/functions/Function0;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1$1$1$2;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    iget-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1$1$1$2;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 9
    check-cast p1, Lcom/android/systemui/user/UserSwitcherPopupMenu;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1$1$1$2;->$onFinish:Lkotlin/jvm/functions/Function0;

    .line 18
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1$1$1$2;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 23
    iget-object p1, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->hasCancelButtonBeenClicked:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 25
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 29
    iget-object p0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->isFinishRequiredDueToExecutedAction:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 32
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 34
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    return-object p0
    .line 39
.end method
