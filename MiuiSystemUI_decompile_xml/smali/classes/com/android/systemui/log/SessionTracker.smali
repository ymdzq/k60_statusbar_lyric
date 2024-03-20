.class public final Lcom/android/systemui/log/SessionTracker;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field public final mAuthControllerCallback:Lcom/android/systemui/log/SessionTracker$3;

.field public final mInstanceIdGenerator:Lcom/android/internal/logging/InstanceIdSequence;

.field public mKeyguardSessionStarted:Z

.field public final mKeyguardStateCallback:Lcom/android/systemui/log/SessionTracker$2;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/systemui/log/SessionTracker$1;

.field public final mSessionToInstanceId:Ljava/util/Map;

.field public final mStatusBarManagerService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "SessionTracker"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/log/SessionTracker;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/biometrics/AuthController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/internal/logging/InstanceIdSequence;

    .line 5
    const/high16 v1, 0x100000

    .line 7
    invoke-direct {v0, v1}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    .line 9
    iput-object v0, p0, Lcom/android/systemui/log/SessionTracker;->mInstanceIdGenerator:Lcom/android/internal/logging/InstanceIdSequence;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/systemui/log/SessionTracker;->mSessionToInstanceId:Ljava/util/Map;

    .line 19
    new-instance v0, Lcom/android/systemui/log/SessionTracker$1;

    .line 21
    invoke-direct {v0, p0}, Lcom/android/systemui/log/SessionTracker$1;-><init>(Lcom/android/systemui/log/SessionTracker;)V

    .line 23
    iput-object v0, p0, Lcom/android/systemui/log/SessionTracker;->mKeyguardUpdateMonitorCallback:Lcom/android/systemui/log/SessionTracker$1;

    .line 26
    new-instance v0, Lcom/android/systemui/log/SessionTracker$2;

    .line 28
    invoke-direct {v0, p0}, Lcom/android/systemui/log/SessionTracker$2;-><init>(Lcom/android/systemui/log/SessionTracker;)V

    .line 30
    iput-object v0, p0, Lcom/android/systemui/log/SessionTracker;->mKeyguardStateCallback:Lcom/android/systemui/log/SessionTracker$2;

    .line 33
    new-instance v0, Lcom/android/systemui/log/SessionTracker$3;

    .line 35
    invoke-direct {v0, p0}, Lcom/android/systemui/log/SessionTracker$3;-><init>(Lcom/android/systemui/log/SessionTracker;)V

    .line 37
    iput-object v0, p0, Lcom/android/systemui/log/SessionTracker;->mAuthControllerCallback:Lcom/android/systemui/log/SessionTracker$3;

    .line 40
    iput-object p1, p0, Lcom/android/systemui/log/SessionTracker;->mStatusBarManagerService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 42
    iput-object p2, p0, Lcom/android/systemui/log/SessionTracker;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 44
    iput-object p3, p0, Lcom/android/systemui/log/SessionTracker;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 46
    iput-object p4, p0, Lcom/android/systemui/log/SessionTracker;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 48
    iput-object p5, p0, Lcom/android/systemui/log/SessionTracker;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 50
    return-void
    .line 52
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    const-string p0, "KEYGUARD"

    .line 5
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    if-ne p0, v0, :cond_1

    .line 9
    const-string p0, "BIOMETRIC_PROMPT"

    .line 11
    return-object p0

    .line 13
    :cond_1
    const-string/jumbo v0, "unknownType="

    .line 14
    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    return-object p0
    .line 21
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object p2, Landroid/app/StatusBarManager;->ALL_SESSIONS:Ljava/util/Set;

    .line 2
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p2

    .line 7
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    const-string v2, "  "

    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {v0}, Lcom/android/systemui/log/SessionTracker;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, " instanceId="

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v2, p0, Lcom/android/systemui/log/SessionTracker;->mSessionToInstanceId:Ljava/util/Map;

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v0

    .line 48
    check-cast v2, Ljava/util/HashMap;

    .line 49
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    goto :goto_0

    .line 65
    :cond_0
    return-void
    .line 66
.end method

