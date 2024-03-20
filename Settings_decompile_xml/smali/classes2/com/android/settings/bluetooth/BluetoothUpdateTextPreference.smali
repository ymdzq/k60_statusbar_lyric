.class public Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;
.super Lmiuix/preference/TextPreference;
.source "BluetoothUpdateTextPreference.java"


# instance fields
.field private isCustomColor:Z

.field private mBackgroundColor:Ljava/lang/String;

.field private mItemView:Landroid/view/View;

.field private mShowRightArrow:Z

.field private mTextValueColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 88
    invoke-direct {p0, p1}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->mShowRightArrow:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->isCustomColor:Z

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1, p2}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->mShowRightArrow:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->isCustomColor:Z

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 31
    iput-boolean p3, p0, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->mShowRightArrow:Z

    .line 34
    iput-boolean p3, p0, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->isCustomColor:Z

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->isCustomColor:Z

    .line 78
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->mShowRightArrow:Z

    const/4 p2, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 94
    sget-object v0, Lcom/android/settingslib/R$styleable;->ValuePreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 95
    sget p2, Lcom/android/settingslib/R$styleable;->ValuePreference_showRightArrow:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 97
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
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->mShowRightArrow:Z

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->mShowRightArrow:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 102
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    if-nez p1, :cond_3

    .line 103
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.settings.TEST_ARROW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->mItemView:Landroid/view/View;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 226
    invoke-super {p0, p1}, Lmiuix/preference/TextPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 227
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->onBindView(Landroid/view/View;)V

    .line 228
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 229
    sget v0, Lcom/android/settingslib/R$id;->text_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const-string v0, "#0D84FF"

    .line 231
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_version_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->mTextValueColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->mTextValueColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->mBackgroundColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->mBackgroundColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 243
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;->mShowRightArrow:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 246
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    if-nez p1, :cond_3

    .line 247
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.TEST_ARROW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public performClick()V
    .locals 3

    .line 258
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
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

    .line 260
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 262
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    return-void
.end method
