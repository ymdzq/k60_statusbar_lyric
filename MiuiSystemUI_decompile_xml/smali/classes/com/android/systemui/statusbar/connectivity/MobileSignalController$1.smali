.class public final Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mLastStatus:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onMobileStatusChanged(ZLcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->toString()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->mLastStatus:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    .line 13
    if-nez v1, :cond_0

    .line 15
    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->mLastStatus:Ljava/lang/String;

    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    sget-object v1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->SSDF:Ljava/text/SimpleDateFormat;

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    move-result-wide v4

    .line 29
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    move-result-object v4

    .line 33
    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, ","

    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    iget v0, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistoryIndex:I

    .line 53
    iget-object v1, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistory:[Ljava/lang/String;

    .line 55
    aput-object p0, v1, v0

    .line 57
    add-int/2addr v0, v2

    .line 59
    rem-int/lit8 v0, v0, 0x40

    .line 60
    iput v0, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistoryIndex:I

    .line 62
    :cond_0
    iget-object p0, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatus:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 64
    iput-object p2, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatus:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 66
    iget-boolean v0, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mAirplaneMode:Z

    .line 68
    const/4 v1, 0x0

    .line 70
    iget-object v4, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mUpdateTelephony:Lcom/android/systemui/statusbar/connectivity/MobileSignalController$$ExternalSyntheticLambda0;

    .line 71
    iget-object v5, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mReceiverHandler:Landroid/os/Handler;

    .line 73
    iget-object v6, v3, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTag:Ljava/lang/String;

    .line 75
    iget-object v7, v3, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 77
    if-nez v0, :cond_5

    .line 79
    iget v0, p2, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->callState:I

    .line 81
    if-nez v0, :cond_1

    .line 83
    move v0, v2

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    move v0, v1

    .line 87
    :goto_0
    if-eqz v0, :cond_5

    .line 88
    if-eqz p0, :cond_2

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->serviceState:Landroid/telephony/ServiceState;

    .line 92
    goto :goto_1

    .line 94
    :cond_2
    const/4 p0, 0x0

    .line 95
    :goto_1
    invoke-static {p0}, Lcom/android/systemui/statusbar/mobile/MobileUtils;->isInService(Landroid/telephony/ServiceState;)Z

    .line 96
    move-result p0

    .line 99
    if-eqz p0, :cond_5

    .line 100
    iget-object p0, p2, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->serviceState:Landroid/telephony/ServiceState;

    .line 102
    invoke-static {p0}, Lcom/android/systemui/statusbar/mobile/MobileUtils;->isInService(Landroid/telephony/ServiceState;)Z

    .line 104
    move-result p0

    .line 107
    if-nez p0, :cond_5

    .line 108
    move-object p0, v7

    .line 110
    check-cast p0, Lcom/android/systemui/statusbar/SignalIcon$MobileState;

    .line 111
    iget p0, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->level:I

    .line 113
    if-le p0, v2, :cond_5

    .line 115
    iget-boolean p0, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSupportSignalOptimization:Z

    .line 117
    if-nez p0, :cond_3

    .line 119
    goto :goto_3

    .line 121
    :cond_3
    const-string p0, "delay UpdateTelephony"

    .line 122
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iput-boolean v2, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mDelayUpdateTelephony:Z

    .line 127
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->isCbnSim()Z

    .line 129
    move-result p0

    .line 132
    if-eqz p0, :cond_4

    .line 133
    const-wide/16 p0, 0x3a98

    .line 135
    goto :goto_2

    .line 137
    :cond_4
    const-wide/16 p0, 0x2710

    .line 138
    :goto_2
    invoke-virtual {v5, v4, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    :goto_3
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->updateTelephony()V

    .line 143
    goto :goto_4

    .line 146
    :cond_5
    iget-boolean p0, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mDelayUpdateTelephony:Z

    .line 147
    if-eqz p0, :cond_7

    .line 149
    iget-object p0, p2, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->serviceState:Landroid/telephony/ServiceState;

    .line 151
    invoke-static {p0}, Lcom/android/systemui/statusbar/mobile/MobileUtils;->isInService(Landroid/telephony/ServiceState;)Z

    .line 153
    move-result p0

    .line 156
    if-nez p0, :cond_6

    .line 157
    iget-boolean p0, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mAirplaneMode:Z

    .line 159
    if-eqz p0, :cond_7

    .line 161
    :cond_6
    const-string p0, "cancel delay UpdateTelephony"

    .line 163
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iput-boolean v1, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mDelayUpdateTelephony:Z

    .line 168
    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    :cond_7
    if-eqz p1, :cond_8

    .line 173
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->updateTelephony()V

    .line 175
    goto :goto_4

    .line 178
    :cond_8
    check-cast v7, Lcom/android/systemui/statusbar/SignalIcon$MobileState;

    .line 179
    iget-boolean p0, p2, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->activityIn:Z

    .line 181
    iput-boolean p0, v7, Lcom/android/systemui/statusbar/SignalIcon$State;->activityIn:Z

    .line 183
    iget-boolean p0, p2, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->activityOut:Z

    .line 185
    iput-boolean p0, v7, Lcom/android/systemui/statusbar/SignalIcon$State;->activityOut:Z

    .line 187
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    .line 189
    :goto_4
    iget p0, p2, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->callState:I

    .line 192
    if-ne p0, v2, :cond_9

    .line 194
    iget p1, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastMobileCallState:I

    .line 196
    if-eq p0, p1, :cond_9

    .line 198
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 200
    move-result p0

    .line 203
    const/16 p1, 0x3e8

    .line 204
    if-ne p0, p1, :cond_9

    .line 206
    iget p0, p2, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->callState:I

    .line 208
    iput p0, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastMobileCallState:I

    .line 210
    iget-object p0, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMainHandler:Landroid/os/Handler;

    .line 212
    new-instance p1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$$ExternalSyntheticLambda1;

    .line 214
    invoke-direct {p1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$$ExternalSyntheticLambda1;-><init>()V

    .line 216
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    :cond_9
    iget p0, p2, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->callState:I

    .line 222
    if-nez p0, :cond_a

    .line 224
    iput v1, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastMobileCallState:I

    .line 226
    :cond_a
    return-void
    .line 228
.end method
