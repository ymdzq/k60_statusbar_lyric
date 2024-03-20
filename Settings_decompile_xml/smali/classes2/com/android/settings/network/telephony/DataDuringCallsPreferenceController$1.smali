.class Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "DataDuringCallsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController$1;->this$0:Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController$1;->this$0:Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "DataDuringCalls"

    const-string p2, "DDS is changed"

    .line 58
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object p0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController$1;->this$0:Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->refreshPreference()V

    :cond_0
    return-void
.end method
