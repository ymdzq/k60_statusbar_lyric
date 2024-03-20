.class Lcom/android/settings/notification/app/ChannelNotificationSettings$8;
.super Ljava/lang/Object;
.source "ChannelNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/ChannelNotificationSettings;->setupLights()V
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

    .line 232
    iput-object p1, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$8;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 235
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 236
    iget-object p2, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$8;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$8;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$5900(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$8;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$6000(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1, p1}, Lcom/android/settings/notification/NotificationSettingsHelper;->setLights(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 237
    iget-object p2, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$8;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$6100(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 238
    iget-object p1, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$8;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$6200(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 239
    iget-object p1, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$8;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$6600(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$8;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$6300(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$8;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$6400(Lcom/android/settings/notification/app/ChannelNotificationSettings;)I

    move-result v0

    iget-object p0, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$8;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p0}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$6500(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/notification/MiuiNotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    const/4 p0, 0x1

    return p0
.end method
