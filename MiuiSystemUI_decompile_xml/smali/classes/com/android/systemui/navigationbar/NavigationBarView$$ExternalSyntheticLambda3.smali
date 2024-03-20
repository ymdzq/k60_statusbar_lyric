.class public final synthetic Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/NavigationBarView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mShowSwipeUpUi:Z

    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHapticEnabled:Z

    .line 8
    if-ne v1, v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHapticEnabled:Z

    .line 13
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 15
    move-result-object p0

    .line 18
    invoke-interface {p0, v0}, Landroid/view/IWindowManager;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    const-string v0, "NavBarView"

    .line 24
    const-string v1, "Failed to enable or disable navigation bar button haptics: "

    .line 26
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :goto_0
    return-void
    .line 31
.end method
