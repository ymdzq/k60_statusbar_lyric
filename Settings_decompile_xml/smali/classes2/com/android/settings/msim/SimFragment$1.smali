.class Lcom/android/settings/msim/SimFragment$1;
.super Landroid/telephony/PhoneStateListener;
.source "SimFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/msim/SimFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/msim/SimFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/msim/SimFragment;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/settings/msim/SimFragment$1;->this$0:Lcom/android/settings/msim/SimFragment;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/android/settings/msim/SimFragment$1;->this$0:Lcom/android/settings/msim/SimFragment;

    invoke-static {p1}, Lcom/android/settings/msim/SimFragment;->-$$Nest$mupdateDataState(Lcom/android/settings/msim/SimFragment;)V

    .line 95
    iget-object p0, p0, Lcom/android/settings/msim/SimFragment$1;->this$0:Lcom/android/settings/msim/SimFragment;

    invoke-static {p0}, Lcom/android/settings/msim/SimFragment;->-$$Nest$mupdateNetworkType(Lcom/android/settings/msim/SimFragment;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settings/msim/SimFragment$1;->this$0:Lcom/android/settings/msim/SimFragment;

    invoke-static {p0, p1}, Lcom/android/settings/msim/SimFragment;->-$$Nest$mupdateServiceState(Lcom/android/settings/msim/SimFragment;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/msim/SimFragment$1;->this$0:Lcom/android/settings/msim/SimFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/msim/SimFragment;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    return-void
.end method
