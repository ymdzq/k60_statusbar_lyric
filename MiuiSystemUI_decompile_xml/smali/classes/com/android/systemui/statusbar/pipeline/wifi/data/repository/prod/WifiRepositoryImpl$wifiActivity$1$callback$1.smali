.class public final Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$wifiActivity$1$callback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/net/wifi/WifiManager$TrafficStateCallback;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $logger:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiInputLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiInputLogger;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$wifiActivity$1$callback$1;->$logger:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiInputLogger;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$wifiActivity$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$wifiActivity$1$callback$1;->$logger:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiInputLogger;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;->ACTIVITY_DEFAULT:Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;

    .line 4
    if-eqz p1, :cond_3

    .line 6
    const/4 v1, 0x1

    .line 8
    if-eq p1, v1, :cond_2

    .line 9
    const/4 v1, 0x2

    .line 11
    if-eq p1, v1, :cond_1

    .line 12
    const/4 v1, 0x3

    .line 14
    if-eq p1, v1, :cond_0

    .line 15
    const-string v1, "INVALID"

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    const-string v1, "INOUT"

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    const-string v1, "OUT"

    .line 23
    goto :goto_0

    .line 25
    :cond_2
    const-string v1, "IN"

    .line 26
    goto :goto_0

    .line 28
    :cond_3
    const-string v1, "NONE"

    .line 29
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiInputLogger;->logActivity(Ljava/lang/String;)V

    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$wifiActivity$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 34
    invoke-static {p1}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModelKt;->toWifiDataActivityModel(I)Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;

    .line 36
    move-result-object p1

    .line 39
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 40
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
    .line 45
.end method
