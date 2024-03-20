.class Lcom/android/settings/notification/app/AppNotificationSettings$5;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/AppNotificationSettings;->setupFocus()V
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

    .line 223
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$5;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$5;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings$5;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$3800(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationSettings$5;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->-$$Nest$fgetmFocusObserver(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/database/ContentObserver;

    move-result-object p0

    invoke-static {p1, v0, p2, p0}, Lcom/android/settings/notification/NotificationSettingsHelper;->notifyShowFocus(Landroid/content/Context;Ljava/lang/String;ZLandroid/database/ContentObserver;)V

    const/4 p0, 0x1

    return p0
.end method
