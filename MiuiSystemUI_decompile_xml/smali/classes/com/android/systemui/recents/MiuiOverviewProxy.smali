.class public final Lcom/android/systemui/recents/MiuiOverviewProxy;
.super Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final focusedNotifPromptController$delegate:Lkotlin/Lazy;

.field public final proxyService$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/recents/MiuiOverviewProxy$proxyService$2;

    .line 5
    invoke-direct {v0, p1}, Lcom/android/systemui/recents/MiuiOverviewProxy$proxyService$2;-><init>(Ldagger/Lazy;)V

    .line 7
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/systemui/recents/MiuiOverviewProxy;->proxyService$delegate:Lkotlin/Lazy;

    .line 14
    new-instance p1, Lcom/android/systemui/recents/MiuiOverviewProxy$focusedNotifPromptController$2;

    .line 16
    invoke-direct {p1, p2}, Lcom/android/systemui/recents/MiuiOverviewProxy$focusedNotifPromptController$2;-><init>(Ldagger/Lazy;)V

    .line 18
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/systemui/recents/MiuiOverviewProxy;->focusedNotifPromptController$delegate:Lkotlin/Lazy;

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public final verifyCaller(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 6
    move-result v0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/recents/MiuiOverviewProxy;->proxyService$delegate:Lkotlin/Lazy;

    .line 10
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService;

    .line 16
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    .line 18
    if-eq v0, p0, :cond_0

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "Launcher called sysui with invalid user: "

    .line 24
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v0, ", reason: "

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 43
    const-string p1, "OverviewProxyService"

    .line 44
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 p0, 0x0

    .line 49
    return p0

    .line 50
    :cond_0
    const/4 p0, 0x1

    .line 51
    return p0
    .line 52
.end method
