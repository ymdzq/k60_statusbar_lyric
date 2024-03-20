.class public final Lcom/android/systemui/qs/customize/MiuiQSCustomizer;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public animInListener:Landroid/animation/Animator$AnimatorListener;

.field public animOutListener:Landroid/animation/Animator$AnimatorListener;

.field public clipper:Lcom/android/systemui/qs/QSDetailClipper;

.field public final collapseAnimationListener:Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;

.field public container:Lcom/android/systemui/shade/NotificationsQSContainerController;

.field public customizing:Z

.field public doneButton:Landroid/widget/TextView;

.field public final expandAnimationListener:Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;

.field public header:Landroid/widget/RelativeLayout;

.field public isOpening:Z

.field public isShown:Z

.field public qs:Lcom/android/systemui/qs/MiuiQS;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public resetButton:Landroid/widget/TextView;

.field public subTitle:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 3
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    new-instance p1, Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;-><init>(Lcom/android/systemui/qs/customize/MiuiQSCustomizer;I)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->expandAnimationListener:Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;

    .line 7
    new-instance p2, Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;-><init>(Lcom/android/systemui/qs/customize/MiuiQSCustomizer;I)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->collapseAnimationListener:Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;

    .line 8
    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->animInListener:Landroid/animation/Animator$AnimatorListener;

    .line 9
    iput-object p2, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->animOutListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final getDoneButton$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->doneButton:Landroid/widget/TextView;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getQs()Lcom/android/systemui/qs/MiuiQS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->qs:Lcom/android/systemui/qs/MiuiQS;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getResetButton$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->resetButton:Landroid/widget/TextView;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method public final isCustomizing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->customizing:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isOpening:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
    .line 14
.end method

.method public final isShown()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isShown:Z

    .line 2
    return p0
    .line 4
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 5
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    move-result-object v0

    .line 12
    const v1, 0x7f0d01cd    # @layout/miui_qs_customize_panel_content 'res/layout/miui_qs_customize_panel_content.xml'

    .line 13
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper;

    .line 19
    const v1, 0x7f0a027c    # @id/customize_container

    .line 21
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->clipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 31
    const v0, 0x102000a    # @android:id/list

    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 39
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    iput-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    const v0, 0x7f0a03e4    # @id/header

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 47
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 51
    iput-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->header:Landroid/widget/RelativeLayout;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :cond_0
    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 60
    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 62
    const-wide/16 v2, 0x96

    .line 65
    iput-wide v2, v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 67
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 69
    const v0, 0x102001a    # @android:id/button2

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 75
    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/TextView;

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->setResetButton$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Landroid/widget/TextView;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->getResetButton$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Landroid/widget/TextView;

    .line 84
    move-result-object v0

    .line 87
    const v1, 0x7f130a2f    # @string/reset 'Reset'

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    const v0, 0x1020019    # @android:id/button1

    .line 94
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 97
    move-result-object v0

    .line 100
    check-cast v0, Landroid/widget/TextView;

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->setDoneButton$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Landroid/widget/TextView;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->getDoneButton$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Landroid/widget/TextView;

    .line 106
    move-result-object v0

    .line 109
    const v1, 0x7f1309a4    # @string/quick_settings_done 'Done'

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    const v0, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 116
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 119
    move-result-object v0

    .line 122
    check-cast v0, Landroid/widget/TextView;

    .line 123
    iput-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->title:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0a08fa    # @id/sub_title

    .line 127
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 130
    move-result-object v0

    .line 133
    check-cast v0, Landroid/widget/TextView;

    .line 134
    iput-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->subTitle:Landroid/widget/TextView;

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->updateResources()V

    .line 138
    return-void
    .line 141
.end method

