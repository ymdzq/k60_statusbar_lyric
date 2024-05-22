.class public final Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation$play$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $onAnimationEnd:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController$play$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation$play$2;->$onAnimationEnd:Ljava/lang/Runnable;

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
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation$play$2;->$onAnimationEnd:Ljava/lang/Runnable;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method
