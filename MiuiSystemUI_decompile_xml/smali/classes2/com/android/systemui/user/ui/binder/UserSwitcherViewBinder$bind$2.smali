.class public final Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $viewModel:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$2;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$2;->$viewModel:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$2;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$2;->$viewModel:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->hasCancelButtonBeenClicked:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 12
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 16
    return-void

    .line 19
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$2;->$viewModel:Ljava/lang/Object;

    .line 20
    check-cast p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->_isMenuVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 24
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 28
    return-void

    .line 31
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$2;->$viewModel:Ljava/lang/Object;

    .line 32
    check-cast p0, Lcom/android/systemui/user/ui/viewmodel/UserActionViewModel;

    .line 34
    iget-object p0, p0, Lcom/android/systemui/user/ui/viewmodel/UserActionViewModel;->onClicked:Lkotlin/jvm/functions/Function0;

    .line 36
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 38
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 42
.end method
