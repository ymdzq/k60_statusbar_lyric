.class Lcom/android/settings/development/FiveGNrcaMDBPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "FiveGNrcaMDBPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController$1;->this$0:Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FiveGNrcaMDBPreferenceController"

    if-eqz v0, :cond_0

    .line 111
    iget-object p1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController$1;->this$0:Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;

    const-string/jumbo v0, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->-$$Nest$fputmAirplaneMode(Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;Z)V

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_AIRPLANE_MODE_CHANGED: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController$1;->this$0:Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;

    invoke-static {p2}, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->-$$Nest$fgetmAirplaneMode(Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController$1;->this$0:Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->-$$Nest$mupdatePreference(Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;)V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "subscription"

    .line 115
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED: subId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController$1;->this$0:Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->-$$Nest$mupdateDefaultDataSubId(Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;)V

    :cond_1
    :goto_0
    return-void
.end method
