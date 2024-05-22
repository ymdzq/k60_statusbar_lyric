.class public final Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$6;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$6;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$6;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mBouncerShow:Z

    .line 4
    return-void
    .line 6
.end method

.method public final onUserSwitchComplete(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$6;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 4
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 6
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 8
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->updateKeyguardWallpaperState(ZZ)V

    .line 11
    return-void
    .line 14
.end method

.method public final onUserSwitching(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$6;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->initKeyguardWallpaperManager()V

    .line 4
    return-void
    .line 7
.end method
