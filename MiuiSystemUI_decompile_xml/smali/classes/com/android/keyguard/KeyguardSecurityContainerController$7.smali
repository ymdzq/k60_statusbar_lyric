.class public final Lcom/android/keyguard/KeyguardSecurityContainerController$7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

.field public final synthetic val$onViewInflatedListener:Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$7;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$7;->val$onViewInflatedListener:Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onViewInflated(Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$7;->val$onViewInflatedListener:Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;

    .line 2
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;->onViewInflated(Lcom/android/keyguard/KeyguardInputViewController;)V

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$7;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 7
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBouncerIsOrWillBeShowing:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->handleShowBouncerMessage(Lcom/android/keyguard/KeyguardInputViewController;)V

    .line 13
    sget-object p1, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->NONE:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 16
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 18
    :cond_0
    return-void
    .line 20
.end method