.method public final setAnimatedViews(Ljava/util/List;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->expandAnimationListener:Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;

    .line 11
    new-instance v1, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;

    .line 13
    const/4 v2, 0x0

    .line 15
    new-array v3, v2, [Landroid/view/View;

    .line 16
    invoke-interface {p1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 21
    check-cast v3, [Landroid/view/View;

    .line 22
    array-length v4, v3

    .line 24
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 28
    check-cast v3, [Landroid/view/View;

    .line 29
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;-><init>(I[Landroid/view/View;)V

    .line 31
    filled-new-array {v0, v1}, [Landroid/animation/Animator$AnimatorListener;

    .line 34
    move-result-object v0

    .line 37
    new-instance v1, Lcom/android/systemui/controlcenter/phone/widget/AnimatorListenerWrapper;

    .line 38
    invoke-direct {v1, v0}, Lcom/android/systemui/controlcenter/phone/widget/AnimatorListenerWrapper;-><init>([Landroid/animation/Animator$AnimatorListener;)V

    .line 40
    iput-object v1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->animInListener:Landroid/animation/Animator$AnimatorListener;

    .line 43
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->collapseAnimationListener:Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;

    .line 45
    new-instance v1, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;

    .line 47
    new-array v3, v2, [Landroid/view/View;

    .line 49
    invoke-interface {p1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 54
    check-cast v3, [Landroid/view/View;

    .line 55
    array-length v4, v3

    .line 57
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 61
    check-cast v3, [Landroid/view/View;

    .line 62
    const/4 v4, 0x1

    .line 64
    invoke-direct {v1, v4, v3}, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;-><init>(I[Landroid/view/View;)V

    .line 65
    filled-new-array {v0, v1}, [Landroid/animation/Animator$AnimatorListener;

    .line 68
    move-result-object v0

    .line 71
    new-instance v1, Lcom/android/systemui/controlcenter/phone/widget/AnimatorListenerWrapper;

    .line 72
    invoke-direct {v1, v0}, Lcom/android/systemui/controlcenter/phone/widget/AnimatorListenerWrapper;-><init>([Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    iput-object v1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->animOutListener:Landroid/animation/Animator$AnimatorListener;

    .line 77
    new-instance p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;

    .line 79
    new-array v0, v2, [Landroid/view/View;

    .line 81
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 86
    check-cast p1, [Landroid/view/View;

    .line 87
    array-length v0, p1

    .line 89
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 90
    move-result-object p1

    .line 93
    check-cast p1, [Landroid/view/View;

    .line 94
    invoke-direct {p0, v2, p1}, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;-><init>(I[Landroid/view/View;)V

    .line 96
    iput v2, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mAlphaDuration:I

    .line 99
    :cond_1
    :goto_0
    return-void
    .line 101
.end method

.method public final setContainer(Lcom/android/systemui/shade/NotificationsQSContainerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->container:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 2
    return-void
    .line 4
.end method

.method public final setCustomizing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->customizing:Z

    .line 2
    return-void
    .line 4
.end method

.method public final setDoneButton$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->doneButton:Landroid/widget/TextView;

    .line 2
    return-void
    .line 4
.end method

.method public final setEditLocation(II)V
    .locals 2

    .line 1
    const v0, 0x7f0a027c    # @id/customize_container

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    .line 9
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    aget v1, v0, v1

    .line 14
    sub-int/2addr p1, v1

    .line 16
    iput p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->x:I

    .line 17
    const/4 p1, 0x1

    .line 19
    aget p1, v0, p1

    .line 20
    sub-int/2addr p2, p1

    .line 22
    iput p2, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->y:I

    .line 23
    return-void
    .line 25
.end method

.method public final setMargins(II)V
    .locals 1

    .line 1
    const v0, 0x7f0a027c    # @id/customize_container

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 13
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 15
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    return-void
    .line 22
.end method

.method public final setOpening(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isOpening:Z

    .line 2
    return-void
    .line 4
.end method

.method public final setQs(Lcom/android/systemui/qs/MiuiQS;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->qs:Lcom/android/systemui/qs/MiuiQS;

    .line 2
    return-void
    .line 4
.end method

.method public final setResetButton$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->resetButton:Landroid/widget/TextView;

    .line 2
    return-void
    .line 4
.end method

.method public final updateResources()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->title:Landroid/widget/TextView;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    move-object v0, v1

    .line 7
    :cond_0
    const v2, 0x7f130945    # @string/qs_customize_title 'Edit'

    .line 8
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->subTitle:Landroid/widget/TextView;

    .line 14
    if-nez v0, :cond_1

    .line 16
    move-object v0, v1

    .line 18
    :cond_1
    const v2, 0x7f1303b4    # @string/drag_to_add_tiles 'Press and hold to add or rearrange items'

    .line 19
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->getResetButton$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Landroid/widget/TextView;

    .line 25
    move-result-object v0

    .line 28
    const v2, 0x7f130a2f    # @string/reset 'Reset'

    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->getDoneButton$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Landroid/widget/TextView;

    .line 35
    move-result-object v0

    .line 38
    const v2, 0x7f1309a4    # @string/quick_settings_done 'Done'

    .line 39
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 42
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object v0

    .line 52
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object v2

    .line 56
    const v3, 0x7f070f53    # @dimen/qs_customize_padding_bottom '51.33dp'

    .line 57
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 60
    move-result v2

    .line 63
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    .line 64
    move-result v3

    .line 67
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 68
    move-result v4

    .line 71
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    .line 72
    move-result v5

    .line 75
    invoke-virtual {p0, v3, v4, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 76
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 79
    move-result-object v0

    .line 82
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 83
    const/4 v2, 0x1

    .line 85
    if-ne v0, v2, :cond_3

    .line 86
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->header:Landroid/widget/RelativeLayout;

    .line 88
    if-nez p0, :cond_2

    .line 90
    goto :goto_0

    .line 92
    :cond_2
    move-object v1, p0

    .line 93
    :goto_0
    const/4 p0, 0x0

    .line 94
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 95
    goto :goto_2

    .line 98
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->header:Landroid/widget/RelativeLayout;

    .line 99
    if-nez p0, :cond_4

    .line 101
    goto :goto_1

    .line 103
    :cond_4
    move-object v1, p0

    .line 104
    :goto_1
    const/4 p0, 0x4

    .line 105
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 106
    :goto_2
    return-void
    .line 109
.end method
