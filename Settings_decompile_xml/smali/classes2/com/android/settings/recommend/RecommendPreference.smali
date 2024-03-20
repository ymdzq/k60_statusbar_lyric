.class public Lcom/android/settings/recommend/RecommendPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "RecommendPreference.java"

# interfaces
.implements Lmiuix/preference/FolmeAnimationController;
.implements Lmiuix/preference/PreferenceExtraPadding;


# static fields
.field private static final TAG:Ljava/lang/String; = "RecommendPreference"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mNeedClear:Z

.field private mRecommendTips:Ljava/lang/String;

.field private mRecommendTipsTv:Landroid/widget/TextView;

.field private mTopMargin:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/recommend/RecommendPreference;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/recommend/RecommendPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0, v0}, Lcom/android/settings/recommend/RecommendPreference;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/android/settings/recommend/RecommendPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput-object p1, p0, Lcom/android/settings/recommend/RecommendPreference;->mContext:Landroid/content/Context;

    .line 70
    iput p2, p0, Lcom/android/settings/recommend/RecommendPreference;->mTopMargin:I

    .line 71
    iput-boolean p3, p0, Lcom/android/settings/recommend/RecommendPreference;->mNeedClear:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/recommend/RecommendPreference;->mItemList:Ljava/util/List;

    return-void
.end method

.method private tryClearRecommendView()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/settings/recommend/RecommendPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/recommend/RecommendPreference;->mNeedClear:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    .line 154
    iget-object v1, p0, Lcom/android/settings/recommend/RecommendPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addRecommendView(Landroid/text/SpannableString;Landroid/content/Intent;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/settings/recommend/RecommendPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->recommend_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 114
    sget v1, Lcom/android/settings/R$id;->item_view:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 115
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    new-instance p1, Lcom/android/settings/recommend/RecommendPreference$1;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/recommend/RecommendPreference$1;-><init>(Lcom/android/settings/recommend/RecommendPreference;Landroid/content/Intent;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object p0, p0, Lcom/android/settings/recommend/RecommendPreference;->mItemList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isTouchAnimationEnable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 88
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isMiuiSdkSupportFolme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 93
    sget v0, Lcom/android/settings/R$id;->line_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/recommend/RecommendPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 94
    sget v0, Lcom/android/settings/R$id;->recommend_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/recommend/RecommendPreference;->mRecommendTipsTv:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 95
    iget-object p1, p0, Lcom/android/settings/recommend/RecommendPreference;->mRecommendTips:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 96
    iget-object p1, p0, Lcom/android/settings/recommend/RecommendPreference;->mRecommendTipsTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/recommend/RecommendPreference;->mRecommendTips:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_1
    iget p1, p0, Lcom/android/settings/recommend/RecommendPreference;->mTopMargin:I

    if-lez p1, :cond_2

    .line 100
    iget-object p1, p0, Lcom/android/settings/recommend/RecommendPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 101
    iget v0, p0, Lcom/android/settings/recommend/RecommendPreference;->mTopMargin:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 102
    iget-object v0, p0, Lcom/android/settings/recommend/RecommendPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/recommend/RecommendPreference;->tryClearRecommendView()V

    .line 105
    iget-object p1, p0, Lcom/android/settings/recommend/RecommendPreference;->mItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 106
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 107
    iget-object v1, p0, Lcom/android/settings/recommend/RecommendPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 81
    sget p1, Lcom/android/settings/R$layout;->recommend_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onPreferenceExtraPadding(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 2

    .line 170
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->miuix_preference_checkable_item_mask_padding_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    int-to-float p2, p2

    add-float/2addr p1, p2

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->miuix_preference_checkable_item_bg_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v0, p2

    float-to-int p1, p1

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setRecommendTips(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/settings/recommend/RecommendPreference;->mRecommendTips:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/settings/recommend/RecommendPreference;->mContext:Landroid/content/Context;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 138
    iget-object p0, p0, Lcom/android/settings/recommend/RecommendPreference;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 141
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 142
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 143
    sget p2, Lcom/android/settings/R$id;->content:I

    invoke-virtual {p0, p2, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
