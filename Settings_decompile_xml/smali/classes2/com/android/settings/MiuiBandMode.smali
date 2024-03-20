.class public Lcom/android/settings/MiuiBandMode;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "MiuiBandMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiBandMode$CustimizedArrayAdapter;,
        Lcom/android/settings/MiuiBandMode$BandListItem;
    }
.end annotation


# static fields
.field private static final BAND_NAMES:[Ljava/lang/String;

.field public static final BAND_VALUES:[J


# instance fields
.field private mBandList:Landroid/widget/ListView;

.field private mBandListAdapter:Lcom/android/settings/MiuiBandMode$CustimizedArrayAdapter;

.field private mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

.field mBandsToSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/MiuiBandMode$BandListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSelection:Landroid/widget/Switch;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBandList(Lcom/android/settings/MiuiBandMode;)Landroid/widget/ListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiBandMode;->mBandList:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBandListAdapter(Lcom/android/settings/MiuiBandMode;)Lcom/android/settings/MiuiBandMode$CustimizedArrayAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiBandMode;->mBandListAdapter:Lcom/android/settings/MiuiBandMode$CustimizedArrayAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/MiuiBandMode;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiBandMode;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhone(Lcom/android/settings/MiuiBandMode;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiBandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelection(Lcom/android/settings/MiuiBandMode;)Landroid/widget/Switch;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiBandMode;->mSelection:Landroid/widget/Switch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdisplayBandSelectionResult(Lcom/android/settings/MiuiBandMode;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiBandMode;->displayBandSelectionResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleBandsSet(Lcom/android/settings/MiuiBandMode;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiBandMode;->handleBandsSet()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetBands(Lcom/android/settings/MiuiBandMode;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiBandMode;->resetBands()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetBAND_NAMES()[Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/MiuiBandMode;->BAND_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 32

    const-string v0, "LTE B1 Preferred"

    const-string v1, "LTE B2 Preferred"

    const-string v2, "LTE B3 Preferred"

    const-string v3, "LTE B4 Preferred"

    const-string v4, "LTE B5 Preferred"

    const-string v5, "LTE B7 Preferred"

    const-string v6, "LTE B8 Preferred"

    const-string v7, "LTE B20 Preferred"

    const-string v8, "LTE B28 Preferred"

    const-string v9, "LTE B38 Preferred"

    const-string v10, "LTE B40 Preferred"

    const-string v11, "LTE B41 Preferred"

    const-string v12, "GSM 900"

    const-string v13, "GSM 1800"

    const-string v14, "GSM 1900"

    const-string v15, "WCDMA I 2100"

    const-string v16, "WCDMA II 1900"

    const-string v17, "WCDMA IV 1700"

    const-string v18, "WCDMA V 850"

    const-string v19, "WCDMA V VIII 900"

    const-string v20, "LTE B1"

    const-string v21, "LTE B2"

    const-string v22, "LTE B3"

    const-string v23, "LTE B4"

    const-string v24, "LTE B5"

    const-string v25, "LTE B7"

    const-string v26, "LTE B8"

    const-string v27, "LTE B20"

    const-string v28, "LTE B28"

    const-string v29, "LTE B38"

    const-string v30, "LTE B40"

    const-string v31, "LTE B41"

    .line 49
    filled-new-array/range {v0 .. v31}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/MiuiBandMode;->BAND_NAMES:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [J

    .line 84
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/MiuiBandMode;->BAND_VALUES:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x1
        0x2
        0x3
        0x4
        0x6
        0x7
        0x19
        0x26
        0x14
        0x16
        0x1d
        0x200
        0x80
        0x200000
        0x400000
        0x800000
        0x2000000
        0x4000000
        0x2000000000000L
        0x1
        0x2
        0x4
        0x8
        0x10
        0x40
        0x80
        0x80000
        0x8000000
        0x2000000000L
        0x8000000000L
        0x10000000000L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiBandMode;->mBandsToSet:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/android/settings/MiuiBandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 273
    new-instance v0, Lcom/android/settings/MiuiBandMode$3;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiBandMode$3;-><init>(Lcom/android/settings/MiuiBandMode;)V

    iput-object v0, p0, Lcom/android/settings/MiuiBandMode;->mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

    .line 321
    new-instance v0, Lcom/android/settings/MiuiBandMode$4;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiBandMode$4;-><init>(Lcom/android/settings/MiuiBandMode;)V

    iput-object v0, p0, Lcom/android/settings/MiuiBandMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private displayBandSelectionResult(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    return-void
.end method

.method private handleBandsSet()V
    .locals 15

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    iget-object v1, p0, Lcom/android/settings/MiuiBandMode;->mBandsToSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "MiuiBandMode"

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/MiuiBandMode$BandListItem;

    .line 239
    iget v10, v8, Lcom/android/settings/MiuiBandMode$BandListItem;->mPosition:I

    .line 240
    iget-wide v11, v8, Lcom/android/settings/MiuiBandMode$BandListItem;->mBandMode:J

    .line 241
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleBandsSet  position:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " band:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/settings/MiuiBandMode$BandListItem;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " mode:"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v10, :cond_0

    const/16 v8, 0xb

    if-gt v10, v8, :cond_0

    .line 244
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 v8, 0xc

    if-lt v10, v8, :cond_1

    const/16 v8, 0x13

    if-gt v10, v8, :cond_1

    or-long/2addr v4, v11

    goto :goto_0

    :cond_1
    or-long/2addr v6, v11

    goto :goto_0

    :cond_2
    const-string v1, "=============BANDSETBEGIN======================"

    .line 254
    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v8, 0x0

    const/4 v10, 0x1

    if-nez v1, :cond_4

    .line 256
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v10

    new-array v1, v1, [I

    .line 257
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    aput v11, v1, v8

    move v11, v8

    .line 258
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    add-int/lit8 v12, v11, 0x1

    .line 259
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    long-to-int v11, v13

    aput v11, v1, v12

    .line 260
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleBandsSet LtePrefBandMode "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v1, v12

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v12

    goto :goto_1

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiBandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/settings/VendorUtils;->setLteBandPref([II)Z

    :cond_4
    cmp-long v0, v4, v2

    if-nez v0, :cond_5

    cmp-long v0, v6, v2

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [J

    aput-wide v4, v0, v8

    aput-wide v6, v0, v10

    .line 267
    iget-object p0, p0, Lcom/android/settings/MiuiBandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/settings/VendorUtils;->setXiaomiBandMode([JI)Z

    .line 268
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleBandsSet gwBand "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " lteBand:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string p0, "==============BANDSETEND====================="

    .line 270
    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isLtePrefBandSetBefore()Z
    .locals 3

    .line 194
    iget-object p0, p0, Lcom/android/settings/MiuiBandMode;->mBandsToSet:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 195
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiBandMode$BandListItem;

    iget v0, v0, Lcom/android/settings/MiuiBandMode$BandListItem;->mPosition:I

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLtePrefBandSetBefore position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiBandMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_0

    const/16 v1, 0xb

    if-gt v0, v1, :cond_0

    const-string p0, "isLtePrefBandSetBefore Yes"

    .line 199
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private resetBands()V
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    .line 210
    :goto_0
    sget-object v4, Lcom/android/settings/MiuiBandMode;->BAND_VALUES:[J

    array-length v5, v4

    if-ge v3, v5, :cond_1

    const/16 v5, 0x13

    if-le v3, v5, :cond_0

    .line 213
    aget-wide v4, v4, v3

    or-long/2addr v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    :cond_1
    filled-new-array {v2}, [I

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [J

    const-wide v5, 0xfffffffffffffffL

    aput-wide v5, v4, v2

    const/4 v2, 0x1

    aput-wide v0, v4, v2

    .line 219
    invoke-direct {p0}, Lcom/android/settings/MiuiBandMode;->isLtePrefBandSetBefore()Z

    move-result v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetBands  shouldResetLtePref:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiBandMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/MiuiBandMode$2;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/android/settings/MiuiBandMode$2;-><init>(Lcom/android/settings/MiuiBandMode;Z[I[J)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 231
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private saveBandPosition()V
    .locals 4

    .line 353
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 354
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/android/settings/MiuiBandMode;->mBandsToSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    .line 357
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/MiuiBandMode$BandListItem;

    iget v2, v2, Lcom/android/settings/MiuiBandMode$BandListItem;->mPosition:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 360
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveBandPosition bandPosition:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MiuiBandMode"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BAND_INFO_SELECTION"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/MiuiBandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/MiuiBandMode;->mSelection:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BAND_INFO_STORE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/MiuiBandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 363
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 130
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    sget p1, Lcom/android/settings/R$layout;->miui_band_mode:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "phone_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 135
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiBandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 137
    sget p1, Lcom/android/settings/R$id;->miui_band:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/settings/MiuiBandMode;->mBandList:Landroid/widget/ListView;

    .line 138
    new-instance p1, Lcom/android/settings/MiuiBandMode$CustimizedArrayAdapter;

    const v0, 0x1090010    # @android:layout/simple_list_item_multiple_choice

    invoke-direct {p1, p0, p0, v0}, Lcom/android/settings/MiuiBandMode$CustimizedArrayAdapter;-><init>(Lcom/android/settings/MiuiBandMode;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/settings/MiuiBandMode;->mBandListAdapter:Lcom/android/settings/MiuiBandMode$CustimizedArrayAdapter;

    move p1, v1

    .line 140
    :goto_0
    sget-object v0, Lcom/android/settings/MiuiBandMode;->BAND_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/settings/MiuiBandMode;->mBandListAdapter:Lcom/android/settings/MiuiBandMode$CustimizedArrayAdapter;

    new-instance v2, Lcom/android/settings/MiuiBandMode$BandListItem;

    sget-object v3, Lcom/android/settings/MiuiBandMode;->BAND_VALUES:[J

    aget-wide v3, v3, p1

    invoke-direct {v2, p1, v3, v4, v1}, Lcom/android/settings/MiuiBandMode$BandListItem;-><init>(IJZ)V

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiBandMode;->mBandList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/MiuiBandMode;->mBandListAdapter:Lcom/android/settings/MiuiBandMode$CustimizedArrayAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    iget-object p1, p0, Lcom/android/settings/MiuiBandMode;->mBandList:Landroid/widget/ListView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 147
    iget-object p1, p0, Lcom/android/settings/MiuiBandMode;->mBandList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/MiuiBandMode;->mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 149
    sget p1, Lcom/android/settings/R$id;->btn_select:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/settings/MiuiBandMode;->mSelection:Landroid/widget/Switch;

    .line 150
    new-instance v0, Lcom/android/settings/MiuiBandMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiBandMode$1;-><init>(Lcom/android/settings/MiuiBandMode;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BAND_INFO_STORE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/MiuiBandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BAND_INFO_SELECTION"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/MiuiBandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bandInfoStored: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiBandMode"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ","

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 184
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 185
    iget-object v4, p0, Lcom/android/settings/MiuiBandMode;->mBandList:Landroid/widget/ListView;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 186
    iget-object v3, p0, Lcom/android/settings/MiuiBandMode;->mBandListAdapter:Lcom/android/settings/MiuiBandMode$CustimizedArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 190
    :cond_1
    iget-object p0, p0, Lcom/android/settings/MiuiBandMode;->mSelection:Landroid/widget/Switch;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 338
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 339
    iget-object v0, p0, Lcom/android/settings/MiuiBandMode;->mBandsToSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 340
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/settings/MiuiBandMode;->mBandList:Landroid/widget/ListView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/MiuiBandMode$BandListItem;

    iget v2, v2, Lcom/android/settings/MiuiBandMode$BandListItem;->mPosition:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 347
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    .line 348
    invoke-direct {p0}, Lcom/android/settings/MiuiBandMode;->saveBandPosition()V

    return-void
.end method
