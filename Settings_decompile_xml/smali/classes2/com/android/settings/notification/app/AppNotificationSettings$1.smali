.class Lcom/android/settings/notification/app/AppNotificationSettings$1;
.super Landroid/os/AsyncTask;
.source "AppNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/AppNotificationSettings;->onResume()V
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
.field final synthetic this$0:Lcom/android/settings/notification/app/AppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/app/AppNotificationSettings;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/AppNotificationSettings$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .line 104
    iget-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$000(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v2}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$100(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v3}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$200(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v4}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$300(Lcom/android/settings/notification/app/AppNotificationSettings;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/utils/XmsfUtils;->getXmsfChannels(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/notification/MiuiNotificationBackend;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/app/AppNotificationSettings;->-$$Nest$fputmXmsfFakeGroup(Lcom/android/settings/notification/app/AppNotificationSettings;Landroid/app/NotificationChannelGroup;)V

    .line 105
    iget-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationSettings;->-$$Nest$fgetmXmsfFakeGroup(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    .line 106
    invoke-static {v0}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$700(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$500(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v2}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$600(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    move-result-object v2

    iget v2, v2, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/MiuiNotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 105
    :goto_0
    invoke-static {p1, v0}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$402(Lcom/android/settings/notification/app/AppNotificationSettings;Z)Z

    .line 108
    iget-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$800(Lcom/android/settings/notification/app/AppNotificationSettings;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 109
    iget-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$1200(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    .line 110
    invoke-static {v2}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$1000(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v3}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$1100(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    move-result-object v3

    iget v3, v3, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->uid:I

    const-string/jumbo v4, "miscellaneous"

    .line 109
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/settings/notification/MiuiNotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$902(Lcom/android/settings/notification/app/AppNotificationSettings;Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;

    .line 111
    iget-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$1400(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$1500(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$1600(Lcom/android/settings/notification/app/AppNotificationSettings;Landroid/app/NotificationChannel;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$1700(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    goto :goto_1

    :cond_1
    const/16 p0, -0x3e8

    :goto_1
    invoke-static {p1, p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$1302(Lcom/android/settings/notification/app/AppNotificationSettings;I)I

    goto :goto_2

    .line 113
    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$2000(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v2}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$1800(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v3}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$1900(Lcom/android/settings/notification/app/AppNotificationSettings;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/MiuiNotificationBackend;->getChannelGroups(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/settings/notification/app/AppNotificationSettings;->-$$Nest$fputmChannelGroupList(Lcom/android/settings/notification/app/AppNotificationSettings;Ljava/util/List;)V

    .line 114
    iget-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationSettings;->-$$Nest$fgetmChannelGroupList(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->-$$Nest$fgetmChannelGroupComparator(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_2
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 101
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/AppNotificationSettings$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$2100(Lcom/android/settings/notification/app/AppNotificationSettings;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationSettings;->-$$Nest$msetupDefaultPrefs(Lcom/android/settings/notification/app/AppNotificationSettings;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationSettings;->-$$Nest$mremoveDefaultPrefs(Lcom/android/settings/notification/app/AppNotificationSettings;)V

    .line 129
    iget-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationSettings;->-$$Nest$mpopulateChannelList(Lcom/android/settings/notification/app/AppNotificationSettings;)V

    .line 131
    :goto_0
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$2200(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->banned:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/AppNotificationSettings;->updateDependents(Z)V

    return-void
.end method
