.class public final Lcom/android/systemui/theme/ThemeOverlayController$4;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/theme/ThemeOverlayController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/theme/ThemeOverlayController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    .line 12
    iget-object v0, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mUserManager:Landroid/os/UserManager;

    .line 14
    const-string v1, "android.intent.extra.user_handle"

    .line 16
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 23
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    const-string v3, "ThemeOverlayController"

    .line 28
    if-eqz p1, :cond_1

    .line 30
    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    .line 32
    iget-object p1, p1, Lcom/android/systemui/theme/ThemeOverlayController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 34
    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 36
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    .line 38
    move-result p1

    .line 41
    if-nez p1, :cond_0

    .line 42
    if-eqz v0, :cond_0

    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    const-string p1, "User setup not finished when "

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string p1, " was received. Deferring... Managed profile? "

    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 71
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void

    .line 75
    :cond_0
    const-string p1, "Updating overlays for user switch / profile added."

    .line 76
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    .line 81
    invoke-virtual {p0, v1}, Lcom/android/systemui/theme/ThemeOverlayController;->reevaluateSystemTheme(Z)V

    .line 83
    goto :goto_0

    .line 86
    :cond_1
    const-string p1, "android.intent.action.WALLPAPER_CHANGED"

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result p1

    .line 96
    if-eqz p1, :cond_3

    .line 97
    const-string p1, "android.service.wallpaper.extra.FROM_FOREGROUND_APP"

    .line 99
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 101
    move-result p1

    .line 104
    if-eqz p1, :cond_2

    .line 105
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    .line 107
    iput-boolean v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mAcceptColorEvents:Z

    .line 109
    const-string p0, "Wallpaper changed, allowing color events again"

    .line 111
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    goto :goto_0

    .line 116
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 117
    const-string p2, "Wallpaper changed from background app, keep deferring color events. Accepting: "

    .line 119
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    .line 124
    iget-boolean p0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mAcceptColorEvents:Z

    .line 126
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 134
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_3
    :goto_0
    return-void
    .line 138
.end method
