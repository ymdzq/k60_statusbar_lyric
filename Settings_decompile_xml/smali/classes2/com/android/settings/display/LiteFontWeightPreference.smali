.class public Lcom/android/settings/display/LiteFontWeightPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "LiteFontWeightPreference.java"

# interfaces
.implements Lmiuix/preference/FolmeAnimationController;


# instance fields
.field private listener:Lcom/android/settings/display/FontWeightAdjustView$FontWeightChangeListener;

.field private mSizeSeekbar:Lcom/android/settings/display/FontWeightAdjustView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/LiteFontWeightPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/LiteFontWeightPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    sget p1, Lcom/android/settings/R$layout;->lite_font_weight_pref_lyt:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public isTouchAnimationEnable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 47
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isMiuiSdkSupportFolme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51
    sget v0, Lcom/android/settings/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/FontWeightAdjustView;

    iput-object p1, p0, Lcom/android/settings/display/LiteFontWeightPreference;->mSizeSeekbar:Lcom/android/settings/display/FontWeightAdjustView;

    .line 52
    iget-object p0, p0, Lcom/android/settings/display/LiteFontWeightPreference;->listener:Lcom/android/settings/display/FontWeightAdjustView$FontWeightChangeListener;

    invoke-virtual {p1, p0}, Lcom/android/settings/display/FontWeightAdjustView;->setFontWeightChangeListener(Lcom/android/settings/display/FontWeightAdjustView$FontWeightChangeListener;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/settings/display/LiteFontWeightPreference;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/display/LiteFontWeightPreference;->mView:Landroid/view/View;

    .line 41
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 62
    iget-object p0, p0, Lcom/android/settings/display/LiteFontWeightPreference;->mView:Landroid/view/View;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p1, 0x3e99999a    # 0.3f

    .line 63
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
