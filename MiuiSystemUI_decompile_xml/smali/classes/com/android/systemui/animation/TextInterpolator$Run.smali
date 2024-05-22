.class public final Lcom/android/systemui/animation/TextInterpolator$Run;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final baseX:[F

.field public final baseY:[F

.field public final fontRuns:Ljava/util/List;

.field public final glyphIds:[I

.field public final targetX:[F

.field public final targetY:[F


# direct methods
.method public constructor <init>([I[F[F[F[FLjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/animation/TextInterpolator$Run;->glyphIds:[I

    .line 5
    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator$Run;->baseX:[F

    .line 7
    iput-object p3, p0, Lcom/android/systemui/animation/TextInterpolator$Run;->baseY:[F

    .line 9
    iput-object p4, p0, Lcom/android/systemui/animation/TextInterpolator$Run;->targetX:[F

    .line 11
    iput-object p5, p0, Lcom/android/systemui/animation/TextInterpolator$Run;->targetY:[F

    .line 13
    iput-object p6, p0, Lcom/android/systemui/animation/TextInterpolator$Run;->fontRuns:Ljava/util/List;

    .line 15
    return-void
    .line 17
.end method
