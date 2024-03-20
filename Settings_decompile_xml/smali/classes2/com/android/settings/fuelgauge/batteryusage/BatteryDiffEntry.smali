.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;
.super Ljava/lang/Object;
.source "BatteryDiffEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$OthersBatteryDiffEntry;,
        Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$SystemAppsBatteryDiffEntry;
    }
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;"
        }
    .end annotation
.end field

.field static sCurrentLocale:Ljava/util/Locale;

.field static final sResourceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;",
            ">;"
        }
    .end annotation
.end field

.field public static final sValidForRestriction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdjustPercentageOffset:I

.field mAppIcon:Landroid/graphics/drawable/Drawable;

.field mAppIconId:I

.field mAppLabel:Ljava/lang/String;

.field public mBackgroundUsageConsumePower:D

.field public mBackgroundUsageTimeInMs:J

.field public final mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

.field public mCachedUsageConsumePower:D

.field public mConsumePower:D

.field protected mContext:Landroid/content/Context;

.field private mDefaultPackageName:Ljava/lang/String;

.field public mForegroundServiceUsageConsumePower:D

.field public mForegroundUsageConsumePower:D

.field public mForegroundUsageTimeInMs:J

.field mIsLoaded:Z

.field private mPercentage:D

.field public mScreenOnTimeInMs:J

.field private mTotalConsumePower:D

.field private mUserManager:Landroid/os/UserManager;

.field mValidForRestriction:Z


