.class Lcom/android/settings/notification/AppNotificationSettings$2;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/AppNotificationSettings;->setupBlock()V
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

    .line 169
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 172
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 173
    iget-object p2, p0, Lcom/android/settings/notification/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-boolean v0, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mShowLegacyConfig:Z

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 174
    iget p2, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mBackupImportance:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 175
    iget-object p2, p0, Lcom/android/settings/notification/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object p2, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 176
    iget-object p2, p0, Lcom/android/settings/notification/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v0, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    iget-object v1, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    iget v2, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    iget-object p2, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settings/notification/MiuiNotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 178
    :cond_1
    iget-object p2, p0, Lcom/android/settings/notification/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v0, v0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/android/settings/notification/NotificationSettingsHelper;->setNotificationsEnabledForPackage(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 179
    iget-object p2, p0, Lcom/android/settings/notification/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v0, p2, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->banned:Z

    .line 180
    invoke-virtual {p2, v1}, Lcom/android/settings/notification/AppNotificationSettings;->updateDependents(Z)V

    const/4 p2, 0x1

    if-nez p1, :cond_2

    .line 182
    iget-object p0, p0, Lcom/android/settings/notification/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {p0, p2}, Lcom/android/settings/notification/BaseNotificationSettings;->refreshNotificationShade(Z)V

    :cond_2
    return p2
.end method
