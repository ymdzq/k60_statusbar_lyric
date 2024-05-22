.class public final Landroidx/fragment/app/Fragment$AnimationInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mEnterAnim:I

.field public mExitAnim:I

.field public mFocusedView:Landroid/view/View;

.field public mIsPop:Z

.field public mNextTransition:I

.field public mPopEnterAnim:I

.field public mPopExitAnim:I

.field public mPostOnViewCreatedAlpha:F

.field public final mReenterTransition:Ljava/lang/Object;

.field public final mReturnTransition:Ljava/lang/Object;

.field public final mSharedElementReturnTransition:Ljava/lang/Object;

.field public mSharedElementSourceNames:Ljava/util/ArrayList;

.field public mSharedElementTargetNames:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    iput v0, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPostOnViewCreatedAlpha:F

    .line 15
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mFocusedView:Landroid/view/View;

    .line 18
    return-void
    .line 20
.end method
