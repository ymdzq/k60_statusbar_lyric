.class public final Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;
.super Landroidx/leanback/widget/BaseCardView$AnimationBase;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mDelta:F

.field public final mStartValue:F

.field public final synthetic this$0:Landroidx/leanback/widget/BaseCardView;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/BaseCardView;FFI)V
    .locals 1

    .line 1
    iput p4, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p4, v0, :cond_1

    .line 5
    const/4 v0, 0x2

    .line 7
    if-eq p4, v0, :cond_0

    .line 8
    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroidx/leanback/widget/BaseCardView;

    .line 10
    invoke-direct {p0}, Landroidx/leanback/widget/BaseCardView$AnimationBase;-><init>()V

    .line 12
    iput p2, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->mStartValue:F

    .line 15
    sub-float/2addr p3, p2

    .line 17
    iput p3, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->mDelta:F

    .line 18
    return-void

    .line 20
    :cond_0
    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroidx/leanback/widget/BaseCardView;

    .line 21
    invoke-direct {p0}, Landroidx/leanback/widget/BaseCardView$AnimationBase;-><init>()V

    .line 23
    iput p2, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->mStartValue:F

    .line 26
    sub-float/2addr p3, p2

    .line 28
    iput p3, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->mDelta:F

    .line 29
    return-void

    .line 31
    :cond_1
    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroidx/leanback/widget/BaseCardView;

    .line 32
    invoke-direct {p0}, Landroidx/leanback/widget/BaseCardView$AnimationBase;-><init>()V

    .line 34
    iput p2, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->mStartValue:F

    .line 37
    sub-float/2addr p3, p2

    .line 39
    iput p3, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->mDelta:F

    .line 40
    return-void
    .line 42
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    iget p2, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->$r8$classId:I

    .line 2
    packed-switch p2, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p2, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroidx/leanback/widget/BaseCardView;

    .line 8
    iget v0, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->mStartValue:F

    .line 10
    iget p0, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->mDelta:F

    .line 12
    mul-float/2addr p1, p0

    .line 14
    add-float/2addr p1, v0

    .line 15
    iput p1, p2, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 16
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 18
    return-void

    .line 21
    :pswitch_1
    iget-object p2, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroidx/leanback/widget/BaseCardView;

    .line 22
    iget v0, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->mStartValue:F

    .line 24
    iget v1, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->mDelta:F

    .line 26
    mul-float/2addr p1, v1

    .line 28
    add-float/2addr p1, v0

    .line 29
    iput p1, p2, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    .line 30
    const/4 p1, 0x0

    .line 32
    :goto_0
    iget-object p2, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroidx/leanback/widget/BaseCardView;

    .line 33
    iget-object p2, p2, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result p2

    .line 40
    if-ge p1, p2, :cond_0

    .line 41
    iget-object p2, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroidx/leanback/widget/BaseCardView;

    .line 43
    iget-object p2, p2, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object p2

    .line 50
    check-cast p2, Landroid/view/View;

    .line 51
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroidx/leanback/widget/BaseCardView;

    .line 53
    iget v0, v0, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 57
    add-int/lit8 p1, p1, 0x1

    .line 60
    goto :goto_0

    .line 62
    :cond_0
    return-void

    .line 63
    :goto_1
    iget-object p2, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroidx/leanback/widget/BaseCardView;

    .line 64
    iget v0, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->mStartValue:F

    .line 66
    iget p0, p0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;->mDelta:F

    .line 68
    mul-float/2addr p1, p0

    .line 70
    add-float/2addr p1, v0

    .line 71
    iput p1, p2, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 72
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 74
    return-void

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 78
.end method
