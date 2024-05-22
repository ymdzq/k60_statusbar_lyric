.class public final Lcom/android/systemui/statusbar/SignalIcon$MobileState;
.super Lcom/android/systemui/statusbar/SignalIcon$State;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public airplaneMode:Z

.field public callState:I

.field public carrierNetworkChangeMode:Z

.field public dataConnected:Z

.field public dataSim:Z

.field public inSignalOptimizationState:Z

.field public isDefault:Z

.field public isEmergency:Z

.field public miuiDataType:I

.field public miuiVoiceType:I

.field public networkName:Ljava/lang/String;

.field public networkNameData:Ljava/lang/String;

.field public roaming:Z

.field public showName:Ljava/lang/String;

.field public showType:I

.field public sltEnabled:Z

.field public speedHd:Z

.field public volte:Z

.field public volteNoService:Z

.field public vonr:Z

.field public vowifi:Z


# virtual methods
.method public final copyFrom(Lcom/android/systemui/statusbar/SignalIcon$State;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/SignalIcon$State;->copyFrom(Lcom/android/systemui/statusbar/SignalIcon$State;)V

    .line 2
    check-cast p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;

    .line 5
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->dataSim:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->dataSim:Z

    .line 9
    iget-object v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    .line 17
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->dataConnected:Z

    .line 19
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->dataConnected:Z

    .line 21
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->isDefault:Z

    .line 23
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->isDefault:Z

    .line 25
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->isEmergency:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->isEmergency:Z

    .line 29
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->airplaneMode:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->airplaneMode:Z

    .line 33
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    .line 37
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->roaming:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->roaming:Z

    .line 41
    iget v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->callState:I

    .line 43
    iput v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->callState:I

    .line 45
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->volte:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->volte:Z

    .line 49
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->vowifi:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->vowifi:Z

    .line 53
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->vonr:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->vonr:Z

    .line 57
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->volteNoService:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->volteNoService:Z

    .line 61
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->speedHd:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->speedHd:Z

    .line 65
    iget v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->miuiDataType:I

    .line 67
    iput v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->miuiDataType:I

    .line 69
    iget v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->miuiVoiceType:I

    .line 71
    iput v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->miuiVoiceType:I

    .line 73
    iget v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->showType:I

    .line 75
    iput v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->showType:I

    .line 77
    iget-object v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->showName:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->showName:Ljava/lang/String;

    .line 81
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->inSignalOptimizationState:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->inSignalOptimizationState:Z

    .line 85
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->sltEnabled:Z

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->sltEnabled:Z

    .line 89
    return-void
    .line 91
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/SignalIcon$State;->equals(Ljava/lang/Object;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;

    .line 8
    iget-object v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    .line 12
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    .line 22
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->dataSim:Z

    .line 30
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->dataSim:Z

    .line 32
    if-ne v0, v1, :cond_0

    .line 34
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->dataConnected:Z

    .line 36
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->dataConnected:Z

    .line 38
    if-ne v0, v1, :cond_0

    .line 40
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->isEmergency:Z

    .line 42
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->isEmergency:Z

    .line 44
    if-ne v0, v1, :cond_0

    .line 46
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->airplaneMode:Z

    .line 48
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->airplaneMode:Z

    .line 50
    if-ne v0, v1, :cond_0

    .line 52
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    .line 54
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    .line 56
    if-ne v0, v1, :cond_0

    .line 58
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->isDefault:Z

    .line 60
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->isDefault:Z

    .line 62
    if-ne v0, v1, :cond_0

    .line 64
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->roaming:Z

    .line 66
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->roaming:Z

    .line 68
    if-ne v0, v1, :cond_0

    .line 70
    iget v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->callState:I

    .line 72
    iget v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->callState:I

    .line 74
    if-ne v0, v1, :cond_0

    .line 76
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->volte:Z

    .line 78
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->volte:Z

    .line 80
    if-ne v0, v1, :cond_0

    .line 82
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->vowifi:Z

    .line 84
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->vowifi:Z

    .line 86
    if-ne v0, v1, :cond_0

    .line 88
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->vonr:Z

    .line 90
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->vonr:Z

    .line 92
    if-ne v0, v1, :cond_0

    .line 94
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->volteNoService:Z

    .line 96
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->volteNoService:Z

    .line 98
    if-ne v0, v1, :cond_0

    .line 100
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->speedHd:Z

    .line 102
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->speedHd:Z

    .line 104
    if-ne v0, v1, :cond_0

    .line 106
    iget v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->miuiDataType:I

    .line 108
    iget v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->miuiDataType:I

    .line 110
    if-ne v0, v1, :cond_0

    .line 112
    iget v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->miuiVoiceType:I

    .line 114
    iget v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->miuiVoiceType:I

    .line 116
    if-ne v0, v1, :cond_0

    .line 118
    iget v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->showType:I

    .line 120
    iget v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->showType:I

    .line 122
    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->showName:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->showName:Ljava/lang/String;

    .line 128
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    move-result v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->inSignalOptimizationState:Z

    .line 136
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->inSignalOptimizationState:Z

    .line 138
    if-ne v0, v1, :cond_0

    .line 140
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->sltEnabled:Z

    .line 142
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->sltEnabled:Z

    .line 144
    if-ne p1, p0, :cond_0

    .line 146
    const/4 p0, 0x1

    .line 148
    goto :goto_0

    .line 149
    :cond_0
    const/4 p0, 0x0

    .line 150
    :goto_0
    return p0
    .line 151
.end method

.method public final toString(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/SignalIcon$State;->toString(Ljava/lang/StringBuilder;)V

    .line 2
    const/16 v0, 0x2c

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "dataSim="

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->dataSim:Z

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "networkName="

    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, "networkNameData="

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, "dataConnected="

    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->dataConnected:Z

    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo v1, "roaming="

    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->roaming:Z

    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "isDefault="

    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->isDefault:Z

    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "isEmergency="

    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->isEmergency:Z

    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, "airplaneMode="

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->airplaneMode:Z

    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "carrierNetworkChangeMode="

    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    .line 120
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    const-string v0, "callState="

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->callState:I

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v0, "volte="

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->volte:Z

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    const-string/jumbo v0, "vowifi="

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->vowifi:Z

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 157
    const-string/jumbo v0, "vonr="

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->vonr:Z

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 168
    const-string/jumbo v0, "volteNoService="

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->volteNoService:Z

    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 179
    const-string/jumbo v0, "speedHd="

    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->speedHd:Z

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 190
    const-string v0, "miuiDataType="

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->miuiDataType:I

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    const-string v0, "miuiVoiceType="

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->miuiVoiceType:I

    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    const-string/jumbo v0, "showType="

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->showType:I

    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    const-string/jumbo v0, "showName="

    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->showName:Ljava/lang/String;

    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v0, "inSignalOptimizationState="

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->inSignalOptimizationState:Z

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 242
    const-string/jumbo v0, "sltEnabled="

    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;->sltEnabled:Z

    .line 251
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 253
    return-void
    .line 256
.end method
