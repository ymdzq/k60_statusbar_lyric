.class final Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$toViewModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $model:Lcom/android/systemui/user/shared/model/UserActionModel;

.field final synthetic this$0:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lcom/android/systemui/user/shared/model/UserActionModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$toViewModel$1;->this$0:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$toViewModel$1;->$model:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$toViewModel$1;->this$0:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->userInteractor:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$toViewModel$1;->$model:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->executeAction(Lcom/android/systemui/user/shared/model/UserActionModel;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    .line 9
    iget-object v0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$toViewModel$1;->$model:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 12
    sget-object v1, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 14
    if-eq v0, v1, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    iget-object p0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$toViewModel$1;->this$0:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 23
    iget-object p0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->isFinishRequiredDueToExecutedAction:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 25
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 29
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 32
    return-object p0
    .line 34
.end method
