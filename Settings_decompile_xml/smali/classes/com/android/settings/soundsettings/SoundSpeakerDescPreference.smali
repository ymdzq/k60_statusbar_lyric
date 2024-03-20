.class public Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "SoundSpeakerDescPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconId:I

.field private mIsHarman:Z

.field private mSummary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->mIconId:I

    .line 18
    iput-boolean v0, p0, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->mIsHarman:Z

    .line 21
    invoke-direct {p0, p1}, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 17
    iput p2, p0, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->mIconId:I

    .line 18
    iput-boolean p2, p0, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->mIsHarman:Z

    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 17
    iput p2, p0, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->mIconId:I

    .line 18
    iput-boolean p2, p0, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->mIsHarman:Z

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 17
    iput p2, p0, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->mIconId:I

    .line 18
    iput-boolean p2, p0, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->mIsHarman:Z

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->mContext:Landroid/content/Context;

    .line 41
    sget p1, Lcom/android/settings/R$layout;->sound_speaker_desc_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 46
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 47
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 48
    sget v0, Lcom/android/settings/R$id;->speaker_summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    sget v1, Lcom/android/settings/R$id;->speaker_harman:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 50
    iget-object v2, p0, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->mSummary:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->mIsHarman:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    sget v0, Lcom/android/settings/R$id;->speaker_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 55
    iget v0, p0, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->mIconId:I

    if-eqz v0, :cond_2

    .line 56
    iget-object p0, p0, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setHarman(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->mIsHarman:Z

    .line 72
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->mIconId:I

    .line 62
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->mSummary:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
