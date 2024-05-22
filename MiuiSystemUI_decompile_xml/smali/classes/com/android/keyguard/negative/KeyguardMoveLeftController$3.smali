.class public final Lcom/android/keyguard/negative/KeyguardMoveLeftController$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/negative/KeyguardMoveLeftController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/negative/KeyguardMoveLeftController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController$3;->this$0:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

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
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController$3;->this$0:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mLockScreenMagazineClient:Lcom/android/keyguard/negative/LockScreenMagazineClient;

    .line 6
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/keyguard/negative/LockScreenMagazineClient;->hideOverlay(Z)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method
