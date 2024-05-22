.class public final Lcom/android/keyguard/KeyguardMoveHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardMoveHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardMoveHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper$1;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveHelper$1;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 2
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 5
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mSwipingInProgress:Z

    .line 8
    return-void
    .line 10
.end method
