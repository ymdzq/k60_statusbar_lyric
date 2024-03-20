.class Lcom/android/settings/notification/ChannelNotificationSettings$4;
.super Ljava/lang/Object;
.source "ChannelNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ChannelNotificationSettings;->setupFloat()V
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

    .line 159
    iput-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 162
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 163
    iget-object p2, p0, Lcom/android/settings/notification/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v1, v0, Lcom/android/settings/notification/BaseNotificationSettings;->mTargetPkg:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1, v0, p1}, Lcom/android/settings/notification/NotificationSettingsHelper;->setFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 165
    iget-object p2, p0, Lcom/android/settings/notification/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v0, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p2, v0}, Lcom/android/settings/notification/BaseNotificationSettings;->isChannelBlocked(Landroid/app/NotificationChannel;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 168
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    :goto_0
    iput p1, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mBackupImportance:I

    .line 169
    iget-object p2, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 170
    iget-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object p1, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 171
    iget-object p0, p0, Lcom/android/settings/notification/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    iget-object p2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, p2, v1, p0}, Lcom/android/settings/notification/MiuiNotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    return v0
.end method
