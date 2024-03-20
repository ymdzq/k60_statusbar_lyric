.class public Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "ScreenEnhanceEngineNotePreference.java"

# interfaces
.implements Lmiuix/preference/PreferenceExtraPadding;


# instance fields
.field private noteInfoString:Ljava/lang/String;

.field private noteInfoTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->noteInfoTextView:Landroid/widget/TextView;

    .line 17
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->noteInfoString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->noteInfoTextView:Landroid/widget/TextView;

    .line 17
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->noteInfoString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->noteInfoTextView:Landroid/widget/TextView;

    .line 17
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->noteInfoString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->noteInfoTextView:Landroid/widget/TextView;

    .line 17
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->noteInfoString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 45
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->noteInfoTextView:Landroid/widget/TextView;

    const-string/jumbo v0, "tnum"

    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->noteInfoString:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 48
    iget-object p0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->noteInfoTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onPreferenceExtraPadding(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 2

    .line 54
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->miuix_preference_item_padding_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    int-to-float p2, p2

    add-float/2addr p1, p2

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->miuix_preference_item_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v0, p2

    float-to-int p1, p1

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setNoteInfo(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->noteInfoString:Ljava/lang/String;

    .line 37
    iget-object p0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->noteInfoTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
