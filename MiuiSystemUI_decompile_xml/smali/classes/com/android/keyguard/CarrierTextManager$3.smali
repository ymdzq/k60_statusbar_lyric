.class public final Lcom/android/keyguard/CarrierTextManager$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/CarrierTextManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/CarrierTextManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager$3;->this$0:Lcom/android/keyguard/CarrierTextManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onActiveDataSubscriptionIdChanged(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager$3;->this$0:Lcom/android/keyguard/CarrierTextManager;

    .line 2
    iget-object p1, p1, Lcom/android/keyguard/CarrierTextManager;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager$3;->this$0:Lcom/android/keyguard/CarrierTextManager;

    .line 12
    iget-object v0, p1, Lcom/android/keyguard/CarrierTextManager;->mCarrierTextCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Callback;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    iget-object p1, p1, Lcom/android/keyguard/CarrierTextManager;->mLogger:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

    .line 18
    const/4 v0, 0x4

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logUpdateCarrierTextForReason(I)V

    .line 21
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager$3;->this$0:Lcom/android/keyguard/CarrierTextManager;

    .line 24
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierTextManager;->updateCarrierText()V

    .line 26
    :cond_0
    return-void
    .line 29
.end method
