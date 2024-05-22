.class public final Landroidx/core/animation/AnimatorSet$AnimationEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mEvent:I

.field public final mNode:Landroidx/core/animation/AnimatorSet$Node;


# direct methods
.method public constructor <init>(Landroidx/core/animation/AnimatorSet$Node;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 5
    iput p2, p0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final getTime()J
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 2
    iget p0, p0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 4
    if-nez p0, :cond_0

    .line 6
    iget-wide v0, v0, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    .line 8
    return-wide v0

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    if-ne p0, v1, :cond_2

    .line 12
    iget-wide v1, v0, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    .line 14
    const-wide/16 v3, -0x1

    .line 16
    cmp-long p0, v1, v3

    .line 18
    if-nez p0, :cond_1

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    iget-object p0, v0, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 23
    invoke-virtual {p0}, Landroidx/core/animation/Animator;->getStartDelay()J

    .line 25
    move-result-wide v3

    .line 28
    add-long/2addr v3, v1

    .line 29
    :goto_0
    return-wide v3

    .line 30
    :cond_2
    iget-wide v0, v0, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    .line 31
    return-wide v0
    .line 33
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-string/jumbo v0, "start"

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    const-string v0, "delay ended"

    .line 13
    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "end"

    .line 16
    :goto_0
    const-string v1, " "

    .line 18
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v0

    .line 23
    iget-object p0, p0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 24
    iget-object p0, p0, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 38
    return-object p0
    .line 39
.end method
