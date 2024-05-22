.class public final Lcom/google/android/material/internal/StateListAnimator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final animationListener:Lcom/google/android/material/internal/StateListAnimator$1;

.field public lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

.field public runningAnimator:Landroid/animation/ValueAnimator;

.field public final tuples:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

    .line 13
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 15
    new-instance v0, Lcom/google/android/material/internal/StateListAnimator$1;

    .line 17
    invoke-direct {v0, p0}, Lcom/google/android/material/internal/StateListAnimator$1;-><init>(Lcom/google/android/material/internal/StateListAnimator;)V

    .line 19
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->animationListener:Lcom/google/android/material/internal/StateListAnimator$1;

    .line 22
    return-void
    .line 24
.end method


# virtual methods
.method public final addState([ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/internal/StateListAnimator$Tuple;

    .line 2
    invoke-direct {v0, p1, p2}, Lcom/google/android/material/internal/StateListAnimator$Tuple;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/internal/StateListAnimator;->animationListener:Lcom/google/android/material/internal/StateListAnimator$1;

    .line 7
    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    iget-object p0, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
    .line 17
.end method
