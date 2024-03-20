.class public final Lcom/android/keyguard/KeyguardFingerprintListenModel;
.super Lcom/android/keyguard/KeyguardListenModel;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TABLE_HEADERS:Ljava/util/List;


# instance fields
.field public alternateBouncerShowing:Z

.field public final asStringList$delegate:Lkotlin/Lazy;

.field public biometricEnabledForUser:Z

.field public bouncerIsOrWillShow:Z

.field public canSkipBouncer:Z

.field public credentialAttempted:Z

.field public deviceInteractive:Z

.field public dreaming:Z

.field public fingerprintDisabled:Z

.field public fingerprintLockedOut:Z

.field public goingToSleep:Z

.field public keyguardGoingAway:Z

.field public keyguardIsVisible:Z

.field public keyguardOccluded:Z

.field public listening:Z

.field public occludingAppRequestingFp:Z

.field public shouldListenForFingerprintAssistant:Z

.field public shouldListenSfpsState:Z

.field public strongerAuthRequired:Z

.field public switchingUser:Z

.field public systemUser:Z

.field public timeMillis:J

.field public udfps:Z

.field public userDoesNotHaveTrust:Z

.field public userId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .line 1
    const-string/jumbo v0, "timestamp"

    .line 2
    const-string/jumbo v1, "time_millis"

    .line 5
    const-string/jumbo v2, "userId"

    .line 8
    const-string v3, "listening"

    .line 11
    const-string v4, "alternateBouncerShowing"

    .line 13
    const-string v5, "biometricAllowedForUser"

    .line 15
    const-string v6, "bouncerIsOrWillShow"

    .line 17
    const-string v7, "canSkipBouncer"

    .line 19
    const-string v8, "credentialAttempted"

    .line 21
    const-string v9, "deviceInteractive"

    .line 23
    const-string v10, "dreaming"

    .line 25
    const-string v11, "fingerprintDisabled"

    .line 27
    const-string v12, "fingerprintLockedOut"

    .line 29
    const-string v13, "goingToSleep"

    .line 31
    const-string v14, "keyguardGoingAway"

    .line 33
    const-string v15, "keyguardIsVisible"

    .line 35
    const-string v16, "keyguardOccluded"

    .line 37
    const-string v17, "occludingAppRequestingFp"

    .line 39
    const-string/jumbo v18, "shouldListenSidFingerprintState"

    .line 41
    const-string/jumbo v19, "shouldListenForFingerprintAssistant"

    .line 44
    const-string/jumbo v20, "strongAuthRequired"

    .line 47
    const-string/jumbo v21, "switchingUser"

    .line 50
    const-string/jumbo v22, "systemUser"

    .line 53
    const-string/jumbo v23, "underDisplayFingerprint"

    .line 56
    const-string/jumbo v24, "userDoesNotHaveTrust"

    .line 59
    filled-new-array/range {v0 .. v24}, [Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 65
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 66
    move-result-object v0

    .line 69
    sput-object v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->TABLE_HEADERS:Ljava/util/List;

    .line 70
    return-void
    .line 72
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardListenModel;-><init>()V

    .line 2
    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->timeMillis:J

    .line 7
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userId:I

    .line 10
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->listening:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->alternateBouncerShowing:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->biometricEnabledForUser:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->bouncerIsOrWillShow:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->canSkipBouncer:Z

    .line 20
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->credentialAttempted:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->deviceInteractive:Z

    .line 24
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->dreaming:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintDisabled:Z

    .line 28
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintLockedOut:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->goingToSleep:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardGoingAway:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardIsVisible:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardOccluded:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->occludingAppRequestingFp:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->shouldListenSfpsState:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->shouldListenForFingerprintAssistant:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->strongerAuthRequired:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->switchingUser:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->systemUser:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->udfps:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userDoesNotHaveTrust:Z

    .line 54
    new-instance v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;

    .line 56
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;-><init>(Lcom/android/keyguard/KeyguardFingerprintListenModel;)V

    .line 58
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 61
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->asStringList$delegate:Lkotlin/Lazy;

    .line 65
    return-void
    .line 67
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;

    .line 12
    iget-wide v3, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->timeMillis:J

    .line 14
    iget-wide v5, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->timeMillis:J

    .line 16
    cmp-long v1, v3, v5

    .line 18
    if-eqz v1, :cond_2

    .line 20
    return v2

    .line 22
    :cond_2
    iget v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userId:I

    .line 23
    iget v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userId:I

    .line 25
    if-eq v1, v3, :cond_3

    .line 27
    return v2

    .line 29
    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->listening:Z

    .line 30
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->listening:Z

    .line 32
    if-eq v1, v3, :cond_4

    .line 34
    return v2

    .line 36
    :cond_4
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->alternateBouncerShowing:Z

    .line 37
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->alternateBouncerShowing:Z

    .line 39
    if-eq v1, v3, :cond_5

    .line 41
    return v2

    .line 43
    :cond_5
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->biometricEnabledForUser:Z

    .line 44
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->biometricEnabledForUser:Z

    .line 46
    if-eq v1, v3, :cond_6

    .line 48
    return v2

    .line 50
    :cond_6
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->bouncerIsOrWillShow:Z

    .line 51
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->bouncerIsOrWillShow:Z

    .line 53
    if-eq v1, v3, :cond_7

    .line 55
    return v2

    .line 57
    :cond_7
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->canSkipBouncer:Z

    .line 58
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->canSkipBouncer:Z

    .line 60
    if-eq v1, v3, :cond_8

    .line 62
    return v2

    .line 64
    :cond_8
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->credentialAttempted:Z

    .line 65
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->credentialAttempted:Z

    .line 67
    if-eq v1, v3, :cond_9

    .line 69
    return v2

    .line 71
    :cond_9
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->deviceInteractive:Z

    .line 72
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->deviceInteractive:Z

    .line 74
    if-eq v1, v3, :cond_a

    .line 76
    return v2

    .line 78
    :cond_a
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->dreaming:Z

    .line 79
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->dreaming:Z

    .line 81
    if-eq v1, v3, :cond_b

    .line 83
    return v2

    .line 85
    :cond_b
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintDisabled:Z

    .line 86
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintDisabled:Z

    .line 88
    if-eq v1, v3, :cond_c

    .line 90
    return v2

    .line 92
    :cond_c
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintLockedOut:Z

    .line 93
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintLockedOut:Z

    .line 95
    if-eq v1, v3, :cond_d

    .line 97
    return v2

    .line 99
    :cond_d
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->goingToSleep:Z

    .line 100
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->goingToSleep:Z

    .line 102
    if-eq v1, v3, :cond_e

    .line 104
    return v2

    .line 106
    :cond_e
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardGoingAway:Z

    .line 107
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardGoingAway:Z

    .line 109
    if-eq v1, v3, :cond_f

    .line 111
    return v2

    .line 113
    :cond_f
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardIsVisible:Z

    .line 114
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardIsVisible:Z

    .line 116
    if-eq v1, v3, :cond_10

    .line 118
    return v2

    .line 120
    :cond_10
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardOccluded:Z

    .line 121
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardOccluded:Z

    .line 123
    if-eq v1, v3, :cond_11

    .line 125
    return v2

    .line 127
    :cond_11
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->occludingAppRequestingFp:Z

    .line 128
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->occludingAppRequestingFp:Z

    .line 130
    if-eq v1, v3, :cond_12

    .line 132
    return v2

    .line 134
    :cond_12
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->shouldListenSfpsState:Z

    .line 135
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->shouldListenSfpsState:Z

    .line 137
    if-eq v1, v3, :cond_13

    .line 139
    return v2

    .line 141
    :cond_13
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->shouldListenForFingerprintAssistant:Z

    .line 142
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->shouldListenForFingerprintAssistant:Z

    .line 144
    if-eq v1, v3, :cond_14

    .line 146
    return v2

    .line 148
    :cond_14
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->strongerAuthRequired:Z

    .line 149
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->strongerAuthRequired:Z

    .line 151
    if-eq v1, v3, :cond_15

    .line 153
    return v2

    .line 155
    :cond_15
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->switchingUser:Z

    .line 156
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->switchingUser:Z

    .line 158
    if-eq v1, v3, :cond_16

    .line 160
    return v2

    .line 162
    :cond_16
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->systemUser:Z

    .line 163
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->systemUser:Z

    .line 165
    if-eq v1, v3, :cond_17

    .line 167
    return v2

    .line 169
    :cond_17
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->udfps:Z

    .line 170
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->udfps:Z

    .line 172
    if-eq v1, v3, :cond_18

    .line 174
    return v2

    .line 176
    :cond_18
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userDoesNotHaveTrust:Z

    .line 177
    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userDoesNotHaveTrust:Z

    .line 179
    if-eq p0, p1, :cond_19

    .line 181
    return v2

    .line 183
    :cond_19
    return v0
    .line 184
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->timeMillis:J

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userId:I

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 14
    move-result v0

    .line 17
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->listening:Z

    .line 18
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    move v1, v2

    .line 23
    :cond_0
    add-int/2addr v0, v1

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->alternateBouncerShowing:Z

    .line 27
    if-eqz v1, :cond_1

    .line 29
    move v1, v2

    .line 31
    :cond_1
    add-int/2addr v0, v1

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->biometricEnabledForUser:Z

    .line 35
    if-eqz v1, :cond_2

    .line 37
    move v1, v2

    .line 39
    :cond_2
    add-int/2addr v0, v1

    .line 40
    mul-int/lit8 v0, v0, 0x1f

    .line 41
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->bouncerIsOrWillShow:Z

    .line 43
    if-eqz v1, :cond_3

    .line 45
    move v1, v2

    .line 47
    :cond_3
    add-int/2addr v0, v1

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->canSkipBouncer:Z

    .line 51
    if-eqz v1, :cond_4

    .line 53
    move v1, v2

    .line 55
    :cond_4
    add-int/2addr v0, v1

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->credentialAttempted:Z

    .line 59
    if-eqz v1, :cond_5

    .line 61
    move v1, v2

    .line 63
    :cond_5
    add-int/2addr v0, v1

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->deviceInteractive:Z

    .line 67
    if-eqz v1, :cond_6

    .line 69
    move v1, v2

    .line 71
    :cond_6
    add-int/2addr v0, v1

    .line 72
    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->dreaming:Z

    .line 75
    if-eqz v1, :cond_7

    .line 77
    move v1, v2

    .line 79
    :cond_7
    add-int/2addr v0, v1

    .line 80
    mul-int/lit8 v0, v0, 0x1f

    .line 81
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintDisabled:Z

    .line 83
    if-eqz v1, :cond_8

    .line 85
    move v1, v2

    .line 87
    :cond_8
    add-int/2addr v0, v1

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    .line 89
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintLockedOut:Z

    .line 91
    if-eqz v1, :cond_9

    .line 93
    move v1, v2

    .line 95
    :cond_9
    add-int/2addr v0, v1

    .line 96
    mul-int/lit8 v0, v0, 0x1f

    .line 97
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->goingToSleep:Z

    .line 99
    if-eqz v1, :cond_a

    .line 101
    move v1, v2

    .line 103
    :cond_a
    add-int/2addr v0, v1

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardGoingAway:Z

    .line 107
    if-eqz v1, :cond_b

    .line 109
    move v1, v2

    .line 111
    :cond_b
    add-int/2addr v0, v1

    .line 112
    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardIsVisible:Z

    .line 115
    if-eqz v1, :cond_c

    .line 117
    move v1, v2

    .line 119
    :cond_c
    add-int/2addr v0, v1

    .line 120
    mul-int/lit8 v0, v0, 0x1f

    .line 121
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardOccluded:Z

    .line 123
    if-eqz v1, :cond_d

    .line 125
    move v1, v2

    .line 127
    :cond_d
    add-int/2addr v0, v1

    .line 128
    mul-int/lit8 v0, v0, 0x1f

    .line 129
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->occludingAppRequestingFp:Z

    .line 131
    if-eqz v1, :cond_e

    .line 133
    move v1, v2

    .line 135
    :cond_e
    add-int/2addr v0, v1

    .line 136
    mul-int/lit8 v0, v0, 0x1f

    .line 137
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->shouldListenSfpsState:Z

    .line 139
    if-eqz v1, :cond_f

    .line 141
    move v1, v2

    .line 143
    :cond_f
    add-int/2addr v0, v1

    .line 144
    mul-int/lit8 v0, v0, 0x1f

    .line 145
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->shouldListenForFingerprintAssistant:Z

    .line 147
    if-eqz v1, :cond_10

    .line 149
    move v1, v2

    .line 151
    :cond_10
    add-int/2addr v0, v1

    .line 152
    mul-int/lit8 v0, v0, 0x1f

    .line 153
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->strongerAuthRequired:Z

    .line 155
    if-eqz v1, :cond_11

    .line 157
    move v1, v2

    .line 159
    :cond_11
    add-int/2addr v0, v1

    .line 160
    mul-int/lit8 v0, v0, 0x1f

    .line 161
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->switchingUser:Z

    .line 163
    if-eqz v1, :cond_12

    .line 165
    move v1, v2

    .line 167
    :cond_12
    add-int/2addr v0, v1

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->systemUser:Z

    .line 171
    if-eqz v1, :cond_13

    .line 173
    move v1, v2

    .line 175
    :cond_13
    add-int/2addr v0, v1

    .line 176
    mul-int/lit8 v0, v0, 0x1f

    .line 177
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->udfps:Z

    .line 179
    if-eqz v1, :cond_14

    .line 181
    move v1, v2

    .line 183
    :cond_14
    add-int/2addr v0, v1

    .line 184
    mul-int/lit8 v0, v0, 0x1f

    .line 185
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userDoesNotHaveTrust:Z

    .line 187
    if-eqz p0, :cond_15

    .line 189
    goto :goto_0

    .line 191
    :cond_15
    move v2, p0

    .line 192
    :goto_0
    add-int/2addr v0, v2

    .line 193
    return v0
    .line 194
.end method

.method public final toString()Ljava/lang/String;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-wide v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->timeMillis:J

    .line 4
    iget v3, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userId:I

    .line 6
    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->listening:Z

    .line 8
    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->alternateBouncerShowing:Z

    .line 10
    iget-boolean v6, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->biometricEnabledForUser:Z

    .line 12
    iget-boolean v7, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->bouncerIsOrWillShow:Z

    .line 14
    iget-boolean v8, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->canSkipBouncer:Z

    .line 16
    iget-boolean v9, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->credentialAttempted:Z

    .line 18
    iget-boolean v10, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->deviceInteractive:Z

    .line 20
    iget-boolean v11, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->dreaming:Z

    .line 22
    iget-boolean v12, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintDisabled:Z

    .line 24
    iget-boolean v13, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintLockedOut:Z

    .line 26
    iget-boolean v14, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->goingToSleep:Z

    .line 28
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardGoingAway:Z

    .line 30
    move/from16 v16, v15

    .line 32
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardIsVisible:Z

    .line 34
    move/from16 v17, v15

    .line 36
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardOccluded:Z

    .line 38
    move/from16 v18, v15

    .line 40
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->occludingAppRequestingFp:Z

    .line 42
    move/from16 v19, v15

    .line 44
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->shouldListenSfpsState:Z

    .line 46
    move/from16 v20, v15

    .line 48
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->shouldListenForFingerprintAssistant:Z

    .line 50
    move/from16 v21, v15

    .line 52
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->strongerAuthRequired:Z

    .line 54
    move/from16 v22, v15

    .line 56
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->switchingUser:Z

    .line 58
    move/from16 v23, v15

    .line 60
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->systemUser:Z

    .line 62
    move/from16 v24, v15

    .line 64
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->udfps:Z

    .line 66
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userDoesNotHaveTrust:Z

    .line 68
    move/from16 p0, v0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    move/from16 v25, v15

    .line 74
    const-string v15, "KeyguardFingerprintListenModel(timeMillis="

    .line 76
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", userId="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ", listening="

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, ", alternateBouncerShowing="

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", biometricEnabledForUser="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ", bouncerIsOrWillShow="

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, ", canSkipBouncer="

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, ", credentialAttempted="

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, ", deviceInteractive="

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, ", dreaming="

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, ", fingerprintDisabled="

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, ", fingerprintLockedOut="

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, ", goingToSleep="

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, ", keyguardGoingAway="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    move/from16 v1, v16

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ", keyguardIsVisible="

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    move/from16 v1, v17

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, ", keyguardOccluded="

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    move/from16 v1, v18

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, ", occludingAppRequestingFp="

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    move/from16 v1, v19

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, ", shouldListenSfpsState="

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    move/from16 v1, v20

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, ", shouldListenForFingerprintAssistant="

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    move/from16 v1, v21

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, ", strongerAuthRequired="

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    move/from16 v1, v22

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, ", switchingUser="

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    move/from16 v1, v23

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, ", systemUser="

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    move/from16 v1, v24

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, ", udfps="

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    move/from16 v1, v25

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, ", userDoesNotHaveTrust="

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    move/from16 v1, p0

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, ")"

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    move-result-object v0

    .line 298
    return-object v0
    .line 299
.end method
