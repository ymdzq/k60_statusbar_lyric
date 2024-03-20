.class Lmiuix/nestedheader/widget/NestedHeaderLayout$3;
.super Ljava/lang/Object;
.source "NestedHeaderLayout.java"

# interfaces
.implements Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/nestedheader/widget/NestedHeaderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;


# direct methods
.method constructor <init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private autoAdsorptionForOverScrollTo()V
    .locals 6

    .line 774
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 775
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {v1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$1102(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 776
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    iget-object v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    iget v3, v3, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollingTo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    .line 777
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    const/4 v5, -0x2

    .line 778
    invoke-virtual {v3, v5, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-instance v4, Lmiuix/nestedheader/widget/NestedHeaderLayout$3$1;

    invoke-direct {v4, p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3$1;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout$3;Ljava/lang/String;)V

    filled-new-array {v4}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p0

    .line 779
    invoke-virtual {v3, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 777
    invoke-interface {v2, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method private updateAdsorption()V
    .locals 6

    .line 738
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    .line 739
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result v1

    .line 740
    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    iget v3, v2, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    add-int/2addr v3, v0

    .line 741
    invoke-virtual {v2}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v2

    if-eqz v2, :cond_5

    if-ge v2, v1, :cond_5

    if-le v2, v0, :cond_5

    .line 745
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$800(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    int-to-float v0, v2

    int-to-float v4, v3

    const v5, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v4, v5

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 746
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isHeaderOpen()Z

    move-result v0

    if-nez v0, :cond_1

    if-lt v2, v3, :cond_0

    goto :goto_0

    .line 749
    :cond_0
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v1

    goto :goto_1

    .line 747
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderCloseProgress()I

    move-result v1

    goto :goto_1

    :cond_2
    int-to-float v0, v2

    int-to-float v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_3

    goto :goto_1

    .line 753
    :cond_3
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$800(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z

    move-result v0

    if-nez v0, :cond_4

    if-gez v2, :cond_4

    return-void

    :cond_4
    const/4 v1, 0x0

    .line 756
    :goto_1
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {p0, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$900(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V

    goto :goto_2

    .line 757
    :cond_5
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    iget v0, v0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollingTo:I

    if-lez v0, :cond_6

    .line 758
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->autoAdsorptionForOverScrollTo()V

    :cond_6
    :goto_2
    return-void
.end method

.method private updateTag()V
    .locals 2

    .line 770
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$1102(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private updateTouch(Z)V
    .locals 1

    .line 763
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {v0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$1002(Lmiuix/nestedheader/widget/NestedHeaderLayout;Z)Z

    .line 764
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$1000(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 765
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->updateTag()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onStartNestedScroll(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 716
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->updateTouch(Z)V

    goto :goto_0

    .line 718
    :cond_0
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->updateTag()V

    :goto_0
    return-void
.end method

.method public onStopNestedScroll(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 733
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->updateTouch(Z)V

    :cond_0
    return-void
.end method

.method public onStopNestedScrollAccepted(I)V
    .locals 0

    .line 724
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$700(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 727
    :cond_0
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->updateAdsorption()V

    return-void
.end method
