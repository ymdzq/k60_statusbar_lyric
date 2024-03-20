.class public Lcom/android/settings/widget/ImagePreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "ImagePreference.java"


# instance fields
.field private mContentClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mImageRes:I

.field private mSecondTitle:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContentClickListener(Lcom/android/settings/widget/ImagePreference;)Landroidx/preference/Preference$OnPreferenceClickListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/widget/ImagePreference;->mContentClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 24
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/settings/widget/ImagePreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/settings/widget/ImagePreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/ImagePreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/ImagePreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 44
    sget v0, Lcom/android/settings/R$layout;->preference_image_view:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 45
    sget-object v0, Lcom/android/settings/R$styleable;->ImagePreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 47
    sget p2, Lcom/android/settings/R$styleable;->ImagePreference_image:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/ImagePreference;->mImageRes:I

    .line 48
    sget p2, Lcom/android/settings/R$styleable;->ImagePreference_second_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/widget/ImagePreference;->mSecondTitle:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 7

    .line 54
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 55
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isMiuiSdkSupportFolme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 59
    iget v1, p0, Lcom/android/settings/widget/ImagePreference;->mImageRes:I

    if-eqz v1, :cond_1

    .line 60
    sget v1, Lcom/android/settings/R$id;->preference_image:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 61
    iget v2, p0, Lcom/android/settings/widget/ImagePreference;->mImageRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 64
    new-instance v1, Lcom/android/settings/widget/ImagePreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/ImagePreference$1;-><init>(Lcom/android/settings/widget/ImagePreference;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 73
    sget v1, Lcom/android/settings/R$id;->content:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 74
    sget v2, Lcom/android/settings/R$id;->arrow_right:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 75
    sget v3, Lcom/android/settings/R$id;->arrow_right_2:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 76
    sget v4, Lcom/android/settings/R$id;->second_title_container:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 77
    iget-object v4, p0, Lcom/android/settings/widget/ImagePreference;->mSecondTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    sget v5, Lcom/android/settings/R$id;->second_title:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/widget/ImagePreference;->mSecondTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_2
    iget-object v5, p0, Lcom/android/settings/widget/ImagePreference;->mContentClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    const/16 v6, 0x8

    if-eqz v5, :cond_6

    if-eqz v4, :cond_3

    .line 85
    new-instance v5, Lcom/android/settings/widget/ImagePreference$2;

    invoke-direct {v5, p0}, Lcom/android/settings/widget/ImagePreference$2;-><init>(Lcom/android/settings/widget/ImagePreference;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 93
    :cond_3
    new-instance v5, Lcom/android/settings/widget/ImagePreference$3;

    invoke-direct {v5, p0}, Lcom/android/settings/widget/ImagePreference$3;-><init>(Lcom/android/settings/widget/ImagePreference;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    if-eqz v4, :cond_4

    move p0, v6

    goto :goto_1

    :cond_4
    move p0, v0

    .line 101
    :goto_1
    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    move v0, v6

    .line 102
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 104
    :cond_6
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 106
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 107
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public setContentClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/settings/widget/ImagePreference;->mContentClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-void
.end method
