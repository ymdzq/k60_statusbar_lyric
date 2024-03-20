.class public final Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$showRunnable$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$showRunnable$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$showRunnable$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$showRunnable$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$showRunnable$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 8
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->setPanelExpansion(F)V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$showRunnable$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 16
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 18
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerShow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 20
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$showRunnable$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 27
    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 29
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 31
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerShowingSoon:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 33
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 35
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 37
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$showRunnable$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 40
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerCallbackInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;

    .line 42
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;->expansionCallbacks:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object p0

    .line 49
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 59
    check-cast v0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;

    .line 60
    const/4 v1, 0x1

    .line 62
    invoke-interface {v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;->onVisibilityChanged(Z)V

    .line 63
    goto :goto_0

    .line 66
    :cond_0
    return-void

    .line 67
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$showRunnable$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 68
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerCallbackInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;

    .line 70
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;->resetCallbacks:Lcom/android/systemui/util/ListenerSet;

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object p0

    .line 77
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v0

    .line 81
    if-nez v0, :cond_1

    .line 82
    return-void

    .line 84
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object p0

    .line 88
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 89
    const/4 p0, 0x0

    .line 92
    throw p0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 94
.end method
