.class Lcom/android/settings/search/SettingsGlobalSearcher$1;
.super Ljava/lang/Object;
.source "SettingsGlobalSearcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/search/SettingsGlobalSearcher;->requestGlobalSearchUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/SettingsGlobalSearcher;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SettingsGlobalSearcher;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/settings/search/SettingsGlobalSearcher$1;->this$0:Lcom/android/settings/search/SettingsGlobalSearcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 149
    iget-object v0, p0, Lcom/android/settings/search/SettingsGlobalSearcher$1;->this$0:Lcom/android/settings/search/SettingsGlobalSearcher;

    invoke-static {v0}, Lcom/android/settings/search/SettingsGlobalSearcher;->-$$Nest$mloadData(Lcom/android/settings/search/SettingsGlobalSearcher;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/search/SettingsGlobalSearcher$1;->this$0:Lcom/android/settings/search/SettingsGlobalSearcher;

    invoke-static {v0}, Lcom/android/settings/search/SettingsGlobalSearcher;->-$$Nest$mneedUpdate(Lcom/android/settings/search/SettingsGlobalSearcher;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/search/SettingsGlobalSearcher$1;->this$0:Lcom/android/settings/search/SettingsGlobalSearcher;

    invoke-static {v0}, Lcom/android/settings/search/SettingsGlobalSearcher;->-$$Nest$mgetUri(Lcom/android/settings/search/SettingsGlobalSearcher;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/search/SettingsGlobalSearcher;->-$$Nest$mqueryUri(Lcom/android/settings/search/SettingsGlobalSearcher;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/settings/search/SettingsGlobalSearcher$1;->this$0:Lcom/android/settings/search/SettingsGlobalSearcher;

    invoke-static {v0}, Lcom/android/settings/search/SettingsGlobalSearcher;->-$$Nest$mgetDestPackageCloudData(Lcom/android/settings/search/SettingsGlobalSearcher;)Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "cloud_data_dest_package"

    .line 156
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/search/SettingsGlobalSearcher$1;->this$0:Lcom/android/settings/search/SettingsGlobalSearcher;

    invoke-static {v0}, Lcom/android/settings/search/SettingsGlobalSearcher;->-$$Nest$mgetCloudUpdateInterval(Lcom/android/settings/search/SettingsGlobalSearcher;)J

    move-result-wide v2

    const-string v0, "cloud_data_interval"

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/search/SettingsGlobalSearcher$1;->this$0:Lcom/android/settings/search/SettingsGlobalSearcher;

    invoke-static {v0}, Lcom/android/settings/search/SettingsGlobalSearcher;->-$$Nest$fgetmContext(Lcom/android/settings/search/SettingsGlobalSearcher;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/search/SettingsGlobalSearcher$1;->this$0:Lcom/android/settings/search/SettingsGlobalSearcher;

    invoke-static {v2}, Lcom/android/settings/search/SettingsGlobalSearcher;->-$$Nest$mgetUri(Lcom/android/settings/search/SettingsGlobalSearcher;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "updateGlobalSearch"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    iget-object p0, p0, Lcom/android/settings/search/SettingsGlobalSearcher$1;->this$0:Lcom/android/settings/search/SettingsGlobalSearcher;

    invoke-static {p0}, Lcom/android/settings/search/SettingsGlobalSearcher;->-$$Nest$fgetmContext(Lcom/android/settings/search/SettingsGlobalSearcher;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 162
    invoke-static {}, Lcom/android/settings/search/SettingsGlobalSearcher;->-$$Nest$sfgetKEY_LAST_UPDATE_TIMESTAMP()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/search/SettingsGlobalSearcher;->-$$Nest$sfgetKEY_LAST_UPDATE_TIMESTAMP()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {p0, v1, v5, v6}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 163
    invoke-static {}, Lcom/android/settings/search/SettingsGlobalSearcher;->-$$Nest$sfgetKEY_UPDATE_INTERVAL()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/search/SettingsGlobalSearcher;->-$$Nest$sfgetKEY_UPDATE_INTERVAL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "SettingsGlobalSearcher"

    const-string v0, "ContentProvider not exist or is international build or need not update"

    .line 151
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
