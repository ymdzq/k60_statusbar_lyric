.class public final Landroidx/leanback/widget/BaseCardView$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/leanback/widget/BaseCardView;


# direct methods
.method public synthetic constructor <init>(Landroidx/leanback/widget/BaseCardView;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/leanback/widget/BaseCardView$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView$2;->this$0:Landroidx/leanback/widget/BaseCardView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7

    .line 1
    iget p1, p0, Landroidx/leanback/widget/BaseCardView$2;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x8

    .line 5
    const/4 v2, 0x0

    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    goto :goto_2

    .line 11
    :pswitch_0
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView$2;->this$0:Landroidx/leanback/widget/BaseCardView;

    .line 12
    iget p1, p1, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 14
    cmpl-float p1, p1, v0

    .line 16
    if-nez p1, :cond_0

    .line 18
    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView$2;->this$0:Landroidx/leanback/widget/BaseCardView;

    .line 20
    iget-object p1, p1, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result p1

    .line 27
    if-ge v2, p1, :cond_0

    .line 28
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView$2;->this$0:Landroidx/leanback/widget/BaseCardView;

    .line 30
    iget-object p1, p1, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 37
    check-cast p1, Landroid/view/View;

    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_0
    return-void

    .line 46
    :pswitch_1
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView$2;->this$0:Landroidx/leanback/widget/BaseCardView;

    .line 47
    iget p1, p1, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 49
    cmpl-float p1, p1, v0

    .line 51
    if-nez p1, :cond_1

    .line 53
    :goto_1
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView$2;->this$0:Landroidx/leanback/widget/BaseCardView;

    .line 55
    iget-object p1, p1, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 59
    move-result p1

    .line 62
    if-ge v2, p1, :cond_1

    .line 63
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView$2;->this$0:Landroidx/leanback/widget/BaseCardView;

    .line 65
    iget-object p1, p1, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 72
    check-cast p1, Landroid/view/View;

    .line 73
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 78
    goto :goto_1

    .line 80
    :cond_1
    return-void

    .line 81
    :goto_2
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView$2;->this$0:Landroidx/leanback/widget/BaseCardView;

    .line 82
    iget p1, p1, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    .line 84
    float-to-double v3, p1

    .line 86
    const-wide/16 v5, 0x0

    .line 87
    cmpl-double p1, v3, v5

    .line 89
    if-nez p1, :cond_2

    .line 91
    :goto_3
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView$2;->this$0:Landroidx/leanback/widget/BaseCardView;

    .line 93
    iget-object p1, p1, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 97
    move-result p1

    .line 100
    if-ge v2, p1, :cond_2

    .line 101
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView$2;->this$0:Landroidx/leanback/widget/BaseCardView;

    .line 103
    iget-object p1, p1, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object p1

    .line 110
    check-cast p1, Landroid/view/View;

    .line 111
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    add-int/lit8 v2, v2, 0x1

    .line 116
    goto :goto_3

    .line 118
    :cond_2
    return-void

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 120
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
