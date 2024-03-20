.class Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoDataSwitchPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController$1;->this$0:Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController$1;->this$0:Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController$1;->this$0:Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->refreshPreference()V

    :cond_0
    return-void
.end method
