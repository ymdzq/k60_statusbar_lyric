.class Lcom/android/settings/notification/app/ChannelNotificationSettings$1;
.super Ljava/lang/Object;
.source "ChannelNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/ChannelNotificationSettings;->setupBlock()V
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

    .line 103
    iput-object p1, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 106
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 107
    iget-object p2, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$100(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object p2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$000(Lcom/android/settings/notification/app/ChannelNotificationSettings;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 108
    iget-object p2, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$200(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 109
    iget-object p2, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$600(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$300(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$400(Lcom/android/settings/notification/app/ChannelNotificationSettings;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {v2}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$500(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/settings/notification/MiuiNotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 111
    iget-object p2, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$700(Lcom/android/settings/notification/app/ChannelNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$800(Lcom/android/settings/notification/app/ChannelNotificationSettings;Landroid/app/NotificationChannel;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->updateDependents(Z)V

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 113
    iget-object p0, p0, Lcom/android/settings/notification/app/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-static {p0, p2}, Lcom/android/settings/notification/app/ChannelNotificationSettings;->access$900(Lcom/android/settings/notification/app/ChannelNotificationSettings;Z)V

    :cond_1
    return p2
.end method
