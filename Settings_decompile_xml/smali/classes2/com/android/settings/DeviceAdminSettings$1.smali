.class Lcom/android/settings/DeviceAdminSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceAdminSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminSettings;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/settings/DeviceAdminSettings$1;->this$0:Lcom/android/settings/DeviceAdminSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p0, p0, Lcom/android/settings/DeviceAdminSettings$1;->this$0:Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->updateList()V

    :cond_0
    return-void
.end method
