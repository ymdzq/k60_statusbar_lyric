.class Lcom/android/settings/bootloader/HeartbeatJobService$1;
.super Ljava/lang/Thread;
.source "HeartbeatJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bootloader/HeartbeatJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bootloader/HeartbeatJobService;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/android/settings/bootloader/HeartbeatJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/settings/bootloader/HeartbeatJobService$1;->this$0:Lcom/android/settings/bootloader/HeartbeatJobService;

    iput-object p2, p0, Lcom/android/settings/bootloader/HeartbeatJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/android/settings/bootloader/HeartbeatJobService$1;->this$0:Lcom/android/settings/bootloader/HeartbeatJobService;

    invoke-static {v0, v0}, Lcom/android/settings/bootloader/HeartbeatJobService;->-$$Nest$mcanSendHeartbeat(Lcom/android/settings/bootloader/HeartbeatJobService;Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/settings/bootloader/HeartbeatJobService$1;->this$0:Lcom/android/settings/bootloader/HeartbeatJobService;

    invoke-static {v0}, Lcom/android/settings/bootloader/CloudDeviceStatus;->sendHeartbeat(Landroid/content/Context;)I

    move-result v0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "bootloader_heartbeat"

    const-string v1, "cancel job"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/android/settings/bootloader/HeartbeatJobService$1;->this$0:Lcom/android/settings/bootloader/HeartbeatJobService;

    invoke-static {v0}, Lcom/android/settings/bootloader/HeartbeatJobService;->cancelHeartbeatJob(Landroid/content/Context;)V

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bootloader/HeartbeatJobService$1;->this$0:Lcom/android/settings/bootloader/HeartbeatJobService;

    iget-object p0, p0, Lcom/android/settings/bootloader/HeartbeatJobService$1;->val$params:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
