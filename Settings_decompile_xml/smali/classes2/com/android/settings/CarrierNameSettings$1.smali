.class Lcom/android/settings/CarrierNameSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierNameSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CarrierNameSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CarrierNameSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CarrierNameSettings;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/settings/CarrierNameSettings$1;->this$0:Lcom/android/settings/CarrierNameSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/android/settings/CarrierNameSettings$1;->this$0:Lcom/android/settings/CarrierNameSettings;

    invoke-static {p1}, Lcom/android/settings/CarrierNameSettings;->-$$Nest$fgetmSubscriptionManager(Lcom/android/settings/CarrierNameSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/CarrierNameSettings;->-$$Nest$fputmSubInfos(Lcom/android/settings/CarrierNameSettings;Ljava/util/List;)V

    .line 112
    iget-object p0, p0, Lcom/android/settings/CarrierNameSettings$1;->this$0:Lcom/android/settings/CarrierNameSettings;

    invoke-static {p0}, Lcom/android/settings/CarrierNameSettings;->-$$Nest$mupdateCarriersState(Lcom/android/settings/CarrierNameSettings;)V

    :cond_0
    return-void
.end method
