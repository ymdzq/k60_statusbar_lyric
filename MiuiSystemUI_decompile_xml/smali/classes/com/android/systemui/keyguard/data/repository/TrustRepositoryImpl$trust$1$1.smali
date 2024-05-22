.class final Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $callback:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$callback$1;

.field final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$callback$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$1;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$1;->$callback:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$callback$1;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$1;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->logger:Lcom/android/keyguard/logging/TrustRepositoryLogger;

    .line 4
    iget-object v1, v0, Lcom/android/keyguard/logging/TrustRepositoryLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "TrustRepositoryLog"

    .line 8
    sget-object v3, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 10
    const-string v4, "TrustRepository#unregisterTrustListener"

    .line 12
    const/4 v5, 0x0

    .line 14
    const/16 v6, 0x8

    .line 15
    const/4 v7, 0x0

    .line 17
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$1;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    .line 21
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->trustManager:Landroid/app/trust/TrustManager;

    .line 23
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$1;->$callback:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$callback$1;

    .line 25
    invoke-virtual {v0, p0}, Landroid/app/trust/TrustManager;->unregisterTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V

    .line 27
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    return-object p0
    .line 32
.end method
