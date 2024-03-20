.class Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService$1;
.super Landroid/os/Handler;
.source "DangerousOptionsWarningService.java"


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

    .line 21
    iput-object p1, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService$1;->this$0:Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService$1;->this$0:Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;

    invoke-static {p0}, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->sendNotificationIfNeeded(Landroid/content/Context;)V

    return-void
.end method
