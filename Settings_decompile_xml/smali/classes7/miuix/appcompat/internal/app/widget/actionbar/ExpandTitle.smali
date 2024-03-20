.class public Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
.super Ljava/lang/Object;
.source "ExpandTitle.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

.field private mExpandTitleLayout:Landroid/widget/LinearLayout;

.field private mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

.field private mSubtitleStyle:I

.field private mTextColorTransitEnable:Z

.field private mTitleStyle:I

.field private mVisible:Z


# direct methods
.method public static synthetic $r8$lambda$7ouH51Qa0YJINlh91g-igAz52Iw(Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->lambda$init$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mVisible:Z

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mTextColorTransitEnable:Z

    .line 35
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mContext:Landroid/content/Context;

    .line 36
    sget p1, Lmiuix/appcompat/R$style;->Miuix_AppCompat_TextAppearance_WindowTitle_Expand:I

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mTitleStyle:I

    .line 37
    sget p1, Lmiuix/appcompat/R$style;->Miuix_AppCompat_TextAppearance_WindowTitle_Subtitle_Expand:I

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mSubtitleStyle:I

    return-void
.end method

.method private getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 70
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method private synthetic lambda$init$0()V
    .locals 2

    .line 48
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mContext:Landroid/content/Context;

    const v1, 0x101039c    # @android:attr/actionBarItemBackground

    .line 49
    invoke-static {p0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getLayout()Landroid/view/View;
    .locals 0

    .line 137
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getVisibility()I
    .locals 0

    .line 133
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    return p0
.end method

.method public init()V
    .locals 5

    .line 45
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 47
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 51
    new-instance v0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mContext:Landroid/content/Context;

    sget v2, Lmiuix/appcompat/R$attr;->expandTitleTheme:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 52
    sget v1, Lmiuix/appcompat/R$id;->action_bar_title_expand:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 53
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    .line 54
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalScrollBarEnabled(Z)V

    .line 55
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-instance v0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mContext:Landroid/content/Context;

    sget v4, Lmiuix/appcompat/R$attr;->expandSubtitleTheme:I

    invoke-direct {v0, v2, v3, v4}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 58
    sget v2, Lmiuix/appcompat/R$id;->action_bar_subtitle_expand:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 59
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    .line 61
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalScrollBarEnabled(Z)V

    .line 62
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    sget v1, Lmiuix/appcompat/R$dimen;->action_bar_subtitle_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 66
    sget v1, Lmiuix/appcompat/R$dimen;->action_bar_subtitle_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mTitleStyle:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 143
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mSubtitleStyle:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method public setAllTitlesClickable(Z)V
    .locals 1

    .line 85
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 88
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz p0, :cond_1

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 106
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleVisibility(I)V

    return-void
.end method

.method public setSubTitleOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 79
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setSubTitleVisibility(I)V
    .locals 0

    .line 110
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setTextColorTransitEnable(ZI)V
    .locals 2

    .line 148
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mTextColorTransitEnable:Z

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 150
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v1, v0, v0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->startColorTransition(ZZ)V

    .line 152
    :cond_0
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mTextColorTransitEnable:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 154
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->startColorTransition(ZZ)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setTitleVisibility(I)V
    .locals 0

    .line 121
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 125
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mVisible:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 126
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 114
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mVisible:Z

    if-eq v0, p1, :cond_1

    .line 115
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mVisible:Z

    .line 116
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
