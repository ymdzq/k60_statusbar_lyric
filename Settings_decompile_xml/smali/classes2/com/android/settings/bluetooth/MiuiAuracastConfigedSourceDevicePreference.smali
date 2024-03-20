.class public Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "MiuiAuracastConfigedSourceDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$DeviceCallBack;,
        Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$PreferenceDetailClickListener;,
        Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$SortType;
    }
.end annotation


# static fields
.field private static sDimAlpha:I = -0x80000000


# instance fields
.field private UPDATE:I

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBroadcastId:I

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mCallBack:Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$DeviceCallBack;

.field mHandler:Landroid/os/Handler;

.field private mHelper:Lmiuix/preference/ConnectPreferenceHelper;

.field private mInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSourceConfiged:Z

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mOnPreferenceDetailClickListener:Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$PreferenceDetailClickListener;

.field mResources:Landroid/content/res/Resources;

.field private mSyncState:I

.field private mText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private textVal:I


# direct methods
.method static bridge synthetic -$$Nest$fgetUPDATE(Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->UPDATE:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mInfoMap:Ljava/util/HashMap;

    const/16 v0, 0x64

    .line 84
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->UPDATE:I

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mIsSourceConfiged:Z

    .line 91
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mSyncState:I

    .line 92
    sget v0, Lcom/android/settings/R$string;->bluetooth_auracast_assist_leave_broadcast:I

    iput v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->textVal:I

    .line 251
    new-instance v0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$1;-><init>(Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mHandler:Landroid/os/Handler;

    .line 101
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 102
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-string v1, "MiuiAuracastConfigedSourceDevicePreference"

    if-nez v0, :cond_0

    const-string p0, " mLocalBluetoothManager is null"

    .line 104
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 109
    invoke-static {p3}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->isEmptyEntry(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {p3}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getSourceDevice(Ljava/lang/Object;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 112
    invoke-static {p3}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getBroadcasterId(Ljava/lang/Object;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBroadcastId:I

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBroadcastId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p2, :cond_2

    .line 115
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    goto :goto_0

    :cond_1
    const-string p2, " mBleBroadcastSource is null or empty"

    .line 118
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 340
    instance-of v1, p1, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;

    if-nez v1, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "equals call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiAuracastConfigedSourceDevicePreference"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;

    iget-object v2, p1, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBroadcastId:I

    iget p1, p1, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBroadcastId:I

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getBleBroadcastSourceInfo()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 357
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mInfoMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method getmBroadcastId()I
    .locals 0

    .line 348
    iget p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBroadcastId:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 353
    iget v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBroadcastId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    .line 125
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mResources:Landroid/content/res/Resources;

    .line 126
    sget v0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->sDimAlpha:I

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v3, 0x1010033    # @android:attr/disabledAlpha

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 129
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->sDimAlpha:I

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 133
    new-instance v0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$DeviceCallBack;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$DeviceCallBack;-><init>(Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mCallBack:Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$DeviceCallBack;

    .line 134
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 137
    :cond_1
    sget v0, Lcom/android/settings/R$layout;->miuix_preference_widget_text:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 138
    sget v0, Lcom/android/settings/R$layout;->preference_bt_icon_corner:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 139
    new-instance v0, Lmiuix/preference/ConnectPreferenceHelper;

    invoke-direct {v0, p1, p0}, Lmiuix/preference/ConnectPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    .line 140
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->hasSynchronizedInfo(Ljava/util/Collection;)Z

    move-result p1

    const-string v0, "MiuiAuracastConfigedSourceDevicePreference"

    if-eqz p1, :cond_2

    const-string p1, "listen music"

    .line 142
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 143
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "wait, no music"

    .line 146
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    :goto_0
    const-string p1, "init"

    .line 150
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->updateAttributes()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 269
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 270
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 271
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mView:Landroid/view/View;

    .line 272
    sget v1, Lcom/android/settings/R$id;->text_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 277
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mText:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->bluetooth_auracast_assist_leave_broadcast:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 278
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mText:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$style;->update_style:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 279
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mText:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$drawable;->stylus_update_bg_stop:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 280
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mText:Landroid/widget/TextView;

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->stylus_update_padding_hor:I

    .line 282
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 283
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->stylus_update_padding_ver:I

    .line 284
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 285
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mText:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    const v1, 0x1020006    # @android:id/icon

    .line 289
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 292
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 294
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->bt_icon_elevation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 293
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setElevation(F)V

    .line 298
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 300
    sget v2, Lcom/android/settings/R$id;->view_corner:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 301
    sget v3, Lcom/android/settings/R$id;->view_high_light_root:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 303
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 304
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 307
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->miuix_preference_item_padding_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 309
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/android/settings/R$dimen;->miuix_preference_item_padding_end:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 306
    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 313
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->miuix_preference_item_padding_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 315
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/android/settings/R$dimen;->miuix_preference_item_padding_end:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 312
    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 318
    :goto_0
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    const-string/jumbo p1, "onBindViewHolder 0000"

    const-string v0, "MiuiAuracastConfigedSourceDevicePreference"

    .line 320
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    const-string/jumbo p1, "onBindViewHolder 1111"

    .line 322
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    if-eqz p1, :cond_3

    const-string/jumbo p1, "onBindViewHolder 2222"

    .line 324
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_3
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->hasSynchronizedInfo(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, " listen music"

    .line 331
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string p0, " wait music"

    .line 333
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 379
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mOnPreferenceDetailClickListener:Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$PreferenceDetailClickListener;

    if-eqz p1, :cond_0

    .line 380
    invoke-interface {p1, p0}, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$PreferenceDetailClickListener;->onPreferenceDetailClickListener(Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;)V

    const-string p0, "MiuiAuracastConfigedSourceDevicePreference"

    const-string p1, "device detail info clicked !"

    .line 381
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->UPDATE:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->UPDATE:I

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .line 229
    invoke-super {p0}, Landroidx/preference/Preference;->onPrepareForRemoval()V

    const-string p0, "MiuiAuracastConfigedSourceDevicePreference"

    const-string/jumbo v0, "onPrepareForRemoval"

    .line 230
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnPreferenceDetailClickListener(Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$PreferenceDetailClickListener;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mOnPreferenceDetailClickListener:Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$PreferenceDetailClickListener;

    return-void
.end method

.method public updateAttributes()V
    .locals 6

    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const-string v1, "MiuiAuracastConfigedSourceDevicePreference"

    if-nez v0, :cond_0

    const-string/jumbo p0, "updateAttributes mBleBroadcastSource is null return"

    .line 157
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 162
    invoke-static {v2}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->isEmptyEntry(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    const-string v0, "Empty Source Info"

    .line 169
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_8

    .line 173
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 177
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 178
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 179
    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 181
    :cond_5
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 182
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 183
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 185
    :cond_6
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 188
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    const-string/jumbo v0, "set text"

    .line 194
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mText:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->bluetooth_auracast_assist_leave_broadcast:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 198
    :cond_9
    iget v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mSyncState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    .line 199
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->hasSynchronizedInfo(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 200
    sget-boolean v0, Lcom/android/settings/bluetooth/AuracastSourceUtils;->isTestUI:Z

    if-eqz v0, :cond_a

    .line 201
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_synchronized:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_a
    const/4 v0, -0x1

    .line 203
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_2

    .line 205
    :cond_b
    sget-boolean v0, Lcom/android/settings/bluetooth/AuracastSourceUtils;->isTestUI:Z

    if-eqz v0, :cond_c

    .line 206
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_not_synchronize:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 208
    :cond_c
    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setOrder(I)V

    :cond_d
    :goto_2
    const-string/jumbo p0, "updateAttributes end"

    .line 218
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateBleBroadcastSourceInfo(Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->updateAttributes()V

    :cond_0
    return-void
.end method
