.class Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService$2;
.super Ljava/lang/Object;
.source "DangerousOptionsWarningService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;


# direct methods
.method constructor <init>(Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService$2;->this$0:Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService$2;->this$0:Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;

    invoke-static {v0}, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;->-$$Nest$fgetmHandler(Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    iget-object p0, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService$2;->this$0:Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;

    invoke-static {p0}, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;->-$$Nest$fgetmHandler(Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
