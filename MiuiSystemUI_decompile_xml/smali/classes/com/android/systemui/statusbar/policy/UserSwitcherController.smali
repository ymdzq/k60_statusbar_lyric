.class public final Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final applicationContext:Landroid/content/Context;

.field public final callbackCompatMap:Ljava/util/Map;

.field public final guestUserInteractor$delegate:Lkotlin/Lazy;

.field public final guestUserInteractorLazy:Ldagger/Lazy;

.field public final keyguardInteractor$delegate:Lkotlin/Lazy;

.field public final keyguardInteractorLazy:Ldagger/Lazy;

.field public final userInteractor$delegate:Lkotlin/Lazy;

.field public final userInteractorLazy:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->applicationContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->userInteractorLazy:Ldagger/Lazy;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->guestUserInteractorLazy:Ldagger/Lazy;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->keyguardInteractorLazy:Ldagger/Lazy;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 13
    new-instance p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$userInteractor$2;

    .line 15
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$userInteractor$2;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 17
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 20
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->userInteractor$delegate:Lkotlin/Lazy;

    .line 24
    new-instance p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$guestUserInteractor$2;

    .line 26
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$guestUserInteractor$2;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 28
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 31
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->guestUserInteractor$delegate:Lkotlin/Lazy;

    .line 35
    new-instance p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$keyguardInteractor$2;

    .line 37
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$keyguardInteractor$2;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 39
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 42
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->keyguardInteractor$delegate:Lkotlin/Lazy;

    .line 46
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 48
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->callbackCompatMap:Ljava/util/Map;

    .line 53
    return-void
    .line 55
.end method


# virtual methods
.method public final getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->userInteractor$delegate:Lkotlin/Lazy;

    .line 2
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 8
    return-object p0
    .line 10
.end method
