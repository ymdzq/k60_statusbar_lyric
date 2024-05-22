.class public final Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1;
.super Lcom/android/systemui/qs/SettingObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;Lcom/android/systemui/util/settings/GlobalSettings;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1;->this$0:Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;

    .line 4
    const-string/jumbo p1, "user_switcher_enabled"

    .line 6
    invoke-direct {p0, p3, p4, p1, p5}, Lcom/android/systemui/qs/SettingObserver;-><init>(Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final handleValueChanged(IZ)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 4
    new-instance p2, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1$handleValueChanged$1;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1;->this$0:Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;

    .line 8
    const/4 v0, 0x0

    .line 10
    invoke-direct {p2, p1, p0, v0}, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1$handleValueChanged$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 11
    const/4 p0, 0x3

    .line 14
    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 15
    :cond_0
    return-void
    .line 18
.end method
