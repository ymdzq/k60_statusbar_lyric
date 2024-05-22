.class public final Lcom/android/keyguard/KeyguardFaceListenModel;
.super Lcom/android/keyguard/KeyguardListenModel;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TABLE_HEADERS:Ljava/util/List;


# instance fields
.field public alternateBouncerShowing:Z

.field public final asStringList$delegate:Lkotlin/Lazy;

.field public final authInterruptActive:Z

.field public biometricSettingEnabledForUser:Z

.field public bouncerFullyShown:Z

.field public faceAndFpNotAuthenticated:Z

.field public faceAuthAllowed:Z

.field public faceDisabled:Z

.field public faceLockedOut:Z

.field public goingToSleep:Z

.field public keyguardAwake:Z

.field public keyguardGoingAway:Z

.field public listening:Z

.field public listeningForFaceAssistant:Z

.field public occludingAppRequestingFaceAuth:Z

.field public postureAllowsListening:Z

.field public secureCameraLaunched:Z

.field public supportsDetect:Z

.field public switchingUser:Z

.field public systemUser:Z

.field public timeMillis:J

.field public udfpsFingerDown:Z

.field public userId:I

.field public userNotTrustedOrDetectionIsNeeded:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    .line 1
    const-string/jumbo v0, "timestamp"

    .line 2
    const-string/jumbo v1, "time_millis"

    .line 5
    const-string/jumbo v2, "userId"

    .line 8
    const-string v3, "listening"

    .line 11
    const-string v4, "authInterruptActive"

    .line 13
    const-string v5, "biometricSettingEnabledForUser"

    .line 15
    const-string v6, "bouncerFullyShown"

    .line 17
    const-string v7, "faceAndFpNotAuthenticated"

    .line 19
    const-string v8, "faceAuthAllowed"

    .line 21
    const-string v9, "faceDisabled"

    .line 23
    const-string v10, "faceLockedOut"

    .line 25
    const-string v11, "goingToSleep"

    .line 27
    const-string v12, "keyguardAwake"

    .line 29
    const-string v13, "keyguardGoingAway"

    .line 31
    const-string v14, "listeningForFaceAssistant"

    .line 33
    const-string v15, "occludingAppRequestingFaceAuth"

    .line 35
    const-string v16, "postureAllowsListening"

    .line 37
    const-string/jumbo v17, "secureCameraLaunched"

    .line 39
    const-string/jumbo v18, "supportsDetect"

    .line 42
    const-string/jumbo v19, "switchingUser"

    .line 45
    const-string/jumbo v20, "systemUser"

    .line 48
    const-string/jumbo v21, "udfpsBouncerShowing"

    .line 51
    const-string/jumbo v22, "udfpsFingerDown"

    .line 54
    const-string/jumbo v23, "userNotTrustedOrDetectionIsNeeded"

    .line 57
    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 63
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 64
    move-result-object v0

    .line 67
    sput-object v0, Lcom/android/keyguard/KeyguardFaceListenModel;->TABLE_HEADERS:Ljava/util/List;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardListenModel;-><init>()V

    .line 2
    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

    .line 7
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->userId:I

    .line 10
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->listening:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->alternateBouncerShowing:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->authInterruptActive:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->biometricSettingEnabledForUser:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->bouncerFullyShown:Z

    .line 20
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAndFpNotAuthenticated:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAuthAllowed:Z

    .line 24
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceDisabled:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceLockedOut:Z

    .line 28
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->goingToSleep:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardAwake:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardGoingAway:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->listeningForFaceAssistant:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->occludingAppRequestingFaceAuth:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->postureAllowsListening:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->secureCameraLaunched:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->supportsDetect:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->switchingUser:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->systemUser:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->udfpsFingerDown:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->userNotTrustedOrDetectionIsNeeded:Z

    .line 52
    new-instance v0, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;

    .line 54
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardFaceListenModel$asStringList$2;-><init>(Lcom/android/keyguard/KeyguardFaceListenModel;)V

    .line 56
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 59
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->asStringList$delegate:Lkotlin/Lazy;

    .line 63
    return-void
    .line 65
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
    instance-of v1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 12
    iget-wide v3, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

    .line 14
    iget-wide v5, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

    .line 16
    cmp-long v1, v3, v5

    .line 18
    if-eqz v1, :cond_2

    .line 20
    return v2

    .line 22
    :cond_2
    iget v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->userId:I

    .line 23
    iget v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->userId:I

    .line 25
    if-eq v1, v3, :cond_3

    .line 27
    return v2

    .line 29
    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->listening:Z

    .line 30
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->listening:Z

    .line 32
    if-eq v1, v3, :cond_4

    .line 34
    return v2

    .line 36
    :cond_4
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->alternateBouncerShowing:Z

    .line 37
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->alternateBouncerShowing:Z

    .line 39
    if-eq v1, v3, :cond_5

    .line 41
    return v2

    .line 43
    :cond_5
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->authInterruptActive:Z

    .line 44
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->authInterruptActive:Z

    .line 46
    if-eq v1, v3, :cond_6

    .line 48
    return v2

    .line 50
    :cond_6
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->biometricSettingEnabledForUser:Z

    .line 51
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->biometricSettingEnabledForUser:Z

    .line 53
    if-eq v1, v3, :cond_7

    .line 55
    return v2

    .line 57
    :cond_7
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->bouncerFullyShown:Z

    .line 58
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->bouncerFullyShown:Z

    .line 60
    if-eq v1, v3, :cond_8

    .line 62
    return v2

    .line 64
    :cond_8
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAndFpNotAuthenticated:Z

    .line 65
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAndFpNotAuthenticated:Z

    .line 67
    if-eq v1, v3, :cond_9

    .line 69
    return v2

    .line 71
    :cond_9
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAuthAllowed:Z

    .line 72
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAuthAllowed:Z

    .line 74
    if-eq v1, v3, :cond_a

    .line 76
    return v2

    .line 78
    :cond_a
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceDisabled:Z

    .line 79
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->faceDisabled:Z

    .line 81
    if-eq v1, v3, :cond_b

    .line 83
    return v2

    .line 85
    :cond_b
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceLockedOut:Z

    .line 86
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->faceLockedOut:Z

    .line 88
    if-eq v1, v3, :cond_c

    .line 90
    return v2

    .line 92
    :cond_c
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->goingToSleep:Z

    .line 93
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->goingToSleep:Z

    .line 95
    if-eq v1, v3, :cond_d

    .line 97
    return v2

    .line 99
    :cond_d
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardAwake:Z

    .line 100
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardAwake:Z

    .line 102
    if-eq v1, v3, :cond_e

    .line 104
    return v2

    .line 106
    :cond_e
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardGoingAway:Z

    .line 107
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardGoingAway:Z

    .line 109
    if-eq v1, v3, :cond_f

    .line 111
    return v2

    .line 113
    :cond_f
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->listeningForFaceAssistant:Z

    .line 114
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->listeningForFaceAssistant:Z

    .line 116
    if-eq v1, v3, :cond_10

    .line 118
    return v2

    .line 120
    :cond_10
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->occludingAppRequestingFaceAuth:Z

    .line 121
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->occludingAppRequestingFaceAuth:Z

    .line 123
    if-eq v1, v3, :cond_11

    .line 125
    return v2

    .line 127
    :cond_11
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->postureAllowsListening:Z

    .line 128
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->postureAllowsListening:Z

    .line 130
    if-eq v1, v3, :cond_12

    .line 132
    return v2

    .line 134
    :cond_12
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->secureCameraLaunched:Z

    .line 135
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->secureCameraLaunched:Z

    .line 137
    if-eq v1, v3, :cond_13

    .line 139
    return v2

    .line 141
    :cond_13
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->supportsDetect:Z

    .line 142
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->supportsDetect:Z

    .line 144
    if-eq v1, v3, :cond_14

    .line 146
    return v2

    .line 148
    :cond_14
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->switchingUser:Z

    .line 149
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->switchingUser:Z

    .line 151
    if-eq v1, v3, :cond_15

    .line 153
    return v2

    .line 155
    :cond_15
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->systemUser:Z

    .line 156
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->systemUser:Z

    .line 158
    if-eq v1, v3, :cond_16

    .line 160
    return v2

    .line 162
    :cond_16
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->udfpsFingerDown:Z

    .line 163
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->udfpsFingerDown:Z

    .line 165
    if-eq v1, v3, :cond_17

    .line 167
    return v2

    .line 169
    :cond_17
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->userNotTrustedOrDetectionIsNeeded:Z

    .line 170
    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->userNotTrustedOrDetectionIsNeeded:Z

    .line 172
    if-eq p0, p1, :cond_18

    .line 174
    return v2

    .line 176
    :cond_18
    return v0
    .line 177
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->userId:I

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 14
    move-result v0

    .line 17
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->listening:Z

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->alternateBouncerShowing:Z

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->authInterruptActive:Z

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->biometricSettingEnabledForUser:Z

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->bouncerFullyShown:Z

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAndFpNotAuthenticated:Z

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAuthAllowed:Z

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceDisabled:Z

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceLockedOut:Z

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->goingToSleep:Z

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardAwake:Z

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardGoingAway:Z

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->listeningForFaceAssistant:Z

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->occludingAppRequestingFaceAuth:Z

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->postureAllowsListening:Z

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->secureCameraLaunched:Z

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->supportsDetect:Z

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->switchingUser:Z

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->systemUser:Z

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
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->udfpsFingerDown:Z

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
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->userNotTrustedOrDetectionIsNeeded:Z

    .line 179
    if-eqz p0, :cond_14

    .line 181
    goto :goto_0

    .line 183
    :cond_14
    move v2, p0

    .line 184
    :goto_0
    add-int/2addr v0, v2

    .line 185
    return v0
    .line 186
