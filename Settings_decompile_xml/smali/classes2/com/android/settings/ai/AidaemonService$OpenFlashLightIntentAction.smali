.class Lcom/android/settings/ai/AidaemonService$OpenFlashLightIntentAction;
.super Ljava/lang/Object;
.source "AidaemonService.java"

# interfaces
.implements Lcom/android/settings/ai/AidaemonService$IntentAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ai/AidaemonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenFlashLightIntentAction"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ai/AidaemonService$OpenFlashLightIntentAction-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/ai/AidaemonService$OpenFlashLightIntentAction;-><init>()V

    return-void
.end method


# virtual methods
.method public go(Landroid/content/Context;)V
    .locals 2

    .line 233
    new-instance p0, Landroid/content/Intent;

    const-string/jumbo v0, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "miui.intent.extra.IS_TOGGLE"

    const/4 v1, 0x1

    .line 234
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
