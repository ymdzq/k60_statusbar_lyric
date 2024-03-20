.class public final Lcom/android/systemui/scrim/ScrimDrawable$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/scrim/ScrimDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/scrim/ScrimDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimDrawable$1;->this$0:Lcom/android/systemui/scrim/ScrimDrawable;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimDrawable$1;->this$0:Lcom/android/systemui/scrim/ScrimDrawable;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    .line 4
    if-ne p2, p1, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    .line 9
    :cond_0
    return-void
    .line 11
.end method
