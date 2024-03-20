.class public abstract Lcom/android/settings/ai/AidaemonService$OpenCameraIntentAction;
.super Ljava/lang/Object;
.source "AidaemonService.java"

# interfaces
.implements Lcom/android/settings/ai/AidaemonService$IntentAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ai/AidaemonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "OpenCameraIntentAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ai/AidaemonService$OpenCameraIntentAction$OpenCameraFrontIntentAction;,
        Lcom/android/settings/ai/AidaemonService$OpenCameraIntentAction$OpenCameraBackIntentAction;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public go(Landroid/content/Context;)V
    .locals 3

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x14800000

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "keyguard"

    .line 167
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ShowCameraWhenLocked"

    const/4 v2, 0x1

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "StartActivityWhenLocked"

    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/ai/AidaemonService$OpenCameraIntentAction;->putDifferentExtraToCameraIntent(Landroid/content/Intent;)V

    const-string p0, "android.media.action.STILL_IMAGE_CAMERA"

    .line 173
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    new-instance p0, Landroid/content/ComponentName;

    const-string v1, "com.android.camera"

    const-string v2, "com.android.camera.Camera"

    invoke-direct {p0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected abstract putDifferentExtraToCameraIntent(Landroid/content/Intent;)V
.end method
