.class Lcom/android/settings/notification/app/AppNotificationSettings$7;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/AppNotificationSettings;->setupBadge()V
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

    .line 254
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$7;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 257
    iget-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$7;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$4000(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->showBadge:Z

    .line 258
    iget-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$7;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$4500(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/notification/app/AppNotificationSettings$7;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$4100(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings$7;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$4200(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$7;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$4300(Lcom/android/settings/notification/app/AppNotificationSettings;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/notification/app/AppNotificationSettings$7;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v2}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$4400(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->showBadge:Z

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/settings/notification/MiuiNotificationBackend;->setShowBadge(Landroid/content/Context;Ljava/lang/String;IZ)Z

    .line 259
    iget-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$7;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$4600(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/notification/app/AppNotificationSettings$7;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$4700(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings$7;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$4800(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->showBadge:Z

    invoke-static {p1, p2, v0}, Lcom/android/settings/notification/NotificationSettingsHelper;->setShowBadge(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 260
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationSettings$7;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$4900(Lcom/android/settings/notification/app/AppNotificationSettings;Z)V

    const/4 p0, 0x1

    return p0
.end method