.end method

.method public final toString()Ljava/lang/String;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-wide v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

    .line 4
    iget v3, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->userId:I

    .line 6
    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->listening:Z

    .line 8
    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->alternateBouncerShowing:Z

    .line 10
    iget-boolean v6, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->biometricSettingEnabledForUser:Z

    .line 12
    iget-boolean v7, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->bouncerFullyShown:Z

    .line 14
    iget-boolean v8, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAndFpNotAuthenticated:Z

    .line 16
    iget-boolean v9, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAuthAllowed:Z

    .line 18
    iget-boolean v10, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceDisabled:Z

    .line 20
    iget-boolean v11, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceLockedOut:Z

    .line 22
    iget-boolean v12, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->goingToSleep:Z

    .line 24
    iget-boolean v13, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardAwake:Z

    .line 26
    iget-boolean v14, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardGoingAway:Z

    .line 28
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->listeningForFaceAssistant:Z

    .line 30
    move/from16 v16, v15

    .line 32
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->occludingAppRequestingFaceAuth:Z

    .line 34
    move/from16 v17, v15

    .line 36
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->postureAllowsListening:Z

    .line 38
    move/from16 v18, v15

    .line 40
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->secureCameraLaunched:Z

    .line 42
    move/from16 v19, v15

    .line 44
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->supportsDetect:Z

    .line 46
    move/from16 v20, v15

    .line 48
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->switchingUser:Z

    .line 50
    move/from16 v21, v15

    .line 52
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->systemUser:Z

    .line 54
    move/from16 v22, v15

    .line 56
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->udfpsFingerDown:Z

    .line 58
    move/from16 v23, v15

    .line 60
    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->userNotTrustedOrDetectionIsNeeded:Z

    .line 62
    move/from16 v24, v15

    .line 64
    new-instance v15, Ljava/lang/StringBuilder;

    .line 66
    move/from16 v25, v13

    .line 68
    const-string v13, "KeyguardFaceListenModel(timeMillis="

    .line 70
    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ", userId="

    .line 78
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", listening="

    .line 86
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", alternateBouncerShowing="

    .line 94
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", authInterruptActive="

    .line 102
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->authInterruptActive:Z

    .line 107
    const-string v1, ", biometricSettingEnabledForUser="

    .line 109
    const-string v2, ", bouncerFullyShown="

    .line 111
    invoke-static {v15, v0, v1, v6, v2}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 113
    const-string v0, ", faceAndFpNotAuthenticated="

    .line 116
    const-string v1, ", faceAuthAllowed="

    .line 118
    invoke-static {v15, v7, v0, v8, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 120
    const-string v0, ", faceDisabled="

    .line 123
    const-string v1, ", faceLockedOut="

    .line 125
    invoke-static {v15, v9, v0, v10, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 127
    const-string v0, ", goingToSleep="

    .line 130
    const-string v1, ", keyguardAwake="

    .line 132
    invoke-static {v15, v11, v0, v12, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 134
    const-string v0, ", keyguardGoingAway="

    .line 137
    const-string v1, ", listeningForFaceAssistant="

    .line 139
    move/from16 v2, v25

    .line 141
    invoke-static {v15, v2, v0, v14, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 143
    const-string v0, ", occludingAppRequestingFaceAuth="

    .line 146
    const-string v1, ", postureAllowsListening="

    .line 148
    move/from16 v2, v16

    .line 150
    move/from16 v3, v17

    .line 152
    invoke-static {v15, v2, v0, v3, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 154
    const-string v0, ", secureCameraLaunched="

    .line 157
    const-string v1, ", supportsDetect="

    .line 159
    move/from16 v2, v18

    .line 161
    move/from16 v3, v19

    .line 163
    invoke-static {v15, v2, v0, v3, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 165
    const-string v0, ", switchingUser="

    .line 168
    const-string v1, ", systemUser="

    .line 170
    move/from16 v2, v20

    .line 172
    move/from16 v3, v21

    .line 174
    invoke-static {v15, v2, v0, v3, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 176
    const-string v0, ", udfpsFingerDown="

    .line 179
    const-string v1, ", userNotTrustedOrDetectionIsNeeded="

    .line 181
    move/from16 v2, v22

    .line 183
    move/from16 v3, v23

    .line 185
    invoke-static {v15, v2, v0, v3, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 187
    const-string v0, ")"

    .line 190
    move/from16 v1, v24

    .line 192
    invoke-static {v15, v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 197
    return-object v0
    .line 198
.end method
