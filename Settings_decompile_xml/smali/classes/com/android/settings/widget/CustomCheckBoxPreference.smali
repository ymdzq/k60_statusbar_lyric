.class public Lcom/android/settings/widget/CustomCheckBoxPreference;
.super Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;
.source "CustomCheckBoxPreference.java"


# instance fields
.field mCheckboxView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mIsDialogStyle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/android/settings/widget/CustomCheckBoxPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object p1, p0, Lcom/android/settings/widget/CustomCheckBoxPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object p1, p0, Lcom/android/settings/widget/CustomCheckBoxPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    iput-object p1, p0, Lcom/android/settings/widget/CustomCheckBoxPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setDialogStyleBackground(Landroid/view/View;)V
    .locals 4

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 71
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 73
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->miuix_appcompat_dialog_bg_color_dark:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/widget/CustomCheckBoxPreference;->mCheckboxView:Landroid/view/View;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 45
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settings/widget/CustomCheckBoxPreference;->mCheckboxView:Landroid/view/View;

    .line 46
    iget-boolean v0, p0, Lcom/android/settings/widget/CustomCheckBoxPreference;->mIsDialogStyle:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/widget/CustomCheckBoxPreference;->setDialogStyleBackground(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public requestFocusDelay()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/android/settings/widget/CustomCheckBoxPreference;->mCheckboxView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 57
    new-instance v1, Lcom/android/settings/widget/CustomCheckBoxPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/CustomCheckBoxPreference$1;-><init>(Lcom/android/settings/widget/CustomCheckBoxPreference;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setIsDialogStyle(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/android/settings/widget/CustomCheckBoxPreference;->mIsDialogStyle:Z

    return-void
.end method
