.class Lcom/android/settings/notification/BaseNotificationSettings$1;
.super Ljava/lang/Object;
.source "BaseNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/BaseNotificationSettings;->setupVisOverridePref(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/BaseNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/BaseNotificationSettings;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/android/settings/notification/BaseNotificationSettings$1;->this$0:Lcom/android/settings/notification/BaseNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 400
    iget-object p1, p0, Lcom/android/settings/notification/BaseNotificationSettings$1;->this$0:Lcom/android/settings/notification/BaseNotificationSettings;

    iget-object v0, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings$1;->this$0:Lcom/android/settings/notification/BaseNotificationSettings;

    invoke-static {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->-$$Nest$fgetmConversationId(Lcom/android/settings/notification/BaseNotificationSettings;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0, p0}, Lcom/android/settings/notification/BaseNotificationSettings;->startAppNotificationRuleActivity(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
