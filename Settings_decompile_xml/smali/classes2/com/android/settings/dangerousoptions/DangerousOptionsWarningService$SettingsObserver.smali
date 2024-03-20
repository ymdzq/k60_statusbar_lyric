.class Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DangerousOptionsWarningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;


# direct methods
.method public constructor <init>(Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;Landroid/os/Handler;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService$SettingsObserver;->this$0:Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;

    .line 41
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 47
    iget-object p1, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService$SettingsObserver;->this$0:Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;

    invoke-static {p1}, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;->-$$Nest$fgetmHandler(Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    iget-object p0, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService$SettingsObserver;->this$0:Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;

    invoke-static {p0}, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;->-$$Nest$fgetmHandler(Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
