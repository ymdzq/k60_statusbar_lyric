.class public Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;
.super Lcom/android/settingslib/miuisettings/preference/PreferenceCategory;
.source "MiuiBluetoothAudioDeviceFilterCategory.java"

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
.method static bridge synthetic -$$Nest$mplayAnimationImmediately(Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->playAnimationImmediately()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopAnimationImmediately(Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->stopAnimationImmediately()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 30
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mShowDevicesWithoutNames:Z

    .line 31
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mShowDivider:Z

    .line 32
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mRarelyPreferenceAdded:Z

    .line 33
    iput p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mRarelyUsedDeviceCount:I

    .line 38
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mLock:Ljava/lang/Object;

    .line 45
    new-instance p3, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory$1;

    invoke-direct {p3, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory$1;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;)V

    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 51
    new-instance p3, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory$2;

    invoke-direct {p3, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory$2;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;)V

    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mStopRunnable:Ljava/lang/Runnable;

    .line 73
    sget p3, Lcom/android/settings/R$layout;->preference_bt_category_filter:I

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p3, "available_devices_category"

    .line 74
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 76
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mRarelyPreferenceAdded:Z

    .line 77
    new-instance p3, Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4, p2}, Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mRarelyUsedDevicePreference:Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;

    .line 78
    iput p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mRarelyUsedDeviceCount:I

    .line 79
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mUsableDevices:Ljava/util/List;

    .line 80
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mRarelyUsedDevices:Ljava/util/List;

    .line 81
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private playAnimationDelayed()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private playAnimationImmediately()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "MiuiBluetoothAudioDeviceFilterCategory"

    const-string/jumbo v0, "playAnimationImmediately: callback is null"

    .line 251
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :goto_0
    return-void
.end method

.method private setAlphaFolme(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 270
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

    .line 245
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mStopRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopAnimationImmediately()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "MiuiBluetoothAudioDeviceFilterCategory"

    const-string/jumbo v0, "stopAnimationImmediately: callback is null"

    .line 259
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addPreference(Landroidx/preference/Preference;)Z
    .locals 0

    .line 129
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

    .line 87
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 89
    sget v1, Lcom/android/settings/R$id;->divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 91
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mShowDivider:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 92
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :cond_1
    :goto_0
    sget v1, Lcom/android/settings/R$id;->refresh_anim:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mImageView:Landroid/widget/ImageView;

    .line 99
    sget v1, Lcom/android/settings/R$id;->refresh_anim_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mAnimationBg:Landroid/widget/ImageView;

    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mAnimationBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 106
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mAnimationBg:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->setAlphaFolme(Landroid/view/View;)V

    .line 112
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 118
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public playAnimation()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->playAnimationImmediately()V

    goto :goto_0

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->playAnimationDelayed()V

    :goto_0
    return-void
.end method

.method public removeAll()V
    .locals 2

    .line 144
    invoke-super {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 145
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 146
    :try_start_0
    iput v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mRarelyUsedDeviceCount:I

    .line 147
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mRarelyPreferenceAdded:Z

    .line 148
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mUsableDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 149
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mRarelyUsedDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 150
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
    .locals 0

    .line 139
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->stopAnimationDelayed()V

    return-void
.end method

.method updateRefreshUI(Z)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->playAnimation()V

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->stopAnimation()V

    :cond_1
    :goto_0
    return-void
.end method
