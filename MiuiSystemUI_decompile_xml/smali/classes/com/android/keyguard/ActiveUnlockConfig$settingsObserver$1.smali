.class public final Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final bioFailUri:Landroid/net/Uri;

.field public final faceAcquireInfoUri:Landroid/net/Uri;

.field public final faceErrorsUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/keyguard/ActiveUnlockConfig;

.field public final unlockIntentUri:Landroid/net/Uri;

.field public final unlockIntentWhenBiometricEnrolledUri:Landroid/net/Uri;

.field public final wakeUri:Landroid/net/Uri;

.field public final wakeupsConsideredUnlockIntentsUri:Landroid/net/Uri;

.field public final wakeupsToForceDismissKeyguardUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ActiveUnlockConfig;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    iget-object p2, p1, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 7
    check-cast p2, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    const-string p2, "active_unlock_on_wake"

    .line 14
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    move-result-object p2

    .line 19
    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->wakeUri:Landroid/net/Uri;

    .line 20
    iget-object p1, p1, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 22
    move-object p2, p1

    .line 24
    check-cast p2, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 25
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    const-string p2, "active_unlock_on_unlock_intent"

    .line 30
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    move-result-object p2

    .line 35
    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->unlockIntentUri:Landroid/net/Uri;

    .line 36
    move-object p2, p1

    .line 38
    check-cast p2, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    const-string p2, "active_unlock_on_biometric_fail"

    .line 44
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 46
    move-result-object p2

    .line 49
    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->bioFailUri:Landroid/net/Uri;

    .line 50
    move-object p2, p1

    .line 52
    check-cast p2, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    const-string p2, "active_unlock_on_face_errors"

    .line 58
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 60
    move-result-object p2

    .line 63
    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->faceErrorsUri:Landroid/net/Uri;

    .line 64
    move-object p2, p1

    .line 66
    check-cast p2, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 67
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    const-string p2, "active_unlock_on_face_acquire_info"

    .line 72
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 74
    move-result-object p2

    .line 77
    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->faceAcquireInfoUri:Landroid/net/Uri;

    .line 78
    move-object p2, p1

    .line 80
    check-cast p2, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 81
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    const-string p2, "active_unlock_on_unlock_intent_when_biometric_enrolled"

    .line 86
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 88
    move-result-object p2

    .line 91
    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->unlockIntentWhenBiometricEnrolledUri:Landroid/net/Uri;

    .line 92
    move-object p2, p1

    .line 94
    check-cast p2, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 95
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    const-string p2, "active_unlock_wakeups_considered_unlock_intents"

    .line 100
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 102
    move-result-object p2

    .line 105
    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->wakeupsConsideredUnlockIntentsUri:Landroid/net/Uri;

    .line 106
    check-cast p1, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    const-string p1, "active_unlock_wakeups_to_force_dismiss_keyguard"

    .line 113
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 115
    move-result-object p1

    .line 118
    iput-object p1, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->wakeupsToForceDismissKeyguardUri:Landroid/net/Uri;

    .line 119
    return-void
    .line 121
.end method

