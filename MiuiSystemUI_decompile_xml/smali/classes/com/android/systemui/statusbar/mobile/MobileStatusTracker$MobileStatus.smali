.class public final Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public activityIn:Z

.field public activityOut:Z

.field public callState:I

.field public carrierNetworkChangeMode:Z

.field public dataSim:Z

.field public dataState:I

.field public serviceState:Landroid/telephony/ServiceState;

.field public signalStrength:Landroid/telephony/SignalStrength;

.field public telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->dataState:I

    .line 3
    new-instance v1, Landroid/telephony/TelephonyDisplayInfo;

    invoke-direct {v1, v0, v0}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 4
    iput v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->callState:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->dataState:I

    .line 7
    new-instance v1, Landroid/telephony/TelephonyDisplayInfo;

    invoke-direct {v1, v0, v0}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 8
    iput v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->callState:I

    .line 9
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->activityIn:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->activityIn:Z

    .line 10
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->activityOut:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->activityOut:Z

    .line 11
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->dataSim:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->dataSim:Z

    .line 12
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->carrierNetworkChangeMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->carrierNetworkChangeMode:Z

    .line 13
    iget v0, p1, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->dataState:I

    iput v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->dataState:I

    .line 14
    iget-object v0, p1, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->serviceState:Landroid/telephony/ServiceState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->serviceState:Landroid/telephony/ServiceState;

    .line 15
    iget-object v0, p1, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->signalStrength:Landroid/telephony/SignalStrength;

    iput-object v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->signalStrength:Landroid/telephony/SignalStrength;

    .line 16
    iget-object v0, p1, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iput-object v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 17
    iget p1, p1, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->callState:I

    iput p1, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->callState:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "[activityIn="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->activityIn:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ",activityOut="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->activityOut:Z

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ",dataSim="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->dataSim:Z

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ",carrierNetworkChangeMode="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->carrierNetworkChangeMode:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ",dataState="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->dataState:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ",serviceState="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->serviceState:Landroid/telephony/ServiceState;

    .line 59
    const-string v2, ""

    .line 61
    if-nez v1, :cond_0

    .line 63
    move-object v1, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    const-string v3, "mVoiceRegState="

    .line 69
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->serviceState:Landroid/telephony/ServiceState;

    .line 74
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    .line 76
    move-result v3

    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v3, "("

    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v4, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->serviceState:Landroid/telephony/ServiceState;

    .line 88
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    .line 90
    move-result v4

    .line 93
    invoke-static {v4}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    .line 94
    move-result-object v4

    .line 97
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v4, "), mDataRegState="

    .line 101
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v4, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->serviceState:Landroid/telephony/ServiceState;

    .line 106
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    .line 108
    move-result v4

    .line 111
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v3, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->serviceState:Landroid/telephony/ServiceState;

    .line 118
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    .line 120
    move-result v3

    .line 123
    invoke-static {v3}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    .line 124
    move-result-object v3

    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v3, ")"

    .line 131
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 139
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, ",signalStrength="

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v1, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->signalStrength:Landroid/telephony/SignalStrength;

    .line 148
    if-nez v1, :cond_1

    .line 150
    move-object v1, v2

    .line 152
    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    .line 154
    move-result v1

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    move-result-object v1

    .line 161
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, ",telephonyDisplayInfo="

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v1, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 170
    if-nez v1, :cond_2

    .line 172
    goto :goto_2

    .line 174
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyDisplayInfo;->toString()Ljava/lang/String;

    .line 175
    move-result-object v2

    .line 178
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, ",callState="

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->callState:I

    .line 187
    const/16 v1, 0x5d

    .line 189
    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 191
    move-result-object p0

    .line 194
    return-object p0
    .line 195
.end method
