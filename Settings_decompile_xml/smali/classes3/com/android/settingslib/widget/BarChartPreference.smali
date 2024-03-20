.class public Lcom/android/settingslib/widget/BarChartPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "BarChartPreference.java"


# static fields
.field private static final BAR_VIEWS:[I


# instance fields
.field private mIsLoading:Z

.field private mMaxBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 84
    sget v0, Lcom/android/settingslib/widget/R$id;->bar_view1:I

    sget v1, Lcom/android/settingslib/widget/R$id;->bar_view2:I

    sget v2, Lcom/android/settingslib/widget/R$id;->bar_view3:I

    sget v3, Lcom/android/settingslib/widget/R$id;->bar_view4:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/widget/BarChartPreference;->BAR_VIEWS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->init()V

    return-void
.end method

.method private bindChartDetailsView(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 198
    sget p0, Lcom/android/settingslib/widget/R$id;->bar_chart_details:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    const/4 p0, 0x0

    .line 199
    throw p0
.end method

.method private bindChartTitleView(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 193
    sget p0, Lcom/android/settingslib/widget/R$id;->bar_chart_title:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 p0, 0x0

    .line 194
    throw p0
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 187
    sget v0, Lcom/android/settingslib/widget/R$layout;->settings_bar_chart:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 188
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/widget/R$dimen;->settings_bar_view_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mMaxBarHeight:I

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 159
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x1

    .line 160
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 161
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 165
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/BarChartPreference;->bindChartTitleView(Landroidx/preference/PreferenceViewHolder;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/BarChartPreference;->bindChartDetailsView(Landroidx/preference/PreferenceViewHolder;)V

    .line 169
    iget-boolean p0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mIsLoading:Z

    if-eqz p0, :cond_0

    .line 170
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 173
    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 175
    throw p0
.end method
