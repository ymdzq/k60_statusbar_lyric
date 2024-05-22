.class public Landroidx/constraintlayout/motion/widget/MotionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;


# static fields
.field public static IS_IN_EDIT_MODE:Z


# instance fields
.field public mAnimationStartTime:J

.field public mBeginState:I

.field public final mBoundsCheck:Landroid/graphics/RectF;

.field public mCurrentState:I

.field public mDebugPath:I

.field public final mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

.field public mDecoratorsHelpers:Ljava/util/ArrayList;

.field public mDelayedApply:Z

.field public mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

.field public mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

.field public mEndState:I

.field public mEndWrapHeight:I

.field public mEndWrapWidth:I

.field public final mFrameArrayList:Ljava/util/HashMap;

.field public mFrames:I

.field public mHeightMeasureMode:I

.field public mInLayout:Z

.field public mInTransition:Z

.field public mInteractionEnabled:Z

.field public mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

.field public mInverseMatrix:Landroid/graphics/Matrix;

.field public mKeepAnimating:Z

.field public final mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

.field public mLastDrawTime:J

.field public mLastFps:F

.field public mLastHeightMeasureSpec:I

.field public mLastLayoutHeight:I

.field public mLastLayoutWidth:I

.field public mLastVelocity:F

.field public mLastWidthMeasureSpec:I

.field public mListenerPosition:F

.field public mListenerState:I

.field public mMeasureDuringTransition:Z

.field public final mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

.field public mNeedsFireTransitionCompleted:Z

.field public mOnComplete:Ljava/lang/Runnable;

.field public mOnHideHelpers:Ljava/util/ArrayList;

.field public mOnShowHelpers:Ljava/util/ArrayList;

.field public mPostInterpolationPosition:F

.field public final mPreRotate:Ljava/util/HashMap;

.field public mProgressInterpolator:Landroid/view/animation/Interpolator;

.field public mRegionView:Landroid/view/View;

.field public mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

.field public mScrollTargetDT:F

.field public mScrollTargetDX:F

.field public mScrollTargetDY:F

.field public mScrollTargetTime:J

.field public mStartWrapHeight:I

.field public mStartWrapWidth:I

.field public mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

.field public final mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

.field public final mTempRect:Landroid/graphics/Rect;

.field public mTemporalInterpolator:Z

.field public final mTransitionCompleted:Ljava/util/ArrayList;

.field public mTransitionDuration:F

.field public mTransitionGoalPosition:F

.field public mTransitionInstantly:Z

.field public mTransitionLastPosition:F

.field public mTransitionLastTime:J

.field public mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

.field public mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mTransitionPosition:F

.field public mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public mUndergoingMotion:Z