.method public final endSession(ILcom/android/systemui/log/SessionTracker$SessionUiEvent;)V
    .locals 6

    .line 1
    const-string v0, "Session end for ["

    .line 2
    iget-object v1, p0, Lcom/android/systemui/log/SessionTracker;->mSessionToInstanceId:Ljava/util/Map;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v2

    .line 9
    move-object v3, v1

    .line 10
    check-cast v3, Ljava/util/HashMap;

    .line 11
    const/4 v4, 0x0

    .line 13
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    const-string v3, "SessionTracker"

    .line 18
    if-nez v2, :cond_0

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    const-string/jumbo p2, "session ["

    .line 24
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Lcom/android/systemui/log/SessionTracker;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string p1, "] was not started"

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 45
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 49
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v2

    .line 53
    move-object v5, v1

    .line 54
    check-cast v5, Ljava/util/HashMap;

    .line 55
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 60
    check-cast v2, Lcom/android/internal/logging/InstanceId;

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v5

    .line 66
    check-cast v1, Ljava/util/HashMap;

    .line 67
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :try_start_0
    sget-boolean v1, Lcom/android/systemui/log/SessionTracker;->DEBUG:Z

    .line 72
    if-eqz v1, :cond_1

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {p1}, Lcom/android/systemui/log/SessionTracker;->getString(I)Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v0, "] id="

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 99
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    if-eqz p2, :cond_2

    .line 103
    iget-object v0, p0, Lcom/android/systemui/log/SessionTracker;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 105
    invoke-interface {v0, p2, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    .line 107
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/log/SessionTracker;->mStatusBarManagerService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 110
    invoke-interface {p0, p1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onSessionEnded(ILcom/android/internal/logging/InstanceId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 115
    :catch_0
    move-exception p0

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    .line 117
    const-string v0, "Unable to send onSessionEnded for session=["

    .line 119
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-static {p1}, Lcom/android/systemui/log/SessionTracker;->getString(I)Ljava/lang/String;

    .line 124
    move-result-object p1

    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string p1, "]"

    .line 131
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p1

    .line 139
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    :goto_0
    return-void
    .line 143
.end method

.method public final getSessionId(I)Lcom/android/internal/logging/InstanceId;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/SessionTracker;->mSessionToInstanceId:Ljava/util/Map;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    check-cast p0, Ljava/util/HashMap;

    .line 9
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/internal/logging/InstanceId;

    .line 15
    return-object p0
    .line 17
.end method

.method public final start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/log/SessionTracker;->mAuthControllerCallback:Lcom/android/systemui/log/SessionTracker$3;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/log/SessionTracker;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 4
    invoke-virtual {v1, v0}, Lcom/android/systemui/biometrics/AuthController;->addCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/log/SessionTracker;->mKeyguardUpdateMonitorCallback:Lcom/android/systemui/log/SessionTracker$1;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/log/SessionTracker;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 11
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 13
    iget-object v0, p0, Lcom/android/systemui/log/SessionTracker;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 16
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 18
    iget-object v1, p0, Lcom/android/systemui/log/SessionTracker;->mKeyguardStateCallback:Lcom/android/systemui/log/SessionTracker$2;

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 22
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 25
    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/android/systemui/log/SessionTracker;->mKeyguardSessionStarted:Z

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/SessionTracker;->startSession(I)V

    .line 32
    :cond_0
    return-void
    .line 35
.end method

.method public final startSession(I)V
    .locals 5

    .line 1
    const-string v0, "Session start for ["

    .line 2
    iget-object v1, p0, Lcom/android/systemui/log/SessionTracker;->mSessionToInstanceId:Ljava/util/Map;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v4, v1

    .line 11
    check-cast v4, Ljava/util/HashMap;

    .line 12
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    const-string v3, "SessionTracker"

    .line 18
    if-eqz v2, :cond_0

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    const-string/jumbo v0, "session ["

    .line 24
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Lcom/android/systemui/log/SessionTracker;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string p1, "] was already started"

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 45
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/log/SessionTracker;->mInstanceIdGenerator:Lcom/android/internal/logging/InstanceIdSequence;

    .line 50
    invoke-virtual {v2}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 52
    move-result-object v2

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v4

    .line 59
    check-cast v1, Ljava/util/HashMap;

    .line 60
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :try_start_0
    sget-boolean v1, Lcom/android/systemui/log/SessionTracker;->DEBUG:Z

    .line 65
    if-eqz v1, :cond_1

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Lcom/android/systemui/log/SessionTracker;->getString(I)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v0, "] id="

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 92
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/log/SessionTracker;->mStatusBarManagerService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 96
    invoke-interface {p0, p1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onSessionStarted(ILcom/android/internal/logging/InstanceId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 101
    :catch_0
    move-exception p0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "Unable to send onSessionStarted for session=["

    .line 105
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-static {p1}, Lcom/android/systemui/log/SessionTracker;->getString(I)Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string p1, "]"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 125
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    :goto_0
    return-void
    .line 129
.end method
