.class public final Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $runningSecurityShiftAnimator:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $shouldRestoreLayerType:Z

.field public final synthetic $v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;ZLandroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$1;->$runningSecurityShiftAnimator:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$1;->$shouldRestoreLayerType:Z

    .line 4
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$1;->$v:Landroid/view/View;

    .line 6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$1;->$runningSecurityShiftAnimator:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 5
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$1;->$shouldRestoreLayerType:Z

    .line 7
    if-eqz p1, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$1;->$v:Landroid/view/View;

    .line 11
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method
