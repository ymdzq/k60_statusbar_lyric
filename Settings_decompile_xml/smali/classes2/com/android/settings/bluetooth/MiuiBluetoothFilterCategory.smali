.class public Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;
.super Lcom/android/settingslib/miuisettings/preference/PreferenceCategory;
.source "MiuiBluetoothFilterCategory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lmiuix/preference/PreferenceExtraPadding;


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
.method static bridge synthetic -$$Nest$mplayAnimationImmediately(Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->playAnimationImmediately()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopAnimationImmediately(Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->stopAnimationImmediately()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 34
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mShowDevicesWithoutNames:Z

    .line 35
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mShowDivider:Z

    .line 36
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyPreferenceAdded:Z

    .line 37
    iput p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyUsedDeviceCount:I

    .line 42
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mLock:Ljava/lang/Object;

    .line 49
    new-instance p3, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory$1;

    invoke-direct {p3, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory$1;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;)V

    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 55
    new-instance p3, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory$2;

    invoke-direct {p3, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory$2;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;)V

    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mStopRunnable:Ljava/lang/Runnable;

    .line 77
    sget p3, Lcom/android/settings/R$layout;->preference_bt_category_filter:I

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p3, "available_devices_category"

    .line 78
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 80
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyPreferenceAdded:Z

    .line 81
    new-instance p3, Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4, p2}, Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyUsedDevicePreference:Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;

    .line 82
    iput p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyUsedDeviceCount:I

    .line 83
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mUsableDevices:Ljava/util/List;

    .line 84
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyUsedDevices:Ljava/util/List;

    .line 85
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private playAnimationDelayed()V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private playAnimationImmediately()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "MiuiBluetoothFilterCate"

    const-string/jumbo v0, "playAnimationImmediately: callback is null"

    .line 263
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :goto_0
    return-void
.end method

.method private removeDevicePreferenceCategory(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mUsableDevices:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mUsableDevices:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyUsedDevices:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyUsedDevices:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 217
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
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 282
    :cond_0
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    filled-new-array {v1}, [Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    invoke-interface {v0, v2, v1}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p1, p0, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private stopAnimationDelayed()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mStopRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopAnimationImmediately()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "MiuiBluetoothFilterCate"

    const-string/jumbo v0, "stopAnimationImmediately: callback is null"

    .line 271
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addDeviceCache(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyUsedDevices:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mShowDevicesWithoutNames:Z

    .line 199
    invoke-static {v1, p1}, Lcom/android/settings/bluetooth/MiuiBTUtils;->isVisibleDevice(ZLcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyUsedDevices:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->updateRarelyUsedDevicePreference()V

    .line 202
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mUsableDevices:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mUsableDevices:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addPreference(Landroidx/preference/Preference;)Z
    .locals 1

    .line 139
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

    .line 90
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 92
    sget v1, Lcom/android/settings/R$id;->divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 94
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mShowDivider:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 95
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 97
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_1
    :goto_0
    sget v1, Lcom/android/settings/R$id;->refresh_anim:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mImageView:Landroid/widget/ImageView;

    .line 102
    sget v1, Lcom/android/settings/R$id;->refresh_anim_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mAnimationBg:Landroid/widget/ImageView;

    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 106
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mAnimationBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 109
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mAnimationBg:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->setAlphaFolme(Landroid/view/View;)V

    .line 115
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 128
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onPreferenceExtraPadding(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 3

    .line 120
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->miuix_preference_item_padding_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    int-to-float p2, p2

    add-float/2addr v0, p2

    .line 121
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->miuix_preference_item_padding_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v1, p2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x416e6666    # 14.9f

    invoke-static {p0, p2}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 122
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    float-to-int p1, v0

    const/4 p2, 0x0

    float-to-int v0, v1

    invoke-virtual {p0, p1, p2, v0, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public playAnimation()V
    .locals 0

    .line 238
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->playAnimationDelayed()V

    return-void
.end method

.method public removeAll()V
    .locals 2

    .line 154
    invoke-super {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 155
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 156
    :try_start_0
    iput v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyUsedDeviceCount:I

    .line 157
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyPreferenceAdded:Z

    .line 158
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mUsableDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 159
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyUsedDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 160
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

    .line 144
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v0, :cond_0

    .line 145
    move-object v0, p1

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 146
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 147
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->removeDevicePreferenceCategory(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 149
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method setCount(I)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyUsedDevicePreference:Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set rarely used Device Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBluetoothFilterCate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyUsedDevicePreference:Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;->setDeviceCount(I)V

    :cond_0
    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method setShowDevicesWithoutNames(Z)V
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setShowDevicesWithoutNames = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBluetoothFilterCate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mShowDevicesWithoutNames:Z

    return-void
.end method

.method setShowDivider(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mShowDivider:Z

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 247
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->stopAnimationDelayed()V

    return-void
.end method

.method updateRarelyUsedDevicePreference()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyUsedDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 182
    iget v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyUsedDeviceCount:I

    if-eq v2, v1, :cond_1

    .line 183
    iput v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyUsedDeviceCount:I

    .line 184
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyPreferenceAdded:Z

    if-nez v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyUsedDevicePreference:Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;

    invoke-super {p0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const/4 v2, 0x1

    .line 186
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyPreferenceAdded:Z

    .line 188
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyUsedDevicePreference:Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;->setDeviceCount(I)V

    goto :goto_0

    .line 189
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyPreferenceAdded:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyUsedDeviceCount:I

    if-nez v1, :cond_3

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyUsedDevicePreference:Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;

    invoke-super {p0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v1, 0x0

    .line 191
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mRarelyPreferenceAdded:Z

    .line 193
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method updateRefreshUI(Z)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->playAnimation()V

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->stopAnimation()V

    :cond_1
    :goto_0
    return-void
.end method
