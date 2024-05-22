.class public final synthetic Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 5
    iput p2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda6;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 2
    iget p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda6;->f$1:I

    .line 4
    iget v1, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mActiveMobileDataSubscription:I

    .line 6
    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    .line 11
    move-result v2

    .line 14
    const/4 v4, 0x1

    .line 15
    if-eqz v2, :cond_1

    .line 16
    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 18
    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    .line 20
    move-result-object v1

    .line 23
    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 24
    invoke-virtual {v2, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    .line 26
    move-result-object v2

    .line 29
    if-eqz v1, :cond_0

    .line 30
    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    .line 34
    move-result-object v5

    .line 37
    if-eqz v5, :cond_0

    .line 38
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    .line 40
    move-result-object v1

    .line 43
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    .line 44
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    move v1, v4

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v1, v3

    .line 56
    :goto_0
    if-eqz v1, :cond_1

    .line 57
    move v3, v4

    .line 59
    :cond_1
    if-eqz v3, :cond_3

    .line 60
    sget-boolean v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->DEBUG:Z

    .line 62
    if-eqz v1, :cond_2

    .line 64
    const-string v1, "NetworkController"

    .line 66
    const-string v2, ": mForceCellularValidated to true."

    .line 68
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_2
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mForceCellularValidated:Z

    .line 73
    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    .line 75
    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mClearForceValidated:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda0;

    .line 77
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    .line 82
    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mClearForceValidated:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda0;

    .line 84
    const-wide/16 v3, 0x7d0

    .line 86
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    :cond_3
    iput p0, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mActiveMobileDataSubscription:I

    .line 91
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->doUpdateMobileControllers()V

    .line 93
    return-void
    .line 96
.end method
