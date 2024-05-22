.class public Lcom/android/systemui/screenshot/appclips/AppClipsService;
.super Landroid/app/Service;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAreTaskAndTimeIndependentPrerequisitesMet:Z

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mOptionalBubbles:Ljava/util/Optional;

.field mProxyConnectorToMainProfile:Lcom/android/internal/infra/ServiceConnector;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/screenshot/appclips/AppClipsService;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlags;Ljava/util/Optional;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mOptionalBubbles:Ljava/util/Optional;

    .line 5
    iput-object p4, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 7
    iput-object p5, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mUserManager:Landroid/os/UserManager;

    .line 9
    invoke-virtual {p5}, Landroid/os/UserManager;->isManagedProfile()Z

    .line 11
    move-result p4

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p4, :cond_1

    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mAreTaskAndTimeIndependentPrerequisitesMet:Z

    .line 18
    invoke-virtual {p5}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    .line 20
    move-result-object p2

    .line 23
    if-nez p2, :cond_0

    .line 24
    return-void

    .line 26
    :cond_0
    new-instance p3, Lcom/android/internal/infra/ServiceConnector$Impl;

    .line 27
    new-instance v2, Landroid/content/Intent;

    .line 29
    const-class p4, Lcom/android/systemui/screenshot/appclips/AppClipsService;

    .line 31
    invoke-direct {v2, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    const v3, 0x40000021    # 2.0000079f

    .line 36
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 39
    move-result v4

    .line 42
    new-instance v5, Lcom/android/systemui/screenshot/appclips/AppClipsService$$ExternalSyntheticLambda0;

    .line 43
    invoke-direct {v5}, Lcom/android/systemui/screenshot/appclips/AppClipsService$$ExternalSyntheticLambda0;-><init>()V

    .line 45
    move-object v0, p3

    .line 48
    move-object v1, p1

    .line 49
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 50
    iput-object p3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mProxyConnectorToMainProfile:Lcom/android/internal/infra/ServiceConnector;

    .line 53
    return-void

    .line 55
    :cond_1
    sget-object p4, Lcom/android/systemui/flags/Flags;->SCREENSHOT_APP_CLIPS:Lcom/android/systemui/flags/ReleasedFlag;

    .line 56
    check-cast p2, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 58
    invoke-virtual {p2, p4}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 60
    move-result p2

    .line 63
    if-nez p2, :cond_2

    .line 64
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p3}, Ljava/util/Optional;->isEmpty()Z

    .line 67
    move-result p2

    .line 70
    if-eqz p2, :cond_3

    .line 71
    goto :goto_0

    .line 73
    :cond_3
    const p2, 0x7f1302e0    # @string/config_screenshotAppClipsActivityComponent 'com.android.systemui/com.android.systemui.screenshot.appclips.AppClipsActivity'

    .line 74
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 80
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 81
    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    if-eqz p1, :cond_4

    .line 85
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 87
    move-result-object p2

    .line 90
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 91
    move-result p2

    .line 94
    if-nez p2, :cond_4

    .line 95
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 101
    move-result p1

    .line 104
    if-nez p1, :cond_4

    .line 105
    const/4 v0, 0x1

    .line 107
    :catch_0
    :cond_4
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mAreTaskAndTimeIndependentPrerequisitesMet:Z

    .line 108
    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mProxyConnectorToMainProfile:Lcom/android/internal/infra/ServiceConnector;

    .line 111
    return-void
    .line 113
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/systemui/screenshot/appclips/AppClipsService$1;

    .line 2
    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/appclips/AppClipsService$1;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsService;)V

    .line 4
    return-object p1
    .line 7
.end method
