.class public final Lcom/android/keyguard/logging/TrustRepositoryLogger;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final logBuffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/logging/TrustRepositoryLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final activeUnlockModelEmitted(Lcom/android/systemui/keyguard/shared/model/ActiveUnlockModel;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/TrustRepositoryLogger$activeUnlockModelEmitted$2;->INSTANCE:Lcom/android/keyguard/logging/TrustRepositoryLogger$activeUnlockModelEmitted$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/TrustRepositoryLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "TrustRepositoryLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    iget v1, p1, Lcom/android/systemui/keyguard/shared/model/ActiveUnlockModel;->userId:I

    .line 15
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 17
    iget-boolean p1, p1, Lcom/android/systemui/keyguard/shared/model/ActiveUnlockModel;->isRunning:Z

    .line 20
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 25
    return-void
    .line 28
.end method

.method public final isCurrentUserActiveUnlockRunning(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/TrustRepositoryLogger$isCurrentUserActiveUnlockRunning$2;->INSTANCE:Lcom/android/keyguard/logging/TrustRepositoryLogger$isCurrentUserActiveUnlockRunning$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/TrustRepositoryLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "TrustRepositoryLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final isCurrentUserTrustManaged(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/TrustRepositoryLogger$isCurrentUserTrustManaged$2;->INSTANCE:Lcom/android/keyguard/logging/TrustRepositoryLogger$isCurrentUserTrustManaged$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/TrustRepositoryLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "TrustRepositoryLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final onTrustChanged(ZZIILjava/util/List;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/TrustRepositoryLogger$onTrustChanged$2;->INSTANCE:Lcom/android/keyguard/logging/TrustRepositoryLogger$onTrustChanged$2;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/logging/TrustRepositoryLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "TrustRepositoryLog"

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 18
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 21
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 24
    if-eqz p5, :cond_0

    .line 27
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    const/16 v9, 0x3f

    .line 33
    move-object v4, p5

    .line 35
    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 39
    :cond_0
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 43
    return-void
    .line 46
.end method

.method public final onTrustManagedChanged(ZI)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/TrustRepositoryLogger$onTrustManagedChanged$2;->INSTANCE:Lcom/android/keyguard/logging/TrustRepositoryLogger$onTrustManagedChanged$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/TrustRepositoryLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "TrustRepositoryLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final trustManagedModelEmitted(Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/TrustRepositoryLogger$trustManagedModelEmitted$2;->INSTANCE:Lcom/android/keyguard/logging/TrustRepositoryLogger$trustManagedModelEmitted$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/TrustRepositoryLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "TrustRepositoryLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    iget-boolean v1, p1, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;->isTrustManaged:Z

    .line 15
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 17
    iget p1, p1, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;->userId:I

    .line 20
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 25
    return-void
    .line 28
.end method

.method public final trustModelEmitted(Lcom/android/systemui/keyguard/shared/model/TrustModel;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/TrustRepositoryLogger$trustModelEmitted$2;->INSTANCE:Lcom/android/keyguard/logging/TrustRepositoryLogger$trustModelEmitted$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/TrustRepositoryLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "TrustRepositoryLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    iget v1, p1, Lcom/android/systemui/keyguard/shared/model/TrustModel;->userId:I

    .line 15
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 17
    iget-boolean p1, p1, Lcom/android/systemui/keyguard/shared/model/TrustModel;->isTrusted:Z

    .line 20
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 25
    return-void
    .line 28
.end method
