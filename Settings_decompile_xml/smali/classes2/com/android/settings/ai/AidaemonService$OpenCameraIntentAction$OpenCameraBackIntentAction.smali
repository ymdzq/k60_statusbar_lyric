.class public Lcom/android/settings/ai/AidaemonService$OpenCameraIntentAction$OpenCameraBackIntentAction;
.super Lcom/android/settings/ai/AidaemonService$OpenCameraIntentAction;
.source "AidaemonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ai/AidaemonService$OpenCameraIntentAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OpenCameraBackIntentAction"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/android/settings/ai/AidaemonService$OpenCameraIntentAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected putDifferentExtraToCameraIntent(Landroid/content/Intent;)V
    .locals 1

    const-string p0, "android.intent.extras.CAMERA_FACING"

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method
