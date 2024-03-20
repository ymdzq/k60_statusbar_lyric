.class Lcom/android/settings/notification/AppNotificationSettings$16;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/AppNotificationSettings;->populateSingleChannelPrefs(Landroidx/preference/PreferenceCategory;Landroid/app/NotificationChannel;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/AppNotificationSettings;

.field final synthetic val$channel:Landroid/app/NotificationChannel;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/AppNotificationSettings;Landroid/app/NotificationChannel;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 460
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$16;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iput-object p2, p0, Lcom/android/settings/notification/AppNotificationSettings$16;->val$channel:Landroid/app/NotificationChannel;

    iput-object p3, p0, Lcom/android/settings/notification/AppNotificationSettings$16;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 463
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 464
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings$16;->val$channel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 465
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$16;->val$pkg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings$16;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v0, v0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$16;->val$pkg:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings$16;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget v0, v0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    :goto_0
    const-string/jumbo v2, "uid"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 468
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings$16;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v0, v0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    const-string/jumbo v2, "miui.targetPkg"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, ":android:show_fragment_args"

    .line 471
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, ":android:show_fragment"

    const-string v2, "com.android.settings.notification.ChannelNotificationSettings"

    .line 472
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.android.settings"

    const-string v2, "com.android.settings.SubSettings"

    .line 473
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/notification/AppNotificationSettings$16;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "NotifiSettings"

    const-string v0, "Failed startActivityAsUser() "

    .line 477
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v1
.end method
