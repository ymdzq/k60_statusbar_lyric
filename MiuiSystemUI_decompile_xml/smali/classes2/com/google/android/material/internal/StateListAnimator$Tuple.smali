.class public final Lcom/google/android/material/internal/StateListAnimator$Tuple;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final animator:Landroid/animation/ValueAnimator;

.field public final specs:[I


# direct methods
.method public constructor <init>([ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/internal/StateListAnimator$Tuple;->specs:[I

    .line 5
    iput-object p2, p0, Lcom/google/android/material/internal/StateListAnimator$Tuple;->animator:Landroid/animation/ValueAnimator;

    .line 7
    return-void
    .line 9
.end method