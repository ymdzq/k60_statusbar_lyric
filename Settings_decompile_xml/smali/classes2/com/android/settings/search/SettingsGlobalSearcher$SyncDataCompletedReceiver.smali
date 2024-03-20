.class final Lcom/android/settings/search/SettingsGlobalSearcher$SyncDataCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsGlobalSearcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SettingsGlobalSearcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SyncDataCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/SettingsGlobalSearcher;


# direct methods
.method private constructor <init>(Lcom/android/settings/search/SettingsGlobalSearcher;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/android/settings/search/SettingsGlobalSearcher$SyncDataCompletedReceiver;->this$0:Lcom/android/settings/search/SettingsGlobalSearcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search/SettingsGlobalSearcher;Lcom/android/settings/search/SettingsGlobalSearcher$SyncDataCompletedReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/search/SettingsGlobalSearcher$SyncDataCompletedReceiver;-><init>(Lcom/android/settings/search/SettingsGlobalSearcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 478
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.settings.action.SYNC_GLOBAL_SEARCH"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 479
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SettingsGlobalSearcher"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object p0, p0, Lcom/android/settings/search/SettingsGlobalSearcher$SyncDataCompletedReceiver;->this$0:Lcom/android/settings/search/SettingsGlobalSearcher;

    invoke-static {p0}, Lcom/android/settings/search/SettingsGlobalSearcher;->-$$Nest$mloadDataAsync(Lcom/android/settings/search/SettingsGlobalSearcher;)V

    :cond_0
    return-void
.end method
