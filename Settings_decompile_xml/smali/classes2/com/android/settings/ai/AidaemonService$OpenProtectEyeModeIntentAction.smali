.class Lcom/android/settings/ai/AidaemonService$OpenProtectEyeModeIntentAction;
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
    name = "OpenProtectEyeModeIntentAction"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ai/AidaemonService$OpenProtectEyeModeIntentAction-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/ai/AidaemonService$OpenProtectEyeModeIntentAction;-><init>()V

    return-void
.end method

.method private setPaperMode(Landroid/content/Context;Z)V
    .locals 0

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "screen_paper_mode_enabled"

    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method


# virtual methods
.method public go(Landroid/content/Context;)V
    .locals 1

    .line 242
    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->isPaperModeEnable(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/ai/AidaemonService$OpenProtectEyeModeIntentAction;->setPaperMode(Landroid/content/Context;Z)V

    return-void
.end method
