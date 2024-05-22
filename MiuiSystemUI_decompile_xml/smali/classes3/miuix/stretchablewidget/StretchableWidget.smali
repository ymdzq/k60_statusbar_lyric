.class public Lmiuix/stretchablewidget/StretchableWidget;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mButtonLine:Landroid/view/View;

.field public mContainer:Lmiuix/stretchablewidget/WidgetContainer;

.field public mDetailMsgText:Landroid/widget/TextView;

.field public mHeight:I

.field public mIcon:Landroid/widget/ImageView;

.field public mIsExpand:Z

.field public mLayout:Landroid/view/View;

.field public mStateImage:Landroid/widget/ImageView;

.field public mTitle:Landroid/widget/TextView;

.field public mTopLine:Landroid/view/View;

.field public mTopView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/stretchablewidget/StretchableWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04071d    # @attr/stretchableWidgetStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/stretchablewidget/StretchableWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mHeight:I

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    sget-object v2, Lmiuix/stretchablewidget/R$styleable;->StretchableWidget:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x4

    .line 7
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 8
    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/4 v5, 0x3

    .line 9
    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 10
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mIsExpand:Z

    const-string v0, "layout_inflater"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const v8, 0x7f0d0245    # @layout/miuix_stretchable_widget_layout 'res/layout/miuix_stretchable_widget_layout.xml'

    .line 13
    invoke-virtual {v7, v8, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v7, 0x7f0a09c4    # @id/top_view

    .line 14
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTopView:Landroid/widget/RelativeLayout;

    const v7, 0x7f0a0412    # @id/icon

    .line 15
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lmiuix/stretchablewidget/StretchableWidget;->mIcon:Landroid/widget/ImageView;

    const v7, 0x7f0a08ce    # @id/start_text

    .line 16
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTitle:Landroid/widget/TextView;

    const v7, 0x7f0a08d5    # @id/state_image

    .line 17
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lmiuix/stretchablewidget/StretchableWidget;->mStateImage:Landroid/widget/ImageView;

    const v7, 0x7f0a02b3    # @id/detail_msg_text

    .line 18
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lmiuix/stretchablewidget/StretchableWidget;->mDetailMsgText:Landroid/widget/TextView;

    const v7, 0x7f0a027c    # @id/customize_container

    .line 19
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lmiuix/stretchablewidget/WidgetContainer;

    iput-object v7, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    const v7, 0x7f0a01ad    # @id/button_line

    .line 20
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lmiuix/stretchablewidget/StretchableWidget;->mButtonLine:Landroid/view/View;

    const v7, 0x7f0a09be    # @id/top_line

    .line 21
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTopLine:Landroid/view/View;

    .line 22
    invoke-virtual {p0, v3}, Lmiuix/stretchablewidget/StretchableWidget;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/stretchablewidget/StretchableWidget;->preSetView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    if-nez v5, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 25
    invoke-virtual {p1, v5, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 26
    :goto_0
    invoke-virtual {p0, p2}, Lmiuix/stretchablewidget/StretchableWidget;->setView(Landroid/view/View;)V

    .line 27
    :goto_1
    invoke-virtual {p0, v4}, Lmiuix/stretchablewidget/StretchableWidget;->setIcon(I)V

    .line 28
    invoke-virtual {p0, v6}, Lmiuix/stretchablewidget/StretchableWidget;->setDetailMessage(Ljava/lang/CharSequence;)V

    .line 29
    iget-boolean p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mIsExpand:Z

    invoke-virtual {p0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->setState(Z)V

    .line 30
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTopView:Landroid/widget/RelativeLayout;

    new-instance p2, Lmiuix/stretchablewidget/StretchableWidget$1;

    invoke-direct {p2, p0}, Lmiuix/stretchablewidget/StretchableWidget$1;-><init>(Lmiuix/stretchablewidget/StretchableWidget;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public afterSetView()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public getLayout()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mLayout:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public preSetView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setContainerAmin(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 2
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 8
    move-result-object v0

    .line 11
    const-string v1, "start"

    .line 12
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 14
    move-result-object v0

    .line 17
    iget v2, p0, Lmiuix/stretchablewidget/StretchableWidget;->mHeight:I

    .line 18
    const-string v3, "widgetHeight"

    .line 20
    invoke-interface {v0, v3, v2}, Lmiuix/animation/IStateStyle;->add(Ljava/lang/String;I)Lmiuix/animation/IStateStyle;

    .line 22
    move-result-object v0

    .line 25
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 26
    const/high16 v4, 0x3f800000    # 1.0f

    .line 28
    invoke-interface {v0, v2, v4}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    .line 30
    move-result-object v0

    .line 33
    const-string v4, "end"

    .line 34
    invoke-interface {v0, v4}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 36
    move-result-object v0

    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-interface {v0, v3, v5}, Lmiuix/animation/IStateStyle;->add(Ljava/lang/String;I)Lmiuix/animation/IStateStyle;

    .line 41
    move-result-object v0

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-interface {v0, v2, v3}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    .line 46
    iget-object p0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 49
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 54
    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 55
    move-result-object p0

    .line 58
    if-eqz p1, :cond_0

    .line 59
    goto :goto_0

    .line 61
    :cond_0
    move-object v1, v4

    .line 62
    :goto_0
    invoke-interface {p0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 63
    return-void
    .line 66
.end method

.method public setDetailMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mDetailMsgText:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setIcon(I)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mIcon:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7
    return-void
    .line 10
.end method

.method public setLayout(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->setView(Landroid/view/View;)V

    .line 2
    return-void
    .line 5
.end method

.method public setState(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mStateImage:Landroid/widget/ImageView;

    .line 4
    const v1, 0x7f08164a    # @drawable/miuix_stretchable_widget_state_expand 'res/drawable/miuix_stretchable_widget_state_expand.xml'

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 9
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTopLine:Landroid/view/View;

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mButtonLine:Landroid/view/View;

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mStateImage:Landroid/widget/ImageView;

    .line 24
    const v1, 0x7f081649    # @drawable/miuix_stretchable_widget_state_collapse 'res/drawable/miuix_stretchable_widget_state_collapse.xml'

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 29
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTopLine:Landroid/view/View;

    .line 32
    const/16 v1, 0x8

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mButtonLine:Landroid/view/View;

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->setContainerAmin(Z)V

    .line 44
    return-void
    .line 47
.end method

.method public setStateChangedListener(Lmiuix/stretchablewidget/StretchableWidget$StretchableWidgetStateChangedListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTitle:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setView(Landroid/view/View;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mLayout:Landroid/view/View;

    .line 5
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 7
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 9
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 17
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 21
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 23
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 28
    :goto_0
    const/4 v0, 0x0

    .line 31
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 32
    move-result v1

    .line 35
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 36
    move-result v0

    .line 39
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    move-result p1

    .line 46
    iput p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mHeight:I

    .line 47
    invoke-virtual {p0}, Lmiuix/stretchablewidget/StretchableWidget;->afterSetView()V

    .line 49
    iget-boolean p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mIsExpand:Z

    .line 52
    invoke-virtual {p0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->setContainerAmin(Z)V

    .line 54
    return-void
    .line 57
.end method
