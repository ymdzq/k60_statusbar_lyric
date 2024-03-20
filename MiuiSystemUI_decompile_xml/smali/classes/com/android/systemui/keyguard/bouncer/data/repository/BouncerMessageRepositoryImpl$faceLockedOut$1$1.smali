.class final Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$faceLockedOut$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $callback:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$faceLockedOut$1$callback$1;

.field final synthetic $updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$faceLockedOut$1$callback$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$faceLockedOut$1$1;->$updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$faceLockedOut$1$1;->$callback:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$faceLockedOut$1$callback$1;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$faceLockedOut$1$1;->$updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$faceLockedOut$1$1;->$callback:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$faceLockedOut$1$callback$1;

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    return-object p0
    .line 11
.end method
