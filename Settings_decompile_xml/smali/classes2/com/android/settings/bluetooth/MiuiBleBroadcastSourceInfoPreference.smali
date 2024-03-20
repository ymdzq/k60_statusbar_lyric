.class public Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "MiuiBleBroadcastSourceInfoPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$DeviceCallBack;,
        Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$PreferenceDetailClickListener;,
        Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$SortType;
    }
.end annotation


# static fields
.field private static sDimAlpha:I = -0x80000000


# instance fields
.field private UPDATE:I

.field private mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mCallBack:Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$DeviceCallBack;

.field mHandler:Landroid/os/Handler;

.field private mHelper:Lmiuix/preference/ConnectPreferenceHelper;

.field private mIsSourceConfiged:Z

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mOnPreferenceDetailClickListener:Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$PreferenceDetailClickListener;

.field mResources:Landroid/content/res/Resources;

.field private mSyncState:I

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetUPDATE(Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->UPDATE:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BleBroadcastSourceInfo;)V
    .locals 2

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    .line 118
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->UPDATE:I

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mIsSourceConfiged:Z

    .line 124
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mSyncState:I

    .line 275
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$1;-><init>(Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mHandler:Landroid/os/Handler;

    .line 137
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 138
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-string v1, "MiuiBleBroadcastSourceInfoPreference"

    if-nez v0, :cond_0

    const-string p0, " mLocalBluetoothManager is null"

    .line 140
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 144
    :cond_0
    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    if-eqz p2, :cond_1

    .line 145
    invoke-virtual {p2}, Landroid/bluetooth/BleBroadcastSourceInfo;->isEmptyEntry()Z

    move-result p2

    if-nez p2, :cond_1

    .line 146
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {p2}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p2, :cond_2

    .line 148
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    goto :goto_0

    :cond_1
    const-string p2, " mBleBroadcastSourceInfo is null or empty"

    .line 151
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 358
    instance-of v0, p1, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;

    if-nez v0, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    check-cast p1, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;

    iget-object p1, p1, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBleBroadcastSourceInfo()Landroid/bluetooth/BleBroadcastSourceInfo;
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    return-object p0
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastSourceInfo;->hashCode()I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    .line 158
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mResources:Landroid/content/res/Resources;

    .line 159
    sget v0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->sDimAlpha:I

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 160
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v3, 0x1010033    # @android:attr/disabledAlpha

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 162
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->sDimAlpha:I

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 166
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$DeviceCallBack;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$DeviceCallBack;-><init>(Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mCallBack:Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$DeviceCallBack;

    .line 167
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 170
    :cond_1
    sget v0, Lcom/android/settings/R$layout;->miuix_preference_connect_widget_layout:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 171
    sget v0, Lcom/android/settings/R$layout;->preference_bt_icon_corner:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 172
    new-instance v0, Lmiuix/preference/ConnectPreferenceHelper;

    invoke-direct {v0, p1, p0}, Lmiuix/preference/ConnectPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    .line 174
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->isSynchronized(Landroid/bluetooth/BleBroadcastSourceInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 175
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-virtual {p1, v2}, Lmiuix/preference/ConnectPreferenceHelper;->setConnectState(I)V

    const/4 p1, -0x1

    .line 176
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/preference/ConnectPreferenceHelper;->setConnectState(I)V

    .line 179
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    :goto_0
    const-string p1, "MiuiBleBroadcastSourceInfoPreference"

    const-string v0, "init"

    .line 182
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->updateAttributes()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 8

    .line 293
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 294
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 295
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mView:Landroid/view/View;

    .line 296
    sget v1, Lcom/android/settings/R$id;->preference_detail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_0
    const v1, 0x1020006    # @android:id/icon

    .line 304
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 307
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 309
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->bt_icon_elevation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 308
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setElevation(F)V

    .line 313
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 315
    sget v2, Lcom/android/settings/R$id;->view_corner:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 316
    sget v3, Lcom/android/settings/R$id;->view_high_light_root:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 319
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$dimen;->preference_bt_custom_margin_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 321
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$dimen;->preference_bt_custom_margin_bottom:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 318
    invoke-virtual {v1, v4, v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 322
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->preference_bt_custom_padding_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 323
    invoke-virtual {v3, v1, v4, v4, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 327
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->preference_bt_custom_margin_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 329
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/android/settings/R$dimen;->preference_bt_custom_margin_end:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 326
    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 333
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->miuix_preference_item_padding_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 335
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/android/settings/R$dimen;->miuix_preference_item_padding_end:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 332
    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 338
    :goto_0
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    const-string/jumbo v0, "onBindViewHolder 0000"

    const-string v1, "MiuiBleBroadcastSourceInfoPreference"

    .line 340
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    const-string/jumbo v0, "onBindViewHolder 1111"

    .line 342
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "onBindViewHolder 2222"

    .line 344
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-virtual {v0, p1, v3}, Lmiuix/preference/ConnectPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    .line 349
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->isSynchronized(Landroid/bluetooth/BleBroadcastSourceInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 350
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->setConnectState(I)V

    goto :goto_1

    .line 352
    :cond_4
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-virtual {p0, v4}, Lmiuix/preference/ConnectPreferenceHelper;->setConnectState(I)V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 397
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mOnPreferenceDetailClickListener:Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$PreferenceDetailClickListener;

    if-eqz p1, :cond_0

    .line 398
    invoke-interface {p1, p0}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$PreferenceDetailClickListener;->onPreferenceDetailClickListener(Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;)V

    const-string p0, "MiuiBleBroadcastSourceInfoPreference"

    const-string p1, "device detail info clicked !"

    .line 399
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->UPDATE:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->UPDATE:I

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .line 250
    invoke-super {p0}, Landroidx/preference/Preference;->onPrepareForRemoval()V

    const-string p0, "MiuiBleBroadcastSourceInfoPreference"

    const-string/jumbo v0, "onPrepareForRemoval"

    .line 251
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnPreferenceDetailClickListener(Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$PreferenceDetailClickListener;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mOnPreferenceDetailClickListener:Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$PreferenceDetailClickListener;

    return-void
.end method

.method public updateAttributes()V
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    const-string v1, "MiuiBleBroadcastSourceInfoPreference"

    if-nez v0, :cond_0

    const-string/jumbo p0, "updateAttributes mBleBroadcastSourceInfo is null return"

    .line 191
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 195
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->isEmptyEntry()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Empty Source Info"

    .line 197
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 201
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 205
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 206
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 207
    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 209
    :cond_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 210
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 211
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 213
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 216
    :cond_5
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    :cond_6
    :goto_0
    iget v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mSyncState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    .line 224
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->isSynchronized(Landroid/bluetooth/BleBroadcastSourceInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 225
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_synchronized:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiuix/preference/ConnectPreferenceHelper;->setConnectState(I)V

    const/4 v0, -0x1

    .line 227
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_1

    .line 229
    :cond_7
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_not_synchronize:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiuix/preference/ConnectPreferenceHelper;->setConnectState(I)V

    .line 231
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_1

    .line 235
    :cond_8
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_synchronizing:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    iget v2, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mSyncState:I

    invoke-virtual {v0, v2}, Lmiuix/preference/ConnectPreferenceHelper;->setConnectState(I)V

    .line 238
    :goto_1
    sget v0, Lcom/android/settings/R$drawable;->ic_bt_broadcast_icon:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(I)V

    const-string/jumbo p0, "updateAttributes end"

    .line 239
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateBleBroadcastSourceInfo(Landroid/bluetooth/BleBroadcastSourceInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 380
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->updateAttributes()V

    :cond_0
    return-void
.end method

.method public updateUiState(I)V
    .locals 0

    .line 386
    iput p1, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->mSyncState:I

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->updateAttributes()V

    return-void
.end method
