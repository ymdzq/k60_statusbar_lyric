.class public Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;
.super Lcom/android/settingslib/miuisettings/preference/PreferenceCategory;
.source "MiuiBleAudioDeviceFilterCategory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAnimationBg:Landroid/widget/ImageView;

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private final mLock:Ljava/lang/Object;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mRarelyPreferenceAdded:Z

.field private mRarelyUsedDeviceCount:I

.field private mRarelyUsedDevicePreference:Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;

.field private mRarelyUsedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mShowDevicesWithoutNames:Z

.field private mShowDivider:Z

.field private mStopRunnable:Ljava/lang/Runnable;

.field private mUsableDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mplayAnimationImmediately(Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->playAnimationImmediately()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopAnimationImmediately(Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->stopAnimationImmediately()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 31
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mShowDevicesWithoutNames:Z

    .line 32
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mShowDivider:Z

    .line 33
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mRarelyPreferenceAdded:Z

    .line 34
    iput p2, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mRarelyUsedDeviceCount:I

    .line 39
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mLock:Ljava/lang/Object;

    .line 46
    new-instance p3, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory$1;

    invoke-direct {p3, p0}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory$1;-><init>(Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;)V

    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 52
    new-instance p3, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory$2;

    invoke-direct {p3, p0}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory$2;-><init>(Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;)V

    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mStopRunnable:Ljava/lang/Runnable;

    .line 74
    sget p3, Lcom/android/settings/R$layout;->preference_bt_category_filter:I

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p3, "available_devices_category"

    .line 75
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 77
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mRarelyPreferenceAdded:Z

    .line 78
    new-instance p3, Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4, p2}, Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mRarelyUsedDevicePreference:Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;

    .line 79
    iput p2, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mRarelyUsedDeviceCount:I

    .line 80
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mUsableDevices:Ljava/util/List;

    .line 81
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mRarelyUsedDevices:Ljava/util/List;

    .line 82
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private playAnimationDelayed()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private playAnimationImmediately()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "MiuiBleAudioDeviceFilterCategory"

    const-string/jumbo v0, "playAnimationImmediately: callback is null"

    .line 252
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :goto_0
    return-void
.end method

.method private removeDevicePreferenceCategory(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mUsableDevices:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mUsableDevices:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mRarelyUsedDevices:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mRarelyUsedDevices:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 206
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setAlphaFolme(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 271
    :cond_0
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    sget-object v0, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    filled-new-array {v0}, [Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-interface {p0, v1, v0}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private stopAnimationDelayed()V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mStopRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopAnimationImmediately()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "MiuiBleAudioDeviceFilterCategory"

    const-string/jumbo v0, "stopAnimationImmediately: callback is null"

    .line 260
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addPreference(Landroidx/preference/Preference;)Z
    .locals 0

    .line 130
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 88
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 90
    sget v1, Lcom/android/settings/R$id;->divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 92
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mShowDivider:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 93
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 95
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_1
    :goto_0
    sget v1, Lcom/android/settings/R$id;->refresh_anim:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mImageView:Landroid/widget/ImageView;

    .line 100
    sget v1, Lcom/android/settings/R$id;->refresh_anim_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mAnimationBg:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mAnimationBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mAnimationBg:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->setAlphaFolme(Landroid/view/View;)V

    .line 113
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 119
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public playAnimation()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->playAnimationImmediately()V

    goto :goto_0

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->playAnimationDelayed()V

    :goto_0
    return-void
.end method

.method public removeAll()V
    .locals 2

    .line 145
    invoke-super {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 146
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 147
    :try_start_0
    iput v1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mRarelyUsedDeviceCount:I

    .line 148
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mRarelyPreferenceAdded:Z

    .line 149
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mUsableDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 150
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mRarelyUsedDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 151
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removePreference(Landroidx/preference/Preference;)Z
    .locals 1

    .line 136
    move-object v0, p1

    check-cast v0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    .line 137
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->removeDevicePreferenceCategory(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 140
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 236
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->stopAnimationDelayed()V

    return-void
.end method

.method updateRefreshUI(Z)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->playAnimation()V

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->stopAnimation()V

    :cond_1
    :goto_0
    return-void
.end method
