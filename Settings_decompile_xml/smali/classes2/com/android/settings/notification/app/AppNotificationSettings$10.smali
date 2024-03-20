.class Lcom/android/settings/notification/app/AppNotificationSettings$10;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/AppNotificationSettings;->setupAllowKeyguard()V
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

    .line 296
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$10;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 299
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 300
    iget-object p2, p0, Lcom/android/settings/notification/app/AppNotificationSettings$10;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationSettings$10;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$5400(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p2, p0, v0, p1}, Lcom/android/settings/notification/NotificationSettingsHelper;->setShowKeyguard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method
