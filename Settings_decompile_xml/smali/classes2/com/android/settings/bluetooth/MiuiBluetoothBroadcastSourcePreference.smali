.class Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;
.super Landroidx/preference/Preference;
.source "MiuiBluetoothBroadcastSourcePreference.java"


# static fields
.field private static final RESOURCE_ID_ICON:I

.field private static final RESOURCE_ID_UNKNOWN_PROGRAM_INFO:I

.field private static sDimAlpha:I


# instance fields
.field private mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

.field private mBluetoothLeBroadcastReceiveState:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

.field mBroadcastSettngs:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mIsEncrypted:Z

.field private mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

.field private mSourceId:I

.field private mStatus:Z

.field private mText:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$4M9R6XJRnZbJHrTKFdI7kiNsgXI(Landroid/bluetooth/BluetoothLeBroadcastSubgroup;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->lambda$getProgramInfo$2(Landroid/bluetooth/BluetoothLeBroadcastSubgroup;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8QbE03ipNHxVzgmKYjF5sysHLlw(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->lambda$getProgramInfo$0(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kuwSZIqZw3LFt0t53ttqugFbuLc(Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->lambda$getProgramInfo$3(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xJD3kZFVWjuree1w03FJC7Z1pbo(Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->lambda$getProgramInfo$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatus(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mStatus:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 66
    sget v0, Lcom/android/settings/R$string;->device_info_default:I

    sput v0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->RESOURCE_ID_UNKNOWN_PROGRAM_INFO:I

    .line 67
    sget v0, Lcom/android/settings/R$drawable;->ic_bt_broadcast_icon:I

    sput v0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->RESOURCE_ID_ICON:I

    const/high16 v0, -0x80000000

    .line 75
    sput v0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->sDimAlpha:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 87
    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    .line 88
    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 89
    invoke-virtual {p4}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->getSourceId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mSourceId:I

    .line 90
    iput-object p4, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mBroadcastSettngs:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    .line 91
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->initUi()V

    return-void
.end method

.method private getBroadcastName()Ljava/lang/String;
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    if-eqz v0, :cond_0

    const-string v0, "MiuiBluetoothBroadcastSourcePreference"

    const-string v1, "getBroadcastName"

    .line 275
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private initUi()V
    .locals 4

    const-string v0, "MiuiBluetoothBroadcastSourcePreference"

    const-string v1, "initUi"

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget v0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->sDimAlpha:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 167
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 168
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033    # @android:attr/disabledAlpha

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 169
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->sDimAlpha:I

    .line 171
    :cond_0
    sget v0, Lcom/android/settings/R$layout;->preference_bt_icon_corner:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 172
    sget v0, Lcom/android/settings/R$layout;->miuix_preference_widget_text:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mStatus:Z

    return-void
.end method

.method private static synthetic lambda$getProgramInfo$0(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Ljava/lang/String;
    .locals 0

    .line 251
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getProgramInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getProgramInfo$1(Ljava/lang/String;)Z
    .locals 0

    .line 252
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getProgramInfo$2(Landroid/bluetooth/BluetoothLeBroadcastSubgroup;)Ljava/lang/String;
    .locals 0

    .line 268
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getProgramInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getProgramInfo$3(Ljava/lang/String;)Z
    .locals 0

    .line 269
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private refresh()V
    .locals 2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refresh mTitle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBluetoothBroadcastSourcePreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->updateStatus()V

    return-void
.end method

.method private updateStatus()V
    .locals 3

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateStatus, mStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBluetoothBroadcastSourcePreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 230
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mStatus:Z

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->bluetooth_auracast_assist_leave_broadcast:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mText:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$drawable;->stylus_update_bg_stop:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 233
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mText:Landroid/widget/TextView;

    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->bluetooth_auracast_assist_add_source:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clearReceiveState()V
    .locals 2

    const-string v0, "MiuiBluetoothBroadcastSourcePreference"

    const-string v1, "clearReceiveState()"

    .line 305
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastReceiveState:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->setmTitle()V

    const/4 v0, 0x0

    .line 308
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mStatus:Z

    .line 309
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->refresh()V

    return-void
.end method

.method public getBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    return-object p0
.end method

.method public getProgramInfo()Ljava/lang/String;
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastReceiveState:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getSubgroupMetadata()Ljava/util/List;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$$ExternalSyntheticLambda0;-><init>()V

    .line 251
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$$ExternalSyntheticLambda1;-><init>()V

    .line 252
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 254
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->RESOURCE_ID_UNKNOWN_PROGRAM_INFO:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 253
    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    const-string v1, "MiuiBluetoothBroadcastSourcePreference"

    if-nez v0, :cond_1

    const-string v0, "mBluetoothLeBroadcastMetadata null"

    .line 258
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->RESOURCE_ID_UNKNOWN_PROGRAM_INFO:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 262
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSubgroups()Ljava/util/List;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "subgroups Empty"

    .line 264
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->RESOURCE_ID_UNKNOWN_PROGRAM_INFO:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 267
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$$ExternalSyntheticLambda2;-><init>()V

    .line 268
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$$ExternalSyntheticLambda3;-><init>()V

    .line 269
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->RESOURCE_ID_UNKNOWN_PROGRAM_INFO:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getmTitle()Ljava/lang/String;
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public isEncrypted()Z
    .locals 0

    .line 287
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mIsEncrypted:Z

    return p0
.end method

.method public leaveBroadcastSession()V
    .locals 5

    const-string v0, "leaveBroadcastSession"

    const-string v1, "MiuiBluetoothBroadcastSourcePreference"

    .line 316
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    goto :goto_1

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mBroadcastSettngs:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->getConnectedGroupLeadDeviceMap()Ljava/util/Map;

    move-result-object v0

    .line 322
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 323
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 324
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget v4, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mSourceId:I

    invoke-virtual {v3, v2, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->removeSource(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p0, "leaveBroadcastSession: LeBroadcastAssistant or CachedDevice is null!"

    .line 318
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    const-string v0, "MiuiBluetoothBroadcastSourcePreference"

    const-string/jumbo v1, "onBindViewHolder"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 98
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020006    # @android:id/icon

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 102
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 104
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->bt_icon_elevation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 103
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setElevation(F)V

    .line 108
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    sget v2, Lcom/android/settings/R$id;->view_corner:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 111
    sget v3, Lcom/android/settings/R$id;->view_high_light_root:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 114
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 115
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 119
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->miuix_preference_item_padding_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 121
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->miuix_preference_item_padding_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 118
    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 124
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 126
    sget p1, Lcom/android/settings/R$id;->text_right:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mText:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 129
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$1;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$style;->update_style:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 154
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$drawable;->stylus_update_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 155
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->stylus_update_padding_hor:I

    .line 156
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 157
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->stylus_update_padding_ver:I

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0, p1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 160
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->updateStatus()V

    :cond_2
    return-void
.end method

.method public setmTitle()V
    .locals 2

    .line 349
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->getBroadcastName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->getBroadcastName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->getBroadcastName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mTitle:Ljava/lang/String;

    goto :goto_1

    .line 350
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->getProgramInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mTitle:Ljava/lang/String;

    .line 354
    :goto_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->RESOURCE_ID_UNKNOWN_PROGRAM_INFO:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastReceiveState:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    if-eqz v0, :cond_2

    .line 356
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 358
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mTitle:Ljava/lang/String;

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sourceDevice name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiBluetoothBroadcastSourcePreference"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public updateMetadataAndRefreshUi(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->setmTitle()V

    .line 183
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->isEncrypted()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mIsEncrypted:Z

    .line 185
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mStatus:Z

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateMetadataAndRefreshUi, mTitle = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", mIsEncrypted = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mIsEncrypted:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mStatus = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mStatus:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiuiBluetoothBroadcastSourcePreference"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->refresh()V

    return-void
.end method

.method public updateReceiveStateAndRefreshUi(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;Z)V
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateReceiveStateAndRefreshUi, status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBluetoothBroadcastSourcePreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastReceiveState:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->setmTitle()V

    .line 210
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mStatus:Z

    .line 211
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->refresh()V

    return-void
.end method
