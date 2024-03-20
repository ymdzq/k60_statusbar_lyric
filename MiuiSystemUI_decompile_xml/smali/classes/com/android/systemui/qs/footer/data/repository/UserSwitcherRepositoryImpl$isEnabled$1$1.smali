.class final Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $observer:Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$1;->$observer:Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1;

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
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$1;->$observer:Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    return-object p0
    .line 10
.end method
