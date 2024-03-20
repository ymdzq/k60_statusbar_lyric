.class Lcom/android/settings/development/FiveGVonrPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "FiveGVonrPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/FiveGVonrPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/FiveGVonrPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/FiveGVonrPreferenceController;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/settings/development/FiveGVonrPreferenceController$1;->this$0:Lcom/android/settings/development/FiveGVonrPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/android/settings/development/FiveGVonrPreferenceController$1;->this$0:Lcom/android/settings/development/FiveGVonrPreferenceController;

    const-string/jumbo v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/development/FiveGVonrPreferenceController;->-$$Nest$fputmAirplaneMode(Lcom/android/settings/development/FiveGVonrPreferenceController;Z)V

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_AIRPLANE_MODE_CHANGED: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/development/FiveGVonrPreferenceController$1;->this$0:Lcom/android/settings/development/FiveGVonrPreferenceController;

    invoke-static {p2}, Lcom/android/settings/development/FiveGVonrPreferenceController;->-$$Nest$fgetmAirplaneMode(Lcom/android/settings/development/FiveGVonrPreferenceController;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FiveGVonrPreferenceController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p0, p0, Lcom/android/settings/development/FiveGVonrPreferenceController$1;->this$0:Lcom/android/settings/development/FiveGVonrPreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/FiveGVonrPreferenceController;->-$$Nest$mupdatePreference(Lcom/android/settings/development/FiveGVonrPreferenceController;)V

    goto :goto_0

    :cond_0
    const-string p2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 90
    iget-object p0, p0, Lcom/android/settings/development/FiveGVonrPreferenceController$1;->this$0:Lcom/android/settings/development/FiveGVonrPreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/FiveGVonrPreferenceController;->-$$Nest$mupdatePreference(Lcom/android/settings/development/FiveGVonrPreferenceController;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 92
    iget-object p0, p0, Lcom/android/settings/development/FiveGVonrPreferenceController$1;->this$0:Lcom/android/settings/development/FiveGVonrPreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/FiveGVonrPreferenceController;->-$$Nest$mupdatePreference(Lcom/android/settings/development/FiveGVonrPreferenceController;)V

    :cond_2
    :goto_0
    return-void
.end method
