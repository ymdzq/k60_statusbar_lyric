.class Lcom/android/settings/notification/AppNotificationSettings$7;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/AppNotificationSettings;->setupBadge()V
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

    .line 255
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$7;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 258
    iget-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$7;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object p1, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->showBadge:Z

    .line 259
    iget-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$7;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object p2, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    iget-object v0, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    iget v2, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    iget-object p1, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    iget-boolean p1, p1, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->showBadge:Z

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/android/settings/notification/MiuiNotificationBackend;->setShowBadge(Landroid/content/Context;Ljava/lang/String;IZ)Z

    .line 260
    iget-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$7;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object p2, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    iget-boolean p1, p1, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->showBadge:Z

    invoke-static {p2, v0, p1}, Lcom/android/settings/notification/NotificationSettingsHelper;->setShowBadge(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 261
    iget-object p0, p0, Lcom/android/settings/notification/AppNotificationSettings$7;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/BaseNotificationSettings;->refreshNotificationShade(Z)V

    const/4 p0, 0x1

    return p0
.end method
