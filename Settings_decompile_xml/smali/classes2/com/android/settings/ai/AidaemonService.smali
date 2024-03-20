.class public Lcom/android/settings/ai/AidaemonService;
.super Landroid/app/Service;
.source "AidaemonService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ai/AidaemonService$Chooser;,
        Lcom/android/settings/ai/AidaemonService$IntentAction;,
        Lcom/android/settings/ai/AidaemonService$EmptyIntentAction;,
        Lcom/android/settings/ai/AidaemonService$OpenProtectEyeModeIntentAction;,
        Lcom/android/settings/ai/AidaemonService$OpenFlashLightIntentAction;,
        Lcom/android/settings/ai/AidaemonService$OpenPreviousApplicationIntentAction;,
        Lcom/android/settings/ai/AidaemonService$OpenCameraIntentAction;,
        Lcom/android/settings/ai/AidaemonService$OpenGoogleSearchIntentAction;,
        Lcom/android/settings/ai/AidaemonService$OpenVoiceAssistantIntentAction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p2, 0x2

    if-nez p1, :cond_0

    return p2

    .line 50
    :cond_0
    new-instance p3, Lcom/android/settings/ai/AidaemonService$Chooser;

    invoke-direct {p3, p0, p0}, Lcom/android/settings/ai/AidaemonService$Chooser;-><init>(Lcom/android/settings/ai/AidaemonService;Landroid/content/Context;)V

    .line 51
    invoke-virtual {p3, p1}, Lcom/android/settings/ai/AidaemonService$Chooser;->choose(Landroid/content/Intent;)Lcom/android/settings/ai/AidaemonService$IntentAction;

    move-result-object p1

    .line 52
    invoke-interface {p1, p0}, Lcom/android/settings/ai/AidaemonService$IntentAction;->go(Landroid/content/Context;)V

    return p2
.end method
