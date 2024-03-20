.class Lcom/android/settings/notification/ChannelNotificationSettings$3;
.super Ljava/lang/Object;
.source "ChannelNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ChannelNotificationSettings;


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 144
    iget-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$3;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v0, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/BaseNotificationSettings;->isChannelBlocked(Landroid/app/NotificationChannel;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$3;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mBackupImportance:I

    .line 148
    iget-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$3;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object p2, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    iget p1, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mBackupImportance:I

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 149
    iget-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$3;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object p1, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 150
    iget-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$3;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object p2, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    iget-object v1, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    iget v2, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    iget-object p1, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p2, v1, v2, p1}, Lcom/android/settings/notification/MiuiNotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 151
    iget-object p0, p0, Lcom/android/settings/notification/ChannelNotificationSettings$3;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ChannelNotificationSettings;->updateDependents(Z)V

    return v0
.end method
