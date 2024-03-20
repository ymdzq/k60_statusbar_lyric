.class Lcom/android/settings/notification/ChannelNotificationSettings$1;
.super Ljava/lang/Object;
.source "ChannelNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ChannelNotificationSettings;->setupBlock()V
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

    .line 102
    iput-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 105
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 106
    iget-object p2, p0, Lcom/android/settings/notification/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v0, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz p1, :cond_0

    iget p2, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mBackupImportance:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 107
    iget-object p2, p0, Lcom/android/settings/notification/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object p2, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 108
    iget-object p2, p0, Lcom/android/settings/notification/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v0, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    iget-object v1, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    iget v2, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    iget-object p2, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settings/notification/MiuiNotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 110
    iget-object p2, p0, Lcom/android/settings/notification/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v0, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p2, v0}, Lcom/android/settings/notification/BaseNotificationSettings;->isChannelBlocked(Landroid/app/NotificationChannel;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->updateDependents(Z)V

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 112
    iget-object p0, p0, Lcom/android/settings/notification/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-virtual {p0, p2}, Lcom/android/settings/notification/BaseNotificationSettings;->refreshNotificationShade(Z)V

    :cond_1
    return p2
.end method
