.class public abstract Lcom/android/keyguard/BaseKeyguardMoveController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

.field public final mContext:Landroid/content/Context;

.field public mEnableErrorTips:Z

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public mIsNoMistakeTouch:Z

.field public mIsOnIconTouchDown:Z

.field public mMakeMistakes:Z

.field public mMovingLength:F

.field public final mScreenPoint:Landroid/graphics/Point;

.field public mTouchDownInitial:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardMoveHelper$2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Point;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mScreenPoint:Landroid/graphics/Point;

    .line 10
    iput-object p2, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 12
    iput-object p1, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 20
    return-void
    .line 23
.end method


# virtual methods
.method public final startBackAnimationOfMistakeTouch()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mEnableErrorTips:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mMakeMistakes:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
    new-array v0, v0, [F

    .line 12
    const/4 v1, 0x0

    .line 14
    iget v2, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mMovingLength:F

    .line 15
    aput v2, v0, v1

    .line 17
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    aput v2, v0, v1

    .line 21
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 23
    move-result-object v0

    .line 26
    new-instance v1, Lcom/android/keyguard/BaseKeyguardMoveController$$ExternalSyntheticLambda0;

    .line 27
    invoke-direct {v1, p0}, Lcom/android/keyguard/BaseKeyguardMoveController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/BaseKeyguardMoveController;)V

    .line 29
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 32
    new-instance v1, Lcom/android/keyguard/BaseKeyguardMoveController$1;

    .line 35
    invoke-direct {v1, p0}, Lcom/android/keyguard/BaseKeyguardMoveController$1;-><init>(Lcom/android/keyguard/BaseKeyguardMoveController;)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 40
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 43
    :cond_1
    :goto_0
    return-void
    .line 46
.end method
