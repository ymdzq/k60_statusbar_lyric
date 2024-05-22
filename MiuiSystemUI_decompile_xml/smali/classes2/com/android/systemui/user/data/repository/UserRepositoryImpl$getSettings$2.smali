.class final Lcom/android/systemui/user/data/repository/UserRepositoryImpl$getSettings$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.user.data.repository.UserRepositoryImpl$getSettings$2"
    f = "UserRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$getSettings$2;->this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 2
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$getSettings$2;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$getSettings$2;->this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 4
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$getSettings$2;-><init>(Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 6
    return-object p1
    .line 9
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$getSettings$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$getSettings$2;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$getSettings$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$getSettings$2;->label:I

    .line 2
    if-nez v0, :cond_3

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$getSettings$2;->this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 9
    iget-object v0, p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 11
    iget-object p1, p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->appContext:Landroid/content/Context;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object p1

    .line 18
    const v1, 0x1110168    # @android:bool/config_fillMainBuiltInDisplayCutout

    .line 19
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 22
    move-result p1

    .line 25
    const/4 v1, 0x0

    .line 26
    const-string v2, "lockscreenSimpleUserSwitcher"

    .line 27
    invoke-interface {v0, p1, v1, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 29
    move-result p1

    .line 32
    const/4 v0, 0x1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    move p1, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move p1, v1

    .line 38
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$getSettings$2;->this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 39
    iget-object v2, v2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 41
    const-string v3, "add_users_when_locked"

    .line 43
    invoke-interface {v2, v1, v1, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 45
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    move v2, v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v2, v1

    .line 53
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$getSettings$2;->this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 54
    iget-object v3, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 56
    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->appContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object p0

    .line 63
    const v4, 0x11101e5    # @android:bool/config_skipSensorAvailable

    .line 64
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 67
    move-result p0

    .line 70
    const-string/jumbo v4, "user_switcher_enabled"

    .line 71
    invoke-interface {v3, p0, v1, v4}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 74
    move-result p0

    .line 77
    if-eqz p0, :cond_2

    .line 78
    move v1, v0

    .line 80
    :cond_2
    new-instance p0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    .line 81
    invoke-direct {p0, p1, v2, v1}, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;-><init>(ZZZ)V

    .line 83
    return-object p0

    .line 86
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 87
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 89
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p0
    .line 94
.end method
