.class Lcom/android/settings/notification/AppNotificationSettings$15;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/AppNotificationSettings;->addChannelGroupBlockSwitch(Landroidx/preference/PreferenceCategory;Landroid/app/NotificationChannelGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/AppNotificationSettings;

.field final synthetic val$group:Landroid/app/NotificationChannelGroup;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/AppNotificationSettings;Landroid/app/NotificationChannelGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 441
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$15;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iput-object p2, p0, Lcom/android/settings/notification/AppNotificationSettings$15;->val$group:Landroid/app/NotificationChannelGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 444
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 445
    iget-object p2, p0, Lcom/android/settings/notification/AppNotificationSettings$15;->val$group:Landroid/app/NotificationChannelGroup;

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 446
    iget-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$15;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object p2, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    iget-object p1, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    iget-object v1, p1, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p1, p1, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->uid:I

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings$15;->val$group:Landroid/app/NotificationChannelGroup;

    invoke-virtual {p2, v1, p1, v2}, Lcom/android/settings/notification/MiuiNotificationBackend;->updateChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    .line 447
    iget-object p0, p0, Lcom/android/settings/notification/AppNotificationSettings$15;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-static {p0}, Lcom/android/settings/notification/AppNotificationSettings;->-$$Nest$mpopulateChannelList(Lcom/android/settings/notification/AppNotificationSettings;)V

    return v0
.end method
