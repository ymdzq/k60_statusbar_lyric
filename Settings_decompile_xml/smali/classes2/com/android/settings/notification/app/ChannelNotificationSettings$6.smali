.class Lcom/android/settings/notification/app/ChannelNotificationSettings$6;
.super Ljava/lang/Object;
.source "ChannelNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/ChannelNotificationSettings;->setupRingtone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/app/ChannelNotificationSettings;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 197
    iget-object p1, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$4100(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$4200(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/notification/NotificationSettingsHelper;->setSound(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 198
    iget-object p1, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$4300(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Ljava/lang/String;

    move-result-object v1

    check-cast p2, Landroid/net/Uri;

    invoke-static {p1, v0, v1, p2}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->-$$Nest$mhandleSystemRingtone(Lcom/android/settings/notification/app/ChannelNotificationSettings;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 199
    iget-object p2, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$4500(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$4400(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 200
    iget-object p1, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$4600(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object p1

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 201
    iget-object p1, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$5000(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$4700(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$4800(Lcom/android/settings/notification/app/ChannelNotificationSettings;)I

    move-result v0

    iget-object p0, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p0}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$4900(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/notification/MiuiNotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    return v2
.end method