# direct methods
.method public static synthetic $r8$lambda$VJWM2xv6VgD9bqWmyUvZhfuM6lM(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->lambda$static$0(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sValidForRestriction:Ljava/util/Map;

    .line 51
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJJDDDDDLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 71
    iput-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mDefaultPackageName:Ljava/lang/String;

    .line 75
    iput-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 77
    iput-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    .line 79
    iput-boolean v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mIsLoaded:Z

    const/4 v2, 0x1

    .line 81
    iput-boolean v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    .line 95
    iput-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    move-wide v2, p8

    .line 96
    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    move-wide v2, p10

    .line 97
    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageConsumePower:D

    move-wide/from16 v2, p12

    .line 98
    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageConsumePower:D

    move-wide/from16 v2, p14

    .line 99
    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageConsumePower:D

    move-wide/from16 v2, p16

    .line 100
    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mCachedUsageConsumePower:D

    move-wide v2, p2

    .line 101
    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    move-wide v2, p4

    .line 102
    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    move-wide v2, p6

    .line 103
    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    move-object/from16 v2, p18

    .line 104
    iput-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 105
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public static clearCache()V
    .locals 1

    .line 404
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 405
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sValidForRestriction:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private getBadgeIconForUser(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUid:J

    long-to-int v0, v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUserManager:Landroid/os/UserManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getCache()Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;
    .locals 3

    .line 319
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 320
    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sCurrentLocale:Ljava/util/Locale;

    if-eq v1, v0, :cond_0

    const-string v2, "clearCache() locale is changed from %s to %s"

    .line 321
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryDiffEntry"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sCurrentLocale:Ljava/util/Locale;

    .line 324
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->clearCache()V

    .line 326
    :cond_0
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    return-object p0
.end method

.method private static synthetic lambda$static$0(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)I
    .locals 2

    .line 52
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getSortingKey()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getSortingKey()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method private loadNameAndIconForUid()V
    .locals 7

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 331
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "BatteryDiffEntry"

    if-eqz v3, :cond_0

    .line 333
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 336
    :try_start_0
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 339
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to retrieve ApplicationInfo for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iput-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 347
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    return-void

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget-wide v1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUid:J

    long-to-int v1, v1

    .line 352
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 354
    array-length v0, v0

    if-nez v0, :cond_3

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 356
    invoke-static {v0, v2, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getNameAndIconFromUid(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    move-result-object v0

    .line 357
    iget-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 358
    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 361
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->loadNameAndIcon(Landroid/content/Context;ILcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    move-result-object v0

    .line 364
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->clearUidCache()V

    if-eqz v0, :cond_4

    .line 366
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 367
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 368
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mDefaultPackageName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 370
    invoke-virtual {v1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 371
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mDefaultPackageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mPackageName:Ljava/lang/String;

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "found different package: %s | %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;
    .locals 23

    move-object/from16 v0, p0

    .line 143
    new-instance v20, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    iget-wide v7, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    iget-wide v9, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    iget-wide v11, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageConsumePower:D

    iget-wide v13, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageConsumePower:D

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageConsumePower:D

    move-wide v15, v1

    iget-wide v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mCachedUsageConsumePower:D

    move-wide/from16 v17, v1

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    move-object/from16 v19, v0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;-><init>(Landroid/content/Context;JJJDDDDDLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    return-object v20
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->clone()Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-result-object p0

    return-object p0
.end method

.method public getAdjustPercentageOffset()D
    .locals 2

    .line 128
    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAdjustPercentageOffset:I

    int-to-double v0, p0

    return-wide v0
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->loadLabelAndIcon()V

    .line 168
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAppIconId()I
    .locals 0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->loadLabelAndIcon()V

    .line 176
    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIconId:I

    return p0
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->loadLabelAndIcon()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    goto :goto_1

    .line 161
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mAppLabel:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method getKey()Ljava/lang/String;
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mDefaultPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    return-object v0

    :cond_1
    const-string p0, ":"

    .line 188
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 189
    array-length v1, p0

    if-lez v1, :cond_2

    const/4 v0, 0x0

    .line 190
    aget-object v0, p0, v0

    :cond_2
    return-object v0
.end method

.method public getPercentage()D
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mPercentage:D

    return-wide v0
.end method

.method public getSortingKey()D
    .locals 4

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPercentage()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getAdjustPercentageOffset()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getTotalConsumePower()D
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mTotalConsumePower:D

    return-wide v0
.end method

.method public isSystemEntry()Z
    .locals 2

    .line 201
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mIsHidden:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 204
    :cond_0
    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method loadLabelAndIcon()V
    .locals 5

    .line 215
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mIsLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getCache()Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 222
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 223
    iget v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIconId:I

    iput v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIconId:I

    .line 225
    :cond_1
    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sValidForRestriction:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 227
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mIsLoaded:Z

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->updateRestrictionFlagState()V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    const/4 v3, 0x0

    if-eq v2, v0, :cond_7

    const/4 v0, 0x2

    if-eq v2, v0, :cond_6

    const/4 v0, 0x3

    if-eq v2, v0, :cond_4

    goto/16 :goto_0

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget v1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mDrainType:I

    .line 255
    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getNameAndIconFromPowerComponent(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 258
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 259
    iget v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIconId:I

    if-eqz v0, :cond_5

    .line 260
    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIconId:I

    .line 261
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 263
    :cond_5
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIconId:I

    invoke-direct {v2, v3, v4, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 263
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 242
    :cond_6
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-wide v1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    long-to-int v1, v1

    .line 243
    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getNameAndIconFromUserId(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 246
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 247
    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 248
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v4, p0, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 248
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 269
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->loadNameAndIconForUid()V

    .line 271
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    .line 272
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 275
    :cond_8
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getBadgeIconForUser(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 276
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    if-nez v1, :cond_9

    if-eqz v0, :cond_a

    .line 277
    :cond_9
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v4, p0, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 277
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_0
    return-void
.end method

.method public setAdjustPercentageOffset(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAdjustPercentageOffset:I

    return-void
.end method

.method public setTotalConsumePower(D)V
    .locals 3

    .line 110
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mTotalConsumePower:D

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    div-double/2addr v0, p1

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p1

    :goto_0
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mPercentage:D

    const/4 p1, 0x0

    .line 113
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAdjustPercentageOffset:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryDiffEntry{"

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    .line 382
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\n\tname=%s restrictable=%b"

    .line 381
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mPercentage:D

    .line 384
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mTotalConsumePower:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\n\tconsume=%.2f%% %f/%f"

    .line 383
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageConsumePower:D

    .line 386
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageConsumePower:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\n\tconsume power= foreground:%f foregroundService:%f"

    .line 385
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageConsumePower:D

    .line 388
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mCachedUsageConsumePower:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\n\tconsume power= background:%f cached:%f"

    .line 387
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    long-to-double v2, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 390
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    long-to-double v6, v6

    .line 392
    invoke-static {v2, v6, v7, v4, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    long-to-double v6, v6

    .line 394
    invoke-static {v3, v6, v7, v4, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\n\ttime= foreground:%s background:%s screen-on:%s"

    .line 389
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget-wide v3, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUid:J

    .line 398
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "\n\tpackage:%s|%s uid:%d userId:%d"

    .line 396
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method updateRestrictionFlagState()V
    .locals 5

    .line 291
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->isAppEntry()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 292
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    .line 296
    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 299
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    return-void

    .line 303
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    .line 304
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x401240

    .line 304
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getPackageInfo() error %s for package=%s"

    .line 312
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BatteryDiffEntry"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    :goto_2
    return-void
.end method

.method public validForRestriction()Z
    .locals 0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->loadLabelAndIcon()V

    .line 196
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    return p0
.end method
