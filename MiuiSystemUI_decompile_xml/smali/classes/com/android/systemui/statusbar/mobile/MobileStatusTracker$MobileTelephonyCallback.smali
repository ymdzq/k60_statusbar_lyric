.class public final Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;
.implements Landroid/telephony/TelephonyCallback$SignalStrengthsListener;
.implements Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
.implements Landroid/telephony/TelephonyCallback$DataActivityListener;
.implements Landroid/telephony/TelephonyCallback$CarrierNetworkListener;
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;
.implements Landroid/telephony/TelephonyCallback$CallStateListener;
.implements Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;

    .line 2
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onActiveDataSubscriptionIdChanged(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->updateDataSim()V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;

    .line 7
    iget-object p1, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->mCallback:Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    .line 9
    new-instance v0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V

    .line 15
    const/4 p0, 0x1

    .line 18
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->onMobileStatusChanged(ZLcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V

    .line 19
    return-void
    .line 22
.end method

.method public final onCallStateChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 4
    iput p1, v0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->callState:I

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->mCallback:Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    .line 8
    new-instance p1, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 10
    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V

    .line 12
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->onMobileStatusChanged(ZLcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V

    .line 16
    return-void
    .line 19
.end method

.method public final onCarrierNetworkChange(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 4
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->carrierNetworkChangeMode:Z

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->mCallback:Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    .line 8
    new-instance p1, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 10
    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V

    .line 12
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->onMobileStatusChanged(ZLcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V

    .line 16
    return-void
    .line 19
.end method

.method public final onDataActivity(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x3

    .line 9
    if-eq p1, v3, :cond_1

    .line 10
    if-ne p1, v2, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    move v4, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move v4, v2

    .line 17
    :goto_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 18
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->activityIn:Z

    .line 20
    if-eq p1, v3, :cond_3

    .line 22
    const/4 v3, 0x2

    .line 24
    if-ne p1, v3, :cond_2

    .line 25
    goto :goto_2

    .line 27
    :cond_2
    move v2, v1

    .line 28
    :cond_3
    :goto_2
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->activityOut:Z

    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;

    .line 31
    iget-object p1, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->mCallback:Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    .line 33
    new-instance v0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 37
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V

    .line 39
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->onMobileStatusChanged(ZLcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V

    .line 42
    return-void
    .line 45
.end method

.method public final onDataConnectionStateChanged(II)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->TAG:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "onDataConnectionStateChanged: state="

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string p1, ", networkType="

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
    .line 31
.end method

.method public final onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 4
    iput-object p1, v0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->mCallback:Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    .line 8
    new-instance p1, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 10
    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V

    .line 12
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->onMobileStatusChanged(ZLcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V

    .line 16
    return-void
    .line 19
.end method

.method public final onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getNetworkType()I

    .line 6
    move-result p1

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;

    .line 10
    iget-object v1, v1, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->TAG:Ljava/lang/String;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    const-string v3, "onPreciseDataConnectionStateChanged: state="

    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v3, ", networkType="

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 35
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;

    .line 39
    iget-object p1, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 41
    iput v0, p1, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->dataState:I

    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->mCallback:Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 47
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V

    .line 49
    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->onMobileStatusChanged(ZLcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V

    .line 53
    return-void
    .line 56
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->TAG:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    const-string v2, "onServiceStateChanged state="

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;

    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 25
    iput-object p1, v0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->serviceState:Landroid/telephony/ServiceState;

    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->mCallback:Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    .line 29
    new-instance p1, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 31
    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V

    .line 33
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->onMobileStatusChanged(ZLcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V

    .line 37
    return-void
    .line 40
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->TAG:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    const-string v2, "onSignalStrengthsChanged signalStrength="

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;

    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 25
    iput-object p1, v0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;->signalStrength:Landroid/telephony/SignalStrength;

    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->mCallback:Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    .line 29
    new-instance p1, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 31
    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V

    .line 33
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->onMobileStatusChanged(ZLcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V

    .line 37
    return-void
    .line 40
.end method