.field public mWidthMeasureMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 5
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 6
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    .line 8
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    .line 10
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    .line 11
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 14
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 15
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 16
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 17
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 18
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 19
    new-instance v2, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 20
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    .line 21
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    .line 22
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 23
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 24
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 25
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    const-wide/16 v2, -0x1

    .line 28
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    .line 29
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    .line 30
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    .line 31
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    .line 32
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 33
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 34
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 35
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    .line 38
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    .line 39
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 40
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 41
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 43
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 44
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    const/4 v1, -0x1

    .line 50
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 51
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 52
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    const/4 v1, 0x0

    .line 53
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    .line 54
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    const/4 v2, 0x1

    .line 55
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    .line 56
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    .line 57
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 58
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 59
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 60
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 61
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 62
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 63
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 64
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 65
    new-instance v2, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 66
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    .line 67
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    .line 68
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 69
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 70
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 71
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 72
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 73
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    const-wide/16 v2, -0x1

    .line 74
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    .line 75
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    .line 76
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    .line 77
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    .line 78
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 79
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 80
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 81
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    .line 84
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    .line 85
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 86
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 87
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 89
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 90
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    const/4 p3, 0x0

    .line 95
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 97
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 98
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    .line 100
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    const/4 v1, 0x1

    .line 101
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    .line 103
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/high16 v1, 0x3f800000    # 1.0f

    .line 104
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 105
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 106
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 107
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 108
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 109
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 110
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 111
    new-instance v1, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v1}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 112
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    .line 113
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    .line 114
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 115
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 116
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 117
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 118
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 119
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    const-wide/16 v1, -0x1

    .line 120
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    .line 121
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    .line 122
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    .line 123
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    .line 124
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 125
    new-instance p3, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    invoke-direct {p3}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 126
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 127
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    .line 128
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

    .line 129
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    .line 130
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    .line 131
    sget-object p3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 132
    new-instance p3, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {p3, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 133
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 134
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 135
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 136
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    .line 137
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static access$2000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 4
    move-result v1

    .line 7
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 12
    move-result v1

    .line 15
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 16
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 20
    move-result v1

    .line 23
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    .line 24
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 26
    add-int/2addr v1, v3

    .line 28
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 29
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 31
    move-result p1

    .line 34
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    .line 35
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 37
    add-int/2addr p1, v0

    .line 39
    iput p1, v2, Landroid/graphics/Rect;->bottom:I

    .line 40
    return-object p0
    .line 42
.end method


# virtual methods
.method public final animateTo(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 7
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 9
    cmpl-float v1, v1, v2

    .line 11
    if-eqz v1, :cond_1

    .line 13
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 15
    if-eqz v1, :cond_1

    .line 17
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 19
    :cond_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 21
    cmpl-float v2, v1, p1

    .line 23
    if-nez v2, :cond_2

    .line 25
    return-void

    .line 27
    :cond_2
    const/4 v2, 0x0

    .line 28
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 29
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 31
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    .line 33
    move-result p1

    .line 36
    int-to-float p1, p1

    .line 37
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 38
    div-float/2addr p1, v0

    .line 40
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 41
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 43
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 45
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 49
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 51
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    .line 53
    move-result-object p1

    .line 56
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    .line 57
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 59
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 61
    move-result-wide v2

    .line 64
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 65
    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 68
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 70
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 72
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 74
    return-void
    .line 77
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 6
    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v2

    .line 13
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 23
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    .line 31
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 34
    const/4 v4, 0x0

    .line 36
    if-eqz v3, :cond_3

    .line 37
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 39
    if-eqz v3, :cond_3

    .line 41
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mAnimations:Ljava/util/ArrayList;

    .line 43
    if-nez v5, :cond_1

    .line 45
    goto :goto_2

    .line 47
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v5

    .line 51
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v6

    .line 55
    if-eqz v6, :cond_2

    .line 56
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v6

    .line 61
    check-cast v6, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;

    .line 62
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mutate()V

    .line 64
    goto :goto_1

    .line 67
    :cond_2
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mAnimations:Ljava/util/ArrayList;

    .line 68
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRemoveList:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 72
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 75
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mAnimations:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 80
    move-result v5

    .line 83
    if-eqz v5, :cond_3

    .line 84
    iput-object v4, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mAnimations:Ljava/util/ArrayList;

    .line 86
    :cond_3
    :goto_2
    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 88
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 91
    if-nez v3, :cond_4

    .line 93
    return-void

    .line 95
    :cond_4
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 96
    const/4 v4, 0x1

    .line 98
    and-int/2addr v3, v4

    .line 99
    const/high16 v5, 0x41300000    # 11.0f

    .line 100
    const/high16 v6, 0x41200000    # 10.0f

    .line 102
    if-ne v3, v4, :cond_8

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    .line 106
    move-result v3

    .line 109
    if-nez v3, :cond_8

    .line 110
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    .line 112
    add-int/2addr v3, v4

    .line 114
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 117
    move-result-wide v7

    .line 120
    iget-wide v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    .line 121
    const-wide/16 v11, -0x1

    .line 123
    cmp-long v3, v9, v11

    .line 125
    if-eqz v3, :cond_5

    .line 127
    sub-long v9, v7, v9

    .line 129
    const-wide/32 v11, 0xbebc200

    .line 131
    cmp-long v3, v9, v11

    .line 134
    if-lez v3, :cond_6

    .line 136
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    .line 138
    int-to-float v3, v3

    .line 140
    long-to-float v9, v9

    .line 141
    const v10, 0x3089705f    # 1.0E-9f

    .line 142
    mul-float/2addr v9, v10

    .line 145
    div-float/2addr v3, v9

    .line 146
    const/high16 v9, 0x42c80000    # 100.0f

    .line 147
    mul-float/2addr v3, v9

    .line 149
    float-to-int v3, v3

    .line 150
    int-to-float v3, v3

    .line 151
    div-float/2addr v3, v9

    .line 152
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    .line 153
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    .line 155
    iput-wide v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    .line 157
    goto :goto_3

    .line 159
    :cond_5
    iput-wide v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    .line 160
    :cond_6
    :goto_3
    new-instance v3, Landroid/graphics/Paint;

    .line 162
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 164
    const/high16 v7, 0x42280000    # 42.0f

    .line 167
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 172
    move-result v7

    .line 175
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 176
    mul-float/2addr v7, v8

    .line 178
    float-to-int v7, v7

    .line 179
    int-to-float v7, v7

    .line 180
    div-float/2addr v7, v6

    .line 181
    new-instance v8, Ljava/lang/StringBuilder;

    .line 182
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    .line 187
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 189
    const-string v9, " fps "

    .line 192
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 197
    invoke-static {v9, v0}, Landroidx/constraintlayout/motion/widget/Debug;->getState(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Ljava/lang/String;

    .line 199
    move-result-object v9

    .line 202
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v9, " -> "

    .line 206
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object v8

    .line 214
    invoke-static {v8}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    move-result-object v8

    .line 218
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 219
    invoke-static {v9, v0}, Landroidx/constraintlayout/motion/widget/Debug;->getState(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Ljava/lang/String;

    .line 221
    move-result-object v9

    .line 224
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v9, " (progress: "

    .line 228
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 233
    const-string v7, " ) state="

    .line 236
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 241
    const/4 v9, -0x1

    .line 243
    if-ne v7, v9, :cond_7

    .line 244
    const-string/jumbo v7, "undefined"

    .line 246
    goto :goto_4

    .line 249
    :cond_7
    invoke-static {v7, v0}, Landroidx/constraintlayout/motion/widget/Debug;->getState(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Ljava/lang/String;

    .line 250
    move-result-object v7

    .line 253
    :goto_4
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object v7

    .line 260
    const/high16 v8, -0x1000000

    .line 261
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 266
    move-result v8

    .line 269
    add-int/lit8 v8, v8, -0x1d

    .line 270
    int-to-float v8, v8

    .line 272
    invoke-virtual {v1, v7, v5, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 273
    const v8, -0x77ff78

    .line 276
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 282
    move-result v8

    .line 285
    add-int/lit8 v8, v8, -0x1e

    .line 286
    int-to-float v8, v8

    .line 288
    invoke-virtual {v1, v7, v6, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 289
    :cond_8
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 292
    if-le v3, v4, :cond_30

    .line 294
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    .line 296
    if-nez v3, :cond_9

    .line 298
    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    .line 300
    invoke-direct {v3, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 302
    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    .line 305
    :cond_9
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    .line 307
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 309
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 311
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    .line 313
    move-result v8

    .line 316
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 317
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    if-eqz v7, :cond_30

    .line 322
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    .line 324
    move-result v10

    .line 327
    if-nez v10, :cond_a

    .line 328
    goto/16 :goto_1b

    .line 330
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 332
    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 335
    invoke-virtual {v10}, Landroid/view/ViewGroup;->isInEditMode()Z

    .line 337
    move-result v11

    .line 340
    iget-object v12, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    .line 341
    const/4 v13, 0x2

    .line 343
    if-nez v11, :cond_b

    .line 344
    and-int/lit8 v11, v9, 0x1

    .line 346
    if-ne v11, v13, :cond_b

    .line 348
    new-instance v11, Ljava/lang/StringBuilder;

    .line 350
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 355
    move-result-object v13

    .line 358
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 359
    move-result-object v13

    .line 362
    iget v14, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 363
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 365
    move-result-object v13

    .line 368
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v13, ":"

    .line 372
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 377
    move-result v13

    .line 380
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    move-result-object v11

    .line 387
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    .line 388
    move-result v13

    .line 391
    add-int/lit8 v13, v13, -0x1e

    .line 392
    int-to-float v13, v13

    .line 394
    iget-object v14, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    .line 395
    invoke-virtual {v1, v11, v6, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 397
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    .line 400
    move-result v6

    .line 403
    add-int/lit8 v6, v6, -0x1d

    .line 404
    int-to-float v6, v6

    .line 406
    invoke-virtual {v1, v11, v5, v6, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 407
    :cond_b
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 410
    move-result-object v5

    .line 413
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 414
    move-result-object v5

    .line 417
    move-object v7, v1

    .line 418
    move-object v6, v3

    .line 419
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 420
    move-result v10

    .line 423
    if-eqz v10, :cond_2f

    .line 424
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 426
    move-result-object v10

    .line 429
    check-cast v10, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 430
    iget-object v11, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 432
    iget v11, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 434
    iget-object v13, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 436
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 438
    move-result-object v14

    .line 441
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 442
    move-result v15

    .line 445
    if-eqz v15, :cond_c

    .line 446
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 448
    move-result-object v15

    .line 451
    check-cast v15, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 452
    iget v15, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 454
    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    .line 456
    move-result v11

    .line 459
    goto :goto_6

    .line 460
    :cond_c
    iget-object v14, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 461
    iget v14, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 463
    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    .line 465
    move-result v11

    .line 468
    if-lez v9, :cond_d

    .line 469
    if-nez v11, :cond_d

    .line 471
    move v11, v4

    .line 473
    :cond_d
    if-nez v11, :cond_e

    .line 474
    goto :goto_5

    .line 476
    :cond_e
    iget-object v4, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFramePoints:[F

    .line 477
    if-eqz v4, :cond_11

    .line 479
    iget-object v14, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 481
    aget-object v14, v14, v2

    .line 483
    invoke-virtual {v14}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    .line 485
    move-result-object v15

    .line 488
    iget-object v14, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPathMode:[I

    .line 489
    if-eqz v14, :cond_f

    .line 491
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 493
    move-result-object v16

    .line 496
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 497
    move-result v17

    .line 500
    if-eqz v17, :cond_f

    .line 501
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 503
    move-result-object v17

    .line 506
    move-object/from16 v21, v5

    .line 507
    move-object/from16 v5, v17

    .line 509
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 511
    add-int/lit8 v17, v2, 0x1

    .line 513
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 515
    aput v5, v14, v2

    .line 517
    move/from16 v2, v17

    .line 519
    move-object/from16 v5, v21

    .line 521
    goto :goto_7

    .line 523
    :cond_f
    move-object/from16 v21, v5

    .line 524
    const/4 v2, 0x0

    .line 526
    const/4 v5, 0x0

    .line 527
    :goto_8
    array-length v14, v15

    .line 528
    if-ge v2, v14, :cond_10

    .line 529
    iget-object v14, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 531
    const/16 v16, 0x0

    .line 533
    aget-object v14, v14, v16

    .line 535
    aget-wide v0, v15, v2

    .line 537
    move/from16 v22, v9

    .line 539
    iget-object v9, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 541
    invoke-virtual {v14, v0, v1, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 543
    iget-object v14, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 546
    aget-wide v0, v15, v2

    .line 548
    iget-object v9, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 550
    move-object/from16 v23, v3

    .line 552
    iget-object v3, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 554
    move-object/from16 v24, v15

    .line 556
    move-wide v15, v0

    .line 558
    move-object/from16 v17, v9

    .line 559
    move-object/from16 v18, v3

    .line 561
    move-object/from16 v19, v4

    .line 563
    move/from16 v20, v5

    .line 565
    invoke-virtual/range {v14 .. v20}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    .line 567
    add-int/lit8 v5, v5, 0x2

    .line 570
    add-int/lit8 v2, v2, 0x1

    .line 572
    move-object/from16 v0, p0

    .line 574
    move-object/from16 v1, p1

    .line 576
    move/from16 v9, v22

    .line 578
    move-object/from16 v3, v23

    .line 580
    move-object/from16 v15, v24

    .line 582
    goto :goto_8

    .line 584
    :cond_10
    move-object/from16 v23, v3

    .line 585
    move/from16 v22, v9

    .line 587
    div-int/lit8 v5, v5, 0x2

    .line 589
    goto :goto_9

    .line 591
    :cond_11
    move-object/from16 v23, v3

    .line 592
    move-object/from16 v21, v5

    .line 594
    move/from16 v22, v9

    .line 596
    const/4 v5, 0x0

    .line 598
    :goto_9
    iput v5, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    .line 599
    const/4 v0, 0x1

    .line 601
    if-lt v11, v0, :cond_2e

    .line 602
    div-int/lit8 v0, v8, 0x10

    .line 604
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    .line 606
    if-eqz v1, :cond_12

    .line 608
    array-length v1, v1

    .line 610
    mul-int/lit8 v2, v0, 0x2

    .line 611
    if-eq v1, v2, :cond_13

    .line 613
    :cond_12
    mul-int/lit8 v1, v0, 0x2

    .line 615
    new-array v1, v1, [F

    .line 617
    iput-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    .line 619
    new-instance v1, Landroid/graphics/Path;

    .line 621
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 623
    iput-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 626
    :cond_13
    iget v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mShadowTranslate:I

    .line 628
    int-to-float v2, v1

    .line 630
    invoke-virtual {v7, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 631
    const/high16 v2, 0x77000000

    .line 634
    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 636
    iget-object v3, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    .line 639
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 641
    iget-object v4, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    .line 644
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 646
    iget-object v5, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 649
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 651
    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    .line 654
    add-int/lit8 v6, v0, -0x1

    .line 656
    int-to-float v6, v6

    .line 658
    const/high16 v7, 0x3f800000    # 1.0f

    .line 659
    div-float/2addr v7, v6

    .line 661
    iget-object v6, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 662
    const-string/jumbo v9, "translationX"

    .line 664
    if-nez v6, :cond_14

    .line 667
    const/4 v6, 0x0

    .line 669
    goto :goto_a

    .line 670
    :cond_14
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    move-result-object v6

    .line 674
    check-cast v6, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 675
    :goto_a
    iget-object v14, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 677
    const-string/jumbo v15, "translationY"

    .line 679
    if-nez v14, :cond_15

    .line 682
    const/4 v14, 0x0

    .line 684
    goto :goto_b

    .line 685
    :cond_15
    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    move-result-object v14

    .line 689
    check-cast v14, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 690
    :goto_b
    move/from16 v24, v8

    .line 692
    iget-object v8, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 694
    if-nez v8, :cond_16

    .line 696
    const/4 v8, 0x0

    .line 698
    goto :goto_c

    .line 699
    :cond_16
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    move-result-object v8

    .line 703
    check-cast v8, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 704
    :goto_c
    iget-object v9, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 706
    if-nez v9, :cond_17

    .line 708
    const/4 v9, 0x0

    .line 710
    goto :goto_d

    .line 711
    :cond_17
    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    move-result-object v9

    .line 715
    check-cast v9, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 716
    :goto_d
    const/4 v15, 0x0

    .line 718
    :goto_e
    const/high16 v16, 0x7fc00000    # Float.NaN

    .line 719
    move-object/from16 v17, v14

    .line 721
    iget-object v14, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 723
    if-ge v15, v0, :cond_25

    .line 725
    move/from16 v25, v0

    .line 727
    int-to-float v0, v15

    .line 729
    mul-float/2addr v0, v7

    .line 730
    move/from16 v26, v7

    .line 731
    iget v7, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 733
    const/high16 v18, 0x3f800000    # 1.0f

    .line 735
    cmpl-float v18, v7, v18

    .line 737
    if-eqz v18, :cond_19

    .line 739
    move/from16 v27, v1

    .line 741
    iget v1, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 743
    cmpg-float v18, v0, v1

    .line 745
    if-gez v18, :cond_18

    .line 747
    const/4 v0, 0x0

    .line 749
    :cond_18
    cmpl-float v18, v0, v1

    .line 750
    move-object/from16 v28, v3

    .line 752
    move-object/from16 v29, v4

    .line 754
    if-lez v18, :cond_1a

    .line 756
    float-to-double v3, v0

    .line 758
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 759
    cmpg-double v3, v3, v18

    .line 761
    if-gez v3, :cond_1a

    .line 763
    sub-float/2addr v0, v1

    .line 765
    mul-float/2addr v0, v7

    .line 766
    const/high16 v1, 0x3f800000    # 1.0f

    .line 767
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 769
    move-result v0

    .line 772
    goto :goto_f

    .line 773
    :cond_19
    move/from16 v27, v1

    .line 774
    move-object/from16 v28, v3

    .line 776
    move-object/from16 v29, v4

    .line 778
    :cond_1a
    :goto_f
    float-to-double v3, v0

    .line 780
    iget-object v1, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 781
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 783
    move-result-object v7

    .line 786
    const/4 v14, 0x0

    .line 787
    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 788
    move-result v18

    .line 791
    if-eqz v18, :cond_1d

    .line 792
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 794
    move-result-object v18

    .line 797
    move-wide/from16 v19, v3

    .line 798
    move-object/from16 v3, v18

    .line 800
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 802
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 804
    if-eqz v4, :cond_1c

    .line 806
    move-object/from16 v18, v4

    .line 808
    iget v4, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 810
    cmpg-float v30, v4, v0

    .line 812
    if-gez v30, :cond_1b

    .line 814
    move v14, v4

    .line 816
    move-object/from16 v1, v18

    .line 817
    goto :goto_11

    .line 819
    :cond_1b
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    .line 820
    move-result v4

    .line 823
    if-eqz v4, :cond_1c

    .line 824
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 826
    move/from16 v16, v3

    .line 828
    :cond_1c
    :goto_11
    move-wide/from16 v3, v19

    .line 830
    goto :goto_10

    .line 832
    :cond_1d
    move-wide/from16 v19, v3

    .line 833
    if-eqz v1, :cond_1f

    .line 835
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    .line 837
    move-result v3

    .line 840
    if-eqz v3, :cond_1e

    .line 841
    const/high16 v16, 0x3f800000    # 1.0f

    .line 843
    :cond_1e
    sub-float v3, v0, v14

    .line 845
    sub-float v16, v16, v14

    .line 847
    div-float v3, v3, v16

    .line 849
    float-to-double v3, v3

    .line 851
    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    .line 852
    move-result-wide v3

    .line 855
    double-to-float v1, v3

    .line 856
    mul-float v1, v1, v16

    .line 857
    add-float/2addr v1, v14

    .line 859
    float-to-double v3, v1

    .line 860
    goto :goto_12

    .line 861
    :cond_1f
    move-wide/from16 v3, v19

    .line 862
    :goto_12
    iget-object v1, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 864
    const/4 v7, 0x0

    .line 866
    aget-object v1, v1, v7

    .line 867
    iget-object v7, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 869
    invoke-virtual {v1, v3, v4, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 871
    iget-object v1, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    .line 874
    if-eqz v1, :cond_20

    .line 876
    iget-object v7, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 878
    array-length v14, v7

    .line 880
    if-lez v14, :cond_20

    .line 881
    invoke-virtual {v1, v3, v4, v7}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getPos(D[D)V

    .line 883
    :cond_20
    iget-object v14, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 886
    iget-object v1, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 888
    iget-object v7, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 890
    mul-int/lit8 v30, v15, 0x2

    .line 892
    move-object/from16 v31, v13

    .line 894
    move-object/from16 v13, v17

    .line 896
    move/from16 v32, v15

    .line 898
    move-wide v15, v3

    .line 900
    move-object/from16 v17, v1

    .line 901
    move-object/from16 v18, v7

    .line 903
    move-object/from16 v19, v2

    .line 905
    move/from16 v20, v30

    .line 907
    invoke-virtual/range {v14 .. v20}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    .line 909
    if-eqz v8, :cond_21

    .line 912
    aget v1, v2, v30

    .line 914
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->get(F)F

    .line 916
    move-result v3

    .line 919
    add-float/2addr v3, v1

    .line 920
    aput v3, v2, v30

    .line 921
    goto :goto_13

    .line 923
    :cond_21
    if-eqz v6, :cond_22

    .line 924
    aget v1, v2, v30

    .line 926
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 928
    move-result v3

    .line 931
    add-float/2addr v3, v1

    .line 932
    aput v3, v2, v30

    .line 933
    :cond_22
    :goto_13
    if-eqz v9, :cond_23

    .line 935
    add-int/lit8 v30, v30, 0x1

    .line 937
    aget v1, v2, v30

    .line 939
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->get(F)F

    .line 941
    move-result v0

    .line 944
    add-float/2addr v0, v1

    .line 945
    aput v0, v2, v30

    .line 946
    goto :goto_14

    .line 948
    :cond_23
    if-eqz v13, :cond_24

    .line 949
    add-int/lit8 v30, v30, 0x1

    .line 951
    aget v1, v2, v30

    .line 953
    invoke-virtual {v13, v0}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 955
    move-result v0

    .line 958
    add-float/2addr v0, v1

    .line 959
    aput v0, v2, v30

    .line 960
    :cond_24
    :goto_14
    add-int/lit8 v15, v32, 0x1

    .line 962
    move-object v14, v13

    .line 964
    move/from16 v0, v25

    .line 965
    move/from16 v7, v26

    .line 967
    move/from16 v1, v27

    .line 969
    move-object/from16 v3, v28

    .line 971
    move-object/from16 v4, v29

    .line 973
    move-object/from16 v13, v31

    .line 975
    goto/16 :goto_e

    .line 977
    :cond_25
    move/from16 v27, v1

    .line 979
    move-object/from16 v28, v3

    .line 981
    move-object/from16 v29, v4

    .line 983
    move-object/from16 v1, v23

    .line 985
    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    .line 987
    move-object/from16 v2, p1

    .line 989
    invoke-virtual {v1, v2, v11, v0, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawAll(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/MotionController;)V

    .line 991
    const/16 v0, -0x55cd

    .line 994
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 996
    const v0, -0x1f8a66

    .line 999
    move-object/from16 v3, v29

    .line 1002
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1004
    move-object/from16 v3, v28

    .line 1007
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1009
    const v0, -0xcc5600

    .line 1012
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1015
    move/from16 v0, v27

    .line 1018
    neg-int v0, v0

    .line 1020
    int-to-float v0, v0

    .line 1021
    invoke-virtual {v2, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1022
    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    .line 1025
    invoke-virtual {v1, v2, v11, v0, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawAll(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/MotionController;)V

    .line 1027
    const/4 v0, 0x5

    .line 1030
    if-ne v11, v0, :cond_2d

    .line 1031
    iget-object v0, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 1033
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1035
    const/4 v0, 0x0

    .line 1038
    :goto_15
    const/16 v3, 0x32

    .line 1039
    if-gt v0, v3, :cond_2c

    .line 1041
    int-to-float v4, v0

    .line 1043
    int-to-float v3, v3

    .line 1044
    div-float/2addr v4, v3

    .line 1045
    const/4 v3, 0x0

    .line 1046
    invoke-virtual {v10, v4, v3}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 1047
    move-result v3

    .line 1050
    iget-object v4, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1051
    const/4 v5, 0x0

    .line 1053
    aget-object v4, v4, v5

    .line 1054
    float-to-double v5, v3

    .line 1056
    iget-object v3, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 1057
    invoke-virtual {v4, v5, v6, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 1059
    iget-object v3, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 1062
    iget-object v4, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 1064
    iget v5, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 1066
    iget v6, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 1068
    iget v7, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 1070
    iget v8, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 1072
    const/4 v9, 0x0

    .line 1074
    :goto_16
    array-length v11, v3

    .line 1075
    if-ge v9, v11, :cond_2a

    .line 1076
    move-object v13, v10

    .line 1078
    aget-wide v10, v4, v9

    .line 1079
    double-to-float v10, v10

    .line 1081
    aget v11, v3, v9

    .line 1082
    const/4 v15, 0x1

    .line 1084
    if-eq v11, v15, :cond_29

    .line 1085
    const/4 v15, 0x2

    .line 1087
    if-eq v11, v15, :cond_28

    .line 1088
    const/4 v15, 0x3

    .line 1090
    if-eq v11, v15, :cond_27

    .line 1091
    const/4 v15, 0x4

    .line 1093
    if-eq v11, v15, :cond_26

    .line 1094
    goto :goto_17

    .line 1096
    :cond_26
    move v8, v10

    .line 1097
    goto :goto_17

    .line 1098
    :cond_27
    move v7, v10

    .line 1099
    goto :goto_17

    .line 1100
    :cond_28
    move v6, v10

    .line 1101
    goto :goto_17

    .line 1102
    :cond_29
    move v5, v10

    .line 1103
    :goto_17
    add-int/lit8 v9, v9, 0x1

    .line 1104
    move-object v10, v13

    .line 1106
    goto :goto_16

    .line 1107
    :cond_2a
    move-object v13, v10

    .line 1108
    iget-object v3, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1109
    if-eqz v3, :cond_2b

    .line 1111
    const/4 v3, 0x0

    .line 1113
    float-to-double v3, v3

    .line 1114
    float-to-double v9, v5

    .line 1115
    float-to-double v5, v6

    .line 1116
    move-wide/from16 v25, v5

    .line 1117
    move-wide/from16 v27, v9

    .line 1119
    move-wide/from16 v29, v3

    .line 1121
    invoke-static/range {v25 .. v30}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 1123
    move-result-wide v17

    .line 1126
    const/high16 v11, 0x40000000    # 2.0f

    .line 1127
    div-float v11, v7, v11

    .line 1129
    move-object/from16 v19, v13

    .line 1131
    move-object v15, v14

    .line 1133
    float-to-double v13, v11

    .line 1134
    sub-double v13, v17, v13

    .line 1135
    double-to-float v11, v13

    .line 1137
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    .line 1138
    move-result-wide v5

    .line 1141
    mul-double/2addr v5, v9

    .line 1142
    sub-double/2addr v3, v5

    .line 1143
    const/high16 v5, 0x40000000    # 2.0f

    .line 1144
    div-float v5, v8, v5

    .line 1146
    float-to-double v5, v5

    .line 1148
    sub-double/2addr v3, v5

    .line 1149
    double-to-float v6, v3

    .line 1150
    move v5, v11

    .line 1151
    goto :goto_18

    .line 1152
    :cond_2b
    move-object/from16 v19, v13

    .line 1153
    move-object v15, v14

    .line 1155
    :goto_18
    add-float/2addr v7, v5

    .line 1156
    add-float/2addr v8, v6

    .line 1157
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    .line 1158
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    .line 1161
    const/4 v3, 0x0

    .line 1164
    add-float/2addr v5, v3

    .line 1165
    add-float/2addr v6, v3

    .line 1166
    add-float/2addr v7, v3

    .line 1167
    add-float/2addr v8, v3

    .line 1168
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mRectangle:[F

    .line 1169
    const/4 v4, 0x0

    .line 1171
    aput v5, v3, v4

    .line 1172
    const/4 v4, 0x1

    .line 1174
    aput v6, v3, v4

    .line 1175
    const/4 v4, 0x2

    .line 1177
    aput v7, v3, v4

    .line 1178
    const/4 v9, 0x3

    .line 1180
    aput v6, v3, v9

    .line 1181
    const/4 v10, 0x4

    .line 1183
    aput v7, v3, v10

    .line 1184
    const/4 v7, 0x5

    .line 1186
    aput v8, v3, v7

    .line 1187
    const/4 v7, 0x6

    .line 1189
    aput v5, v3, v7

    .line 1190
    const/4 v10, 0x7

    .line 1192
    aput v8, v3, v10

    .line 1193
    iget-object v8, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 1195
    invoke-virtual {v8, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1197
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 1200
    aget v4, v3, v4

    .line 1202
    aget v6, v3, v9

    .line 1204
    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1206
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 1209
    const/4 v5, 0x4

    .line 1211
    aget v5, v3, v5

    .line 1212
    const/4 v6, 0x5

    .line 1214
    aget v6, v3, v6

    .line 1215
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1217
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 1220
    aget v5, v3, v7

    .line 1222
    aget v3, v3, v10

    .line 1224
    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1226
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 1229
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 1231
    add-int/lit8 v0, v0, 0x1

    .line 1234
    move-object v14, v15

    .line 1236
    move-object/from16 v10, v19

    .line 1237
    goto/16 :goto_15

    .line 1239
    :cond_2c
    const/4 v0, 0x0

    .line 1241
    const/4 v3, 0x1

    .line 1242
    const/high16 v4, 0x44000000    # 512.0f

    .line 1243
    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1245
    const/high16 v4, 0x40000000    # 2.0f

    .line 1248
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1250
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 1253
    invoke-virtual {v2, v4, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1255
    const/high16 v4, -0x40000000    # -2.0f

    .line 1258
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1260
    const/high16 v4, -0x10000

    .line 1263
    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1265
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 1268
    invoke-virtual {v2, v4, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1270
    goto :goto_19

    .line 1273
    :cond_2d
    const/4 v0, 0x0

    .line 1274
    const/4 v3, 0x1

    .line 1275
    :goto_19
    move-object v6, v1

    .line 1276
    move-object v7, v2

    .line 1277
    move v4, v3

    .line 1278
    goto :goto_1a

    .line 1279
    :cond_2e
    move-object/from16 v2, p1

    .line 1280
    move/from16 v24, v8

    .line 1282
    move-object/from16 v1, v23

    .line 1284
    const/4 v3, 0x0

    .line 1286
    move v4, v0

    .line 1287
    move v0, v3

    .line 1288
    :goto_1a
    move-object v3, v1

    .line 1289
    move-object v1, v2

    .line 1290
    move-object/from16 v5, v21

    .line 1291
    move/from16 v9, v22

    .line 1293
    move/from16 v8, v24

    .line 1295
    move v2, v0

    .line 1297
    move-object/from16 v0, p0

    .line 1298
    goto/16 :goto_5

    .line 1300
    :cond_2f
    move-object v2, v1

    .line 1302
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1303
    :cond_30
    move-object/from16 v0, p0

    .line 1306
    :goto_1b
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 1308
    if-eqz v0, :cond_31

    .line 1310
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1312
    move-result-object v0

    .line 1315
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1316
    move-result v1

    .line 1319
    if-eqz v1, :cond_31

    .line 1320
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1322
    move-result-object v1

    .line 1325
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 1326
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1328
    goto :goto_1c

    .line 1331
    :cond_31
    return-void
.end method

.method public final endTrigger(Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_2

    .line 8
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    move-result-object v3

    .line 13
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 14
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 19
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 20
    if-eqz v3, :cond_1

    .line 22
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 24
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 26
    move-result-object v4

    .line 29
    const-string v5, "button"

    .line 30
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 38
    if-eqz v4, :cond_1

    .line 40
    move v4, v1

    .line 42
    :goto_1
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 43
    array-length v6, v5

    .line 45
    if-ge v4, v6, :cond_1

    .line 46
    aget-object v5, v5, v4

    .line 48
    if-eqz p1, :cond_0

    .line 50
    const/high16 v6, -0x3d380000    # -100.0f

    .line 52
    goto :goto_2

    .line 54
    :cond_0
    const/high16 v6, 0x42c80000    # 100.0f

    .line 55
    :goto_2
    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 57
    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->conditionallyFire(FLandroid/view/View;)V

    .line 59
    add-int/lit8 v4, v4, 0x1

    .line 62
    goto :goto_1

    .line 64
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    return-void
    .line 68
.end method

.method public final evaluate(Z)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 4
    const-wide/16 v3, -0x1

    .line 6
    cmp-long v1, v1, v3

    .line 8
    if-nez v1, :cond_0

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 12
    move-result-wide v1

    .line 15
    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 16
    :cond_0
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 18
    const/4 v2, 0x0

    .line 20
    cmpl-float v3, v1, v2

    .line 21
    const/4 v4, -0x1

    .line 23
    const/high16 v5, 0x3f800000    # 1.0f

    .line 24
    if-lez v3, :cond_1

    .line 26
    cmpg-float v3, v1, v5

    .line 28
    if-gez v3, :cond_1

    .line 30
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 32
    :cond_1
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 34
    const/4 v6, 0x1

    .line 36
    const/4 v7, 0x0

    .line 37
    if-nez v3, :cond_2

    .line 38
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 40
    if-eqz v3, :cond_28

    .line 42
    if-nez p1, :cond_2

    .line 44
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 46
    cmpl-float v3, v3, v1

    .line 48
    if-eqz v3, :cond_28

    .line 50
    :cond_2
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 52
    sub-float/2addr v3, v1

    .line 54
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 55
    move-result v1

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 59
    move-result-wide v8

    .line 62
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 63
    instance-of v10, v3, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 65
    const v11, 0x3089705f    # 1.0E-9f

    .line 67
    if-nez v10, :cond_3

    .line 70
    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 72
    sub-long v12, v8, v12

    .line 74
    long-to-float v10, v12

    .line 76
    mul-float/2addr v10, v1

    .line 77
    mul-float/2addr v10, v11

    .line 78
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 79
    div-float/2addr v10, v12

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    move v10, v2

    .line 83
    :goto_0
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 84
    add-float/2addr v12, v10

    .line 86
    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 87
    if-eqz v13, :cond_4

    .line 89
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 91
    :cond_4
    cmpl-float v13, v1, v2

    .line 93
    if-lez v13, :cond_5

    .line 95
    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 97
    cmpl-float v14, v12, v14

    .line 99
    if-gez v14, :cond_6

    .line 101
    :cond_5
    cmpg-float v14, v1, v2

    .line 103
    if-gtz v14, :cond_7

    .line 105
    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 107
    cmpg-float v14, v12, v14

    .line 109
    if-gtz v14, :cond_7

    .line 111
    :cond_6
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 113
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 115
    move v14, v6

    .line 117
    goto :goto_1

    .line 118
    :cond_7
    move v14, v7

    .line 119
    :goto_1
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 120
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 122
    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 124
    const v15, 0x3727c5ac    # 1.0E-5f

    .line 126
    if-eqz v3, :cond_e

    .line 129
    if-nez v14, :cond_e

    .line 131
    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 133
    if-eqz v14, :cond_c

    .line 135
    iget-wide v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 137
    sub-long v4, v8, v4

    .line 139
    long-to-float v4, v4

    .line 141
    mul-float/2addr v4, v11

    .line 142
    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 143
    move-result v3

    .line 146
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 147
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 149
    const/4 v10, 0x2

    .line 151
    if-ne v4, v5, :cond_9

    .line 152
    iget-object v4, v5, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 154
    invoke-interface {v4}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->isStopped()Z

    .line 156
    move-result v4

    .line 159
    if-eqz v4, :cond_8

    .line 160
    move v4, v10

    .line 162
    goto :goto_2

    .line 163
    :cond_8
    move v4, v6

    .line 164
    goto :goto_2

    .line 165
    :cond_9
    move v4, v7

    .line 166
    :goto_2
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 167
    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 169
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 171
    instance-of v8, v5, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 173
    if-eqz v8, :cond_f

    .line 175
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    .line 177
    move-result v5

    .line 180
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 181
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 183
    move-result v8

    .line 186
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 187
    mul-float/2addr v8, v9

    .line 189
    cmpg-float v8, v8, v15

    .line 190
    if-gtz v8, :cond_a

    .line 192
    if-ne v4, v10, :cond_a

    .line 194
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 196
    :cond_a
    cmpl-float v8, v5, v2

    .line 198
    if-lez v8, :cond_b

    .line 200
    const/high16 v8, 0x3f800000    # 1.0f

    .line 202
    cmpl-float v9, v3, v8

    .line 204
    if-ltz v9, :cond_b

    .line 206
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 208
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 210
    const/high16 v3, 0x3f800000    # 1.0f

    .line 212
    :cond_b
    cmpg-float v5, v5, v2

    .line 214
    if-gez v5, :cond_f

    .line 216
    cmpg-float v5, v3, v2

    .line 218
    if-gtz v5, :cond_f

    .line 220
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 222
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 224
    move v3, v2

    .line 226
    goto :goto_5

    .line 227
    :cond_c
    invoke-interface {v3, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 228
    move-result v3

    .line 231
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 232
    instance-of v5, v4, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 234
    if-eqz v5, :cond_d

    .line 236
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    .line 238
    move-result v4

    .line 241
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 242
    goto :goto_3

    .line 244
    :cond_d
    add-float/2addr v12, v10

    .line 245
    invoke-interface {v4, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 246
    move-result v4

    .line 249
    sub-float/2addr v4, v3

    .line 250
    mul-float/2addr v4, v1

    .line 251
    div-float/2addr v4, v10

    .line 252
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 253
    :goto_3
    move v12, v3

    .line 255
    goto :goto_4

    .line 256
    :cond_e
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 257
    :goto_4
    move v4, v7

    .line 259
    move v3, v12

    .line 260
    :cond_f
    :goto_5
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 261
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 263
    move-result v5

    .line 266
    cmpl-float v5, v5, v15

    .line 267
    if-lez v5, :cond_10

    .line 269
    sget-object v5, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 271
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 273
    :cond_10
    sget-object v5, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 276
    if-eq v4, v6, :cond_15

    .line 278
    if-lez v13, :cond_11

    .line 280
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 282
    cmpl-float v4, v3, v4

    .line 284
    if-gez v4, :cond_12

    .line 286
    :cond_11
    cmpg-float v4, v1, v2

    .line 288
    if-gtz v4, :cond_13

    .line 290
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 292
    cmpg-float v4, v3, v4

    .line 294
    if-gtz v4, :cond_13

    .line 296
    :cond_12
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 298
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 300
    :cond_13
    const/high16 v4, 0x3f800000    # 1.0f

    .line 302
    cmpl-float v8, v3, v4

    .line 304
    if-gez v8, :cond_14

    .line 306
    cmpg-float v4, v3, v2

    .line 308
    if-gtz v4, :cond_15

    .line 310
    :cond_14
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 312
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 314
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 317
    move-result v4

    .line 320
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 321
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 323
    move-result-wide v8

    .line 326
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    .line 327
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    .line 329
    if-nez v10, :cond_16

    .line 331
    move v10, v3

    .line 333
    goto :goto_6

    .line 334
    :cond_16
    invoke-interface {v10, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 335
    move-result v10

    .line 338
    :goto_6
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    .line 339
    if-eqz v11, :cond_17

    .line 341
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 343
    div-float v12, v1, v12

    .line 345
    add-float/2addr v12, v3

    .line 347
    invoke-interface {v11, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 348
    move-result v11

    .line 351
    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 352
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    .line 354
    invoke-interface {v12, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 356
    move-result v12

    .line 359
    sub-float/2addr v11, v12

    .line 360
    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 361
    :cond_17
    move v11, v7

    .line 363
    :goto_7
    if-ge v11, v4, :cond_19

    .line 364
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 366
    move-result-object v12

    .line 369
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 370
    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    move-result-object v15

    .line 375
    move-object/from16 v16, v15

    .line 376
    check-cast v16, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 378
    if-eqz v16, :cond_18

    .line 380
    iget-boolean v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 382
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 384
    move/from16 v17, v10

    .line 386
    move-wide/from16 v18, v8

    .line 388
    move-object/from16 v20, v12

    .line 390
    move-object/from16 v21, v7

    .line 392
    invoke-virtual/range {v16 .. v21}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    .line 394
    move-result v7

    .line 397
    or-int/2addr v7, v15

    .line 398
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 399
    :cond_18
    add-int/lit8 v11, v11, 0x1

    .line 401
    const/4 v7, 0x0

    .line 403
    goto :goto_7

    .line 404
    :cond_19
    if-lez v13, :cond_1a

    .line 405
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 407
    cmpl-float v4, v3, v4

    .line 409
    if-gez v4, :cond_1b

    .line 411
    :cond_1a
    cmpg-float v4, v1, v2

    .line 413
    if-gtz v4, :cond_1c

    .line 415
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 417
    cmpg-float v4, v3, v4

    .line 419
    if-gtz v4, :cond_1c

    .line 421
    :cond_1b
    move v4, v6

    .line 423
    goto :goto_8

    .line 424
    :cond_1c
    const/4 v4, 0x0

    .line 425
    :goto_8
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 426
    if-nez v7, :cond_1d

    .line 428
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 430
    if-nez v7, :cond_1d

    .line 432
    if-eqz v4, :cond_1d

    .line 434
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 436
    :cond_1d
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 439
    if-eqz v7, :cond_1e

    .line 441
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 443
    :cond_1e
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 446
    xor-int/2addr v4, v6

    .line 448
    or-int/2addr v4, v7

    .line 449
    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 450
    cmpg-float v4, v3, v2

    .line 452
    if-gtz v4, :cond_1f

    .line 454
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 456
    const/4 v7, -0x1

    .line 458
    if-eq v4, v7, :cond_1f

    .line 459
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 461
    if-eq v7, v4, :cond_1f

    .line 463
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 465
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 467
    invoke-virtual {v7, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 469
    move-result-object v4

    .line 472
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 473
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 476
    move v7, v6

    .line 479
    goto :goto_9

    .line 480
    :cond_1f
    const/4 v7, 0x0

    .line 481
    :goto_9
    float-to-double v8, v3

    .line 482
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 483
    cmpl-double v4, v8, v10

    .line 485
    if-ltz v4, :cond_20

    .line 487
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 489
    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 491
    if-eq v4, v8, :cond_20

    .line 493
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 495
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 497
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 499
    move-result-object v4

    .line 502
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 503
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 506
    move v7, v6

    .line 509
    :cond_20
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 510
    if-nez v4, :cond_24

    .line 512
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 514
    if-eqz v4, :cond_21

    .line 516
    goto :goto_a

    .line 518
    :cond_21
    if-lez v13, :cond_22

    .line 519
    const/high16 v4, 0x3f800000    # 1.0f

    .line 521
    cmpl-float v8, v3, v4

    .line 523
    if-eqz v8, :cond_23

    .line 525
    :cond_22
    cmpg-float v4, v1, v2

    .line 527
    if-gez v4, :cond_25

    .line 529
    cmpl-float v4, v3, v2

    .line 531
    if-nez v4, :cond_25

    .line 533
    :cond_23
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 535
    goto :goto_b

    .line 538
    :cond_24
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 539
    :cond_25
    :goto_b
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 542
    if-nez v4, :cond_28

    .line 544
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 546
    if-nez v4, :cond_28

    .line 548
    if-lez v13, :cond_26

    .line 550
    const/high16 v4, 0x3f800000    # 1.0f

    .line 552
    cmpl-float v5, v3, v4

    .line 554
    if-eqz v5, :cond_27

    .line 556
    :cond_26
    cmpg-float v1, v1, v2

    .line 558
    if-gez v1, :cond_28

    .line 560
    cmpl-float v1, v3, v2

    .line 562
    if-nez v1, :cond_28

    .line 564
    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    .line 566
    :cond_28
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 569
    const/high16 v3, 0x3f800000    # 1.0f

    .line 571
    cmpl-float v3, v1, v3

    .line 573
    if-ltz v3, :cond_2a

    .line 575
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 577
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 579
    if-eq v1, v2, :cond_29

    .line 581
    goto :goto_c

    .line 583
    :cond_29
    move v6, v7

    .line 584
    :goto_c
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 585
    :goto_d
    move v7, v6

    .line 587
    goto :goto_f

    .line 588
    :cond_2a
    cmpg-float v1, v1, v2

    .line 589
    if-gtz v1, :cond_2c

    .line 591
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 593
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 595
    if-eq v1, v2, :cond_2b

    .line 597
    goto :goto_e

    .line 599
    :cond_2b
    move v6, v7

    .line 600
    :goto_e
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 601
    goto :goto_d

    .line 603
    :cond_2c
    :goto_f
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 604
    or-int/2addr v1, v7

    .line 606
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 607
    if-eqz v7, :cond_2d

    .line 609
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 611
    if-nez v1, :cond_2d

    .line 613
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 615
    :cond_2d
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 618
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 620
    return-void
    .line 622
.end method

.method public final fireTransitionChange()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_3

    .line 14
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    .line 16
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 18
    cmpl-float v0, v0, v1

    .line 20
    if-eqz v0, :cond_3

    .line 22
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    .line 24
    const/4 v1, -0x1

    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 46
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    goto :goto_0

    .line 52
    :cond_1
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    .line 53
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 55
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    .line 57
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 59
    if-eqz v0, :cond_2

    .line 61
    invoke-interface {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionChange()V

    .line 63
    :cond_2
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    if-eqz p0, :cond_3

    .line 68
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object p0

    .line 73
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 83
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 84
    invoke-interface {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionChange()V

    .line 86
    goto :goto_1

    .line 89
    :cond_3
    return-void
    .line 90
.end method

.method public final fireTransitionCompleted()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    .line 16
    const/4 v1, -0x1

    .line 18
    if-ne v0, v1, :cond_2

    .line 19
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 21
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    .line 23
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v2

    .line 38
    add-int/lit8 v2, v2, -0x1

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/Integer;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result v0

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v0, v1

    .line 52
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 53
    if-eq v0, v2, :cond_2

    .line 55
    if-eq v2, v1, :cond_2

    .line 57
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_2
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->processTransitionCompleted()V

    .line 68
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    .line 71
    if-eqz v0, :cond_3

    .line 73
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 75
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    .line 79
    :cond_3
    return-void
    .line 81
.end method

.method public final getAnchorDpDt(IFFF[F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p2, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionController;->getDpDt(FFF[F)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 19
    goto :goto_1

    .line 22
    :cond_0
    if-nez p0, :cond_1

    .line 23
    const-string p0, ""

    .line 25
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object p0

    .line 39
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 43
    :goto_0
    const-string p1, "WARNING could not find view id "

    .line 44
    const-string p2, "MotionLayout"

    .line 46
    invoke-static {p1, p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_1
    return-void
    .line 51
.end method

.method public final getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public getConstraintSetIds()[I
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 10
    move-result v0

    .line 13
    new-array v1, v0, [I

    .line 14
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v0, :cond_1

    .line 17
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 19
    move-result v3

    .line 22
    aput v3, v1, v2

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    return-object v1
    .line 28
.end method

.method public getCurrentState()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 2
    return p0
    .line 4
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    .line 8
    return-object p0
    .line 10
.end method

.method public getDesignTool()Landroidx/constraintlayout/motion/widget/DesignTool;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/constraintlayout/motion/widget/DesignTool;

    .line 6
    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/DesignTool;-><init>()V

    .line 8
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    .line 13
    return-object p0
    .line 15
.end method

.method public getEndState()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 2
    return p0
    .line 4
.end method

.method public getNanoTime()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    move-result-wide v0

    .line 5
    return-wide v0
    .line 6
.end method

.method public getProgress()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 2
    return p0
    .line 4
.end method

.method public getScene()Landroidx/constraintlayout/motion/widget/MotionScene;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    return-object p0
    .line 4
.end method

.method public getStartState()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 2
    return p0
    .line 4
.end method

.method public getTargetPosition()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 2
    return p0
    .line 4
.end method

.method public final getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 20
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mId:I

    .line 22
    if-ne v1, p1, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0
    .line 28
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 6
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 8
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 13
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 15
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 17
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mEndState:I

    .line 19
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 21
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mStartState:I

    .line 23
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getVelocity()F

    .line 25
    move-result v2

    .line 28
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mVelocity:F

    .line 29
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 31
    move-result v1

    .line 34
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    .line 35
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    new-instance v0, Landroid/os/Bundle;

    .line 42
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-string v1, "motion.progress"

    .line 47
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 51
    const-string v1, "motion.velocity"

    .line 54
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mVelocity:F

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 58
    const-string v1, "motion.StartState"

    .line 61
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mStartState:I

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    const-string v1, "motion.EndState"

    .line 68
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mEndState:I

    .line 70
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    return-object v0
    .line 75
.end method

.method public getTransitionTimeMs()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    .line 8
    move-result v0

    .line 11
    int-to-float v0, v0

    .line 12
    div-float/2addr v0, v1

    .line 13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 14
    :cond_0
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 16
    mul-float/2addr p0, v1

    .line 18
    float-to-long v0, p0

    .line 19
    return-wide v0
    .line 20
.end method

.method public getVelocity()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 2
    return p0
    .line 4
.end method

.method public final handlesTouchEvent(FFLandroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 7

    .line 1
    instance-of v0, p4, Landroid/view/ViewGroup;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    move-object v0, p4

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v2

    .line 13
    sub-int/2addr v2, v1

    .line 14
    :goto_0
    if-ltz v2, :cond_1

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 21
    move-result v4

    .line 24
    int-to-float v4, v4

    .line 25
    add-float/2addr v4, p1

    .line 26
    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    .line 27
    move-result v5

    .line 30
    int-to-float v5, v5

    .line 31
    sub-float/2addr v4, v5

    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 33
    move-result v5

    .line 36
    int-to-float v5, v5

    .line 37
    add-float/2addr v5, p2

    .line 38
    invoke-virtual {p4}, Landroid/view/View;->getScrollY()I

    .line 39
    move-result v6

    .line 42
    int-to-float v6, v6

    .line 43
    sub-float/2addr v5, v6

    .line 44
    invoke-virtual {p0, v4, v5, p3, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->handlesTouchEvent(FFLandroid/view/MotionEvent;Landroid/view/View;)Z

    .line 45
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    move v0, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    .line 56
    :goto_1
    if-nez v0, :cond_5

    .line 57
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 59
    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    .line 61
    move-result v3

    .line 64
    int-to-float v3, v3

    .line 65
    add-float/2addr v3, p1

    .line 66
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    .line 67
    move-result v4

    .line 70
    int-to-float v4, v4

    .line 71
    sub-float/2addr v3, v4

    .line 72
    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    .line 73
    move-result v4

    .line 76
    int-to-float v4, v4

    .line 77
    add-float/2addr v4, p2

    .line 78
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    .line 79
    move-result v5

    .line 82
    int-to-float v5, v5

    .line 83
    sub-float/2addr v4, v5

    .line 84
    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 85
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    .line 88
    move-result v2

    .line 91
    if-nez v2, :cond_2

    .line 92
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 94
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 96
    move-result v3

    .line 99
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 100
    move-result v4

    .line 103
    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    .line 104
    move-result v2

    .line 107
    if-eqz v2, :cond_5

    .line 108
    :cond_2
    neg-float p1, p1

    .line 110
    neg-float p2, p2

    .line 111
    invoke-virtual {p4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 112
    move-result-object v2

    .line 115
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 116
    move-result v3

    .line 119
    if-eqz v3, :cond_3

    .line 120
    invoke-virtual {p3, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 122
    invoke-virtual {p4, p3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 125
    move-result p0

    .line 128
    neg-float p1, p1

    .line 129
    neg-float p2, p2

    .line 130
    invoke-virtual {p3, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 131
    goto :goto_2

    .line 134
    :cond_3
    invoke-static {p3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 135
    move-result-object p3

    .line 138
    invoke-virtual {p3, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 139
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    .line 142
    if-nez p1, :cond_4

    .line 144
    new-instance p1, Landroid/graphics/Matrix;

    .line 146
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 148
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    .line 151
    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    .line 153
    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 155
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    .line 158
    invoke-virtual {p3, p0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 160
    invoke-virtual {p4, p3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 163
    move-result p0

    .line 166
    invoke-virtual {p3}, Landroid/view/MotionEvent;->recycle()V

    .line 167
    :goto_2
    if-eqz p0, :cond_5

    .line 170
    goto :goto_3

    .line 172
    :cond_5
    move v1, v0

    .line 173
    :goto_3
    return v1
    .line 174
.end method

.method public final init(Landroid/util/AttributeSet;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    .line 2
    move-result v0

    .line 5
    sput-boolean v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 6
    const-string v0, "MotionLayout"

    .line 8
    const/4 v1, -0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz p1, :cond_9

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v3

    .line 17
    sget-object v4, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout:[I

    .line 18
    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 20
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 24
    move-result v3

    .line 27
    const/4 v4, 0x1

    .line 28
    move v5, v2

    .line 29
    move v6, v4

    .line 30
    :goto_0
    if-ge v5, v3, :cond_7

    .line 31
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 33
    move-result v7

    .line 36
    const/4 v8, 0x2

    .line 37
    if-ne v7, v8, :cond_0

    .line 38
    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 40
    move-result v7

    .line 43
    new-instance v8, Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 44
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v9

    .line 49
    invoke-direct {v8, v9, p0, v7}, Landroidx/constraintlayout/motion/widget/MotionScene;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    .line 50
    iput-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 53
    goto :goto_2

    .line 55
    :cond_0
    if-ne v7, v4, :cond_1

    .line 56
    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 58
    move-result v7

    .line 61
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 62
    goto :goto_2

    .line 64
    :cond_1
    const/4 v9, 0x4

    .line 65
    if-ne v7, v9, :cond_2

    .line 66
    const/4 v8, 0x0

    .line 68
    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 69
    move-result v7

    .line 72
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 73
    iput-boolean v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 75
    goto :goto_2

    .line 77
    :cond_2
    if-nez v7, :cond_3

    .line 78
    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 80
    move-result v6

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    const/4 v9, 0x5

    .line 85
    if-ne v7, v9, :cond_5

    .line 86
    iget v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 88
    if-nez v9, :cond_6

    .line 90
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 92
    move-result v7

    .line 95
    if-eqz v7, :cond_4

    .line 96
    goto :goto_1

    .line 98
    :cond_4
    move v8, v2

    .line 99
    :goto_1
    iput v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 100
    goto :goto_2

    .line 102
    :cond_5
    const/4 v8, 0x3

    .line 103
    if-ne v7, v8, :cond_6

    .line 104
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 106
    move-result v7

    .line 109
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 110
    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 112
    goto :goto_0

    .line 114
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 118
    if-nez p1, :cond_8

    .line 120
    const-string p1, "WARNING NO app:layoutDescription tag"

    .line 122
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_8
    if-nez v6, :cond_9

    .line 127
    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 130
    :cond_9
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 132
    if-eqz p1, :cond_17

    .line 134
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 136
    if-nez p1, :cond_a

    .line 138
    const-string p1, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\""

    .line 140
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    goto/16 :goto_6

    .line 145
    :cond_a
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    .line 147
    move-result p1

    .line 150
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 151
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    .line 153
    move-result v4

    .line 156
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 157
    move-result-object v3

    .line 160
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 161
    move-result-object v4

    .line 164
    invoke-static {p1, v4}, Landroidx/constraintlayout/motion/widget/Debug;->getName(ILandroid/content/Context;)Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 168
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 169
    move-result v4

    .line 172
    move v5, v2

    .line 173
    :goto_3
    const-string v6, "CHECK: "

    .line 174
    if-ge v5, v4, :cond_d

    .line 176
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 178
    move-result-object v7

    .line 181
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 182
    move-result v8

    .line 185
    if-ne v8, v1, :cond_b

    .line 186
    const-string v9, " ALL VIEWS SHOULD HAVE ID\'s "

    .line 188
    invoke-static {v6, p1, v9}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    move-result-object v9

    .line 193
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    move-result-object v10

    .line 197
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 198
    move-result-object v10

    .line 201
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v10, " does not!"

    .line 205
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v9

    .line 213
    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_b
    invoke-virtual {v3, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 217
    move-result-object v8

    .line 220
    if-nez v8, :cond_c

    .line 221
    const-string v8, " NO CONSTRAINTS for "

    .line 223
    invoke-static {v6, p1, v8}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    move-result-object v6

    .line 228
    invoke-static {v7}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 229
    move-result-object v7

    .line 232
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    move-result-object v6

    .line 239
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 243
    goto :goto_3

    .line 245
    :cond_d
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintSet;->getKnownIds()[I

    .line 246
    move-result-object v4

    .line 249
    :goto_4
    array-length v5, v4

    .line 250
    if-ge v2, v5, :cond_11

    .line 251
    aget v5, v4, v2

    .line 253
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 255
    move-result-object v7

    .line 258
    invoke-static {v5, v7}, Landroidx/constraintlayout/motion/widget/Debug;->getName(ILandroid/content/Context;)Ljava/lang/String;

    .line 259
    move-result-object v7

    .line 262
    aget v8, v4, v2

    .line 263
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 265
    move-result-object v8

    .line 268
    if-nez v8, :cond_e

    .line 269
    new-instance v8, Ljava/lang/StringBuilder;

    .line 271
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v9, " NO View matches id "

    .line 279
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    move-result-object v8

    .line 290
    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_e
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 294
    move-result-object v8

    .line 297
    iget-object v8, v8, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 298
    iget v8, v8, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 300
    const-string v9, ") no LAYOUT_HEIGHT"

    .line 302
    const-string v10, "("

    .line 304
    if-ne v8, v1, :cond_f

    .line 306
    invoke-static {v6, p1, v10, v7, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    move-result-object v8

    .line 311
    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_f
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 315
    move-result-object v5

    .line 318
    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 319
    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 321
    if-ne v5, v1, :cond_10

    .line 323
    invoke-static {v6, p1, v10, v7, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    move-result-object v5

    .line 328
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_10
    add-int/lit8 v2, v2, 0x1

    .line 332
    goto :goto_4

    .line 334
    :cond_11
    new-instance p1, Landroid/util/SparseIntArray;

    .line 335
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 337
    new-instance v2, Landroid/util/SparseIntArray;

    .line 340
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 342
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 345
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    .line 347
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 349
    move-result-object v3

    .line 352
    :cond_12
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 353
    move-result v4

    .line 356
    if-eqz v4, :cond_17

    .line 357
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 359
    move-result-object v4

    .line 362
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 363
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 365
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 367
    iget v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 369
    iget v6, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 371
    if-ne v5, v6, :cond_13

    .line 373
    const-string v5, "CHECK: start and end constraint set should not be the same!"

    .line 375
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_13
    iget v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 380
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 382
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 384
    move-result-object v6

    .line 387
    invoke-static {v5, v6}, Landroidx/constraintlayout/motion/widget/Debug;->getName(ILandroid/content/Context;)Ljava/lang/String;

    .line 388
    move-result-object v6

    .line 391
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 392
    move-result-object v7

    .line 395
    invoke-static {v4, v7}, Landroidx/constraintlayout/motion/widget/Debug;->getName(ILandroid/content/Context;)Ljava/lang/String;

    .line 396
    move-result-object v7

    .line 399
    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->get(I)I

    .line 400
    move-result v8

    .line 403
    const-string v9, "->"

    .line 404
    if-ne v8, v4, :cond_14

    .line 406
    new-instance v8, Ljava/lang/StringBuilder;

    .line 408
    const-string v10, "CHECK: two transitions with the same start and end "

    .line 410
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    move-result-object v8

    .line 427
    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_14
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 431
    move-result v8

    .line 434
    if-ne v8, v5, :cond_15

    .line 435
    new-instance v8, Ljava/lang/StringBuilder;

    .line 437
    const-string v10, "CHECK: you can\'t have reverse transitions"

    .line 439
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    move-result-object v7

    .line 456
    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_15
    invoke-virtual {p1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 460
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 463
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 466
    invoke-virtual {v7, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 468
    move-result-object v5

    .line 471
    if-nez v5, :cond_16

    .line 472
    new-instance v5, Ljava/lang/StringBuilder;

    .line 474
    const-string v7, " no such constraintSetStart "

    .line 476
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    move-result-object v5

    .line 487
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_16
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 491
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 493
    move-result-object v4

    .line 496
    if-nez v4, :cond_12

    .line 497
    new-instance v4, Ljava/lang/StringBuilder;

    .line 499
    const-string v5, " no such constraintSetEnd "

    .line 501
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    move-result-object v4

    .line 512
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    goto/16 :goto_5

    .line 516
    :cond_17
    :goto_6
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 518
    if-ne p1, v1, :cond_19

    .line 520
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 522
    if-eqz p1, :cond_19

    .line 524
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    .line 526
    move-result p1

    .line 529
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 530
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 532
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    .line 534
    move-result p1

    .line 537
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 538
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 540
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 542
    if-nez p1, :cond_18

    .line 544
    goto :goto_7

    .line 546
    :cond_18
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 547
    :goto_7
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 549
    :cond_19
    return-void
    .line 551
.end method

.method public final isAttachedToWindow()Z
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onAttachedToWindow()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    .line 5
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 14
    if-eqz v0, :cond_8

    .line 16
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 18
    const/4 v2, -0x1

    .line 20
    if-eq v1, v2, :cond_8

    .line 21
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 23
    move-result-object v0

    .line 26
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 27
    const/4 v2, 0x0

    .line 29
    move v3, v2

    .line 30
    :goto_0
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 31
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 33
    move-result v5

    .line 36
    if-ge v3, v5, :cond_5

    .line 37
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 39
    move-result v4

    .line 42
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    .line 43
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 45
    move-result v6

    .line 48
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    .line 49
    move-result v7

    .line 52
    :goto_1
    if-lez v6, :cond_3

    .line 53
    if-ne v6, v4, :cond_1

    .line 55
    goto :goto_2

    .line 57
    :cond_1
    add-int/lit8 v8, v7, -0x1

    .line 58
    if-gez v7, :cond_2

    .line 60
    :goto_2
    const/4 v5, 0x1

    .line 62
    goto :goto_3

    .line 63
    :cond_2
    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 64
    move-result v6

    .line 67
    move v7, v8

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    move v5, v2

    .line 70
    :goto_3
    if-eqz v5, :cond_4

    .line 71
    const-string v1, "MotionScene"

    .line 73
    const-string v2, "Cannot be derived from yourself"

    .line 75
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    goto :goto_4

    .line 80
    :cond_4
    invoke-virtual {v1, v4, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->readConstraintChain(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 84
    goto :goto_0

    .line 86
    :cond_5
    :goto_4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 87
    if-eqz v1, :cond_6

    .line 89
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object v1

    .line 94
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    move-result v2

    .line 98
    if-eqz v2, :cond_6

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    move-result-object v2

    .line 104
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 105
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    goto :goto_5

    .line 110
    :cond_6
    if-eqz v0, :cond_7

    .line 111
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 113
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 116
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 118
    :cond_8
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    .line 120
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 123
    if-eqz v0, :cond_a

    .line 125
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    .line 127
    if-eqz v1, :cond_9

    .line 129
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$4;

    .line 131
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$4;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 133
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 136
    goto :goto_6

    .line 139
    :cond_9
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->apply()V

    .line 140
    goto :goto_6

    .line 143
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 144
    if-eqz v0, :cond_b

    .line 146
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 148
    if-eqz v0, :cond_b

    .line 150
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I

    .line 152
    const/4 v1, 0x4

    .line 154
    if-ne v0, v1, :cond_b

    .line 155
    const/high16 v0, 0x3f800000    # 1.0f

    .line 157
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    .line 159
    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    .line 163
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 165
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 167
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 170
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 172
    :cond_b
    :goto_6
    return-void
    .line 175
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 4
    if-eqz v1, :cond_15

    .line 6
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    .line 8
    if-nez v3, :cond_0

    .line 10
    goto/16 :goto_8

    .line 12
    :cond_0
    const/4 v3, 0x1

    .line 14
    const/4 v4, -0x1

    .line 15
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 16
    if-eqz v1, :cond_10

    .line 18
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 20
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 22
    move-result v11

    .line 25
    if-ne v11, v4, :cond_1

    .line 26
    goto/16 :goto_7

    .line 28
    :cond_1
    iget-object v6, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    .line 30
    iget-object v7, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mViewTransitions:Ljava/util/ArrayList;

    .line 32
    if-nez v6, :cond_4

    .line 34
    new-instance v6, Ljava/util/HashSet;

    .line 36
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 38
    iput-object v6, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    .line 41
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v6

    .line 46
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v8

    .line 50
    if-eqz v8, :cond_4

    .line 51
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v8

    .line 56
    check-cast v8, Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 57
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 59
    move-result v9

    .line 62
    const/4 v10, 0x0

    .line 63
    :goto_0
    if-ge v10, v9, :cond_2

    .line 64
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 66
    move-result-object v12

    .line 69
    invoke-virtual {v8, v12}, Landroidx/constraintlayout/motion/widget/ViewTransition;->matchesView(Landroid/view/View;)Z

    .line 70
    move-result v13

    .line 73
    if-eqz v13, :cond_3

    .line 74
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    .line 76
    iget-object v13, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    .line 79
    invoke-virtual {v13, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 84
    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 87
    move-result v12

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 91
    move-result v13

    .line 94
    new-instance v14, Landroid/graphics/Rect;

    .line 95
    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 100
    move-result v15

    .line 103
    iget-object v6, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mAnimations:Ljava/util/ArrayList;

    .line 104
    const/4 v10, 0x2

    .line 106
    if-eqz v6, :cond_8

    .line 107
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 109
    move-result v6

    .line 112
    if-nez v6, :cond_8

    .line 113
    iget-object v6, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mAnimations:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 117
    move-result-object v6

    .line 120
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    move-result v8

    .line 124
    if-eqz v8, :cond_8

    .line 125
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    move-result-object v8

    .line 130
    check-cast v8, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;

    .line 131
    if-eq v15, v3, :cond_6

    .line 133
    if-eq v15, v10, :cond_5

    .line 135
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    goto :goto_1

    .line 140
    :cond_5
    iget-object v9, v8, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 141
    iget-object v9, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 143
    iget-object v4, v8, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mTempRec:Landroid/graphics/Rect;

    .line 145
    invoke-virtual {v9, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 147
    float-to-int v9, v12

    .line 150
    float-to-int v2, v13

    .line 151
    invoke-virtual {v4, v9, v2}, Landroid/graphics/Rect;->contains(II)Z

    .line 152
    move-result v2

    .line 155
    if-nez v2, :cond_7

    .line 156
    iget-boolean v2, v8, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mReverse:Z

    .line 158
    if-nez v2, :cond_7

    .line 160
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse()V

    .line 162
    goto :goto_2

    .line 165
    :cond_6
    iget-boolean v2, v8, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mReverse:Z

    .line 166
    if-nez v2, :cond_7

    .line 168
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse()V

    .line 170
    :cond_7
    :goto_2
    const/4 v4, -0x1

    .line 173
    goto :goto_1

    .line 174
    :cond_8
    if-eqz v15, :cond_9

    .line 175
    if-eq v15, v3, :cond_9

    .line 177
    goto/16 :goto_7

    .line 179
    :cond_9
    invoke-virtual {v5, v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 181
    move-result-object v2

    .line 184
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 185
    move-result-object v4

    .line 188
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    move-result v5

    .line 192
    if-eqz v5, :cond_10

    .line 193
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    move-result-object v5

    .line 198
    move-object v9, v5

    .line 199
    check-cast v9, Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 200
    iget v5, v9, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    .line 202
    if-ne v5, v3, :cond_b

    .line 204
    if-nez v15, :cond_d

    .line 206
    goto :goto_3

    .line 208
    :cond_b
    if-ne v5, v10, :cond_c

    .line 209
    if-ne v15, v3, :cond_d

    .line 211
    goto :goto_3

    .line 213
    :cond_c
    const/4 v6, 0x3

    .line 214
    if-ne v5, v6, :cond_d

    .line 215
    if-nez v15, :cond_d

    .line 217
    :goto_3
    move v5, v3

    .line 219
    goto :goto_4

    .line 220
    :cond_d
    const/4 v5, 0x0

    .line 221
    :goto_4
    if-eqz v5, :cond_a

    .line 222
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    .line 224
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 226
    move-result-object v16

    .line 229
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    move-result v5

    .line 233
    if-eqz v5, :cond_a

    .line 234
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    move-result-object v5

    .line 239
    check-cast v5, Landroid/view/View;

    .line 240
    invoke-virtual {v9, v5}, Landroidx/constraintlayout/motion/widget/ViewTransition;->matchesView(Landroid/view/View;)Z

    .line 242
    move-result v6

    .line 245
    if-nez v6, :cond_e

    .line 246
    goto :goto_5

    .line 248
    :cond_e
    invoke-virtual {v5, v14}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 249
    float-to-int v6, v12

    .line 252
    float-to-int v7, v13

    .line 253
    invoke-virtual {v14, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    .line 254
    move-result v6

    .line 257
    if-eqz v6, :cond_f

    .line 258
    iget-object v7, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 260
    filled-new-array {v5}, [Landroid/view/View;

    .line 262
    move-result-object v17

    .line 265
    move-object v5, v9

    .line 266
    move-object v6, v1

    .line 267
    move v8, v11

    .line 268
    move-object/from16 v18, v9

    .line 269
    move-object v9, v2

    .line 271
    move/from16 v19, v10

    .line 272
    move-object/from16 v10, v17

    .line 274
    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    .line 276
    goto :goto_6

    .line 279
    :cond_f
    move-object/from16 v18, v9

    .line 280
    move/from16 v19, v10

    .line 282
    :goto_6
    move-object/from16 v9, v18

    .line 284
    move/from16 v10, v19

    .line 286
    goto :goto_5

    .line 288
    :cond_10
    :goto_7
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 289
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 291
    if-eqz v1, :cond_14

    .line 293
    iget-boolean v2, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    .line 295
    xor-int/2addr v2, v3

    .line 297
    if-eqz v2, :cond_14

    .line 298
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 300
    if-eqz v1, :cond_14

    .line 302
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 304
    move-result v2

    .line 307
    if-nez v2, :cond_11

    .line 308
    new-instance v2, Landroid/graphics/RectF;

    .line 310
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 312
    invoke-virtual {v1, v0, v2}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 315
    move-result-object v2

    .line 318
    if-eqz v2, :cond_11

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 321
    move-result v3

    .line 324
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 325
    move-result v4

    .line 328
    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    .line 329
    move-result v2

    .line 332
    if-nez v2, :cond_11

    .line 333
    const/4 v2, 0x0

    .line 335
    return v2

    .line 336
    :cond_11
    iget v1, v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    .line 337
    const/4 v2, -0x1

    .line 339
    if-eq v1, v2, :cond_14

    .line 340
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 342
    if-eqz v2, :cond_12

    .line 344
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 346
    move-result v2

    .line 349
    if-eq v2, v1, :cond_13

    .line 350
    :cond_12
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 352
    move-result-object v1

    .line 355
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 356
    :cond_13
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 358
    if-eqz v1, :cond_14

    .line 360
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 362
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 364
    move-result v1

    .line 367
    int-to-float v1, v1

    .line 368
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 369
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 371
    move-result v3

    .line 374
    int-to-float v3, v3

    .line 375
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 376
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 378
    move-result v4

    .line 381
    int-to-float v4, v4

    .line 382
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 383
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 385
    move-result v5

    .line 388
    int-to-float v5, v5

    .line 389
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 390
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 393
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 395
    move-result v2

    .line 398
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 399
    move-result v3

    .line 402
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    .line 403
    move-result v1

    .line 406
    if-eqz v1, :cond_14

    .line 407
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 409
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 411
    move-result v1

    .line 414
    int-to-float v1, v1

    .line 415
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 416
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 418
    move-result v2

    .line 421
    int-to-float v2, v2

    .line 422
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 423
    move-object/from16 v4, p1

    .line 425
    invoke-virtual {v0, v1, v2, v4, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->handlesTouchEvent(FFLandroid/view/MotionEvent;Landroid/view/View;)Z

    .line 427
    move-result v1

    .line 430
    if-nez v1, :cond_14

    .line 431
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 433
    move-result v0

    .line 436
    return v0

    .line 437
    :cond_14
    const/4 v0, 0x0

    .line 438
    return v0

    .line 439
    :cond_15
    :goto_8
    const/4 v0, 0x0

    .line 440
    return v0
    .line 441
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 3
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 6
    if-nez v2, :cond_0

    .line 8
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 13
    return-void

    .line 15
    :cond_0
    sub-int/2addr p4, p2

    .line 16
    sub-int/2addr p5, p3

    .line 17
    :try_start_1
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutWidth:I

    .line 18
    if-ne p1, p4, :cond_1

    .line 20
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutHeight:I

    .line 22
    if-eq p1, p5, :cond_2

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 26
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    .line 29
    :cond_2
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutWidth:I

    .line 32
    iput p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 36
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 40
    throw p1
    .line 42
.end method

.method public onMeasure(II)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 8
    if-nez v3, :cond_0

    .line 10
    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 12
    return-void

    .line 15
    :cond_0
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    .line 16
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    if-ne v3, v1, :cond_2

    .line 20
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    .line 22
    if-eq v3, v2, :cond_1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    move v3, v5

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :goto_0
    move v3, v4

    .line 29
    :goto_1
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 30
    if-eqz v6, :cond_3

    .line 32
    iput-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->processTransitionCompleted()V

    .line 39
    move v3, v4

    .line 42
    :cond_3
    iget-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 43
    if-eqz v6, :cond_4

    .line 45
    move v3, v4

    .line 47
    :cond_4
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    .line 48
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    .line 50
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 52
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    .line 54
    move-result v6

    .line 57
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 58
    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 60
    const/4 v8, -0x1

    .line 62
    if-nez v7, :cond_5

    .line 63
    move v7, v8

    .line 65
    goto :goto_2

    .line 66
    :cond_5
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 67
    :goto_2
    if-nez v3, :cond_8

    .line 69
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 71
    iget v10, v9, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStartId:I

    .line 73
    if-ne v6, v10, :cond_7

    .line 75
    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEndId:I

    .line 77
    if-eq v7, v9, :cond_6

    .line 79
    goto :goto_3

    .line 81
    :cond_6
    move v9, v5

    .line 82
    goto :goto_4

    .line 83
    :cond_7
    :goto_3
    move v9, v4

    .line 84
    :goto_4
    if-eqz v9, :cond_9

    .line 85
    :cond_8
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 87
    if-eq v9, v8, :cond_9

    .line 89
    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 91
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 94
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 96
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 98
    move-result-object v2

    .line 101
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 102
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 104
    move-result-object v3

    .line 107
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 108
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 111
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    .line 113
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 116
    iput v6, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStartId:I

    .line 118
    iput v7, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEndId:I

    .line 120
    move v1, v5

    .line 122
    goto :goto_5

    .line 123
    :cond_9
    if-eqz v3, :cond_a

    .line 124
    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 126
    :cond_a
    move v1, v4

    .line 129
    :goto_5
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 130
    if-nez v2, :cond_b

    .line 132
    if-eqz v1, :cond_10

    .line 134
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 136
    move-result v1

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 140
    move-result v2

    .line 143
    add-int/2addr v2, v1

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 145
    move-result v1

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 149
    move-result v3

    .line 152
    add-int/2addr v3, v1

    .line 153
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 154
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 156
    move-result v1

    .line 159
    add-int/2addr v1, v3

    .line 160
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 161
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 163
    move-result v3

    .line 166
    add-int/2addr v3, v2

    .line 167
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    .line 168
    const/high16 v6, -0x80000000

    .line 170
    if-eq v2, v6, :cond_c

    .line 172
    if-nez v2, :cond_d

    .line 174
    :cond_c
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    .line 176
    int-to-float v2, v1

    .line 178
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    .line 179
    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    .line 181
    sub-int/2addr v8, v1

    .line 183
    int-to-float v1, v8

    .line 184
    mul-float/2addr v7, v1

    .line 185
    add-float/2addr v7, v2

    .line 186
    float-to-int v1, v7

    .line 187
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 188
    :cond_d
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    .line 191
    if-eq v2, v6, :cond_e

    .line 193
    if-nez v2, :cond_f

    .line 195
    :cond_e
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    .line 197
    int-to-float v3, v2

    .line 199
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    .line 200
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    .line 202
    sub-int/2addr v7, v2

    .line 204
    int-to-float v2, v7

    .line 205
    mul-float/2addr v6, v2

    .line 206
    add-float/2addr v6, v3

    .line 207
    float-to-int v3, v6

    .line 208
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 209
    :cond_f
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 212
    :cond_10
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 215
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 217
    sub-float/2addr v1, v2

    .line 219
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 220
    move-result v1

    .line 223
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 224
    move-result-wide v2

    .line 227
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 228
    instance-of v7, v6, Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 230
    const v8, 0x3089705f    # 1.0E-9f

    .line 232
    const/4 v9, 0x0

    .line 235
    if-nez v7, :cond_11

    .line 236
    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 238
    sub-long v10, v2, v10

    .line 240
    long-to-float v7, v10

    .line 242
    mul-float/2addr v7, v1

    .line 243
    mul-float/2addr v7, v8

    .line 244
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 245
    div-float/2addr v7, v10

    .line 247
    goto :goto_6

    .line 248
    :cond_11
    move v7, v9

    .line 249
    :goto_6
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 250
    add-float/2addr v10, v7

    .line 252
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 253
    if-eqz v7, :cond_12

    .line 255
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 257
    :cond_12
    cmpl-float v7, v1, v9

    .line 259
    if-lez v7, :cond_13

    .line 261
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 263
    cmpl-float v11, v10, v11

    .line 265
    if-gez v11, :cond_14

    .line 267
    :cond_13
    cmpg-float v11, v1, v9

    .line 269
    if-gtz v11, :cond_15

    .line 271
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 273
    cmpg-float v11, v10, v11

    .line 275
    if-gtz v11, :cond_15

    .line 277
    :cond_14
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 279
    goto :goto_7

    .line 281
    :cond_15
    move v4, v5

    .line 282
    :goto_7
    if-eqz v6, :cond_17

    .line 283
    if-nez v4, :cond_17

    .line 285
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 287
    if-eqz v4, :cond_16

    .line 289
    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 291
    sub-long/2addr v2, v10

    .line 293
    long-to-float v2, v2

    .line 294
    mul-float/2addr v2, v8

    .line 295
    invoke-interface {v6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 296
    move-result v10

    .line 299
    goto :goto_8

    .line 300
    :cond_16
    invoke-interface {v6, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 301
    move-result v10

    .line 304
    :cond_17
    :goto_8
    if-lez v7, :cond_18

    .line 305
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 307
    cmpl-float v2, v10, v2

    .line 309
    if-gez v2, :cond_19

    .line 311
    :cond_18
    cmpg-float v1, v1, v9

    .line 313
    if-gtz v1, :cond_1a

    .line 315
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 317
    cmpg-float v1, v10, v1

    .line 319
    if-gtz v1, :cond_1a

    .line 321
    :cond_19
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 323
    :cond_1a
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    .line 325
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 327
    move-result v1

    .line 330
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 331
    move-result-wide v2

    .line 334
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    .line 335
    if-nez v4, :cond_1b

    .line 337
    goto :goto_9

    .line 339
    :cond_1b
    invoke-interface {v4, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 340
    move-result v10

    .line 343
    :goto_9
    if-ge v5, v1, :cond_1d

    .line 344
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 346
    move-result-object v15

    .line 349
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 350
    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    move-result-object v4

    .line 355
    move-object v11, v4

    .line 356
    check-cast v11, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 357
    if-eqz v11, :cond_1c

    .line 359
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 361
    move v12, v10

    .line 363
    move-wide v13, v2

    .line 364
    move-object/from16 v16, v4

    .line 365
    invoke-virtual/range {v11 .. v16}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    .line 367
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    .line 370
    goto :goto_9

    .line 372
    :cond_1d
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 373
    if-eqz v1, :cond_1e

    .line 375
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 377
    :cond_1e
    return-void
    .line 380
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    move/from16 v3, p3

    .line 8
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 10
    if-nez v4, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 15
    if-eqz v5, :cond_14

    .line 17
    iget-boolean v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    .line 19
    const/4 v7, 0x1

    .line 21
    xor-int/2addr v6, v7

    .line 22
    if-nez v6, :cond_1

    .line 23
    goto/16 :goto_4

    .line 25
    :cond_1
    const/4 v8, -0x1

    .line 27
    if-eqz v6, :cond_2

    .line 28
    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 30
    if-eqz v6, :cond_2

    .line 32
    iget v6, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    .line 34
    if-eq v6, v8, :cond_2

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 38
    move-result v9

    .line 41
    if-eq v9, v6, :cond_2

    .line 42
    return-void

    .line 44
    :cond_2
    iget-object v6, v4, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 45
    const/4 v9, 0x0

    .line 47
    if-eqz v6, :cond_3

    .line 48
    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 50
    if-eqz v6, :cond_3

    .line 52
    iget-boolean v6, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    .line 54
    goto :goto_0

    .line 56
    :cond_3
    move v6, v9

    .line 57
    :goto_0
    const/high16 v10, 0x3f800000    # 1.0f

    .line 58
    const/4 v11, 0x0

    .line 60
    if-eqz v6, :cond_6

    .line 61
    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 63
    if-eqz v6, :cond_4

    .line 65
    iget v6, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    .line 67
    and-int/lit8 v6, v6, 0x4

    .line 69
    if-eqz v6, :cond_4

    .line 71
    move v8, v3

    .line 73
    :cond_4
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 74
    cmpl-float v12, v6, v10

    .line 76
    if-eqz v12, :cond_5

    .line 78
    cmpl-float v6, v6, v11

    .line 80
    if-nez v6, :cond_6

    .line 82
    :cond_5
    invoke-virtual {v1, v8}, Landroid/view/View;->canScrollVertically(I)Z

    .line 84
    move-result v6

    .line 87
    if-eqz v6, :cond_6

    .line 88
    return-void

    .line 90
    :cond_6
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 91
    if-eqz v5, :cond_d

    .line 93
    iget v5, v5, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    .line 95
    and-int/2addr v5, v7

    .line 97
    if-eqz v5, :cond_d

    .line 98
    int-to-float v5, v2

    .line 100
    int-to-float v6, v3

    .line 101
    iget-object v8, v4, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 102
    if-eqz v8, :cond_a

    .line 104
    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 106
    if-eqz v8, :cond_a

    .line 108
    iget-object v12, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 110
    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 112
    move-result v15

    .line 115
    iget-object v13, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 116
    iget v14, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 118
    iget v12, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 120
    iget v10, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 122
    iget-object v7, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 124
    move/from16 v16, v12

    .line 126
    move/from16 v17, v10

    .line 128
    move-object/from16 v18, v7

    .line 130
    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 132
    iget v7, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 135
    cmpl-float v10, v7, v11

    .line 137
    const v12, 0x33d6bf95    # 1.0E-7f

    .line 139
    iget-object v13, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 142
    if-eqz v10, :cond_8

    .line 144
    aget v6, v13, v9

    .line 146
    cmpl-float v6, v6, v11

    .line 148
    if-nez v6, :cond_7

    .line 150
    aput v12, v13, v9

    .line 152
    :cond_7
    mul-float/2addr v5, v7

    .line 154
    aget v6, v13, v9

    .line 155
    div-float/2addr v5, v6

    .line 157
    goto :goto_1

    .line 158
    :cond_8
    const/4 v5, 0x1

    .line 159
    aget v7, v13, v5

    .line 160
    cmpl-float v7, v7, v11

    .line 162
    if-nez v7, :cond_9

    .line 164
    aput v12, v13, v5

    .line 166
    :cond_9
    iget v7, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 168
    mul-float/2addr v6, v7

    .line 170
    aget v7, v13, v5

    .line 171
    div-float v5, v6, v7

    .line 173
    goto :goto_1

    .line 175
    :cond_a
    move v5, v11

    .line 176
    :goto_1
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 177
    cmpg-float v7, v6, v11

    .line 179
    if-gtz v7, :cond_b

    .line 181
    cmpg-float v7, v5, v11

    .line 183
    if-ltz v7, :cond_c

    .line 185
    :cond_b
    const/high16 v7, 0x3f800000    # 1.0f

    .line 187
    cmpl-float v6, v6, v7

    .line 189
    if-ltz v6, :cond_d

    .line 191
    cmpl-float v5, v5, v11

    .line 193
    if-lez v5, :cond_d

    .line 195
    :cond_c
    invoke-virtual {v1, v9}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 197
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$3;

    .line 200
    invoke-direct {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$3;-><init>(Landroid/view/View;)V

    .line 202
    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 205
    return-void

    .line 208
    :cond_d
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 209
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 211
    move-result-wide v5

    .line 214
    int-to-float v7, v2

    .line 215
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    .line 216
    int-to-float v8, v3

    .line 218
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    .line 219
    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    .line 221
    sub-long v12, v5, v12

    .line 223
    long-to-double v12, v12

    .line 225
    const-wide v14, 0x3e112e0be826d695L    # 1.0E-9

    .line 226
    mul-double/2addr v12, v14

    .line 231
    double-to-float v10, v12

    .line 232
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    .line 233
    iput-wide v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    .line 235
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 237
    if-eqz v4, :cond_11

    .line 239
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 241
    if-eqz v4, :cond_11

    .line 243
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 245
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 247
    move-result v6

    .line 250
    iget-boolean v10, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 251
    if-nez v10, :cond_e

    .line 253
    const/4 v10, 0x1

    .line 255
    iput-boolean v10, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 256
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 258
    :cond_e
    iget-object v12, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 261
    iget v13, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 263
    iget v15, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 265
    iget v10, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 267
    iget-object v14, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 269
    move-object/from16 v17, v14

    .line 271
    move v14, v6

    .line 273
    move/from16 v16, v10

    .line 274
    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 276
    iget v10, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 279
    iget-object v12, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 281
    aget v13, v12, v9

    .line 283
    mul-float/2addr v10, v13

    .line 285
    iget v13, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 286
    const/4 v14, 0x1

    .line 288
    aget v15, v12, v14

    .line 289
    mul-float/2addr v13, v15

    .line 291
    add-float/2addr v13, v10

    .line 292
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 293
    move-result v10

    .line 296
    float-to-double v14, v10

    .line 297
    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    .line 298
    cmpg-double v10, v14, v16

    .line 303
    if-gez v10, :cond_f

    .line 305
    const v10, 0x3c23d70a    # 0.01f

    .line 307
    aput v10, v12, v9

    .line 310
    const/4 v13, 0x1

    .line 312
    aput v10, v12, v13

    .line 313
    :cond_f
    iget v10, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 315
    cmpl-float v13, v10, v11

    .line 317
    if-eqz v13, :cond_10

    .line 319
    mul-float/2addr v7, v10

    .line 321
    aget v4, v12, v9

    .line 322
    div-float/2addr v7, v4

    .line 324
    goto :goto_2

    .line 325
    :cond_10
    iget v4, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 326
    mul-float/2addr v8, v4

    .line 328
    const/4 v4, 0x1

    .line 329
    aget v7, v12, v4

    .line 330
    div-float v7, v8, v7

    .line 332
    :goto_2
    add-float/2addr v6, v7

    .line 334
    const/high16 v4, 0x3f800000    # 1.0f

    .line 335
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    .line 337
    move-result v4

    .line 340
    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    .line 341
    move-result v4

    .line 344
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 345
    move-result v6

    .line 348
    cmpl-float v6, v4, v6

    .line 349
    if-eqz v6, :cond_11

    .line 351
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 353
    :cond_11
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 356
    cmpl-float v1, v1, v4

    .line 358
    if-eqz v1, :cond_12

    .line 360
    aput v2, p4, v9

    .line 362
    const/4 v1, 0x1

    .line 364
    aput v3, p4, v1

    .line 365
    goto :goto_3

    .line 367
    :cond_12
    const/4 v1, 0x1

    .line 368
    :goto_3
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    .line 369
    aget v2, p4, v9

    .line 372
    if-nez v2, :cond_13

    .line 374
    aget v2, p4, v1

    .line 376
    if-eqz v2, :cond_14

    .line 378
    :cond_13
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    .line 380
    :cond_14
    :goto_4
    return-void
    .line 382
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 0

    .line 2
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    const/4 p6, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 3
    :cond_0
    aget p1, p7, p6

    add-int/2addr p1, p4

    aput p1, p7, p6

    const/4 p1, 0x1

    .line 4
    aget p2, p7, p1

    add-int/2addr p2, p5

    aput p2, p7, p1

    .line 5
    :cond_1
    iput-boolean p6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 2
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    .line 6
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    .line 9
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    .line 11
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    .line 13
    return-void
    .line 15
.end method

.method public final onNewStateAttachHandlers()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 7
    invoke-virtual {v0, v1, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->autoTransition(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 15
    return-void

    .line 18
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 19
    const/4 v1, -0x1

    .line 21
    if-eq v0, v1, :cond_9

    .line 22
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 24
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v4

    .line 31
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v5

    .line 35
    if-eqz v5, :cond_3

    .line 36
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v5

    .line 41
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 42
    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 46
    move-result v6

    .line 49
    if-lez v6, :cond_2

    .line 50
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v5

    .line 57
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v6

    .line 61
    if-eqz v6, :cond_2

    .line 62
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v6

    .line 67
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    .line 68
    invoke-virtual {v6, p0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->removeOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 70
    goto :goto_0

    .line 73
    :cond_3
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object v4

    .line 79
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v5

    .line 83
    if-eqz v5, :cond_5

    .line 84
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v5

    .line 89
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 90
    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 94
    move-result v6

    .line 97
    if-lez v6, :cond_4

    .line 98
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object v5

    .line 105
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result v6

    .line 109
    if-eqz v6, :cond_4

    .line 110
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    move-result-object v6

    .line 115
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    .line 116
    invoke-virtual {v6, p0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->removeOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 118
    goto :goto_1

    .line 121
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    move-result-object v3

    .line 125
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    move-result v4

    .line 129
    if-eqz v4, :cond_7

    .line 130
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    move-result-object v4

    .line 135
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 136
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 140
    move-result v5

    .line 143
    if-lez v5, :cond_6

    .line 144
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 148
    move-result-object v5

    .line 151
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    move-result v6

    .line 155
    if-eqz v6, :cond_6

    .line 156
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    move-result-object v6

    .line 161
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    .line 162
    invoke-virtual {v6, p0, v0, v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->addOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 164
    goto :goto_2

    .line 167
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 168
    move-result-object v2

    .line 171
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    move-result v3

    .line 175
    if-eqz v3, :cond_9

    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    move-result-object v3

    .line 181
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 182
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 184
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 186
    move-result v4

    .line 189
    if-lez v4, :cond_8

    .line 190
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 194
    move-result-object v4

    .line 197
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    move-result v5

    .line 201
    if-eqz v5, :cond_8

    .line 202
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    move-result-object v5

    .line 207
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    .line 208
    invoke-virtual {v5, p0, v0, v3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->addOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 210
    goto :goto_3

    .line 213
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 214
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->supportTouch()Z

    .line 216
    move-result v0

    .line 219
    if-eqz v0, :cond_c

    .line 220
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 222
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 224
    if-eqz p0, :cond_c

    .line 226
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 228
    if-eqz p0, :cond_c

    .line 230
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 232
    if-eq v0, v1, :cond_a

    .line 234
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 236
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 238
    move-result-object v0

    .line 241
    if-nez v0, :cond_b

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    .line 244
    const-string v3, "cannot find TouchAnchorId @id/"

    .line 246
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 251
    move-result-object v1

    .line 254
    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 255
    invoke-static {p0, v1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(ILandroid/content/Context;)Ljava/lang/String;

    .line 257
    move-result-object p0

    .line 260
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    move-result-object p0

    .line 267
    const-string v1, "TouchResponse"

    .line 268
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    goto :goto_4

    .line 273
    :cond_a
    const/4 v0, 0x0

    .line 274
    :cond_b
    :goto_4
    instance-of p0, v0, Landroidx/core/widget/NestedScrollView;

    .line 275
    if-eqz p0, :cond_c

    .line 277
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 279
    new-instance p0, Landroidx/constraintlayout/motion/widget/TouchResponse$1;

    .line 281
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TouchResponse$1;-><init>()V

    .line 283
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 286
    new-instance p0, Landroidx/constraintlayout/motion/widget/TouchResponse$2;

    .line 289
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TouchResponse$2;-><init>()V

    .line 291
    invoke-virtual {v0, p0}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 294
    :cond_c
    return-void
    .line 297
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    .line 6
    move-result p0

    .line 9
    iput-boolean p0, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    .line 10
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 12
    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 16
    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    if-eqz p0, :cond_1

    .line 4
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 6
    if-eqz p0, :cond_1

    .line 8
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 10
    if-eqz p0, :cond_1

    .line 12
    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    .line 14
    and-int/lit8 p0, p0, 0x2

    .line 16
    if-eqz p0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 23
    return p0
    .line 24
.end method

.method public final onStopNestedScroll(ILandroid/view/View;)V
    .locals 10

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    if-eqz p1, :cond_4

    .line 4
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    .line 6
    const/4 v0, 0x0

    .line 8
    cmpl-float v1, p2, v0

    .line 9
    if-nez v1, :cond_0

    .line 11
    goto :goto_2

    .line 13
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    .line 14
    div-float/2addr v1, p2

    .line 16
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    .line 17
    div-float/2addr p0, p2

    .line 19
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 20
    if-eqz p1, :cond_4

    .line 22
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 24
    if-eqz p1, :cond_4

    .line 26
    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 29
    iget-object v2, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 31
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 33
    move-result v9

    .line 36
    iget-object v3, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 37
    iget v4, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 39
    iget v6, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 41
    iget v7, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 43
    iget-object v8, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 45
    move v5, v9

    .line 47
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 48
    iget v3, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 51
    iget-object v4, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 53
    aget p2, v4, p2

    .line 55
    iget v5, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 57
    const/4 v6, 0x1

    .line 59
    aget v4, v4, v6

    .line 60
    cmpl-float v6, v3, v0

    .line 62
    if-eqz v6, :cond_1

    .line 64
    mul-float/2addr v1, v3

    .line 66
    div-float/2addr v1, p2

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    mul-float/2addr p0, v5

    .line 69
    div-float v1, p0, v4

    .line 70
    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 72
    move-result p0

    .line 75
    if-nez p0, :cond_2

    .line 76
    const/high16 p0, 0x40400000    # 3.0f

    .line 78
    div-float p0, v1, p0

    .line 80
    add-float/2addr v9, p0

    .line 82
    :cond_2
    cmpl-float p0, v9, v0

    .line 83
    if-eqz p0, :cond_4

    .line 85
    const/high16 p0, 0x3f800000    # 1.0f

    .line 87
    cmpl-float p2, v9, p0

    .line 89
    if-eqz p2, :cond_4

    .line 91
    iget p1, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 93
    const/4 p2, 0x3

    .line 95
    if-eq p1, p2, :cond_4

    .line 96
    float-to-double v3, v9

    .line 98
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 99
    cmpg-double p2, v3, v5

    .line 101
    if-gez p2, :cond_3

    .line 103
    goto :goto_1

    .line 105
    :cond_3
    move v0, p0

    .line 106
    :goto_1
    invoke-virtual {v2, v0, v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(FFI)V

    .line 107
    :cond_4
    :goto_2
    return-void
    .line 110
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 6
    if-eqz v2, :cond_69

    .line 8
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    .line 10
    if-eqz v3, :cond_69

    .line 12
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->supportTouch()Z

    .line 14
    move-result v2

    .line 17
    if-eqz v2, :cond_69

    .line 18
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 20
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 22
    const/4 v4, 0x1

    .line 24
    if-eqz v3, :cond_0

    .line 25
    iget-boolean v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    .line 27
    xor-int/2addr v3, v4

    .line 29
    if-nez v3, :cond_0

    .line 30
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 32
    move-result v0

    .line 35
    return v0

    .line 36
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 37
    move-result v3

    .line 40
    new-instance v5, Landroid/graphics/RectF;

    .line 41
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 43
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    .line 46
    iget-object v7, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 48
    if-nez v6, :cond_1

    .line 50
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    sget-object v6, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->sMe:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    .line 55
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 57
    move-result-object v8

    .line 60
    iput-object v8, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 61
    iput-object v6, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    .line 63
    :cond_1
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    .line 65
    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 67
    if-eqz v6, :cond_2

    .line 69
    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 71
    :cond_2
    const/4 v6, 0x2

    .line 74
    const/4 v9, -0x1

    .line 75
    if-eq v3, v9, :cond_19

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 78
    move-result v12

    .line 81
    if-eqz v12, :cond_16

    .line 82
    if-eq v12, v6, :cond_3

    .line 84
    goto/16 :goto_c

    .line 86
    :cond_3
    iget-boolean v12, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mIgnoreTouch:Z

    .line 88
    if-eqz v12, :cond_4

    .line 90
    goto/16 :goto_c

    .line 92
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 94
    move-result v12

    .line 97
    iget v13, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    .line 98
    sub-float/2addr v12, v13

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 101
    move-result v13

    .line 104
    iget v14, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    .line 105
    sub-float/2addr v13, v14

    .line 107
    float-to-double v14, v13

    .line 108
    const-wide/16 v16, 0x0

    .line 109
    cmpl-double v14, v14, v16

    .line 111
    if-nez v14, :cond_5

    .line 113
    float-to-double v14, v12

    .line 115
    cmpl-double v14, v14, v16

    .line 116
    if-eqz v14, :cond_1a

    .line 118
    :cond_5
    iget-object v14, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 120
    if-nez v14, :cond_6

    .line 122
    goto/16 :goto_d

    .line 124
    :cond_6
    if-eq v3, v9, :cond_14

    .line 126
    iget-object v15, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    .line 128
    if-eqz v15, :cond_7

    .line 130
    invoke-virtual {v15, v3}, Landroidx/constraintlayout/widget/StateSet;->stateGetConstraintID(I)I

    .line 132
    move-result v15

    .line 135
    if-eq v15, v9, :cond_7

    .line 136
    goto :goto_0

    .line 138
    :cond_7
    move v15, v3

    .line 139
    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    .line 140
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 142
    iget-object v9, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 147
    move-result-object v9

    .line 150
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    move-result v18

    .line 154
    if-eqz v18, :cond_a

    .line 155
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    move-result-object v18

    .line 160
    move-object/from16 v6, v18

    .line 161
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 163
    iget v4, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 165
    if-eq v4, v15, :cond_8

    .line 167
    iget v4, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 169
    if-ne v4, v15, :cond_9

    .line 171
    :cond_8
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_9
    const/4 v4, 0x1

    .line 176
    const/4 v6, 0x2

    .line 177
    goto :goto_1

    .line 178
    :cond_a
    new-instance v4, Landroid/graphics/RectF;

    .line 179
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 181
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 184
    move-result-object v6

    .line 187
    const/4 v9, 0x0

    .line 188
    const/4 v11, 0x0

    .line 189
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    move-result v15

    .line 193
    if-eqz v15, :cond_13

    .line 194
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    move-result-object v15

    .line 199
    check-cast v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 200
    iget-boolean v8, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    .line 202
    if-eqz v8, :cond_b

    .line 204
    goto/16 :goto_6

    .line 206
    :cond_b
    iget-object v8, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 208
    if-eqz v8, :cond_11

    .line 210
    iget-boolean v10, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    .line 212
    invoke-virtual {v8, v10}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    .line 214
    iget-object v8, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 217
    invoke-virtual {v8, v7, v4}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 219
    move-result-object v8

    .line 222
    if-eqz v8, :cond_c

    .line 223
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    .line 225
    move-result v10

    .line 228
    move-object/from16 v19, v6

    .line 229
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    .line 231
    move-result v6

    .line 234
    invoke-virtual {v8, v10, v6}, Landroid/graphics/RectF;->contains(FF)Z

    .line 235
    move-result v6

    .line 238
    if-nez v6, :cond_d

    .line 239
    goto :goto_3

    .line 241
    :cond_c
    move-object/from16 v19, v6

    .line 242
    :cond_d
    iget-object v6, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 244
    invoke-virtual {v6, v7, v4}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getLimitBoundsTo(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 246
    move-result-object v6

    .line 249
    if-eqz v6, :cond_e

    .line 250
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    .line 252
    move-result v8

    .line 255
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    .line 256
    move-result v10

    .line 259
    invoke-virtual {v6, v8, v10}, Landroid/graphics/RectF;->contains(FF)Z

    .line 260
    move-result v6

    .line 263
    if-nez v6, :cond_e

    .line 264
    :goto_3
    move-object/from16 v20, v4

    .line 266
    move-object v6, v5

    .line 268
    move-object/from16 v22, v11

    .line 269
    move/from16 v21, v12

    .line 271
    move v8, v13

    .line 273
    move-object/from16 v23, v14

    .line 274
    goto/16 :goto_7

    .line 276
    :cond_e
    iget-object v6, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 278
    iget v8, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 280
    mul-float/2addr v8, v13

    .line 282
    iget v10, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 283
    mul-float/2addr v10, v12

    .line 285
    add-float/2addr v10, v8

    .line 286
    iget-boolean v6, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    .line 287
    if-eqz v6, :cond_f

    .line 289
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    .line 291
    move-result v6

    .line 294
    iget-object v8, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 295
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    const/high16 v8, 0x3f000000    # 0.5f

    .line 300
    sub-float/2addr v6, v8

    .line 302
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    .line 303
    move-result v10

    .line 306
    move-object/from16 v20, v4

    .line 307
    iget-object v4, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 309
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    sub-float/2addr v10, v8

    .line 314
    add-float v4, v13, v6

    .line 315
    add-float v8, v12, v10

    .line 317
    move-object/from16 v22, v11

    .line 319
    move/from16 v21, v12

    .line 321
    float-to-double v11, v8

    .line 323
    move v8, v13

    .line 324
    move-object/from16 v23, v14

    .line 325
    float-to-double v13, v4

    .line 327
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    .line 328
    move-result-wide v11

    .line 331
    float-to-double v13, v6

    .line 332
    move-object v6, v5

    .line 333
    float-to-double v4, v10

    .line 334
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    .line 335
    move-result-wide v4

    .line 338
    sub-double/2addr v11, v4

    .line 339
    double-to-float v4, v11

    .line 340
    const/high16 v5, 0x41200000    # 10.0f

    .line 341
    mul-float v10, v4, v5

    .line 343
    goto :goto_4

    .line 345
    :cond_f
    move-object/from16 v20, v4

    .line 346
    move-object v6, v5

    .line 348
    move-object/from16 v22, v11

    .line 349
    move/from16 v21, v12

    .line 351
    move v8, v13

    .line 353
    move-object/from16 v23, v14

    .line 354
    :goto_4
    iget v4, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 356
    if-ne v4, v3, :cond_10

    .line 358
    const/high16 v4, -0x40800000    # -1.0f

    .line 360
    goto :goto_5

    .line 362
    :cond_10
    const v4, 0x3f8ccccd    # 1.1f

    .line 363
    :goto_5
    mul-float/2addr v4, v10

    .line 366
    cmpl-float v5, v4, v9

    .line 367
    if-lez v5, :cond_12

    .line 369
    move v9, v4

    .line 371
    move-object v11, v15

    .line 372
    goto :goto_8

    .line 373
    :cond_11
    :goto_6
    move-object/from16 v20, v4

    .line 374
    move-object/from16 v19, v6

    .line 376
    move-object/from16 v22, v11

    .line 378
    move/from16 v21, v12

    .line 380
    move v8, v13

    .line 382
    move-object/from16 v23, v14

    .line 383
    move-object v6, v5

    .line 385
    :cond_12
    :goto_7
    move-object/from16 v11, v22

    .line 386
    :goto_8
    move-object v5, v6

    .line 388
    move v13, v8

    .line 389
    move-object/from16 v6, v19

    .line 390
    move-object/from16 v4, v20

    .line 392
    move/from16 v12, v21

    .line 394
    move-object/from16 v14, v23

    .line 396
    goto/16 :goto_2

    .line 398
    :cond_13
    move-object v6, v5

    .line 400
    move-object/from16 v22, v11

    .line 401
    goto :goto_9

    .line 403
    :cond_14
    move-object v6, v5

    .line 404
    iget-object v11, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 405
    :goto_9
    if-eqz v11, :cond_19

    .line 407
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 409
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 412
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 414
    invoke-virtual {v3, v7, v6}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 416
    move-result-object v3

    .line 419
    if-eqz v3, :cond_15

    .line 420
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 422
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    .line 424
    move-result v4

    .line 427
    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 428
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    .line 430
    move-result v5

    .line 433
    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    .line 434
    move-result v3

    .line 437
    if-nez v3, :cond_15

    .line 438
    const/4 v3, 0x1

    .line 440
    goto :goto_a

    .line 441
    :cond_15
    const/4 v3, 0x0

    .line 442
    :goto_a
    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionOutsideRegion:Z

    .line 443
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 445
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 447
    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    .line 449
    iget v5, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    .line 451
    iput v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 453
    iput v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 455
    const/4 v4, 0x0

    .line 457
    iput-boolean v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 458
    goto :goto_c

    .line 460
    :cond_16
    move-object v6, v5

    .line 461
    const/4 v4, 0x0

    .line 462
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 463
    move-result v3

    .line 466
    iput v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    .line 467
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 469
    move-result v3

    .line 472
    iput v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    .line 473
    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 475
    iput-boolean v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mIgnoreTouch:Z

    .line 477
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 479
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 481
    if-eqz v1, :cond_1a

    .line 483
    invoke-virtual {v1, v7, v6}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getLimitBoundsTo(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 485
    move-result-object v1

    .line 488
    if-eqz v1, :cond_17

    .line 489
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 491
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    .line 493
    move-result v3

    .line 496
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 497
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    .line 499
    move-result v4

    .line 502
    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    .line 503
    move-result v1

    .line 506
    if-nez v1, :cond_17

    .line 507
    const/4 v1, 0x0

    .line 509
    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 510
    const/4 v1, 0x1

    .line 512
    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mIgnoreTouch:Z

    .line 513
    goto :goto_d

    .line 515
    :cond_17
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 516
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 518
    invoke-virtual {v1, v7, v6}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 520
    move-result-object v1

    .line 523
    if-eqz v1, :cond_18

    .line 524
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 526
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    .line 528
    move-result v3

    .line 531
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 532
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    .line 534
    move-result v4

    .line 537
    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    .line 538
    move-result v1

    .line 541
    if-nez v1, :cond_18

    .line 542
    const/4 v1, 0x1

    .line 544
    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionOutsideRegion:Z

    .line 545
    goto :goto_b

    .line 547
    :cond_18
    const/4 v1, 0x0

    .line 548
    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionOutsideRegion:Z

    .line 549
    :goto_b
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 551
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 553
    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    .line 555
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    .line 557
    iput v3, v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 559
    iput v2, v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 561
    goto :goto_d

    .line 563
    :cond_19
    :goto_c
    iget-boolean v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mIgnoreTouch:Z

    .line 564
    if-eqz v3, :cond_1b

    .line 566
    :cond_1a
    :goto_d
    move-object v2, v0

    .line 568
    const/4 v0, 0x0

    .line 569
    goto/16 :goto_2f

    .line 570
    :cond_1b
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 572
    if-eqz v3, :cond_63

    .line 574
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 576
    if-eqz v3, :cond_63

    .line 578
    iget-boolean v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionOutsideRegion:Z

    .line 580
    if-nez v4, :cond_63

    .line 582
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    .line 584
    iget-boolean v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    .line 586
    sget-object v6, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 588
    const-wide v19, 0x3f847ae147ae147bL    # 0.01

    .line 590
    iget-object v15, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 595
    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 597
    if-eqz v5, :cond_41

    .line 599
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 601
    if-eqz v5, :cond_1c

    .line 603
    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 605
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 608
    move-result v5

    .line 611
    if-eqz v5, :cond_3e

    .line 612
    const/high16 v22, 0x43b40000    # 360.0f

    .line 614
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    .line 616
    const/high16 v24, 0x40000000    # 2.0f

    .line 618
    const/4 v7, 0x1

    .line 620
    if-eq v5, v7, :cond_2e

    .line 621
    const/4 v7, 0x2

    .line 623
    if-eq v5, v7, :cond_1d

    .line 624
    goto/16 :goto_10

    .line 626
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 628
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 631
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getWidth()I

    .line 634
    move-result v5

    .line 637
    int-to-float v5, v5

    .line 638
    div-float v5, v5, v24

    .line 639
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    .line 641
    move-result v6

    .line 644
    int-to-float v6, v6

    .line 645
    div-float v6, v6, v24

    .line 646
    iget v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    .line 648
    const/4 v8, -0x1

    .line 650
    if-eq v7, v8, :cond_1e

    .line 651
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 653
    move-result-object v5

    .line 656
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 657
    const/4 v6, 0x0

    .line 660
    aget v7, v11, v6

    .line 661
    int-to-float v6, v7

    .line 663
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 664
    move-result v7

    .line 667
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 668
    move-result v8

    .line 671
    add-int/2addr v8, v7

    .line 672
    int-to-float v7, v8

    .line 673
    div-float v7, v7, v24

    .line 674
    add-float/2addr v6, v7

    .line 676
    const/4 v7, 0x1

    .line 677
    aget v8, v11, v7

    .line 678
    int-to-float v7, v8

    .line 680
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 681
    move-result v8

    .line 684
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 685
    move-result v5

    .line 688
    add-int/2addr v5, v8

    .line 689
    int-to-float v5, v5

    .line 690
    div-float v5, v5, v24

    .line 691
    add-float/2addr v5, v7

    .line 693
    move/from16 v32, v6

    .line 694
    move v6, v5

    .line 696
    move/from16 v5, v32

    .line 697
    goto :goto_e

    .line 699
    :cond_1e
    iget v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 700
    const/4 v8, -0x1

    .line 702
    if-eq v7, v8, :cond_20

    .line 703
    iget-object v8, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 705
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 707
    move-result-object v7

    .line 710
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    move-result-object v7

    .line 714
    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 715
    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 717
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 719
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 721
    move-result-object v7

    .line 724
    if-nez v7, :cond_1f

    .line 725
    const-string v7, "TouchResponse"

    .line 727
    const-string v8, "could not find view to animate to"

    .line 729
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    goto :goto_e

    .line 734
    :cond_1f
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 735
    const/4 v5, 0x0

    .line 738
    aget v6, v11, v5

    .line 739
    int-to-float v5, v6

    .line 741
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 742
    move-result v6

    .line 745
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 746
    move-result v8

    .line 749
    add-int/2addr v8, v6

    .line 750
    int-to-float v6, v8

    .line 751
    div-float v6, v6, v24

    .line 752
    add-float/2addr v5, v6

    .line 754
    const/4 v6, 0x1

    .line 755
    aget v8, v11, v6

    .line 756
    int-to-float v6, v8

    .line 758
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 759
    move-result v8

    .line 762
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 763
    move-result v7

    .line 766
    add-int/2addr v7, v8

    .line 767
    int-to-float v7, v7

    .line 768
    div-float v7, v7, v24

    .line 769
    add-float/2addr v6, v7

    .line 771
    :cond_20
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 772
    move-result v7

    .line 775
    sub-float/2addr v7, v5

    .line 776
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 777
    move-result v8

    .line 780
    sub-float/2addr v8, v6

    .line 781
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 782
    move-result v9

    .line 785
    sub-float/2addr v9, v6

    .line 786
    float-to-double v11, v9

    .line 787
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 788
    move-result v9

    .line 791
    sub-float/2addr v9, v5

    .line 792
    float-to-double v13, v9

    .line 793
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    .line 794
    move-result-wide v11

    .line 797
    iget v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 798
    sub-float/2addr v9, v6

    .line 800
    float-to-double v13, v9

    .line 801
    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 802
    sub-float/2addr v6, v5

    .line 804
    float-to-double v5, v6

    .line 805
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 806
    move-result-wide v5

    .line 809
    sub-double v5, v11, v5

    .line 810
    const-wide v13, 0x4066800000000000L    # 180.0

    .line 812
    mul-double/2addr v5, v13

    .line 817
    const-wide v13, 0x400921fb54442d18L    # Math.PI

    .line 818
    div-double/2addr v5, v13

    .line 823
    double-to-float v5, v5

    .line 824
    const/high16 v6, 0x43a50000    # 330.0f

    .line 825
    cmpl-float v6, v5, v6

    .line 827
    if-lez v6, :cond_21

    .line 829
    sub-float v5, v5, v22

    .line 831
    goto :goto_f

    .line 833
    :cond_21
    const/high16 v6, -0x3c5b0000    # -330.0f

    .line 834
    cmpg-float v6, v5, v6

    .line 836
    if-gez v6, :cond_22

    .line 838
    add-float v5, v5, v22

    .line 840
    :cond_22
    :goto_f
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 842
    move-result v6

    .line 845
    float-to-double v13, v6

    .line 846
    cmpl-double v6, v13, v19

    .line 847
    if-gtz v6, :cond_24

    .line 849
    iget-boolean v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 851
    if-eqz v6, :cond_23

    .line 853
    goto :goto_11

    .line 855
    :cond_23
    :goto_10
    move-object/from16 v31, v2

    .line 856
    goto/16 :goto_1d

    .line 858
    :cond_24
    :goto_11
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 860
    move-result v6

    .line 863
    iget-boolean v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 864
    if-nez v9, :cond_25

    .line 866
    const/4 v9, 0x1

    .line 868
    iput-boolean v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 869
    invoke-virtual {v10, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 871
    :cond_25
    iget v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 874
    const/4 v13, -0x1

    .line 876
    if-eq v9, v13, :cond_26

    .line 877
    iget-object v13, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 879
    iget v14, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 881
    iget v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 883
    move-object/from16 v31, v2

    .line 885
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 887
    move-object/from16 v25, v13

    .line 889
    move/from16 v26, v9

    .line 891
    move/from16 v27, v6

    .line 893
    move/from16 v28, v14

    .line 895
    move/from16 v29, v0

    .line 897
    move-object/from16 v30, v2

    .line 899
    invoke-virtual/range {v25 .. v30}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 901
    const/4 v0, 0x1

    .line 904
    aget v2, v15, v0

    .line 905
    float-to-double v13, v2

    .line 907
    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    .line 908
    move-result-wide v13

    .line 911
    double-to-float v2, v13

    .line 912
    aput v2, v15, v0

    .line 913
    goto :goto_12

    .line 915
    :cond_26
    move-object/from16 v31, v2

    .line 916
    const/4 v0, 0x1

    .line 918
    aput v22, v15, v0

    .line 919
    :goto_12
    iget v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    .line 921
    mul-float/2addr v5, v2

    .line 923
    aget v2, v15, v0

    .line 924
    div-float/2addr v5, v2

    .line 926
    add-float/2addr v5, v6

    .line 927
    const/high16 v0, 0x3f800000    # 1.0f

    .line 928
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    .line 930
    move-result v2

    .line 933
    const/4 v5, 0x0

    .line 934
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    .line 935
    move-result v2

    .line 938
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 939
    move-result v6

    .line 942
    cmpl-float v9, v2, v6

    .line 943
    if-eqz v9, :cond_2d

    .line 945
    cmpl-float v9, v6, v5

    .line 947
    if-eqz v9, :cond_27

    .line 949
    cmpl-float v0, v6, v0

    .line 951
    if-nez v0, :cond_29

    .line 953
    :cond_27
    if-nez v9, :cond_28

    .line 955
    const/4 v0, 0x1

    .line 957
    goto :goto_13

    .line 958
    :cond_28
    const/4 v0, 0x0

    .line 959
    :goto_13
    invoke-virtual {v10, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    .line 960
    :cond_29
    invoke-virtual {v10, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 963
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 966
    if-eqz v0, :cond_2a

    .line 968
    const/16 v2, 0x3e8

    .line 970
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 972
    :cond_2a
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 975
    if-eqz v0, :cond_2b

    .line 977
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 979
    move-result v0

    .line 982
    goto :goto_14

    .line 983
    :cond_2b
    const/4 v0, 0x0

    .line 984
    :goto_14
    iget-object v2, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 985
    if-eqz v2, :cond_2c

    .line 987
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 989
    move-result v2

    .line 992
    goto :goto_15

    .line 993
    :cond_2c
    const/4 v2, 0x0

    .line 994
    :goto_15
    float-to-double v4, v2

    .line 995
    float-to-double v13, v0

    .line 996
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    .line 997
    move-result-wide v15

    .line 1000
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    .line 1001
    move-result-wide v4

    .line 1004
    sub-double/2addr v4, v11

    .line 1005
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 1006
    move-result-wide v4

    .line 1009
    mul-double/2addr v4, v15

    .line 1010
    float-to-double v6, v7

    .line 1011
    float-to-double v8, v8

    .line 1012
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    .line 1013
    move-result-wide v6

    .line 1016
    div-double/2addr v4, v6

    .line 1017
    double-to-float v0, v4

    .line 1018
    float-to-double v4, v0

    .line 1019
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    .line 1020
    move-result-wide v4

    .line 1023
    double-to-float v0, v4

    .line 1024
    iput v0, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 1025
    goto :goto_16

    .line 1027
    :cond_2d
    move v0, v5

    .line 1028
    iput v0, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 1029
    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1031
    move-result v0

    .line 1034
    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 1035
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1037
    move-result v0

    .line 1040
    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 1041
    goto/16 :goto_1d

    .line 1043
    :cond_2e
    move-object/from16 v31, v2

    .line 1045
    const/4 v0, 0x0

    .line 1047
    iput-boolean v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 1048
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1050
    if-eqz v0, :cond_2f

    .line 1052
    const/16 v2, 0x10

    .line 1054
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1056
    :cond_2f
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1059
    if-eqz v0, :cond_30

    .line 1061
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 1063
    move-result v0

    .line 1066
    goto :goto_17

    .line 1067
    :cond_30
    const/4 v0, 0x0

    .line 1068
    :goto_17
    iget-object v2, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1069
    if-eqz v2, :cond_31

    .line 1071
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 1073
    move-result v2

    .line 1076
    goto :goto_18

    .line 1077
    :cond_31
    const/4 v2, 0x0

    .line 1078
    :goto_18
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 1079
    move-result v4

    .line 1082
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getWidth()I

    .line 1083
    move-result v5

    .line 1086
    int-to-float v5, v5

    .line 1087
    div-float v5, v5, v24

    .line 1088
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    .line 1090
    move-result v7

    .line 1093
    int-to-float v7, v7

    .line 1094
    div-float v7, v7, v24

    .line 1095
    iget v8, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    .line 1097
    const/4 v13, -0x1

    .line 1099
    if-eq v8, v13, :cond_32

    .line 1100
    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 1102
    move-result-object v5

    .line 1105
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1106
    const/4 v7, 0x0

    .line 1109
    aget v8, v11, v7

    .line 1110
    int-to-float v7, v8

    .line 1112
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 1113
    move-result v8

    .line 1116
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 1117
    move-result v13

    .line 1120
    add-int/2addr v13, v8

    .line 1121
    int-to-float v8, v13

    .line 1122
    div-float v8, v8, v24

    .line 1123
    add-float/2addr v8, v7

    .line 1125
    const/4 v7, 0x1

    .line 1126
    aget v11, v11, v7

    .line 1127
    int-to-float v7, v11

    .line 1129
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 1130
    move-result v11

    .line 1133
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 1134
    move-result v5

    .line 1137
    goto :goto_19

    .line 1138
    :cond_32
    iget v8, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 1139
    const/4 v13, -0x1

    .line 1141
    if-eq v8, v13, :cond_33

    .line 1142
    iget-object v5, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 1144
    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 1146
    move-result-object v7

    .line 1149
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    move-result-object v5

    .line 1153
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1154
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 1156
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 1158
    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 1160
    move-result-object v5

    .line 1163
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1164
    const/4 v7, 0x0

    .line 1167
    aget v8, v11, v7

    .line 1168
    int-to-float v7, v8

    .line 1170
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 1171
    move-result v8

    .line 1174
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 1175
    move-result v13

    .line 1178
    add-int/2addr v13, v8

    .line 1179
    int-to-float v8, v13

    .line 1180
    div-float v8, v8, v24

    .line 1181
    add-float/2addr v8, v7

    .line 1183
    const/4 v7, 0x1

    .line 1184
    aget v11, v11, v7

    .line 1185
    int-to-float v7, v11

    .line 1187
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 1188
    move-result v11

    .line 1191
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 1192
    move-result v5

    .line 1195
    :goto_19
    add-int/2addr v5, v11

    .line 1196
    int-to-float v5, v5

    .line 1197
    div-float v5, v5, v24

    .line 1198
    add-float/2addr v7, v5

    .line 1200
    move v5, v8

    .line 1201
    :cond_33
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1202
    move-result v8

    .line 1205
    sub-float/2addr v8, v5

    .line 1206
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1207
    move-result v5

    .line 1210
    sub-float/2addr v5, v7

    .line 1211
    float-to-double v13, v5

    .line 1212
    move-object v11, v10

    .line 1213
    float-to-double v9, v8

    .line 1214
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    .line 1215
    move-result-wide v9

    .line 1218
    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    .line 1219
    move-result-wide v9

    .line 1222
    iget v13, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 1223
    const/4 v14, -0x1

    .line 1225
    if-eq v13, v14, :cond_34

    .line 1226
    iget-object v14, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1228
    iget v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 1230
    iget v12, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 1232
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 1234
    move-object/from16 v25, v14

    .line 1236
    move/from16 v26, v13

    .line 1238
    move/from16 v27, v4

    .line 1240
    move/from16 v28, v7

    .line 1242
    move/from16 v29, v12

    .line 1244
    move-object/from16 v30, v1

    .line 1246
    invoke-virtual/range {v25 .. v30}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 1248
    const/4 v1, 0x1

    .line 1251
    aget v7, v15, v1

    .line 1252
    float-to-double v12, v7

    .line 1254
    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    .line 1255
    move-result-wide v12

    .line 1258
    double-to-float v7, v12

    .line 1259
    aput v7, v15, v1

    .line 1260
    goto :goto_1a

    .line 1262
    :cond_34
    const/4 v1, 0x1

    .line 1263
    aput v22, v15, v1

    .line 1264
    :goto_1a
    add-float/2addr v2, v5

    .line 1266
    float-to-double v1, v2

    .line 1267
    add-float/2addr v0, v8

    .line 1268
    float-to-double v7, v0

    .line 1269
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    .line 1270
    move-result-wide v0

    .line 1273
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    .line 1274
    move-result-wide v0

    .line 1277
    sub-double/2addr v0, v9

    .line 1278
    double-to-float v0, v0

    .line 1279
    const/high16 v1, 0x427a0000    # 62.5f

    .line 1280
    mul-float/2addr v0, v1

    .line 1282
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 1283
    move-result v1

    .line 1286
    if-nez v1, :cond_35

    .line 1287
    const/high16 v1, 0x40400000    # 3.0f

    .line 1289
    mul-float v12, v0, v1

    .line 1291
    iget v1, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    .line 1293
    mul-float/2addr v12, v1

    .line 1295
    const/4 v1, 0x1

    .line 1296
    aget v2, v15, v1

    .line 1297
    div-float/2addr v12, v2

    .line 1299
    add-float/2addr v12, v4

    .line 1300
    goto :goto_1b

    .line 1301
    :cond_35
    move v12, v4

    .line 1302
    :goto_1b
    const/4 v1, 0x0

    .line 1303
    cmpl-float v2, v12, v1

    .line 1304
    if-eqz v2, :cond_3c

    .line 1306
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1308
    cmpl-float v2, v12, v1

    .line 1310
    if-eqz v2, :cond_3c

    .line 1312
    iget v1, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 1314
    const/4 v2, 0x3

    .line 1316
    if-eq v1, v2, :cond_3c

    .line 1317
    iget v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    .line 1319
    mul-float/2addr v0, v2

    .line 1321
    const/4 v2, 0x1

    .line 1322
    aget v5, v15, v2

    .line 1323
    div-float/2addr v0, v5

    .line 1325
    float-to-double v7, v12

    .line 1326
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 1327
    cmpg-double v2, v7, v9

    .line 1329
    if-gez v2, :cond_36

    .line 1331
    const/4 v2, 0x0

    .line 1333
    goto :goto_1c

    .line 1334
    :cond_36
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1335
    :goto_1c
    const/4 v5, 0x6

    .line 1337
    if-ne v1, v5, :cond_38

    .line 1338
    add-float v1, v4, v0

    .line 1340
    const/4 v2, 0x0

    .line 1342
    cmpg-float v1, v1, v2

    .line 1343
    if-gez v1, :cond_37

    .line 1345
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 1347
    move-result v0

    .line 1350
    :cond_37
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1351
    :cond_38
    iget v1, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 1353
    const/4 v5, 0x7

    .line 1355
    if-ne v1, v5, :cond_3a

    .line 1356
    add-float v1, v4, v0

    .line 1358
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1360
    cmpl-float v1, v1, v2

    .line 1362
    if-lez v1, :cond_39

    .line 1364
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 1366
    move-result v0

    .line 1369
    neg-float v0, v0

    .line 1370
    :cond_39
    const/4 v2, 0x0

    .line 1371
    :cond_3a
    iget v1, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 1372
    const/high16 v3, 0x40400000    # 3.0f

    .line 1374
    mul-float/2addr v0, v3

    .line 1376
    invoke-virtual {v11, v2, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(FFI)V

    .line 1377
    const/4 v0, 0x0

    .line 1380
    cmpl-float v0, v0, v4

    .line 1381
    if-gez v0, :cond_3b

    .line 1383
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1385
    cmpg-float v0, v0, v4

    .line 1387
    if-gtz v0, :cond_3f

    .line 1389
    :cond_3b
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 1391
    goto :goto_1d

    .line 1394
    :cond_3c
    const/4 v0, 0x0

    .line 1395
    cmpl-float v0, v0, v12

    .line 1396
    if-gez v0, :cond_3d

    .line 1398
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1400
    cmpg-float v0, v0, v12

    .line 1402
    if-gtz v0, :cond_3f

    .line 1404
    :cond_3d
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 1406
    goto :goto_1d

    .line 1409
    :cond_3e
    move-object/from16 v31, v2

    .line 1410
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1412
    move-result v0

    .line 1415
    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 1416
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1418
    move-result v0

    .line 1421
    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 1422
    const/4 v0, 0x0

    .line 1424
    iput-boolean v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 1425
    :cond_3f
    :goto_1d
    move-object/from16 v1, p1

    .line 1427
    :cond_40
    :goto_1e
    const/4 v0, 0x0

    .line 1429
    goto/16 :goto_2d

    .line 1430
    :cond_41
    move-object/from16 v31, v2

    .line 1432
    move-object v11, v10

    .line 1434
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1435
    move-object/from16 v1, p1

    .line 1437
    if-eqz v0, :cond_42

    .line 1439
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1441
    :cond_42
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1444
    move-result v0

    .line 1447
    if-eqz v0, :cond_62

    .line 1448
    const/4 v2, 0x1

    .line 1450
    if-eq v0, v2, :cond_53

    .line 1451
    const/4 v2, 0x2

    .line 1453
    if-eq v0, v2, :cond_43

    .line 1454
    goto :goto_1e

    .line 1456
    :cond_43
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1457
    move-result v0

    .line 1460
    iget v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 1461
    sub-float/2addr v0, v2

    .line 1463
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1464
    move-result v2

    .line 1467
    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 1468
    sub-float/2addr v2, v5

    .line 1470
    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 1471
    mul-float/2addr v5, v2

    .line 1473
    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 1474
    mul-float/2addr v6, v0

    .line 1476
    add-float/2addr v6, v5

    .line 1477
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 1478
    move-result v5

    .line 1481
    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    .line 1482
    cmpl-float v5, v5, v6

    .line 1484
    if-gtz v5, :cond_44

    .line 1486
    iget-boolean v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 1488
    if-eqz v5, :cond_40

    .line 1490
    :cond_44
    invoke-virtual {v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 1492
    move-result v5

    .line 1495
    iget-boolean v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 1496
    if-nez v6, :cond_45

    .line 1498
    const/4 v6, 0x1

    .line 1500
    iput-boolean v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 1501
    invoke-virtual {v11, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 1503
    :cond_45
    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 1506
    const/4 v7, -0x1

    .line 1508
    if-eq v6, v7, :cond_46

    .line 1509
    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1511
    iget v8, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 1513
    iget v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 1515
    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 1517
    move-object/from16 v25, v7

    .line 1519
    move/from16 v26, v6

    .line 1521
    move/from16 v27, v5

    .line 1523
    move/from16 v28, v8

    .line 1525
    move/from16 v29, v9

    .line 1527
    move-object/from16 v30, v10

    .line 1529
    invoke-virtual/range {v25 .. v30}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 1531
    const/4 v7, 0x0

    .line 1534
    const/4 v8, 0x1

    .line 1535
    goto :goto_1f

    .line 1536
    :cond_46
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getWidth()I

    .line 1537
    move-result v6

    .line 1540
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getHeight()I

    .line 1541
    move-result v7

    .line 1544
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 1545
    move-result v6

    .line 1548
    int-to-float v6, v6

    .line 1549
    iget v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 1550
    mul-float/2addr v7, v6

    .line 1552
    const/4 v8, 0x1

    .line 1553
    aput v7, v15, v8

    .line 1554
    iget v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 1556
    mul-float/2addr v6, v7

    .line 1558
    const/4 v7, 0x0

    .line 1559
    aput v6, v15, v7

    .line 1560
    :goto_1f
    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 1562
    aget v9, v15, v7

    .line 1564
    mul-float/2addr v6, v9

    .line 1566
    iget v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 1567
    aget v9, v15, v8

    .line 1569
    mul-float/2addr v7, v9

    .line 1571
    add-float/2addr v7, v6

    .line 1572
    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    .line 1573
    mul-float/2addr v7, v6

    .line 1575
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 1576
    move-result v6

    .line 1579
    float-to-double v6, v6

    .line 1580
    cmpg-double v6, v6, v19

    .line 1581
    const v7, 0x3c23d70a    # 0.01f

    .line 1583
    if-gez v6, :cond_47

    .line 1586
    const/4 v6, 0x0

    .line 1588
    aput v7, v15, v6

    .line 1589
    aput v7, v15, v8

    .line 1591
    goto :goto_20

    .line 1593
    :cond_47
    const/4 v6, 0x0

    .line 1594
    :goto_20
    iget v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 1595
    const/4 v10, 0x0

    .line 1597
    cmpl-float v9, v9, v10

    .line 1598
    if-eqz v9, :cond_48

    .line 1600
    aget v0, v15, v6

    .line 1602
    div-float/2addr v2, v0

    .line 1604
    goto :goto_21

    .line 1605
    :cond_48
    aget v2, v15, v8

    .line 1606
    div-float v2, v0, v2

    .line 1608
    :goto_21
    add-float/2addr v5, v2

    .line 1610
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1611
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    .line 1613
    move-result v2

    .line 1616
    invoke-static {v2, v10}, Ljava/lang/Math;->max(FF)F

    .line 1617
    move-result v0

    .line 1620
    iget v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 1621
    const/4 v5, 0x6

    .line 1623
    if-ne v2, v5, :cond_49

    .line 1624
    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    .line 1626
    move-result v0

    .line 1629
    :cond_49
    iget v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 1630
    const/4 v5, 0x7

    .line 1632
    if-ne v2, v5, :cond_4a

    .line 1633
    const v2, 0x3f7d70a4    # 0.99f

    .line 1635
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 1638
    move-result v0

    .line 1641
    :cond_4a
    invoke-virtual {v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 1642
    move-result v2

    .line 1645
    cmpl-float v5, v0, v2

    .line 1646
    if-eqz v5, :cond_52

    .line 1648
    const/4 v5, 0x0

    .line 1650
    cmpl-float v6, v2, v5

    .line 1651
    if-eqz v6, :cond_4b

    .line 1653
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1655
    cmpl-float v2, v2, v5

    .line 1657
    if-nez v2, :cond_4d

    .line 1659
    :cond_4b
    if-nez v6, :cond_4c

    .line 1661
    const/4 v2, 0x1

    .line 1663
    goto :goto_22

    .line 1664
    :cond_4c
    const/4 v2, 0x0

    .line 1665
    :goto_22
    invoke-virtual {v11, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    .line 1666
    :cond_4d
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 1669
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1672
    if-eqz v0, :cond_4e

    .line 1674
    const/16 v2, 0x3e8

    .line 1676
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1678
    :cond_4e
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1681
    if-eqz v0, :cond_4f

    .line 1683
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 1685
    move-result v0

    .line 1688
    goto :goto_23

    .line 1689
    :cond_4f
    const/4 v0, 0x0

    .line 1690
    :goto_23
    iget-object v2, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1691
    if-eqz v2, :cond_50

    .line 1693
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 1695
    move-result v2

    .line 1698
    goto :goto_24

    .line 1699
    :cond_50
    const/4 v2, 0x0

    .line 1700
    :goto_24
    iget v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 1701
    const/4 v5, 0x0

    .line 1703
    cmpl-float v4, v4, v5

    .line 1704
    if-eqz v4, :cond_51

    .line 1706
    const/4 v4, 0x0

    .line 1708
    aget v2, v15, v4

    .line 1709
    div-float/2addr v0, v2

    .line 1711
    goto :goto_25

    .line 1712
    :cond_51
    const/4 v0, 0x1

    .line 1713
    aget v4, v15, v0

    .line 1714
    div-float v0, v2, v4

    .line 1716
    :goto_25
    iput v0, v11, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 1718
    goto :goto_26

    .line 1720
    :cond_52
    const/4 v5, 0x0

    .line 1721
    iput v5, v11, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 1722
    :goto_26
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1724
    move-result v0

    .line 1727
    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 1728
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1730
    move-result v0

    .line 1733
    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 1734
    goto/16 :goto_1e

    .line 1736
    :cond_53
    const/4 v0, 0x0

    .line 1738
    iput-boolean v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 1739
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1741
    if-eqz v0, :cond_54

    .line 1743
    const/16 v2, 0x3e8

    .line 1745
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1747
    :cond_54
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1750
    if-eqz v0, :cond_55

    .line 1752
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 1754
    move-result v0

    .line 1757
    goto :goto_27

    .line 1758
    :cond_55
    const/4 v0, 0x0

    .line 1759
    :goto_27
    iget-object v2, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1760
    if-eqz v2, :cond_56

    .line 1762
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 1764
    move-result v2

    .line 1767
    goto :goto_28

    .line 1768
    :cond_56
    const/4 v2, 0x0

    .line 1769
    :goto_28
    invoke-virtual {v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 1770
    move-result v4

    .line 1773
    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 1774
    const/4 v8, -0x1

    .line 1776
    if-eq v5, v8, :cond_57

    .line 1777
    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1779
    iget v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 1781
    iget v10, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 1783
    iget-object v12, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 1785
    move-object/from16 v25, v8

    .line 1787
    move/from16 v26, v5

    .line 1789
    move/from16 v27, v4

    .line 1791
    move/from16 v28, v9

    .line 1793
    move/from16 v29, v10

    .line 1795
    move-object/from16 v30, v12

    .line 1797
    invoke-virtual/range {v25 .. v30}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 1799
    const/4 v8, 0x0

    .line 1802
    const/4 v9, 0x1

    .line 1803
    goto :goto_29

    .line 1804
    :cond_57
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getWidth()I

    .line 1805
    move-result v5

    .line 1808
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getHeight()I

    .line 1809
    move-result v8

    .line 1812
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    .line 1813
    move-result v5

    .line 1816
    int-to-float v5, v5

    .line 1817
    iget v8, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 1818
    mul-float/2addr v8, v5

    .line 1820
    const/4 v9, 0x1

    .line 1821
    aput v8, v15, v9

    .line 1822
    iget v8, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 1824
    mul-float/2addr v5, v8

    .line 1826
    const/4 v8, 0x0

    .line 1827
    aput v5, v15, v8

    .line 1828
    :goto_29
    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 1830
    aget v10, v15, v8

    .line 1832
    aget v8, v15, v9

    .line 1834
    const/4 v9, 0x0

    .line 1836
    cmpl-float v5, v5, v9

    .line 1837
    if-eqz v5, :cond_58

    .line 1839
    div-float/2addr v0, v10

    .line 1841
    goto :goto_2a

    .line 1842
    :cond_58
    div-float v0, v2, v8

    .line 1843
    :goto_2a
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 1845
    move-result v2

    .line 1848
    if-nez v2, :cond_59

    .line 1849
    const/high16 v2, 0x40400000    # 3.0f

    .line 1851
    div-float v2, v0, v2

    .line 1853
    add-float/2addr v2, v4

    .line 1855
    goto :goto_2b

    .line 1856
    :cond_59
    move v2, v4

    .line 1857
    :goto_2b
    const/4 v5, 0x0

    .line 1858
    cmpl-float v8, v2, v5

    .line 1859
    if-eqz v8, :cond_60

    .line 1861
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1863
    cmpl-float v8, v2, v5

    .line 1865
    if-eqz v8, :cond_60

    .line 1867
    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 1869
    const/4 v7, 0x3

    .line 1871
    if-eq v5, v7, :cond_60

    .line 1872
    float-to-double v7, v2

    .line 1874
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 1875
    cmpg-double v2, v7, v9

    .line 1877
    if-gez v2, :cond_5a

    .line 1879
    const/4 v2, 0x0

    .line 1881
    goto :goto_2c

    .line 1882
    :cond_5a
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1883
    :goto_2c
    const/4 v7, 0x6

    .line 1885
    if-ne v5, v7, :cond_5c

    .line 1886
    add-float v2, v4, v0

    .line 1888
    const/4 v5, 0x0

    .line 1890
    cmpg-float v2, v2, v5

    .line 1891
    if-gez v2, :cond_5b

    .line 1893
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 1895
    move-result v0

    .line 1898
    :cond_5b
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1899
    :cond_5c
    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 1901
    const/4 v7, 0x7

    .line 1903
    if-ne v5, v7, :cond_5e

    .line 1904
    add-float v2, v4, v0

    .line 1906
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1908
    cmpl-float v2, v2, v5

    .line 1910
    if-lez v2, :cond_5d

    .line 1912
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 1914
    move-result v0

    .line 1917
    neg-float v0, v0

    .line 1918
    :cond_5d
    const/4 v2, 0x0

    .line 1919
    :cond_5e
    iget v3, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 1920
    invoke-virtual {v11, v2, v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(FFI)V

    .line 1922
    const/4 v0, 0x0

    .line 1925
    cmpl-float v0, v0, v4

    .line 1926
    if-gez v0, :cond_5f

    .line 1928
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1930
    cmpg-float v0, v0, v4

    .line 1932
    if-gtz v0, :cond_40

    .line 1934
    :cond_5f
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 1936
    goto/16 :goto_1e

    .line 1939
    :cond_60
    const/4 v0, 0x0

    .line 1941
    cmpl-float v0, v0, v2

    .line 1942
    if-gez v0, :cond_61

    .line 1944
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1946
    cmpg-float v0, v0, v2

    .line 1948
    if-gtz v0, :cond_40

    .line 1950
    :cond_61
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 1952
    goto/16 :goto_1e

    .line 1955
    :cond_62
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1957
    move-result v0

    .line 1960
    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 1961
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1963
    move-result v0

    .line 1966
    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 1967
    const/4 v0, 0x0

    .line 1969
    iput-boolean v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 1970
    goto :goto_2d

    .line 1972
    :cond_63
    move-object/from16 v31, v2

    .line 1973
    goto/16 :goto_1e

    .line 1975
    :goto_2d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1977
    move-result v2

    .line 1980
    move-object/from16 v3, v31

    .line 1981
    iput v2, v3, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    .line 1983
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1985
    move-result v2

    .line 1988
    iput v2, v3, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    .line 1989
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1991
    move-result v1

    .line 1994
    const/4 v2, 0x1

    .line 1995
    if-ne v1, v2, :cond_65

    .line 1996
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    .line 1998
    if-eqz v1, :cond_65

    .line 2000
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 2002
    if-eqz v2, :cond_64

    .line 2004
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 2006
    const/4 v2, 0x0

    .line 2009
    iput-object v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 2010
    goto :goto_2e

    .line 2012
    :cond_64
    const/4 v2, 0x0

    .line 2013
    :goto_2e
    iput-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    .line 2014
    move-object/from16 v2, p0

    .line 2016
    iget v1, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 2018
    const/4 v4, -0x1

    .line 2020
    if-eq v1, v4, :cond_66

    .line 2021
    invoke-virtual {v3, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->autoTransition(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Z

    .line 2023
    goto :goto_2f

    .line 2026
    :cond_65
    move-object/from16 v2, p0

    .line 2027
    :cond_66
    :goto_2f
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2029
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 2031
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTransitionFlags:I

    .line 2033
    and-int/lit8 v2, v2, 0x4

    .line 2035
    if-eqz v2, :cond_67

    .line 2037
    const/4 v10, 0x1

    .line 2039
    goto :goto_30

    .line 2040
    :cond_67
    move v10, v0

    .line 2041
    :goto_30
    if-eqz v10, :cond_68

    .line 2042
    iget-object v0, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 2044
    iget-boolean v0, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 2046
    return v0

    .line 2048
    :cond_68
    const/4 v0, 0x1

    .line 2049
    return v0

    .line 2050
    :cond_69
    move-object v2, v0

    .line 2051
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2052
    move-result v0

    .line 2055
    return v0
    .line 2056
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 2
    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 5
    if-eqz v0, :cond_6

    .line 7
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    if-nez v0, :cond_0

    .line 13
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 17
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnShow:Z

    .line 27
    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 31
    if-nez v0, :cond_1

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 40
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_2
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnHide:Z

    .line 47
    if-eqz v0, :cond_4

    .line 49
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 51
    if-nez v0, :cond_3

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 60
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_4
    instance-of v0, p1, Landroidx/constraintlayout/helper/widget/MotionEffect;

    .line 67
    if-eqz v0, :cond_6

    .line 69
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 71
    if-nez v0, :cond_5

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 80
    :cond_5
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_6
    return-void
    .line 87
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 12
    if-eqz p0, :cond_1

    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    :cond_1
    return-void
    .line 19
.end method

.method public final parseLayoutDescription(I)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 3
    return-void
    .line 5
.end method

.method public final processTransitionCompleted()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    :cond_0
    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 22
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 26
    if-eqz v1, :cond_4

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Integer;

    .line 33
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 35
    if-eqz v2, :cond_3

    .line 37
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result v3

    .line 42
    invoke-interface {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionCompleted(I)V

    .line 43
    :cond_3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    if-eqz v2, :cond_2

    .line 48
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v2

    .line 53
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 63
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 64
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 66
    move-result v4

    .line 69
    invoke-interface {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionCompleted(I)V

    .line 70
    goto :goto_0

    .line 73
    :cond_4
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 76
    return-void
    .line 79
.end method

.method public final rebuildScene()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 2
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 7
    return-void
    .line 10
.end method

.method public final requestLayout()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 2
    if-nez v0, :cond_2

    .line 4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 6
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 11
    if-eqz v0, :cond_2

    .line 13
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 15
    if-eqz v0, :cond_2

    .line 17
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 19
    if-nez v0, :cond_0

    .line 21
    return-void

    .line 23
    :cond_0
    const/4 v1, 0x2

    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    move-result v0

    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    if-ge v1, v0, :cond_1

    .line 32
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    move-result-object v2

    .line 37
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 38
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 43
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 44
    const/4 v3, 0x1

    .line 46
    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_0

    .line 51
    :cond_1
    return-void

    .line 52
    :cond_2
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 53
    return-void
    .line 56
.end method

.method public setDebugMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 4
    return-void
    .line 7
.end method

.method public setDelayedApplicationOfInitialState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    .line 2
    return-void
    .line 4
.end method

.method public setInteractionEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    .line 2
    return-void
    .line 4
.end method

.method public setInterpolatedProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 6
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 11
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    .line 13
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 19
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 23
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 27
    return-void
    .line 30
.end method

.method public setOnHide(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 18
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 19
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    return-void
    .line 27
.end method

.method public setOnShow(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 18
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 19
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    return-void
    .line 27
.end method

.method public setProgress(F)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    :cond_0
    const-string v3, "MotionLayout"

    const-string v4, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    .line 12
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_3

    .line 14
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_2

    .line 15
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 16
    :cond_2
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 17
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    return-void

    .line 18
    :cond_3
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-gtz v1, :cond_5

    .line 19
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-ne v1, v2, :cond_4

    .line 20
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 21
    :cond_4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 22
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_8

    .line 23
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_0

    :cond_5
    cmpl-float v1, p1, v2

    if-ltz v1, :cond_7

    .line 24
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    if-ne v0, v1, :cond_6

    .line 25
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 26
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 27
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_8

    .line 28
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_0

    :cond_7
    const/4 v0, -0x1

    .line 29
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 30
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 31
    :cond_8
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 33
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 34
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    const-wide/16 v1, -0x1

    .line 35
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 36
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 38
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 39
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setProgress(FF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 4
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 5
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    .line 6
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mVelocity:F

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 8
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 9
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    if-lez p2, :cond_2

    move v0, v1

    .line 10
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    goto :goto_0

    :cond_3
    cmpl-float p2, p1, v0

    if-eqz p2, :cond_5

    cmpl-float p2, p1, v1

    if-eqz p2, :cond_5

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    move v0, v1

    .line 11
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setScene(Landroidx/constraintlayout/motion/widget/MotionScene;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    .line 4
    move-result v0

    .line 7
    iput-boolean v0, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    .line 8
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 10
    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 14
    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 21
    return-void
.end method

.method public setState(III)V
    .locals 1

    .line 10
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 11
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 14
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    if-eqz v0, :cond_0

    int-to-float p0, p2

    int-to-float p2, p3

    .line 15
    invoke-virtual {v0, p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->updateConstraints(FFI)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz p2, :cond_1

    .line 17
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 3
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 4
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne v1, v2, :cond_1

    if-ne p1, v2, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionChange()V

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_5

    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionCompleted()V

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionChange()V

    :cond_4
    if-ne p1, v0, :cond_5

    .line 9
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionCompleted()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setTransition(I)V
    .locals 6

    .line 17
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_9

    .line 18
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object p1

    .line 19
    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 20
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 21
    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 22
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 23
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez p1, :cond_0

    .line 25
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 26
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 27
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mStartState:I

    .line 28
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 29
    iput p0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mEndState:I

    return-void

    .line 30
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    .line 31
    :cond_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-ne v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 32
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 33
    iput-object p1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 34
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz p1, :cond_4

    .line 35
    iget-boolean v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    .line 36
    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 37
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 38
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v4

    .line 39
    invoke-virtual {p1, v1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 40
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 41
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_6

    cmpl-float p1, v0, v3

    if-nez p1, :cond_5

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    .line 43
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_1

    :cond_5
    cmpl-float p1, v0, v2

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    .line 45
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 46
    :cond_6
    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v3

    goto :goto_2

    :cond_7
    move p1, v0

    :goto_2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 47
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 48
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    .line 49
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    goto :goto_3

    .line 50
    :cond_8
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_9
    :goto_3
    return-void
.end method

.method public setTransition(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 4
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 5
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mStartState:I

    .line 6
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mEndState:I

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_2

    .line 8
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 9
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 10
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 12
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p2

    .line 13
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 14
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 16
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    :cond_2
    return-void
.end method

.method public final setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 3

    .line 51
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 52
    iput-object p1, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz p1, :cond_0

    .line 53
    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v1, :cond_0

    .line 54
    iget-boolean v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    .line 55
    :cond_0
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 56
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 57
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    const/4 v2, -0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 58
    :cond_1
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    :goto_0
    if-ne v0, v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 59
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 60
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 61
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 62
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 63
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 64
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 65
    :goto_1
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTransitionFlags:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    const-wide/16 v0, -0x1

    goto :goto_3

    .line 66
    :cond_4
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    :goto_3
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 67
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result p1

    .line 68
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 69
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-nez v1, :cond_5

    goto :goto_4

    .line 70
    :cond_5
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 71
    :goto_4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    if-ne p1, v1, :cond_6

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-ne v2, v1, :cond_6

    return-void

    .line 72
    :cond_6
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 73
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 74
    invoke-virtual {v0, p1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    .line 75
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 76
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 77
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    .line 78
    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 79
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 80
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStartId:I

    .line 81
    iput v1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEndId:I

    .line 82
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    .line 83
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const-string p0, "MotionLayout"

    .line 6
    const-string p1, "MotionScene not defined"

    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    const/16 p0, 0x8

    .line 18
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 20
    move-result p0

    .line 23
    iput p0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultDuration:I

    .line 27
    :goto_0
    return-void
    .line 29
.end method

.method public setTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 2
    return-void
    .line 4
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 6
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 8
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const-string v1, "motion.progress"

    .line 18
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 20
    move-result v1

    .line 23
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    .line 24
    const-string v1, "motion.velocity"

    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 28
    move-result v1

    .line 31
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mVelocity:F

    .line 32
    const-string v1, "motion.StartState"

    .line 34
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 36
    move-result v1

    .line 39
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mStartState:I

    .line 40
    const-string v1, "motion.EndState"

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 44
    move-result p1

    .line 47
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mEndState:I

    .line 48
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    .line 50
    move-result p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 56
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->apply()V

    .line 58
    :cond_1
    return-void
    .line 61
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 11
    invoke-static {v2, v0}, Landroidx/constraintlayout/motion/widget/Debug;->getName(ILandroid/content/Context;)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, "->"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 25
    invoke-static {v2, v0}, Landroidx/constraintlayout/motion/widget/Debug;->getName(ILandroid/content/Context;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v0, " (pos:"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    const-string v0, " Dpos/Dt:"

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 57
    return-object p0
    .line 58
.end method

.method public final touchAnimateTo(FFI)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 7
    cmpl-float v0, v0, p1

    .line 9
    if-nez v0, :cond_1

    .line 11
    return-void

    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 15
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 17
    move-result-wide v1

    .line 20
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 21
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 23
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    .line 25
    move-result v1

    .line 28
    int-to-float v1, v1

    .line 29
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 30
    div-float v7, v1, v2

    .line 32
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 34
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 36
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 38
    const/4 v1, 0x0

    .line 40
    const/high16 v2, 0x3f800000    # 1.0f

    .line 41
    const/4 v3, 0x7

    .line 43
    const/4 v4, 0x6

    .line 44
    const/4 v5, 0x2

    .line 45
    const/4 v10, 0x0

    .line 46
    if-eqz p3, :cond_8

    .line 47
    if-eq p3, v0, :cond_8

    .line 49
    if-eq p3, v5, :cond_8

    .line 51
    const/4 v6, 0x4

    .line 53
    if-eq p3, v6, :cond_7

    .line 54
    const/4 v6, 0x5

    .line 56
    if-eq p3, v6, :cond_2

    .line 57
    if-eq p3, v4, :cond_8

    .line 59
    if-eq p3, v3, :cond_8

    .line 61
    goto/16 :goto_c

    .line 63
    :cond_2
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 65
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 67
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    .line 69
    move-result v3

    .line 72
    cmpl-float v4, p2, v1

    .line 73
    const/high16 v5, 0x40000000    # 2.0f

    .line 75
    if-lez v4, :cond_3

    .line 77
    div-float v4, p2, v3

    .line 79
    mul-float v6, p2, v4

    .line 81
    mul-float/2addr v3, v4

    .line 83
    mul-float/2addr v3, v4

    .line 84
    div-float/2addr v3, v5

    .line 85
    sub-float/2addr v6, v3

    .line 86
    add-float/2addr v6, p3

    .line 87
    cmpl-float p3, v6, v2

    .line 88
    if-lez p3, :cond_4

    .line 90
    goto :goto_0

    .line 92
    :cond_3
    neg-float v2, p2

    .line 93
    div-float/2addr v2, v3

    .line 94
    mul-float v4, p2, v2

    .line 95
    mul-float/2addr v3, v2

    .line 97
    mul-float/2addr v3, v2

    .line 98
    div-float/2addr v3, v5

    .line 99
    add-float/2addr v3, v4

    .line 100
    add-float/2addr v3, p3

    .line 101
    cmpg-float p3, v3, v1

    .line 102
    if-gez p3, :cond_4

    .line 104
    goto :goto_0

    .line 106
    :cond_4
    move v0, v10

    .line 107
    :goto_0
    if-eqz v0, :cond_5

    .line 108
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    .line 110
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 112
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 114
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    .line 116
    move-result v0

    .line 119
    iput p2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mInitialV:F

    .line 120
    iput p3, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mCurrentP:F

    .line 122
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mMaxA:F

    .line 124
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    .line 126
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 128
    goto/16 :goto_c

    .line 130
    :cond_5
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 132
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 134
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 136
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 138
    invoke-virtual {p3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    .line 140
    move-result v7

    .line 143
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 144
    iget-object p3, p3, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 146
    if-eqz p3, :cond_6

    .line 148
    iget-object p3, p3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 150
    if-eqz p3, :cond_6

    .line 152
    iget p3, p3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    .line 154
    move v8, p3

    .line 156
    goto :goto_1

    .line 157
    :cond_6
    move v8, v1

    .line 158
    :goto_1
    move v4, p1

    .line 159
    move v5, p2

    .line 160
    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/motion/utils/StopLogic;->config(FFFFFF)V

    .line 161
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 164
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 166
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 168
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 170
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 172
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 174
    goto/16 :goto_c

    .line 176
    :cond_7
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    .line 178
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 180
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 182
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    .line 184
    move-result v0

    .line 187
    iput p2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mInitialV:F

    .line 188
    iput p3, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mCurrentP:F

    .line 190
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mMaxA:F

    .line 192
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    .line 194
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 196
    goto/16 :goto_c

    .line 198
    :cond_8
    if-eq p3, v0, :cond_b

    .line 200
    if-ne p3, v3, :cond_9

    .line 202
    goto :goto_2

    .line 204
    :cond_9
    if-eq p3, v5, :cond_a

    .line 205
    if-ne p3, v4, :cond_c

    .line 207
    :cond_a
    move p1, v2

    .line 209
    goto :goto_3

    .line 210
    :cond_b
    :goto_2
    move p1, v1

    .line 211
    :cond_c
    :goto_3
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 212
    iget-object v0, p3, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 214
    if-eqz v0, :cond_d

    .line 216
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 218
    if-eqz v2, :cond_d

    .line 220
    iget v2, v2, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    .line 222
    goto :goto_4

    .line 224
    :cond_d
    move v2, v10

    .line 225
    :goto_4
    if-nez v2, :cond_f

    .line 226
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 228
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 230
    invoke-virtual {p3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    .line 232
    move-result v8

    .line 235
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 236
    iget-object p3, p3, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 238
    if-eqz p3, :cond_e

    .line 240
    iget-object p3, p3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 242
    if-eqz p3, :cond_e

    .line 244
    iget p3, p3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    .line 246
    move v9, p3

    .line 248
    goto :goto_5

    .line 249
    :cond_e
    move v9, v1

    .line 250
    :goto_5
    move v5, p1

    .line 251
    move v6, p2

    .line 252
    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/motion/utils/StopLogic;->config(FFFFFF)V

    .line 253
    goto :goto_b

    .line 256
    :cond_f
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 257
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 259
    if-eqz v0, :cond_10

    .line 261
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 263
    if-eqz v2, :cond_10

    .line 265
    iget v2, v2, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

    .line 267
    goto :goto_6

    .line 269
    :cond_10
    move v2, v1

    .line 270
    :goto_6
    if-eqz v0, :cond_11

    .line 271
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 273
    if-eqz v3, :cond_11

    .line 275
    iget v3, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

    .line 277
    goto :goto_7

    .line 279
    :cond_11
    move v3, v1

    .line 280
    :goto_7
    if-eqz v0, :cond_12

    .line 281
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 283
    if-eqz v4, :cond_12

    .line 285
    iget v4, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

    .line 287
    goto :goto_8

    .line 289
    :cond_12
    move v4, v1

    .line 290
    :goto_8
    if-eqz v0, :cond_13

    .line 291
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 293
    if-eqz v5, :cond_13

    .line 295
    iget v5, v5, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    .line 297
    goto :goto_9

    .line 299
    :cond_13
    move v5, v1

    .line 300
    :goto_9
    if-eqz v0, :cond_14

    .line 301
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 303
    if-eqz v0, :cond_14

    .line 305
    iget v0, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

    .line 307
    goto :goto_a

    .line 309
    :cond_14
    move v0, v10

    .line 310
    :goto_a
    iget-object v6, p2, Landroidx/constraintlayout/motion/utils/StopLogic;->mSpringStopEngine:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    .line 311
    if-nez v6, :cond_15

    .line 313
    new-instance v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    .line 315
    invoke-direct {v6}, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;-><init>()V

    .line 317
    iput-object v6, p2, Landroidx/constraintlayout/motion/utils/StopLogic;->mSpringStopEngine:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    .line 320
    :cond_15
    iget-object v6, p2, Landroidx/constraintlayout/motion/utils/StopLogic;->mSpringStopEngine:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    .line 322
    iput-object v6, p2, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 324
    float-to-double v7, p1

    .line 326
    iput-wide v7, v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    .line 327
    float-to-double v7, v4

    .line 329
    iput-wide v7, v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    .line 330
    iput p3, v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 332
    float-to-double p2, v3

    .line 334
    iput-wide p2, v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    .line 335
    iput v2, v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    .line 337
    iput v5, v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStopThreshold:F

    .line 339
    iput v0, v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

    .line 341
    iput v1, v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

    .line 343
    :goto_b
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 345
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 347
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 349
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 351
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 353
    :goto_c
    iput-boolean v10, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 355
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 357
    move-result-wide p1

    .line 360
    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 361
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 363
    return-void
    .line 366
.end method

.method public final transitionToState$1(II)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    .line 8
    if-eqz v0, :cond_9

    .line 10
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 12
    int-to-float v4, v1

    .line 14
    iget-object v0, v0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/constraintlayout/widget/StateSet$State;

    .line 21
    if-nez v0, :cond_0

    .line 23
    move v3, p1

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    const/high16 v5, -0x40800000    # -1.0f

    .line 27
    cmpl-float v5, v4, v5

    .line 29
    iget-object v6, v0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 31
    iget v0, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    .line 33
    if-eqz v5, :cond_5

    .line 35
    if-nez v5, :cond_1

    .line 37
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v5

    .line 43
    move-object v6, v2

    .line 44
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v7

    .line 48
    if-eqz v7, :cond_4

    .line 49
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v7

    .line 54
    check-cast v7, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 55
    invoke-virtual {v7, v4, v4}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    .line 57
    move-result v8

    .line 60
    if-eqz v8, :cond_2

    .line 61
    iget v6, v7, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 63
    if-ne v3, v6, :cond_3

    .line 65
    goto :goto_2

    .line 67
    :cond_3
    move-object v6, v7

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    if-eqz v6, :cond_8

    .line 70
    iget v3, v6, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 72
    goto :goto_2

    .line 74
    :cond_5
    :goto_1
    if-ne v0, v3, :cond_6

    .line 75
    goto :goto_2

    .line 77
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v4

    .line 81
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v5

    .line 85
    if-eqz v5, :cond_8

    .line 86
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v5

    .line 91
    check-cast v5, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 92
    iget v5, v5, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 94
    if-ne v3, v5, :cond_7

    .line 96
    goto :goto_2

    .line 98
    :cond_8
    move v3, v0

    .line 99
    :goto_2
    if-eq v3, v1, :cond_9

    .line 100
    move p1, v3

    .line 102
    :cond_9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 103
    if-ne v0, p1, :cond_a

    .line 105
    return-void

    .line 107
    :cond_a
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 108
    const/4 v4, 0x0

    .line 110
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 111
    if-ne v3, p1, :cond_c

    .line 113
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    .line 115
    if-lez p2, :cond_b

    .line 118
    int-to-float p1, p2

    .line 120
    div-float/2addr p1, v5

    .line 121
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 122
    :cond_b
    return-void

    .line 124
    :cond_c
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 125
    const/high16 v6, 0x3f800000    # 1.0f

    .line 127
    if-ne v3, p1, :cond_e

    .line 129
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    .line 131
    if-lez p2, :cond_d

    .line 134
    int-to-float p1, p2

    .line 136
    div-float/2addr p1, v5

    .line 137
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 138
    :cond_d
    return-void

    .line 140
    :cond_e
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 141
    if-eq v0, v1, :cond_10

    .line 143
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    .line 145
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    .line 148
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 151
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    .line 153
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    .line 156
    if-lez p2, :cond_f

    .line 158
    int-to-float p1, p2

    .line 160
    div-float/2addr p1, v5

    .line 161
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 162
    :cond_f
    return-void

    .line 164
    :cond_10
    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 166
    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 168
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 170
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 172
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 174
    move-result-wide v7

    .line 177
    iput-wide v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 178
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 180
    move-result-wide v7

    .line 183
    iput-wide v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 184
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 186
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 188
    if-ne p2, v1, :cond_11

    .line 190
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 192
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    .line 194
    move-result v3

    .line 197
    int-to-float v3, v3

    .line 198
    div-float/2addr v3, v5

    .line 199
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 200
    :cond_11
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 202
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 204
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 206
    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    .line 208
    new-instance v1, Landroid/util/SparseArray;

    .line 211
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 213
    if-nez p2, :cond_12

    .line 216
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 218
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    .line 220
    move-result p2

    .line 223
    int-to-float p2, p2

    .line 224
    div-float/2addr p2, v5

    .line 225
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 226
    goto :goto_3

    .line 228
    :cond_12
    if-lez p2, :cond_13

    .line 229
    int-to-float p2, p2

    .line 231
    div-float/2addr p2, v5

    .line 232
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 233
    :cond_13
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 235
    move-result p2

    .line 238
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 239
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 241
    move v3, v0

    .line 244
    :goto_4
    if-ge v3, p2, :cond_14

    .line 245
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 247
    move-result-object v5

    .line 250
    new-instance v7, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 251
    invoke-direct {v7, v5}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    .line 253
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 256
    invoke-virtual {v8, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 261
    move-result v7

    .line 264
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 265
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    move-result-object v5

    .line 270
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 271
    invoke-virtual {v1, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 273
    add-int/lit8 v3, v3, 0x1

    .line 276
    goto :goto_4

    .line 278
    :cond_14
    const/4 v1, 0x1

    .line 279
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 280
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 282
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 284
    invoke-virtual {v5, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 286
    move-result-object p1

    .line 289
    invoke-virtual {v3, v2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 290
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 293
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 296
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->build()V

    .line 298
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 301
    move-result p1

    .line 304
    move v2, v0

    .line 305
    :goto_5
    if-ge v2, p1, :cond_17

    .line 306
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 308
    move-result-object v3

    .line 311
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 312
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    move-result-object v5

    .line 317
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 318
    if-nez v5, :cond_15

    .line 320
    goto/16 :goto_7

    .line 322
    :cond_15
    iget-object v7, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 324
    iput v4, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 326
    iput v4, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 328
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    .line 330
    move-result v8

    .line 333
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 334
    move-result v9

    .line 337
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 338
    move-result v10

    .line 341
    int-to-float v10, v10

    .line 342
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 343
    move-result v11

    .line 346
    int-to-float v11, v11

    .line 347
    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 348
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 351
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    .line 356
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 359
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 362
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 365
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 368
    move-result v7

    .line 371
    iput v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    .line 372
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 374
    move-result v7

    .line 377
    if-eqz v7, :cond_16

    .line 378
    move v7, v4

    .line 380
    goto :goto_6

    .line 381
    :cond_16
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    .line 382
    move-result v7

    .line 385
    :goto_6
    iput v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAlpha:F

    .line 386
    invoke-virtual {v3}, Landroid/view/View;->getElevation()F

    .line 388
    move-result v7

    .line 391
    iput v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mElevation:F

    .line 392
    invoke-virtual {v3}, Landroid/view/View;->getRotation()F

    .line 394
    move-result v7

    .line 397
    iput v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotation:F

    .line 398
    invoke-virtual {v3}, Landroid/view/View;->getRotationX()F

    .line 400
    move-result v7

    .line 403
    iput v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotationX:F

    .line 404
    invoke-virtual {v3}, Landroid/view/View;->getRotationY()F

    .line 406
    move-result v7

    .line 409
    iput v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    .line 410
    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    .line 412
    move-result v7

    .line 415
    iput v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleX:F

    .line 416
    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    .line 418
    move-result v7

    .line 421
    iput v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleY:F

    .line 422
    invoke-virtual {v3}, Landroid/view/View;->getPivotX()F

    .line 424
    move-result v7

    .line 427
    iput v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    .line 428
    invoke-virtual {v3}, Landroid/view/View;->getPivotY()F

    .line 430
    move-result v7

    .line 433
    iput v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    .line 434
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    .line 436
    move-result v7

    .line 439
    iput v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationX:F

    .line 440
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    .line 442
    move-result v7

    .line 445
    iput v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationY:F

    .line 446
    invoke-virtual {v3}, Landroid/view/View;->getTranslationZ()F

    .line 448
    move-result v3

    .line 451
    iput v3, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationZ:F

    .line 452
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 454
    goto/16 :goto_5

    .line 456
    :cond_17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 458
    move-result p1

    .line 461
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 462
    move-result v2

    .line 465
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 466
    if-eqz v3, :cond_1c

    .line 468
    move v3, v0

    .line 470
    :goto_8
    if-ge v3, p2, :cond_19

    .line 471
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 473
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 475
    move-result-object v7

    .line 478
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    move-result-object v5

    .line 482
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 483
    if-nez v5, :cond_18

    .line 485
    goto :goto_9

    .line 487
    :cond_18
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 488
    invoke-virtual {v7, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    .line 490
    :goto_9
    add-int/lit8 v3, v3, 0x1

    .line 493
    goto :goto_8

    .line 495
    :cond_19
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 496
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 498
    move-result-object v3

    .line 501
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 502
    move-result v5

    .line 505
    if-eqz v5, :cond_1a

    .line 506
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 508
    move-result-object v5

    .line 511
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 512
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 514
    invoke-virtual {v5, p0, v7}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onPreSetup(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V

    .line 516
    goto :goto_a

    .line 519
    :cond_1a
    move v3, v0

    .line 520
    :goto_b
    if-ge v3, p2, :cond_1e

    .line 521
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 523
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 525
    move-result-object v7

    .line 528
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    move-result-object v5

    .line 532
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 533
    if-nez v5, :cond_1b

    .line 535
    goto :goto_c

    .line 537
    :cond_1b
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 538
    move-result-wide v7

    .line 541
    invoke-virtual {v5, p1, v2, v7, v8}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIJ)V

    .line 542
    :goto_c
    add-int/lit8 v3, v3, 0x1

    .line 545
    goto :goto_b

    .line 547
    :cond_1c
    move v3, v0

    .line 548
    :goto_d
    if-ge v3, p2, :cond_1e

    .line 549
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 551
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 553
    move-result-object v7

    .line 556
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    move-result-object v5

    .line 560
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 561
    if-nez v5, :cond_1d

    .line 563
    goto :goto_e

    .line 565
    :cond_1d
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 566
    invoke-virtual {v7, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    .line 568
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 571
    move-result-wide v7

    .line 574
    invoke-virtual {v5, p1, v2, v7, v8}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIJ)V

    .line 575
    :goto_e
    add-int/lit8 v3, v3, 0x1

    .line 578
    goto :goto_d

    .line 580
    :cond_1e
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 581
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 583
    if-eqz p1, :cond_1f

    .line 585
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    .line 587
    goto :goto_f

    .line 589
    :cond_1f
    move p1, v4

    .line 590
    :goto_f
    cmpl-float v2, p1, v4

    .line 591
    if-eqz v2, :cond_21

    .line 593
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 595
    const v3, -0x800001

    .line 598
    move v5, v0

    .line 601
    :goto_10
    if-ge v5, p2, :cond_20

    .line 602
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 604
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 606
    move-result-object v8

    .line 609
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    move-result-object v7

    .line 613
    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 614
    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 616
    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 618
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 620
    add-float/2addr v7, v8

    .line 622
    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    .line 623
    move-result v2

    .line 626
    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    .line 627
    move-result v3

    .line 630
    add-int/lit8 v5, v5, 0x1

    .line 631
    goto :goto_10

    .line 633
    :cond_20
    :goto_11
    if-ge v0, p2, :cond_21

    .line 634
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 636
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 638
    move-result-object v7

    .line 641
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    move-result-object v5

    .line 645
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 646
    iget-object v7, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 648
    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 650
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 652
    sub-float v9, v6, p1

    .line 654
    div-float v9, v6, v9

    .line 656
    iput v9, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 658
    add-float/2addr v8, v7

    .line 660
    sub-float/2addr v8, v2

    .line 661
    mul-float/2addr v8, p1

    .line 662
    sub-float v7, v3, v2

    .line 663
    div-float/2addr v8, v7

    .line 665
    sub-float v7, p1, v8

    .line 666
    iput v7, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 668
    add-int/lit8 v0, v0, 0x1

    .line 670
    goto :goto_11

    .line 672
    :cond_21
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 673
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 675
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 677
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 679
    return-void
    .line 682
.end method

.method public final updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 11
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 13
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 15
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 17
    move-result-object v1

    .line 20
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 21
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 23
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 25
    move-result-object v2

    .line 28
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 29
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 32
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 35
    if-ne v0, p1, :cond_1

    .line 37
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 39
    :cond_1
    return-void
    .line 42
.end method

.method public final varargs viewTransition(I[Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    if-eqz p0, :cond_8

    .line 4
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v6, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mViewTransitions:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v7

    .line 21
    const/4 v0, 0x0

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 26
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mTAG:Ljava/lang/String;

    .line 27
    if-eqz v1, :cond_7

    .line 29
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 34
    move-object v8, v1

    .line 35
    check-cast v8, Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 36
    iget v1, v8, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    .line 38
    if-ne v1, p1, :cond_0

    .line 40
    array-length v0, p2

    .line 42
    const/4 v1, 0x0

    .line 43
    move v3, v1

    .line 44
    :goto_1
    if-ge v3, v0, :cond_2

    .line 45
    aget-object v4, p2, v3

    .line 47
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/motion/widget/ViewTransition;->checkTags(Landroid/view/View;)Z

    .line 49
    move-result v5

    .line 52
    if-eqz v5, :cond_1

    .line 53
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 58
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 61
    move-result v0

    .line 64
    if-nez v0, :cond_6

    .line 65
    new-array v0, v1, [Landroid/view/View;

    .line 67
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 72
    move-object v5, v0

    .line 73
    check-cast v5, [Landroid/view/View;

    .line 74
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 76
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 78
    move-result v3

    .line 81
    iget v1, v8, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    .line 82
    const/4 v4, 0x2

    .line 84
    if-eq v1, v4, :cond_5

    .line 85
    const/4 v1, -0x1

    .line 87
    if-ne v3, v1, :cond_3

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    const-string v3, "No support for ViewTransition within transition yet. Currently: "

    .line 92
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->toString()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 107
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    goto :goto_2

    .line 111
    :cond_3
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 112
    move-result-object v4

    .line 115
    if-nez v4, :cond_4

    .line 116
    goto :goto_2

    .line 118
    :cond_4
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 119
    move-object v0, v8

    .line 121
    move-object v1, p0

    .line 122
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    .line 123
    goto :goto_2

    .line 126
    :cond_5
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 127
    const/4 v4, 0x0

    .line 129
    move-object v0, v8

    .line 130
    move-object v1, p0

    .line 131
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    .line 132
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 135
    :cond_6
    move-object v0, v8

    .line 138
    goto :goto_0

    .line 139
    :cond_7
    if-nez v0, :cond_9

    .line 140
    const-string p0, " Could not find ViewTransition"

    .line 142
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    goto :goto_3

    .line 147
    :cond_8
    const-string p0, "MotionLayout"

    .line 148
    const-string p1, " no motionScene"

    .line 150
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_9
    :goto_3
    return-void
    .line 155
.end method
