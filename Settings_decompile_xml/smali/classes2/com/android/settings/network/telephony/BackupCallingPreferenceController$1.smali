.class Lcom/android/settings/network/telephony/BackupCallingPreferenceController$1;
.super Ljava/lang/Object;
.source "BackupCallingPreferenceController.java"

# interfaces
.implements Lcom/qti/extphone/ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/BackupCallingPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$1;->this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    const-string v0, "BackupCallingPrefCtrl"

    const-string v1, "mExtTelManagerServiceCallback: service connected"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$1;->this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->-$$Nest$fputmServiceConnected(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;Z)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$1;->this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->-$$Nest$fgetmScreen(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$1;->this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->-$$Nest$fgetmScreen(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object p0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$1;->this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->-$$Nest$fgetmScreen(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "backup_calling_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    const-string v0, "BackupCallingPrefCtrl"

    const-string v1, "mExtTelManagerServiceCallback: service disconnected"

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$1;->this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->-$$Nest$fputmServiceConnected(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;Z)V

    return-void
.end method