.method public static processStringArray(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 2
    if-eqz p0, :cond_2

    .line 5
    const-string/jumbo p2, "|"

    .line 7
    filled-new-array {p2}, [Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 13
    invoke-static {p0, p2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 14
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result p2

    .line 25
    if-eqz p2, :cond_3

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object p2

    .line 31
    check-cast p2, Ljava/lang/String;

    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 34
    move-result v0

    .line 37
    if-lez v0, :cond_1

    .line 38
    const/4 v0, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    :goto_1
    if-eqz v0, :cond_0

    .line 43
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    move-result v0

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v0

    .line 52
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 56
    :catch_0
    const-string v0, "Passed an invalid setting="

    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 62
    const-string v0, "ActiveUnlockConfig"

    .line 63
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    goto :goto_0

    .line 68
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 69
    :cond_3
    return-void
    .line 72
.end method


# virtual methods
.method public final onChange(ZLjava/util/Collection;II)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    move-result p3

    .line 5
    if-eq p3, p4, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const/4 p3, 0x1

    .line 9
    const/4 p4, 0x0

    .line 10
    if-nez p1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->wakeUri:Landroid/net/Uri;

    .line 13
    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    .line 21
    iget-object v1, v0, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 23
    const-string v2, "active_unlock_on_wake"

    .line 25
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 27
    move-result v3

    .line 30
    invoke-interface {v1, p4, v3, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 31
    move-result v1

    .line 34
    if-ne v1, p3, :cond_2

    .line 35
    move v1, p3

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v1, p4

    .line 39
    :goto_0
    iput-boolean v1, v0, Lcom/android/keyguard/ActiveUnlockConfig;->requestActiveUnlockOnWakeup:Z

    .line 40
    :cond_3
    if-nez p1, :cond_4

    .line 42
    iget-object v0, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->unlockIntentUri:Landroid/net/Uri;

    .line 44
    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 49
    if-eqz v0, :cond_6

    .line 50
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    .line 52
    iget-object v1, v0, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 54
    const-string v2, "active_unlock_on_unlock_intent"

    .line 56
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 58
    move-result v3

    .line 61
    invoke-interface {v1, p4, v3, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 62
    move-result v1

    .line 65
    if-ne v1, p3, :cond_5

    .line 66
    move v1, p3

    .line 68
    goto :goto_1

    .line 69
    :cond_5
    move v1, p4

    .line 70
    :goto_1
    iput-boolean v1, v0, Lcom/android/keyguard/ActiveUnlockConfig;->requestActiveUnlockOnUnlockIntent:Z

    .line 71
    :cond_6
    if-nez p1, :cond_7

    .line 73
    iget-object v0, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->bioFailUri:Landroid/net/Uri;

    .line 75
    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 77
    move-result v0

    .line 80
    if-eqz v0, :cond_9

    .line 81
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    .line 83
    iget-object v1, v0, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 85
    const-string v2, "active_unlock_on_biometric_fail"

    .line 87
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 89
    move-result v3

    .line 92
    invoke-interface {v1, p4, v3, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 93
    move-result v1

    .line 96
    if-ne v1, p3, :cond_8

    .line 97
    goto :goto_2

    .line 99
    :cond_8
    move p3, p4

    .line 100
    :goto_2
    iput-boolean p3, v0, Lcom/android/keyguard/ActiveUnlockConfig;->requestActiveUnlockOnBioFail:Z

    .line 101
    :cond_9
    if-nez p1, :cond_a

    .line 103
    iget-object p3, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->faceErrorsUri:Landroid/net/Uri;

    .line 105
    invoke-interface {p2, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 107
    move-result p3

    .line 110
    if-eqz p3, :cond_b

    .line 111
    :cond_a
    iget-object p3, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    .line 113
    iget-object p3, p3, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 115
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 117
    move-result p4

    .line 120
    check-cast p3, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 121
    const-string v0, "active_unlock_on_face_errors"

    .line 123
    invoke-virtual {p3, p4, v0}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->getStringForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object p3

    .line 128
    iget-object p4, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    .line 129
    iget-object p4, p4, Lcom/android/keyguard/ActiveUnlockConfig;->faceErrorsToTriggerBiometricFailOn:Ljava/util/Set;

    .line 131
    const/4 v0, 0x3

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object v0

    .line 137
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 138
    move-result-object v0

    .line 141
    invoke-static {p3, p4, v0}, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->processStringArray(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 142
    :cond_b
    if-nez p1, :cond_c

    .line 145
    iget-object p3, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->faceAcquireInfoUri:Landroid/net/Uri;

    .line 147
    invoke-interface {p2, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 149
    move-result p3

    .line 152
    if-eqz p3, :cond_d

    .line 153
    :cond_c
    iget-object p3, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    .line 155
    iget-object p3, p3, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 157
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 159
    move-result p4

    .line 162
    check-cast p3, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 163
    const-string v0, "active_unlock_on_face_acquire_info"

    .line 165
    invoke-virtual {p3, p4, v0}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->getStringForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 167
    move-result-object p3

    .line 170
    iget-object p4, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    .line 171
    iget-object p4, p4, Lcom/android/keyguard/ActiveUnlockConfig;->faceAcquireInfoToTriggerBiometricFailOn:Ljava/util/Set;

    .line 173
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 175
    invoke-static {p3, p4, v0}, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->processStringArray(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 177
    :cond_d
    if-nez p1, :cond_e

    .line 180
    iget-object p3, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->unlockIntentWhenBiometricEnrolledUri:Landroid/net/Uri;

    .line 182
    invoke-interface {p2, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 184
    move-result p3

    .line 187
    if-eqz p3, :cond_f

    .line 188
    :cond_e
    iget-object p3, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    .line 190
    iget-object p3, p3, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 192
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 194
    move-result p4

    .line 197
    check-cast p3, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 198
    const-string v0, "active_unlock_on_unlock_intent_when_biometric_enrolled"

    .line 200
    invoke-virtual {p3, p4, v0}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->getStringForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 202
    move-result-object p3

    .line 205
    iget-object p4, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    .line 206
    iget-object p4, p4, Lcom/android/keyguard/ActiveUnlockConfig;->onUnlockIntentWhenBiometricEnrolled:Ljava/util/Set;

    .line 208
    sget-object v0, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->NONE:Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    .line 210
    invoke-virtual {v0}, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->getIntValue()I

    .line 212
    move-result v0

    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    move-result-object v0

    .line 219
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 220
    move-result-object v0

    .line 223
    invoke-static {p3, p4, v0}, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->processStringArray(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 224
    :cond_f
    const/16 p3, 0xc

    .line 227
    if-nez p1, :cond_10

    .line 229
    iget-object p4, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->wakeupsConsideredUnlockIntentsUri:Landroid/net/Uri;

    .line 231
    invoke-interface {p2, p4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 233
    move-result p4

    .line 236
    if-eqz p4, :cond_11

    .line 237
    :cond_10
    iget-object p4, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    .line 239
    iget-object p4, p4, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 241
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 243
    move-result v0

    .line 246
    check-cast p4, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 247
    const-string v1, "active_unlock_wakeups_considered_unlock_intents"

    .line 249
    invoke-virtual {p4, v0, v1}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->getStringForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 251
    move-result-object p4

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    .line 255
    iget-object v0, v0, Lcom/android/keyguard/ActiveUnlockConfig;->wakeupsConsideredUnlockIntents:Ljava/util/Set;

    .line 257
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    move-result-object v1

    .line 262
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 263
    move-result-object v1

    .line 266
    invoke-static {p4, v0, v1}, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->processStringArray(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 267
    :cond_11
    if-nez p1, :cond_12

    .line 270
    iget-object p1, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->wakeupsToForceDismissKeyguardUri:Landroid/net/Uri;

    .line 272
    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 274
    move-result p1

    .line 277
    if-eqz p1, :cond_13

    .line 278
    :cond_12
    iget-object p1, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    .line 280
    iget-object p1, p1, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 282
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 284
    move-result p2

    .line 287
    check-cast p1, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 288
    const-string p4, "active_unlock_wakeups_to_force_dismiss_keyguard"

    .line 290
    invoke-virtual {p1, p2, p4}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->getStringForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 292
    move-result-object p1

    .line 295
    iget-object p0, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    .line 296
    iget-object p0, p0, Lcom/android/keyguard/ActiveUnlockConfig;->wakeupsToForceDismissKeyguard:Ljava/util/Set;

    .line 298
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    move-result-object p2

    .line 303
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 304
    move-result-object p2

    .line 307
    invoke-static {p1, p0, p2}, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->processStringArray(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 308
    :cond_13
    return-void
    .line 311
.end method
