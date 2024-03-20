.class Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiWifiWakeupPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController$1;->this$0:Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController$1;->this$0:Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;

    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
