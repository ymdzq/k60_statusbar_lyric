.class public final Lcom/android/keyguard/KeyguardSecurityContainerController$15;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$15;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$15;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainerController$2;

    .line 10
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->userActivity()V

    .line 12
    :cond_0
    const/4 p0, 0x1

    .line 15
    return p0
    .line 16
.end method
