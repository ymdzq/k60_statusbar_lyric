.class public Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;
.super Landroid/app/Service;
.source "DangerousOptionsWarningService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService$SettingsObserver;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mObserver:Landroid/database/ContentObserver;

.field private final mSystemPropertiesChanged:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    new-instance v0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService$1;-><init>(Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;)V

    iput-object v0, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService$2;-><init>(Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;)V

    iput-object v0, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 4

    .line 55
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 56
    iget-object v0, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 58
    new-instance v0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService$SettingsObserver;

    iget-object v1, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService$SettingsObserver;-><init>(Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;->mObserver:Landroid/database/ContentObserver;

    .line 59
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "always_finish_activities"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_text_contrast_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dangerousoptions/DangerousOptionsWarningService;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 79
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->sendNotificationIfNeeded(Landroid/content/Context;)V

    .line 72
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method
