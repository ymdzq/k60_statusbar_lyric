.class Lcom/android/settings/network/telephony/MobileNetworkSwitchController$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworkSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/MobileNetworkSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/MobileNetworkSwitchController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.PHONE_STATE"

    .line 177
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->-$$Nest$fgetmTelephonyManager(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)Landroid/telephony/TelephonyManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->-$$Nest$fputmCallState(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;I)V

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onReceive: mCallState= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-static {p2}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->-$$Nest$fgetmCallState(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mSubId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-static {p2}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->-$$Nest$fgetmSubId(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MobileNetworkSwitchCtrl"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->-$$Nest$mupdate(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)V

    :cond_0
    return-void
.end method
