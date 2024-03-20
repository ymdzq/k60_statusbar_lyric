.class public final Landroidx/leanback/widget/ListRowHoverCardView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mDescriptionView:Landroid/widget/TextView;

.field public final mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/ListRowHoverCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/ListRowHoverCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0145    # @layout/lb_list_row_hovercard 'res/layout/lb_list_row_hovercard.xml'

    .line 5
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/leanback/widget/ListRowHoverCardView;->mTitleView:Landroid/widget/TextView;

    const p1, 0x7f0a02a8    # @id/description

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/leanback/widget/ListRowHoverCardView;->mDescriptionView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/ListRowHoverCardView;->mDescriptionView:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/ListRowHoverCardView;->mTitleView:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final setDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/leanback/widget/ListRowHoverCardView;->mDescriptionView:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p0, p0, Landroidx/leanback/widget/ListRowHoverCardView;->mDescriptionView:Landroid/widget/TextView;

    .line 13
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Landroidx/leanback/widget/ListRowHoverCardView;->mDescriptionView:Landroid/widget/TextView;

    .line 20
    const/16 p1, 0x8

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    :goto_0
    return-void
    .line 27
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/leanback/widget/ListRowHoverCardView;->mTitleView:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p0, p0, Landroidx/leanback/widget/ListRowHoverCardView;->mTitleView:Landroid/widget/TextView;

    .line 13
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Landroidx/leanback/widget/ListRowHoverCardView;->mTitleView:Landroid/widget/TextView;

    .line 20
    const/16 p1, 0x8

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    :goto_0
    return-void
    .line 27
.end method
