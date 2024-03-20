.class public final Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# static fields
.field public static final PROJECT:[Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;


# instance fields
.field public final bgLooper:Landroid/os/Looper;

.field public final callbacks:Ljava/util/ArrayList;

.field public final contentObserver$delegate:Lkotlin/Lazy;

.field public final context:Landroid/content/Context;

.field public dataUsageInfo:Landroid/util/ArrayMap;

.field public final handler:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$handler$1;

.field public listening:Z

.field public final networkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final uiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "content://com.miui.networkassistant.provider/bill_traffic_inquire"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->URI:Landroid/net/Uri;

    .line 8
    const-string/jumbo v1, "sim_slot"

    .line 10
    const-string/jumbo v2, "traffic_type"

    .line 13
    const-string/jumbo v3, "traffic_value"

    .line 16
    const-string/jumbo v4, "traffic_unit"

    .line 19
    const-string v5, "bill_type"

    .line 22
    const-string v6, "bill_value"

    .line 24
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    sput-object v0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->PROJECT:[Ljava/lang/String;

    .line 30
    return-void
    .line 32
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/connectivity/NetworkController;Landroid/os/Looper;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->networkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->bgLooper:Landroid/os/Looper;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->uiExecutor:Ljava/util/concurrent/Executor;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->callbacks:Ljava/util/ArrayList;

    .line 18
    new-instance p1, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$contentObserver$2;

    .line 20
    invoke-direct {p1, p0}, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$contentObserver$2;-><init>(Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;)V

    .line 22
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->contentObserver$delegate:Lkotlin/Lazy;

    .line 29
    new-instance p1, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$handler$1;

    .line 31
    invoke-direct {p1, p0, p3}, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$handler$1;-><init>(Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;Landroid/os/Looper;)V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->handler:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$handler$1;

    .line 36
    return-void
    .line 38
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda1;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->callbacks:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->dataUsageInfo:Landroid/util/ArrayMap;

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda1;->onDataUsageChanged(Ljava/util/Map;)V

    .line 11
    iget-boolean p1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->listening:Z

    .line 14
    if-eqz p1, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->handler:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$handler$1;

    .line 18
    const/16 p1, 0x91d

    .line 20
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 22
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 25
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 29
    :cond_0
    return-void
    .line 32
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->callbacks:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final setListening(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->listening:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->listening:Z

    .line 7
    const-string/jumbo v0, "set listening: "

    .line 9
    const-string v1, "DataUsageInfoController"

    .line 12
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->contentObserver$delegate:Lkotlin/Lazy;

    .line 17
    iget-object v2, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->networkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 19
    iget-object v3, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->context:Landroid/content/Context;

    .line 21
    if-eqz p1, :cond_1

    .line 23
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    move-result-object p1

    .line 28
    sget-object v3, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->URI:Landroid/net/Uri;

    .line 29
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$contentObserver$2$1;

    .line 35
    const/4 v4, 0x0

    .line 37
    invoke-virtual {p1, v3, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    goto :goto_0

    .line 41
    :catchall_0
    const-string/jumbo p1, "register observer for network assistant failed."

    .line 42
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_0
    check-cast v2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 48
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 50
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->handler:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$handler$1;

    .line 53
    const/16 p1, 0x91d

    .line 55
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 57
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 60
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 64
    goto :goto_2

    .line 67
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 68
    move-result-object p1

    .line 71
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 75
    check-cast v0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$contentObserver$2$1;

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    goto :goto_1

    .line 81
    :catchall_1
    const-string/jumbo p1, "unregister observer for network assistant failed."

    .line 82
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_1
    check-cast v2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 88
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 90
    :goto_2
    return-void
    .line 93
.end method
