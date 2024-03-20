.class Lcom/android/settings/notification/ChannelNotificationSettings$5;
.super Ljava/lang/Object;
.source "ChannelNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ChannelNotificationSettings;


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 182
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 183
    iget-object p2, p0, Lcom/android/settings/notification/ChannelNotificationSettings$5;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/notification/ChannelNotificationSettings$5;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mTargetPkg:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v0, p0, p1}, Lcom/android/settings/notification/NotificationSettingsHelper;->setShowKeyguard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method
