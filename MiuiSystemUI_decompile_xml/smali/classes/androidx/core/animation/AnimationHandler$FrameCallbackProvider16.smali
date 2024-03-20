.class public final Landroidx/core/animation/AnimationHandler$FrameCallbackProvider16;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic this$0:Landroidx/core/animation/AnimationHandler;


# direct methods
.method public constructor <init>(Landroidx/core/animation/AnimationHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider16;->this$0:Landroidx/core/animation/AnimationHandler;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider16;->this$0:Landroidx/core/animation/AnimationHandler;

    .line 2
    const-wide/32 v0, 0xf4240

    .line 4
    div-long/2addr p1, v0

    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    iget-object v2, p0, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v3

    .line 15
    if-ge v1, v3, :cond_1

    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 21
    check-cast v2, Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;

    .line 22
    if-nez v2, :cond_0

    .line 24
    goto :goto_1

    .line 26
    :cond_0
    invoke-interface {v2, p1, p2}, Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)Z

    .line 27
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    iget-boolean p1, p0, Landroidx/core/animation/AnimationHandler;->mListDirty:Z

    .line 33
    if-eqz p1, :cond_4

    .line 35
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result p1

    .line 40
    :cond_2
    :goto_2
    add-int/lit8 p1, p1, -0x1

    .line 41
    if-ltz p1, :cond_3

    .line 43
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object p2

    .line 48
    if-nez p2, :cond_2

    .line 49
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 51
    goto :goto_2

    .line 54
    :cond_3
    iput-boolean v0, p0, Landroidx/core/animation/AnimationHandler;->mListDirty:Z

    .line 55
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 57
    move-result p1

    .line 60
    if-lez p1, :cond_5

    .line 61
    iget-object p0, p0, Landroidx/core/animation/AnimationHandler;->mProvider:Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 63
    check-cast p0, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider16;

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 70
    move-result-object p1

    .line 73
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 74
    :cond_5
    return-void
    .line 77
.end method
