.class final Lcom/android/systemui/statusbar/policy/UserSwitcherController$guestUserInteractor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$guestUserInteractor$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$guestUserInteractor$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->guestUserInteractorLazy:Ldagger/Lazy;

    .line 4
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 10
    return-object p0
    .line 12
.end method
