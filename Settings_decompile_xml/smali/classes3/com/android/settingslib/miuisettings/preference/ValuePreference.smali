.class public Lcom/android/settingslib/miuisettings/preference/ValuePreference;
.super Lmiuix/preference/TextPreference;
.source "ValuePreference.java"

# interfaces
.implements Lmiuix/preference/PreferenceExtraPadding;


# instance fields
.field private mApplyExtraPadding:Z

.field private mShowRightArrow:Z

.field private mValueRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->mShowRightArrow:Z

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1, p2}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->mShowRightArrow:Z

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 34
    iput-boolean p3, p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->mShowRightArrow:Z

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    .line 79
    iput-boolean p2, p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->mShowRightArrow:Z

    const/4 p2, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p2, :cond_2

    .line 95
    sget-object v0, Lcom/android/settingslib/R$styleable;->ValuePreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 96
    sget p2, Lcom/android/settingslib/R$styleable;->ValuePreference_showRightArrow:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 98
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    iget p2, p2, Landroid/util/TypedValue;->data:I

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->mShowRightArrow:Z

    .line 100
    :cond_1
    sget p2, Lcom/android/settingslib/R$styleable;->ValuePreference_applyExtraPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->mApplyExtraPadding:Z

    .line 101
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    :cond_2
    iget-boolean p1, p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->mShowRightArrow:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 104
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    if-nez p1, :cond_3

    .line 105
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.settings.TEST_ARROW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/CharSequence;
    .locals 0

    .line 143
    invoke-virtual {p0}, Lmiuix/preference/TextPreference;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getValueRes()I
    .locals 0

    .line 134
    iget p0, p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->mValueRes:I

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 200
    invoke-super {p0, p1}, Lmiuix/preference/TextPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 201
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->onBindView(Landroid/view/View;)V

    .line 202
    iget-boolean p1, p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->mShowRightArrow:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 203
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    if-nez p1, :cond_0

    .line 204
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.TEST_ARROW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPreferenceExtraPadding(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 2

    .line 224
    iget-boolean p0, p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->mApplyExtraPadding:Z

    if-nez p0, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settingslib/R$dimen;->miuix_preference_item_padding_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    int-to-float p2, p2

    add-float/2addr p1, p2

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$dimen;->miuix_preference_item_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v0, p2

    float-to-int p1, p1

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public performClick()V
    .locals 3

    .line 215
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 219
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    return-void
.end method

.method public setShowRightArrow(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->mShowRightArrow:Z

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lmiuix/preference/TextPreference;->setText(I)V

    .line 125
    iput p1, p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->mValueRes:I

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method
