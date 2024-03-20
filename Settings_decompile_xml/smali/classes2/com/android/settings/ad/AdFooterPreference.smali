.class public Lcom/android/settings/ad/AdFooterPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "AdFooterPreference.java"


# instance fields
.field private final mFragment:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFragment(Lcom/android/settings/ad/AdFooterPreference;)Landroidx/preference/PreferenceFragmentCompat;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ad/AdFooterPreference;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    return-object p0
.end method

.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p1, p0, Lcom/android/settings/ad/AdFooterPreference;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 42
    invoke-direct {p0}, Lcom/android/settings/ad/AdFooterPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const-string v0, "footer_preference"

    .line 66
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const v0, 0x7ffffffe

    .line 67
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 68
    sget v0, Lcom/android/settingslib/R$layout;->ad_service_instructions_layout:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 70
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 48
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settingslib/R$id;->ad_service_instructions_link_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 49
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settingslib/R$string;->about_ad_service_instructions_for_global:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settingslib/R$string;->about_ad_service_instructions:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 50
    new-instance v0, Lcom/android/settings/ad/AdFooterPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ad/AdFooterPreference$1;-><init>(Lcom/android/settings/ad/AdFooterPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
