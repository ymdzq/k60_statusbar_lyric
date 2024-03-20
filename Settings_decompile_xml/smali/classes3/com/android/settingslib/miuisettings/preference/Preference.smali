.class public Lcom/android/settingslib/miuisettings/preference/Preference;
.super Landroidx/preference/Preference;
.source "Preference.java"

# interfaces
.implements Lcom/android/settingslib/miuisettings/preference/PreferenceApiDiff;


# instance fields
.field private mDelegate:Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;

.field private mForceRightArrow:Z

.field private mShowRightArrow:Z

.field private mTitleRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mForceRightArrow:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mShowRightArrow:Z

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/miuisettings/preference/Preference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mForceRightArrow:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mShowRightArrow:Z

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 21
    iput-boolean p3, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mForceRightArrow:Z

    .line 22
    iput-boolean p3, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mShowRightArrow:Z

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mForceRightArrow:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mShowRightArrow:Z

    .line 60
    sget-object v1, Lcom/android/settingslib/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 62
    sget p4, Lcom/android/settingslib/R$styleable;->Preference_title:I

    sget v1, Lcom/android/settingslib/R$styleable;->Preference_android_title:I

    invoke-static {p3, p4, v1, v0}, Lcom/android/settingslib/miuisettings/preference/Preference;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result p4

    iput p4, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mTitleRes:I

    .line 64
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V
    .locals 2

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mForceRightArrow:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mShowRightArrow:Z

    .line 72
    sget-object v1, Lcom/android/settingslib/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 74
    sget p4, Lcom/android/settingslib/R$styleable;->Preference_title:I

    sget v1, Lcom/android/settingslib/R$styleable;->Preference_android_title:I

    invoke-static {p3, p4, v1, v0}, Lcom/android/settingslib/miuisettings/preference/Preference;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result p4

    iput p4, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mTitleRes:I

    .line 76
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    iput-boolean p5, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mShowRightArrow:Z

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 21
    iput-boolean p3, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mForceRightArrow:Z

    .line 53
    iput-boolean p4, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mShowRightArrow:Z

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mForceRightArrow:Z

    .line 42
    iput-boolean p3, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mShowRightArrow:Z

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mForceRightArrow:Z

    .line 31
    iput-boolean p2, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mShowRightArrow:Z

    const/4 p2, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static getResourceId(Landroid/content/res/TypedArray;III)I
    .locals 0

    .line 93
    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 94
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    return p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const-string v1, "http://schemas.android.com/apk/miuisettings"

    const-string/jumbo v2, "showIcon"

    .line 100
    invoke-interface {p2, v1, v2, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 102
    sget-object v2, Lcom/android/settingslib/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 103
    sget p2, Lcom/android/settingslib/R$styleable;->Preference_showRightArrow:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 105
    iget p2, p1, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x12

    if-ne p2, v2, :cond_0

    iget p1, p1, Landroid/util/TypedValue;->data:I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mShowRightArrow:Z

    :cond_1
    move v0, v1

    .line 108
    :cond_2
    iget-boolean p1, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mShowRightArrow:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 109
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    if-nez p1, :cond_3

    .line 110
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.settings.TEST_ARROW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 113
    :cond_3
    new-instance p1, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;

    invoke-direct {p1, p0, p0, v0}, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;-><init>(Landroidx/preference/Preference;Lcom/android/settingslib/miuisettings/preference/PreferenceApiDiff;Z)V

    iput-object p1, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mDelegate:Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;

    const/4 p1, 0x0

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getTitleRes()I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mTitleRes:I

    return p0
.end method

.method public onAttached()V
    .locals 0

    .line 0
    return-void
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    .line 130
    iget-object p0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mDelegate:Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mDelegate:Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->onBindViewStart(Landroid/view/View;)V

    .line 143
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 144
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mDelegate:Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->onBindViewEnd(Landroid/view/View;)V

    .line 145
    iget-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mShowRightArrow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.TEST_ARROW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 150
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settingslib/R$id;->arrow_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 151
    iget-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mForceRightArrow:Z

    if-eqz v0, :cond_2

    .line 152
    iget-boolean p0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mShowRightArrow:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onDetached()V
    .locals 0

    .line 0
    return-void
.end method

.method public onFragmentBindPreference(Landroid/widget/ListView;)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mDelegate:Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->onFragmentBindPreference(Landroid/widget/ListView;)V

    return-void
.end method

.method public performClick()V
    .locals 3

    .line 168
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
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

    .line 170
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 172
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    return-void
.end method

.method public setShowRightArrow(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mForceRightArrow:Z

    .line 158
    iput-boolean p1, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mShowRightArrow:Z

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 83
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    iput p1, p0, Lcom/android/settingslib/miuisettings/preference/Preference;->mTitleRes:I

    return-void
.end method
