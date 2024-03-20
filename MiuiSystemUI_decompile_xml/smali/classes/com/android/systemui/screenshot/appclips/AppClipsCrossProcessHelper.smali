.class public final Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mProxyConnector:Lcom/android/internal/infra/ServiceConnector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v6, Lcom/android/internal/infra/ServiceConnector$Impl;

    .line 5
    new-instance v2, Landroid/content/Intent;

    .line 7
    const-class v0, Lcom/android/systemui/screenshot/appclips/AppClipsScreenshotHelperService;

    .line 9
    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    const v3, 0x40000021    # 2.0000079f

    .line 14
    invoke-virtual {p2}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    .line 17
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 21
    move-result v4

    .line 24
    new-instance v5, Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper$$ExternalSyntheticLambda0;

    .line 25
    invoke-direct {v5}, Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 27
    move-object v0, v6

    .line 30
    move-object v1, p1

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 32
    iput-object v6, p0, Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;->mProxyConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 35
    iput-object p3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 37
    return-void
    .line 39
.end method
