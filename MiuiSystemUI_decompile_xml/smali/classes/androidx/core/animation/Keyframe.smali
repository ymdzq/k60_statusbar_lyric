.class public abstract Landroidx/core/animation/Keyframe;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public mFraction:F

.field public mHasValue:Z

.field public mInterpolator:Landroidx/core/animation/Interpolator;

.field public mValueWasSetOnStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public abstract clone()Landroidx/core/animation/Keyframe;
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public abstract setValue(Ljava/lang/Object;)V
.end method
