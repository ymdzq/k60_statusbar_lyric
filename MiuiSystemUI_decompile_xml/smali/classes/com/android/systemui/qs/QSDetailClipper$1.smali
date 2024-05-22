.class public final Lcom/android/systemui/qs/QSDetailClipper$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSDetailClipper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSDetailClipper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailClipper$1;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailClipper$1;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 8
    instance-of v1, p0, Landroid/graphics/drawable/TransitionDrawable;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    check-cast p0, Landroid/graphics/drawable/TransitionDrawable;

    .line 14
    invoke-virtual {v0}, Landroid/animation/Animator;->getDuration()J

    .line 16
    move-result-wide v0

    .line 19
    long-to-double v0, v0

    .line 20
    const-wide v2, 0x3fd6666666666666L    # 0.35

    .line 21
    mul-double/2addr v0, v2

    .line 26
    double-to-int v0, v0

    .line 27
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 28
    :cond_0
    return-void
    .line 31
.end method
