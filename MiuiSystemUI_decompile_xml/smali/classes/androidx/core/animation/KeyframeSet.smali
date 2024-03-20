.class public abstract Landroidx/core/animation/KeyframeSet;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/core/animation/Keyframes;


# instance fields
.field public mEvaluator:Landroidx/core/animation/TypeEvaluator;

.field public final mKeyframes:Ljava/util/List;

.field public final mNumKeyframes:I


# direct methods
.method public varargs constructor <init>([Landroidx/core/animation/Keyframe;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    .line 5
    iput v0, p0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    .line 6
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    move-result-object v1

    .line 11
    iput-object v1, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 12
    const/4 p0, 0x0

    .line 14
    aget-object p0, p1, p0

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 17
    aget-object p0, p1, v0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, " "

    .line 2
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    .line 5
    if-ge v1, v2, :cond_0

    .line 7
    invoke-static {v0}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v0

    .line 12
    iget-object v2, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 18
    check-cast v2, Landroidx/core/animation/Keyframe;

    .line 19
    invoke-virtual {v2}, Landroidx/core/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, "  "

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_0

    .line 39
    :cond_0
    return-object v0
    .line 40
.end method
