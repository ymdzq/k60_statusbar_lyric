.class public final Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final connectivityManager:Landroid/net/ConnectivityManager;

.field public final connectivityRepository:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepository;

.field public final logger:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiInputLogger;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final wifiTableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/net/ConnectivityManager;Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepository;Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiInputLogger;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;->connectivityRepository:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepository;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;->logger:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiInputLogger;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;->wifiTableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 17
    return-void
    .line 19
.end method
