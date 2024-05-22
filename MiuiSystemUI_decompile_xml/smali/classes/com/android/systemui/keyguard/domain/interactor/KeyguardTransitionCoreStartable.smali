.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionCoreStartable;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final auditLogger:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;

.field public final interactors:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionCoreStartable;->interactors:Ljava/util/Set;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionCoreStartable;->auditLogger:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final start()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionCoreStartable;->interactors:Ljava/util/Set;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_8

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;

    .line 18
    instance-of v2, v1, Lcom/android/systemui/keyguard/domain/interactor/FromPrimaryBouncerTransitionInteractor;

    .line 20
    const-string v3, "Started "

    .line 22
    const-string v4, "KeyguardTransitionCoreStartable"

    .line 24
    if-eqz v2, :cond_0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 39
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    goto/16 :goto_1

    .line 43
    :cond_0
    instance-of v2, v1, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;

    .line 45
    if-eqz v2, :cond_1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 60
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    goto/16 :goto_1

    .line 64
    :cond_1
    instance-of v2, v1, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;

    .line 66
    if-eqz v2, :cond_2

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 81
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    goto :goto_1

    .line 85
    :cond_2
    instance-of v2, v1, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;

    .line 86
    if-eqz v2, :cond_3

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v2

    .line 101
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    goto :goto_1

    .line 105
    :cond_3
    instance-of v2, v1, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;

    .line 106
    if-eqz v2, :cond_4

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v2

    .line 121
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    goto :goto_1

    .line 125
    :cond_4
    instance-of v2, v1, Lcom/android/systemui/keyguard/domain/interactor/FromOccludedTransitionInteractor;

    .line 126
    if-eqz v2, :cond_5

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    .line 130
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v2

    .line 141
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    goto :goto_1

    .line 145
    :cond_5
    instance-of v2, v1, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;

    .line 146
    if-eqz v2, :cond_6

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    .line 150
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object v2

    .line 161
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    goto :goto_1

    .line 165
    :cond_6
    instance-of v2, v1, Lcom/android/systemui/keyguard/domain/interactor/FromAlternateBouncerTransitionInteractor;

    .line 166
    if-eqz v2, :cond_7

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    .line 170
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v2

    .line 181
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_1
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->start()V

    .line 185
    goto/16 :goto_0

    .line 188
    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 190
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 192
    throw p0

    .line 195
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionCoreStartable;->auditLogger:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;

    .line 196
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 198
    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$1;

    .line 200
    const/4 v2, 0x0

    .line 202
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;Lkotlin/coroutines/Continuation;)V

    .line 203
    const/4 v3, 0x3

    .line 206
    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 207
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$2;

    .line 210
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$2;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;Lkotlin/coroutines/Continuation;)V

    .line 212
    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 215
    invoke-static {v1, v2, v2, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 217
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$3;

    .line 220
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$3;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;Lkotlin/coroutines/Continuation;)V

    .line 222
    invoke-static {v1, v2, v2, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 225
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$4;

    .line 228
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$4;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;Lkotlin/coroutines/Continuation;)V

    .line 230
    invoke-static {v1, v2, v2, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 233
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$5;

    .line 236
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$5;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;Lkotlin/coroutines/Continuation;)V

    .line 238
    invoke-static {v1, v2, v2, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 241
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$6;

    .line 244
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$6;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;Lkotlin/coroutines/Continuation;)V

    .line 246
    invoke-static {v1, v2, v2, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 249
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$7;

    .line 252
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$7;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;Lkotlin/coroutines/Continuation;)V

    .line 254
    invoke-static {v1, v2, v2, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 257
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$8;

    .line 260
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$8;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;Lkotlin/coroutines/Continuation;)V

    .line 262
    invoke-static {v1, v2, v2, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 265
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$9;

    .line 268
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$9;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;Lkotlin/coroutines/Continuation;)V

    .line 270
    invoke-static {v1, v2, v2, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 273
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$10;

    .line 276
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$10;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;Lkotlin/coroutines/Continuation;)V

    .line 278
    invoke-static {v1, v2, v2, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 281
    return-void
    .line 284
.end method
