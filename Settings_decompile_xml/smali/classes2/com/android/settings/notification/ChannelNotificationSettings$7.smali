.class Lcom/android/settings/notification/ChannelNotificationSettings$7;
.super Ljava/lang/Object;
.source "ChannelNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ChannelNotificationSettings;->setupVibrate()V
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

    .line 212
    iput-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$7;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 215
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 216
    iget-object p2, p0, Lcom/android/settings/notification/ChannelNotificationSettings$7;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings$7;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v1, v0, Lcom/android/settings/notification/BaseNotificationSettings;->mTargetPkg:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1, v0, p1}, Lcom/android/settings/notification/NotificationSettingsHelper;->setVibrate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 217
    iget-object p2, p0, Lcom/android/settings/notification/ChannelNotificationSettings$7;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object p2, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 218
    iget-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$7;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object p1, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 219
    iget-object p0, p0, Lcom/android/settings/notification/ChannelNotificationSettings$7;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    iget-object p2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    iget v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/notification/MiuiNotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    const/4 p0, 0x1

    return p0
.end method
