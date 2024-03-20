.class public final Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sAnimatorHandler:Ljava/lang/ThreadLocal;


# instance fields
.field public final mAnimationCallbacks:Ljava/util/ArrayList;

.field public final mCallbackDispatcher:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

.field public mCurrentFrameTime:J

.field public final mDelayedCallbackStartTime:Landroid/util/ArrayMap;

.field public mListDirty:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 19
    invoke-direct {v0, p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;)V

    .line 21
    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 24
    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    .line 28
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 31
    return-void
    .line 33
.end method
