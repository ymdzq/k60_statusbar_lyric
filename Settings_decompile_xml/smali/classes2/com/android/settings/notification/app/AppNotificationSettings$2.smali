.class Lcom/android/settings/notification/app/AppNotificationSettings$2;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/AppNotificationSettings;->setupBlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/app/AppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/app/AppNotificationSettings;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 171
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 172
    iget-object p2, p0, Lcom/android/settings/notification/app/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$2300(Lcom/android/settings/notification/app/AppNotificationSettings;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/notification/app/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$2400(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 173
    iget-object p2, p0, Lcom/android/settings/notification/app/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$2600(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object p2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$2500(Lcom/android/settings/notification/app/AppNotificationSettings;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 174
    iget-object p2, p0, Lcom/android/settings/notification/app/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$2700(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 175
    iget-object p2, p0, Lcom/android/settings/notification/app/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$3100(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$2800(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$2900(Lcom/android/settings/notification/app/AppNotificationSettings;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/notification/app/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v2}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$3000(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/settings/notification/MiuiNotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 177
    :cond_1
    iget-object p2, p0, Lcom/android/settings/notification/app/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$3200(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/android/settings/notification/NotificationSettingsHelper;->setNotificationsEnabledForPackage(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 178
    iget-object p2, p0, Lcom/android/settings/notification/app/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$3300(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    move-result-object p2

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p2, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->banned:Z

    .line 179
    iget-object p2, p0, Lcom/android/settings/notification/app/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$3400(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->banned:Z

    invoke-virtual {p2, v0}, Lcom/android/settings/notification/app/AppNotificationSettings;->updateDependents(Z)V

    const/4 p2, 0x1

    if-nez p1, :cond_2

    .line 181
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p0, p2}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$3500(Lcom/android/settings/notification/app/AppNotificationSettings;Z)V

    :cond_2
    return p2
.end method
