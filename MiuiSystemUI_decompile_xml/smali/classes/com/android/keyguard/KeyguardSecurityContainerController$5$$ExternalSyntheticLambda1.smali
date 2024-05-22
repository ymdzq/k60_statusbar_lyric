.class public final synthetic Lcom/android/keyguard/KeyguardSecurityContainerController$5$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecurityContainerController$5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$5$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSecurityContainerController$5;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onViewInflated(Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$5$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSecurityContainerController$5;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$5;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 4
    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->-$$Nest$mhandleFingerprintStateChanged(Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/keyguard/KeyguardInputViewController;)V

    .line 6
    return-void
    .line 9
.end method
