.class public Lcom/android/settings/ai/AidaemonService$OpenVoiceAssistantIntentAction;
.super Ljava/lang/Object;
.source "AidaemonService.java"

# interfaces
.implements Lcom/android/settings/ai/AidaemonService$IntentAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ai/AidaemonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenVoiceAssistantIntentAction"
.end annotation


# instance fields
.field private mLaunchMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p1, p0, Lcom/android/settings/ai/AidaemonService$OpenVoiceAssistantIntentAction;->mLaunchMode:I

    return-void
.end method

.method private getBundle()Landroid/os/Bundle;
    .locals 2

    .line 141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "assistant_launch_mode"

    .line 142
    iget p0, p0, Lcom/android/settings/ai/AidaemonService$OpenVoiceAssistantIntentAction;->mLaunchMode:I

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public go(Landroid/content/Context;)V
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/android/settings/ai/AidaemonService$OpenVoiceAssistantIntentAction;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    :try_start_0
    const-string/jumbo p1, "search"

    .line 133
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 132
    invoke-static {p1}, Landroid/app/ISearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManager;

    move-result-object p1

    .line 134
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-interface {p1, v0, p0}, Landroid/app/ISearchManager;->launchAssist(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
