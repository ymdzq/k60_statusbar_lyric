.class public Lcom/android/settings/stylus/CustomColorTextPreference;
.super Lmiuix/preference/TextPreference;
.source "CustomColorTextPreference.java"


# instance fields
.field private isCustomColor:Z

.field private mItemView:Landroid/view/View;

.field private mShowRightArrow:Z

.field private mTextValueColor:Ljava/lang/String;

.field private mValueRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/android/settings/stylus/CustomColorTextPreference;->mShowRightArrow:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/settings/stylus/CustomColorTextPreference;->isCustomColor:Z

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/android/settings/stylus/CustomColorTextPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1, p2}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/android/settings/stylus/CustomColorTextPreference;->mShowRightArrow:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/settings/stylus/CustomColorTextPreference;->isCustomColor:Z

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/settings/stylus/CustomColorTextPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 32
    iput-boolean p3, p0, Lcom/android/settings/stylus/CustomColorTextPreference;->mShowRightArrow:Z

    .line 35
    iput-boolean p3, p0, Lcom/android/settings/stylus/CustomColorTextPreference;->isCustomColor:Z

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/stylus/CustomColorTextPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 78
    invoke-direct {p0, p1}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/settings/stylus/CustomColorTextPreference;->isCustomColor:Z

    .line 79
    iput-boolean p2, p0, Lcom/android/settings/stylus/CustomColorTextPreference;->mShowRightArrow:Z

    const/4 p2, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/settings/stylus/CustomColorTextPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 98
    sget-object v0, Lcom/android/settingslib/R$styleable;->ValuePreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 99
    sget p2, Lcom/android/settingslib/R$styleable;->ValuePreference_showRightArrow:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 101
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    iget p2, p2, Landroid/util/TypedValue;->data:I

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/stylus/CustomColorTextPreference;->mShowRightArrow:Z

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/stylus/CustomColorTextPreference;->mShowRightArrow:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 106
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    if-nez p1, :cond_3

    .line 107
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.settings.TEST_ARROW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/android/settings/stylus/CustomColorTextPreference;->mItemView:Landroid/view/View;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 230
    invoke-super {p0, p1}, Lmiuix/preference/TextPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 231
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/stylus/CustomColorTextPreference;->onBindView(Landroid/view/View;)V

    .line 232
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 233
    sget v0, Lcom/android/settingslib/R$id;->text_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 236
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/stylus/CustomColorTextPreference;->isCustomColor:Z

    if-eqz v1, :cond_0

    .line 237
    sget v1, Lcom/android/settingslib/R$style;->update_style:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 238
    sget v1, Lcom/android/settingslib/R$drawable;->stylus_update_bg:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 239
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settingslib/R$dimen;->stylus_update_padding_hor:I

    .line 240
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 241
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settingslib/R$dimen;->stylus_update_padding_ver:I

    .line 242
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 243
    invoke-virtual {p1, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v1, "#77000000"

    .line 246
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 249
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/stylus/CustomColorTextPreference;->mShowRightArrow:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 254
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    if-nez p1, :cond_2

    .line 255
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.TEST_ARROW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public performClick()V
    .locals 3

    .line 266
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
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

    .line 268
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 270
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    return-void
.end method

.method public setCustomEnable(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/android/settings/stylus/CustomColorTextPreference;->isCustomColor:Z

    return-void
.end method

.method public setTextValueColor(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/settings/stylus/CustomColorTextPreference;->mTextValueColor:Ljava/lang/String;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lmiuix/preference/TextPreference;->setText(I)V

    .line 127
    iput p1, p0, Lcom/android/settings/stylus/CustomColorTextPreference;->mValueRes:I

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method
