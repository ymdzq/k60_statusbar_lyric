.class final Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $callback:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;

.field final synthetic this$0:Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$1;->this$0:Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$1;->$callback:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$1;->this$0:Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;->userSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$1;->$callback:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;

    .line 6
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->callbackCompatMap:Ljava/util/Map;

    .line 8
    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$UserCallback;

    .line 14
    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {v0, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->removeCallback(Lcom/android/systemui/user/domain/interactor/UserInteractor$UserCallback;)V

    .line 22
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    return-object p0
    .line 27
.end method
