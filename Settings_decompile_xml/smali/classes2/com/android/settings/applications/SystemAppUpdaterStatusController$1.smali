.class Lcom/android/settings/applications/SystemAppUpdaterStatusController$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemAppUpdaterStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/SystemAppUpdaterStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/SystemAppUpdaterStatusController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/SystemAppUpdaterStatusController;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/settings/applications/SystemAppUpdaterStatusController$1;->this$0:Lcom/android/settings/applications/SystemAppUpdaterStatusController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.xiaomi.market.action.APP_UPDATE_CHECKED"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "extra_need_update_app_count"

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 43
    iget-object p0, p0, Lcom/android/settings/applications/SystemAppUpdaterStatusController$1;->this$0:Lcom/android/settings/applications/SystemAppUpdaterStatusController;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/SystemAppUpdaterStatusController;->updateAppCount(I)V

    :cond_0
    return-void
.end method
