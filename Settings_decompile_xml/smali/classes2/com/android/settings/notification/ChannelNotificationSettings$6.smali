.class Lcom/android/settings/notification/ChannelNotificationSettings$6;
.super Ljava/lang/Object;
.source "ChannelNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ChannelNotificationSettings;->setupRingtone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ChannelNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ChannelNotificationSettings;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 196
    iget-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v1, v0, Lcom/android/settings/notification/BaseNotificationSettings;->mTargetPkg:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lcom/android/settings/notification/NotificationSettingsHelper;->setSound(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 197
    iget-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    check-cast p2, Landroid/net/Uri;

    invoke-static {p1, v0, v1, p2}, Lcom/android/settings/notification/ChannelNotificationSettings;->-$$Nest$mhandleSystemRingtone(Lcom/android/settings/notification/ChannelNotificationSettings;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 198
    iget-object p2, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object p2, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 199
    iget-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object p1, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 200
    iget-object p0, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    iget-object p2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    iget v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/notification/MiuiNotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    return v2
.end method
