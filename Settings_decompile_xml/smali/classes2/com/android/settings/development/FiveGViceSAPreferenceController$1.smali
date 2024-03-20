.class Lcom/android/settings/development/FiveGViceSAPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "FiveGViceSAPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/FiveGViceSAPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/FiveGViceSAPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/FiveGViceSAPreferenceController;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/settings/development/FiveGViceSAPreferenceController$1;->this$0:Lcom/android/settings/development/FiveGViceSAPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGViceSAPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ACTION_AIRPLANE_MODE_CHANGED"

    .line 104
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p0, p0, Lcom/android/settings/development/FiveGViceSAPreferenceController$1;->this$0:Lcom/android/settings/development/FiveGViceSAPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/development/FiveGViceSAPreferenceController;->updateState()V

    goto :goto_0

    :cond_0
    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "phone"

    .line 107
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_PHONE_ID:I

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_CARRIER_CONFIG_CHANGED phoneId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p2

    invoke-virtual {p2}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 110
    iget-object p0, p0, Lcom/android/settings/development/FiveGViceSAPreferenceController$1;->this$0:Lcom/android/settings/development/FiveGViceSAPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/development/FiveGViceSAPreferenceController;->updateState()V

    :cond_1
    :goto_0
    return-void
.end method
