.class public Lcom/android/settings/sound/VolumeSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "VolumeSeekBarPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLayout:Landroid/view/View;

.field private mSeekBarVolumizer:Lcom/android/settings/sound/SeekBarVolumizer;

.field private mStream:I

.field private mTrackingTouch:Z


# direct methods
.method public static synthetic $r8$lambda$WX6VHWlhTWsw0iFGbHvSAU3a_Vw(Lcom/android/settings/sound/VolumeSeekBarPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/sound/VolumeSeekBarPreference;->lambda$updateSeekBarDrawable$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/android/settings/sound/VolumeSeekBarPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/sound/VolumeSeekBarPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/android/settings/sound/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/sound/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->mStream:I

    const/16 p1, 0x438

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 54
    sget p1, Lcom/android/settings/R$layout;->preference_volume_seekbar:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private enableSeekBarNormalColor(Z)V
    .locals 2

    .line 206
    iget-object p0, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->mLayout:Landroid/view/View;

    if-nez p0, :cond_0

    return-void

    .line 209
    :cond_0
    sget v0, Lcom/android/settings/R$id;->seekbar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lmiuix/androidbasewidget/widget/SeekBar;

    if-nez p0, :cond_1

    return-void

    .line 213
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 214
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 217
    fill-array-data v0, :array_0

    .line 223
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d    # @android:id/progress

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p1, :cond_3

    .line 225
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0

    .line 227
    :cond_3
    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x0
    .end array-data
.end method

.method private initSeekBarDrawable()V
    .locals 6

    .line 180
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$SoundMode;->isSilenceModeOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 182
    invoke-direct {p0, v1}, Lcom/android/settings/sound/VolumeSeekBarPreference;->enableSeekBarNormalColor(Z)V

    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "ring_volume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "notification_volume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "media_volume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v1

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "voice_assist_volume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_3

    .line 197
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/settings/sound/VolumeSeekBarPreference;->enableSeekBarNormalColor(Z)V

    goto :goto_3

    .line 188
    :pswitch_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 189
    iget v2, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->mStream:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 190
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "mute_music_at_silent"

    const/4 v5, -0x3

    invoke-static {v2, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_5

    move v2, v1

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_1
    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v3

    .line 193
    :cond_7
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings/sound/VolumeSeekBarPreference;->enableSeekBarNormalColor(Z)V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5b12c29d -> :sswitch_3
        0xf0c8bd5 -> :sswitch_2
        0x4beb8cee -> :sswitch_1
        0x7212a409 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$updateSeekBarDrawable$0()V
    .locals 7

    .line 147
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$SoundMode;->isSilenceModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 149
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x3

    const-string/jumbo v3, "mute_music_at_silent"

    const/4 v4, 0x0

    .line 148
    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    .line 153
    :goto_0
    iget-object v3, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->mLayout:Landroid/view/View;

    if-nez v3, :cond_1

    return-void

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/sound/VolumeSeekBarPreference;->refreshIconState()V

    if-nez v0, :cond_2

    .line 158
    invoke-direct {p0, v2}, Lcom/android/settings/sound/VolumeSeekBarPreference;->enableSeekBarNormalColor(Z)V

    return-void

    .line 161
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v5, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v3, "ring_volume"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "notification_volume"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "media_volume"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move v5, v2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "voice_assist_volume"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move v5, v4

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 171
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/settings/sound/VolumeSeekBarPreference;->enableSeekBarNormalColor(Z)V

    goto :goto_2

    .line 164
    :pswitch_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 165
    iget v3, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->mStream:I

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 166
    sget-object v3, Lcom/android/settings/sound/VolumeSeekBarPreference;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSeekBarDrawable mediaVolume="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",mStream="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->mStream:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    move v4, v2

    .line 167
    :cond_8
    invoke-direct {p0, v4}, Lcom/android/settings/sound/VolumeSeekBarPreference;->enableSeekBarNormalColor(Z)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5b12c29d -> :sswitch_3
        0xf0c8bd5 -> :sswitch_2
        0x4beb8cee -> :sswitch_1
        0x7212a409 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getSeekBarVolumizer()Lcom/android/settings/sound/SeekBarVolumizer;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->mSeekBarVolumizer:Lcom/android/settings/sound/SeekBarVolumizer;

    return-object p0
.end method

.method public getStream()I
    .locals 0

    .line 101
    iget p0, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->mStream:I

    return p0
.end method

.method public hasIcon()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 69
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 70
    iput-object p1, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->mLayout:Landroid/view/View;

    .line 71
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isMiuiSdkSupportFolme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 74
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 75
    sget v0, Lcom/android/settings/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const v1, 0x1020006    # @android:id/icon

    .line 76
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/VolumeStreamStateView;

    .line 77
    iget v2, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->mStream:I

    invoke-virtual {v1, v2}, Lcom/android/settings/sound/VolumeStreamStateView;->setStream(I)V

    .line 78
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->mSeekBarVolumizer:Lcom/android/settings/sound/SeekBarVolumizer;

    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {v1, v0}, Lcom/android/settings/sound/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 85
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    new-instance v0, Lcom/android/settings/sound/VolumeSeekBarPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/VolumeSeekBarPreference$1;-><init>(Lcom/android/settings/sound/VolumeSeekBarPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/sound/VolumeSeekBarPreference;->initSeekBarDrawable()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    const/4 p1, 0x0

    .line 107
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    if-eqz p3, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/sound/VolumeSeekBarPreference;->updateSeekBarDrawable()V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->mTrackingTouch:Z

    return-void
.end method

.method public refreshIconState()V
    .locals 1

    .line 132
    iget-object p0, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->mLayout:Landroid/view/View;

    if-eqz p0, :cond_0

    const v0, 0x1020006    # @android:id/icon

    .line 133
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public setSeekBarVolumizer(Lcom/android/settings/sound/SeekBarVolumizer;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->mSeekBarVolumizer:Lcom/android/settings/sound/SeekBarVolumizer;

    return-void
.end method

.method public setStream(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->mStream:I

    return-void
.end method

.method public updateSeekBarDrawable()V
    .locals 1

    .line 146
    new-instance v0, Lcom/android/settings/sound/VolumeSeekBarPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/VolumeSeekBarPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/sound/VolumeSeekBarPreference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
