.class Lcom/android/settings/ai/AidaemonService$OpenGoogleSearchIntentAction;
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
    name = "OpenGoogleSearchIntentAction"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ai/AidaemonService$OpenGoogleSearchIntentAction-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/ai/AidaemonService$OpenGoogleSearchIntentAction;-><init>()V

    return-void
.end method

.method private getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1

    .line 157
    new-instance p0, Landroid/content/ComponentName;

    const-class v0, Lcom/android/settings/ai/AidaemonService;

    invoke-direct {p0, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p0
.end method


# virtual methods
.method public go(Landroid/content/Context;)V
    .locals 7

    const-string/jumbo v0, "search"

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/SearchManager;

    .line 152
    invoke-direct {p0, p1}, Lcom/android/settings/ai/AidaemonService$OpenGoogleSearchIntentAction;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 153
    invoke-virtual/range {v1 .. v6}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    return-void
.end method
