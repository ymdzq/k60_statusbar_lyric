.class public final Lcom/android/keyguard/magazine/LockScreenMagazineController$1;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$1;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$1;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 11
    iget-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mStartedWakingUp:Z

    .line 13
    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->handleSingleClickEvent()Z

    .line 17
    goto :goto_0

    .line 20
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$1;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 21
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->initLockScreenMagazinePreRes()V

    .line 23
    :cond_2
    :goto_0
    return-void
    .line 26
.end method
