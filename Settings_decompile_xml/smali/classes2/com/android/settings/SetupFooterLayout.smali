.class public Lcom/android/settings/SetupFooterLayout;
.super Landroid/widget/LinearLayout;
.source "SetupFooterLayout.java"


# instance fields
.field private mBackButton:Landroid/widget/TextView;

.field private mBackImg:Landroid/widget/ImageView;

.field private mBackLayout:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/TextView;

.field private mNextImg:Landroid/widget/ImageView;

.field private mNextLayout:Landroid/widget/FrameLayout;

.field private mSkipButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static updateViewVisibility(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 4

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 103
    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_2

    move v1, v2

    .line 104
    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getBackButton()Landroid/widget/TextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/SetupFooterLayout;->mBackButton:Landroid/widget/TextView;

    return-object p0
.end method

.method public getBackImg()Landroid/widget/ImageView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/SetupFooterLayout;->mBackImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getBackLayout()Landroid/widget/FrameLayout;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settings/SetupFooterLayout;->mBackLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getNextButton()Landroid/widget/TextView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/SetupFooterLayout;->mNextButton:Landroid/widget/TextView;

    return-object p0
.end method

.method public getNextImg()Landroid/widget/ImageView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/SetupFooterLayout;->mNextImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getNextLayout()Landroid/widget/FrameLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/settings/SetupFooterLayout;->mNextLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getSkipButton()Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/SetupFooterLayout;->mSkipButton:Landroid/widget/TextView;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 40
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 41
    sget v0, Lcom/android/settings/R$id;->lyt_btn_back:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/settings/SetupFooterLayout;->mBackLayout:Landroid/widget/FrameLayout;

    .line 42
    sget v0, Lcom/android/settings/R$id;->btn_back:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SetupFooterLayout;->mBackButton:Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/android/settings/R$id;->btn_back_global:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/SetupFooterLayout;->mBackImg:Landroid/widget/ImageView;

    .line 44
    iget-object v1, p0, Lcom/android/settings/SetupFooterLayout;->mBackButton:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/settings/SetupFooterLayout;->updateViewVisibility(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 45
    sget v0, Lcom/android/settings/R$id;->btn_skip:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SetupFooterLayout;->mSkipButton:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/android/settings/R$id;->lyt_btn_next:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/settings/SetupFooterLayout;->mNextLayout:Landroid/widget/FrameLayout;

    .line 47
    sget v0, Lcom/android/settings/R$id;->btn_next:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SetupFooterLayout;->mNextButton:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/android/settings/R$id;->next_global:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/SetupFooterLayout;->mNextImg:Landroid/widget/ImageView;

    .line 49
    iget-object p0, p0, Lcom/android/settings/SetupFooterLayout;->mNextButton:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/android/settings/SetupFooterLayout;->updateViewVisibility(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-void
.end method

.method public setBackLayoutClickable()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/settings/SetupFooterLayout;->mBackButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/SetupFooterLayout;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/SetupFooterLayout;->mBackImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/SetupFooterLayout;->mBackImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/SetupFooterLayout;->mBackLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 86
    iget-object p0, p0, Lcom/android/settings/SetupFooterLayout;->mBackLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method public setNextLayoutClickable()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/settings/SetupFooterLayout;->mNextButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/SetupFooterLayout;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/SetupFooterLayout;->mNextImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/SetupFooterLayout;->mNextImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/SetupFooterLayout;->mNextLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 95
    iget-object p0, p0, Lcom/android/settings/SetupFooterLayout;->mNextLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method
