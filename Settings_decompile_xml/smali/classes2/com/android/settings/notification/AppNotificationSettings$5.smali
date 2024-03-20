.class Lcom/android/settings/notification/AppNotificationSettings$5;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/AppNotificationSettings;->setupFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/AppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/AppNotificationSettings;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 227
    iget-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v0, v0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p0, p0, Lcom/android/settings/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-static {p0}, Lcom/android/settings/notification/AppNotificationSettings;->-$$Nest$fgetmFocusObserver(Lcom/android/settings/notification/AppNotificationSettings;)Landroid/database/ContentObserver;

    move-result-object p0

    invoke-static {p1, v0, p2, p0}, Lcom/android/settings/notification/NotificationSettingsHelper;->notifyShowFocus(Landroid/content/Context;Ljava/lang/String;ZLandroid/database/ContentObserver;)V

    const/4 p0, 0x1

    return p0
.end method
