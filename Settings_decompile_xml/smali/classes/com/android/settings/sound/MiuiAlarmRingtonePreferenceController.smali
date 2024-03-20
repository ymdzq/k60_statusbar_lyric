.class public Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;
.super Lcom/android/settings/utils/MiuiBaseController;
.source "MiuiAlarmRingtonePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/utils/MiuiBaseController<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field private mHelper:Lcom/android/settings/notification/AudioHelper;

.field private mIsRegistered:Z

.field private mManagedProfileId:I

.field private final mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings/utils/MiuiBaseController;-><init>(Landroidx/preference/PreferenceScreen;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mIsRegistered:Z

    .line 80
    new-instance p1, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController$1;-><init>(Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getManagedProfileContext()Landroid/content/Context;
    .locals 2

    .line 74
    iget v0, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mManagedProfileId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_0
    iget-object p0, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/AudioHelper;->createPackageContextAsUser(I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private updatePreference()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/settings/utils/MiuiBaseController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/Preference;Z)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "alarm_ringtone"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object p0, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result p0

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttach()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 33
    new-instance v0, Lcom/android/settings/notification/AudioHelper;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/notification/AudioHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    return-void
.end method

.method public onManagedProfileAdded(I)V
    .locals 2

    .line 100
    iget v0, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mManagedProfileId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 101
    iput p1, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mManagedProfileId:I

    .line 102
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->updatePreference()V

    :cond_0
    return-void
.end method

.method public onManagedProfileRemoved(I)V
    .locals 1

    .line 107
    iget v0, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mManagedProfileId:I

    if-ne v0, p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v0, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mManagedProfileId:I

    .line 109
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->updatePreference()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/android/settings/utils/MiuiBaseController;->onPause()V

    .line 52
    iget-boolean v0, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mIsRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mIsRegistered:Z

    .line 54
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 38
    iget-boolean v0, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mIsRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mIsRegistered:Z

    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v1, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->mManagedProfileId:I

    .line 46
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;->updatePreference()V

    return-void
.end method
