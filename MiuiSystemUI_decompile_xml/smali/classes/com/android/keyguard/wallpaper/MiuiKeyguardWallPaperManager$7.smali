.class public final Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$7;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKeyguardShowingChanged(Z)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$7;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 5
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLiteOrLowDevice()Z

    .line 7
    move-result v2

    .line 10
    if-nez v2, :cond_1

    .line 11
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 13
    if-nez v2, :cond_1

    .line 15
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$7;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 17
    iget-object v2, v2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 19
    iget v2, v2, Lcom/android/keyguard/KeyguardCommonSettingObserver;->animationRate:I

    .line 21
    const/4 v3, 0x1

    .line 23
    if-eq v2, v3, :cond_1

    .line 24
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$7;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 26
    iget-object v4, v2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 28
    iget v4, v4, Lcom/android/keyguard/KeyguardCommonSettingObserver;->animationRate:I

    .line 30
    const/4 v5, 0x2

    .line 32
    if-eq v4, v5, :cond_0

    .line 33
    iget-object v2, v2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 35
    iget v2, v2, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mMiuiWallpaperContentState:I

    .line 37
    if-eq v2, v5, :cond_0

    .line 39
    move v2, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v2, v0

    .line 43
    :goto_0
    if-eqz v2, :cond_1

    .line 44
    goto :goto_1

    .line 46
    :cond_1
    move v3, v0

    .line 47
    :goto_1
    iput-boolean v3, v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mUseWallpaperBlur:Z

    .line 48
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$7;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 50
    iget-object v1, v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {v1}, Lcom/miui/systemui/util/CommonUtil;->isTopActivityLauncher(Landroid/content/Context;)Z

    .line 54
    move-result v1

    .line 57
    if-nez v1, :cond_3

    .line 58
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$7;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 60
    iget-object v1, v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 62
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 64
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 66
    if-nez v1, :cond_3

    .line 68
    if-eqz p1, :cond_4

    .line 70
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$7;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->updateKeyguardWallpaperState(ZZ)V

    .line 74
    :cond_4
    return-void
    .line 77
.end method
