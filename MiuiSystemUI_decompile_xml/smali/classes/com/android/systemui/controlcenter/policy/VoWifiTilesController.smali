.class public final Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# instance fields
.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final callbacks:Ljava/util/ArrayList;

.field public final context:Landroid/content/Context;

.field public final hostExt:Ldagger/Lazy;

.field public final miuiOperatorCustomizedPolicy:Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

.field public final receiver:Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$receiver$1;

.field public final uiExecutor:Ljava/util/concurrent/Executor;

.field public final voWifiAvailable:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ldagger/Lazy;Lcom/android/systemui/MiuiOperatorCustomizedPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->uiExecutor:Ljava/util/concurrent/Executor;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->hostExt:Ldagger/Lazy;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->miuiOperatorCustomizedPolicy:Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->callbacks:Ljava/util/ArrayList;

    .line 22
    const/4 p1, 0x2

    .line 24
    new-array p1, p1, [Z

    .line 25
    fill-array-data p1, :array_0

    .line 27
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->voWifiAvailable:[Z

    .line 30
    new-instance p1, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$receiver$1;

    .line 32
    invoke-direct {p1, p0}, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$receiver$1;-><init>(Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;)V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->receiver:Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$receiver$1;

    .line 37
    return-void

    .line 39
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
    .line 40
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$Callback;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->callbacks:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final isVoWifiAvailable(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->context:Landroid/content/Context;

    .line 2
    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->miuiOperatorCustomizedPolicy:Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->showVowifiQS(I)Z

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
    .line 25
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$Callback;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->callbacks:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method
