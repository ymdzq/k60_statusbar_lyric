.class Lcom/android/settings/notification/app/ChannelNotificationSettings$4;
.super Ljava/lang/Object;
.source "ChannelNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/ChannelNotificationSettings;->setupFloat()V
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

    .line 160
    iput-object p1, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 163
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 164
    iget-object p2, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$2700(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$2800(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1, p1}, Lcom/android/settings/notification/NotificationSettingsHelper;->setFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    iget-object p2, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$2900(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$3000(Lcom/android/settings/notification/app/ChannelNotificationSettings;Landroid/app/NotificationChannel;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 169
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    :goto_0
    invoke-static {p2, p1}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$3102(Lcom/android/settings/notification/app/ChannelNotificationSettings;I)I

    .line 170
    iget-object p1, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$3300(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$3200(Lcom/android/settings/notification/app/ChannelNotificationSettings;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 171
    iget-object p1, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$3400(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 172
    iget-object p1, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$3800(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$3500(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$3600(Lcom/android/settings/notification/app/ChannelNotificationSettings;)I

    move-result v1

    iget-object p0, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$4;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p0}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$3700(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p1, p2, v1, p0}, Lcom/android/settings/notification/MiuiNotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    return v0
.end method
