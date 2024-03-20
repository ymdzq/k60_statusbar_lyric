.class public final Lcom/android/keyguard/ActiveUnlockConfig;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final contentResolver:Landroid/content/ContentResolver;

.field public final faceAcquireInfoToTriggerBiometricFailOn:Ljava/util/Set;

.field public final faceErrorsToTriggerBiometricFailOn:Ljava/util/Set;

.field public keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final onUnlockIntentWhenBiometricEnrolled:Ljava/util/Set;

.field public requestActiveUnlockOnBioFail:Z

.field public requestActiveUnlockOnUnlockIntent:Z

.field public requestActiveUnlockOnWakeup:Z

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final wakeupsConsideredUnlockIntents:Ljava/util/Set;

.field public final wakeupsToForceDismissKeyguard:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/util/settings/SecureSettings;Landroid/content/ContentResolver;Lcom/android/systemui/dump/DumpManager;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 5
    iput-object p3, p0, Lcom/android/keyguard/ActiveUnlockConfig;->contentResolver:Landroid/content/ContentResolver;

    .line 7
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 9
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 11
    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig;->faceErrorsToTriggerBiometricFailOn:Ljava/util/Set;

    .line 14
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 16
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig;->faceAcquireInfoToTriggerBiometricFailOn:Ljava/util/Set;

    .line 21
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 23
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig;->onUnlockIntentWhenBiometricEnrolled:Ljava/util/Set;

    .line 28
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 30
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig;->wakeupsConsideredUnlockIntents:Ljava/util/Set;

    .line 35
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 37
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig;->wakeupsToForceDismissKeyguard:Ljava/util/Set;

    .line 42
    new-instance p2, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;

    .line 44
    invoke-direct {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;-><init>(Lcom/android/keyguard/ActiveUnlockConfig;Landroid/os/Handler;)V

    .line 46
    iget-object v0, p2, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->wakeUri:Landroid/net/Uri;

    .line 49
    iget-object v1, p2, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->unlockIntentUri:Landroid/net/Uri;

    .line 51
    iget-object v2, p2, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->bioFailUri:Landroid/net/Uri;

    .line 53
    iget-object v3, p2, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->faceErrorsUri:Landroid/net/Uri;

    .line 55
    iget-object v4, p2, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->faceAcquireInfoUri:Landroid/net/Uri;

    .line 57
    iget-object v5, p2, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->unlockIntentWhenBiometricEnrolledUri:Landroid/net/Uri;

    .line 59
    iget-object v6, p2, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->wakeupsConsideredUnlockIntentsUri:Landroid/net/Uri;

    .line 61
    iget-object v7, p2, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->wakeupsToForceDismissKeyguardUri:Landroid/net/Uri;

    .line 63
    filled-new-array/range {v0 .. v7}, [Landroid/net/Uri;

    .line 65
    move-result-object p1

    .line 68
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 69
    move-result-object p1

    .line 72
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object p1

    .line 76
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result p3

    .line 80
    const/4 v0, 0x0

    .line 81
    if-eqz p3, :cond_0

    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object p3

    .line 87
    check-cast p3, Landroid/net/Uri;

    .line 88
    iget-object v1, p2, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    .line 90
    iget-object v1, v1, Lcom/android/keyguard/ActiveUnlockConfig;->contentResolver:Landroid/content/ContentResolver;

    .line 92
    const/4 v2, -0x1

    .line 94
    invoke-virtual {v1, p3, v0, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 95
    goto :goto_0

    .line 98
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 99
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 104
    move-result p3

    .line 107
    const/4 v1, 0x1

    .line 108
    invoke-virtual {p2, v1, p1, v0, p3}, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->onChange(ZLjava/util/Collection;II)V

    .line 109
    invoke-virtual {p4, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 112
    return-void
    .line 115
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string p2, "Settings:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-boolean p2, p0, Lcom/android/keyguard/ActiveUnlockConfig;->requestActiveUnlockOnWakeup:Z

    .line 7
    const-string v0, "   requestActiveUnlockOnWakeup="

    .line 9
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 11
    iget-boolean p2, p0, Lcom/android/keyguard/ActiveUnlockConfig;->requestActiveUnlockOnUnlockIntent:Z

    .line 14
    const-string v0, "   requestActiveUnlockOnUnlockIntent="

    .line 16
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 18
    iget-boolean p2, p0, Lcom/android/keyguard/ActiveUnlockConfig;->requestActiveUnlockOnBioFail:Z

    .line 21
    const-string v0, "   requestActiveUnlockOnBioFail="

    .line 23
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 25
    iget-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig;->onUnlockIntentWhenBiometricEnrolled:Ljava/util/Set;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 32
    move-result v1

    .line 35
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object p2

    .line 42
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/Number;

    .line 53
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 55
    move-result v1

    .line 58
    invoke-static {}, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->values()[Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    .line 59
    move-result-object v2

    .line 62
    array-length v3, v2

    .line 63
    const/4 v4, 0x0

    .line 64
    :goto_1
    if-ge v4, v3, :cond_1

    .line 65
    aget-object v5, v2, v4

    .line 67
    invoke-virtual {v5}, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->getIntValue()I

    .line 69
    move-result v6

    .line 72
    if-ne v6, v1, :cond_0

    .line 73
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 78
    goto :goto_2

    .line 79
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 80
    goto :goto_1

    .line 82
    :cond_1
    const-string v1, "UNKNOWN"

    .line 83
    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    goto :goto_0

    .line 88
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 89
    const-string v1, "   requestActiveUnlockOnUnlockIntentWhenBiometricEnrolled="

    .line 91
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p2

    .line 102
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    iget-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig;->faceErrorsToTriggerBiometricFailOn:Ljava/util/Set;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "   requestActiveUnlockOnFaceError="

    .line 110
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p2

    .line 121
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    iget-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig;->faceAcquireInfoToTriggerBiometricFailOn:Ljava/util/Set;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    const-string v1, "   requestActiveUnlockOnFaceAcquireInfo="

    .line 129
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p2

    .line 140
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    iget-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig;->wakeupsConsideredUnlockIntents:Ljava/util/Set;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    .line 146
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 148
    move-result v1

    .line 151
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object p2

    .line 158
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v1

    .line 168
    check-cast v1, Ljava/lang/Number;

    .line 169
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 171
    move-result v1

    .line 174
    invoke-static {v1}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    .line 175
    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    goto :goto_3

    .line 182
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "   activeUnlockWakeupsConsideredUnlockIntents="

    .line 185
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object p2

    .line 196
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    iget-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig;->wakeupsToForceDismissKeyguard:Ljava/util/Set;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    .line 202
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 204
    move-result v1

    .line 207
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 211
    move-result-object p2

    .line 214
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    move-result v1

    .line 218
    if-eqz v1, :cond_4

    .line 219
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    move-result-object v1

    .line 224
    check-cast v1, Ljava/lang/Number;

    .line 225
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 227
    move-result v1

    .line 230
    invoke-static {v1}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    .line 231
    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    goto :goto_4

    .line 238
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 239
    const-string v1, "   activeUnlockFromWakeupsToAlwaysDismissKeyguard="

    .line 241
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    move-result-object p2

    .line 252
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    const-string p2, "Current state:"

    .line 256
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    iget-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 261
    if-eqz p2, :cond_5

    .line 263
    invoke-virtual {p0}, Lcom/android/keyguard/ActiveUnlockConfig;->shouldRequestActiveUnlockOnUnlockIntentFromBiometricEnrollment()Z

    .line 265
    move-result p0

    .line 268
    const-string v0, "   shouldRequestActiveUnlockOnUnlockIntentFromBiometricEnrollment="

    .line 269
    invoke-static {v0, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 271
    iget-boolean p0, p2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceEnrolled:Z

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    .line 276
    const-string v1, "   faceEnrolled="

    .line 278
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    move-result-object p0

    .line 289
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 293
    move-result p0

    .line 296
    invoke-virtual {p2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCachedIsUnlockWithFingerprintPossible(I)Z

    .line 297
    move-result p0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    .line 301
    const-string v1, "   fpEnrolled="

    .line 303
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    move-result-object p0

    .line 314
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsEnrolled()Z

    .line 318
    move-result p0

    .line 321
    const-string p2, "   udfpsEnrolled="

    .line 322
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 324
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 327
    goto :goto_5

    .line 329
    :cond_5
    const/4 p0, 0x0

    .line 330
    :goto_5
    if-nez p0, :cond_6

    .line 331
    const-string p0, "   keyguardUpdateMonitor is uninitialized"

    .line 333
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    :cond_6
    return-void
    .line 338
.end method

.method public final shouldRequestActiveUnlockOnUnlockIntentFromBiometricEnrollment()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/ActiveUnlockConfig;->requestActiveUnlockOnBioFail:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/ActiveUnlockConfig;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    if-eqz v0, :cond_5

    .line 10
    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceEnrolled:Z

    .line 12
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 14
    move-result v3

    .line 17
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCachedIsUnlockWithFingerprintPossible(I)Z

    .line 18
    move-result v3

    .line 21
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsEnrolled()Z

    .line 22
    move-result v0

    .line 25
    iget-object p0, p0, Lcom/android/keyguard/ActiveUnlockConfig;->onUnlockIntentWhenBiometricEnrolled:Ljava/util/Set;

    .line 26
    if-nez v2, :cond_1

    .line 28
    if-nez v3, :cond_1

    .line 30
    sget-object v0, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->NONE:Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    .line 32
    invoke-virtual {v0}, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->getIntValue()I

    .line 34
    move-result v0

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v0

    .line 41
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 42
    move-result p0

    .line 45
    return p0

    .line 46
    :cond_1
    if-nez v2, :cond_4

    .line 47
    if-eqz v3, :cond_4

    .line 49
    sget-object v2, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->ANY_FINGERPRINT:Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    .line 51
    invoke-virtual {v2}, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->getIntValue()I

    .line 53
    move-result v2

    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v2

    .line 60
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 61
    move-result v2

    .line 64
    if-nez v2, :cond_2

    .line 65
    if-eqz v0, :cond_3

    .line 67
    sget-object v0, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->UNDER_DISPLAY_FINGERPRINT:Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    .line 69
    invoke-virtual {v0}, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->getIntValue()I

    .line 71
    move-result v0

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v0

    .line 78
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 79
    move-result p0

    .line 82
    if-eqz p0, :cond_3

    .line 83
    :cond_2
    const/4 v1, 0x1

    .line 85
    :cond_3
    return v1

    .line 86
    :cond_4
    if-nez v3, :cond_5

    .line 87
    if-eqz v2, :cond_5

    .line 89
    sget-object v0, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->ANY_FACE:Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    .line 91
    invoke-virtual {v0}, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->getIntValue()I

    .line 93
    move-result v0

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v0

    .line 100
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 101
    move-result p0

    .line 104
    return p0

    .line 105
    :cond_5
    return v1
    .line 106
.end method
