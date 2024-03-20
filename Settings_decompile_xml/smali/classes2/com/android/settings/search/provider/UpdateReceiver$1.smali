.class Lcom/android/settings/search/provider/UpdateReceiver$1;
.super Ljava/lang/Object;
.source "UpdateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/search/provider/UpdateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/provider/UpdateReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/search/provider/UpdateReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/android/settings/search/provider/UpdateReceiver$1;->this$0:Lcom/android/settings/search/provider/UpdateReceiver;

    iput-object p2, p0, Lcom/android/settings/search/provider/UpdateReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings/search/provider/UpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 33
    iget-object v0, p0, Lcom/android/settings/search/provider/UpdateReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    :cond_0
    invoke-static {}, Lcom/android/settingslib/search/SearchUtils;->clearPackageExistedCache()V

    :cond_1
    const-string/jumbo v1, "miui.intent.action.SETTINGS_SEARCH_INIT"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 42
    iget-object v2, p0, Lcom/android/settings/search/provider/UpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/settings/search/provider/SettingsTreeHelper;->getInstance(Landroid/content/Context;Z)Lcom/android/settings/search/provider/SettingsTreeHelper;

    move-result-object v2

    const-string/jumbo v3, "miui.intent.action.SEPARATE_APP_SEARCH_RESULT_UPDATE"

    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    iget-object v4, p0, Lcom/android/settings/search/provider/UpdateReceiver$1;->val$context:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->forceUpdate(Landroid/content/Context;Z)V

    :cond_2
    const-string/jumbo v4, "miui.intent.action.ACTION_CLOUD_DATA_UPDATE"

    .line 50
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    iget-object v4, p0, Lcom/android/settings/search/provider/UpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/cloud/CloudDataUpdateInjector;->onCloudDataUpdate(Landroid/content/Context;)V

    :cond_3
    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    .line 56
    iget-object v0, p0, Lcom/android/settings/search/provider/UpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/search/provider/UpdateReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2, v0, p0}, Lcom/android/settings/search/provider/SettingsTreeHelper;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_4
    return-void
.end method
