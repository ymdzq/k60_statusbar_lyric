.class Lcom/android/settings/MiuiDisplaySettings$9;
.super Ljava/lang/Object;
.source "MiuiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiDisplaySettings;)V
    .locals 0

    .line 1024
    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$9;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1027
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings$9;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmAutomaticAvailable(Lcom/android/settings/MiuiDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings$9;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$misAutoBrightnessEnabled(Lcom/android/settings/MiuiDisplaySettings;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fputmAutomaticBrightnessEnabled(Lcom/android/settings/MiuiDisplaySettings;Z)V

    .line 1029
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings$9;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmHandler(Lcom/android/settings/MiuiDisplaySettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings$9;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmAutomaticBrightnessEnabled(Lcom/android/settings/MiuiDisplaySettings;)Z

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1030
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
