.class public final Lcom/android/systemui/media/controls/ui/IlluminationDrawable$animateBackground$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/IlluminationDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/IlluminationDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/IlluminationDrawable$animateBackground$1$2;->this$0:Lcom/android/systemui/media/controls/ui/IlluminationDrawable;

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
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/IlluminationDrawable$animateBackground$1$2;->this$0:Lcom/android/systemui/media/controls/ui/IlluminationDrawable;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-static {p0, p1}, Lcom/android/systemui/media/controls/ui/IlluminationDrawable;->access$setBackgroundAnimation$p(Lcom/android/systemui/media/controls/ui/IlluminationDrawable;Landroid/animation/ValueAnimator;)V

    .line 5
    return-void
    .line 8
.end method
