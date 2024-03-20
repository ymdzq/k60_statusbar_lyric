.class Lcom/android/settings/notification/AppNotificationSettings$1;
.super Landroid/os/AsyncTask;
.source "AppNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/AppNotificationSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/AppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/AppNotificationSettings;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/AppNotificationSettings$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .line 100
    iget-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v2, v1, Lcom/android/settings/notification/BaseNotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, v1, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    iget-object v4, v1, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    iget v1, v1, Lcom/android/settings/notification/BaseNotificationSettings;->mUserId:I

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/settings/utils/XmsfUtils;->getXmsfChannels(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/notification/MiuiNotificationBackend;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/AppNotificationSettings;->-$$Nest$fputmXmsfFakeGroup(Lcom/android/settings/notification/AppNotificationSettings;Landroid/app/NotificationChannelGroup;)V

    .line 101
    iget-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/AppNotificationSettings;->-$$Nest$fgetmXmsfFakeGroup(Lcom/android/settings/notification/AppNotificationSettings;)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v0, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    iget-object v0, v0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    iget-object v2, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->uid:I

    .line 102
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/MiuiNotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mShowLegacyConfig:Z

    .line 104
    iget-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-boolean v0, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mShowLegacyConfig:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    iget-object v2, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    iget-object v3, v2, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v2, v2, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->uid:I

    const-string/jumbo v4, "miscellaneous"

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/android/settings/notification/MiuiNotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    .line 107
    iget-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v0, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/BaseNotificationSettings;->isChannelBlocked(Landroid/app/NotificationChannel;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    goto :goto_1

    :cond_1
    const/16 p0, -0x3e8

    :goto_1
    iput p0, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mBackupImportance:I

    goto :goto_2

    .line 109
    :cond_2
    iget-object v0, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    iget-object v2, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    iget v3, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/notification/MiuiNotificationBackend;->getChannelGroups(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/AppNotificationSettings;->-$$Nest$fputmChannelGroupList(Lcom/android/settings/notification/AppNotificationSettings;Ljava/util/List;)V

    .line 110
    iget-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/AppNotificationSettings;->-$$Nest$fgetmChannelGroupList(Lcom/android/settings/notification/AppNotificationSettings;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-static {p0}, Lcom/android/settings/notification/AppNotificationSettings;->-$$Nest$fgetmChannelGroupComparator(Lcom/android/settings/notification/AppNotificationSettings;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_2
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 97
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/AppNotificationSettings$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 118
    iget-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-boolean v0, p1, Lcom/android/settings/notification/BaseNotificationSettings;->mShowLegacyConfig:Z

    if-eqz v0, :cond_1

    .line 122
    invoke-static {p1}, Lcom/android/settings/notification/AppNotificationSettings;->-$$Nest$msetupDefaultPrefs(Lcom/android/settings/notification/AppNotificationSettings;)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {p1}, Lcom/android/settings/notification/AppNotificationSettings;->-$$Nest$mremoveDefaultPrefs(Lcom/android/settings/notification/AppNotificationSettings;)V

    .line 125
    iget-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/AppNotificationSettings;->-$$Nest$mpopulateChannelList(Lcom/android/settings/notification/AppNotificationSettings;)V

    .line 127
    :goto_0
    iget-object p0, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    iget-boolean p1, p1, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->banned:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/AppNotificationSettings;->updateDependents(Z)V

    return-void
.end method
