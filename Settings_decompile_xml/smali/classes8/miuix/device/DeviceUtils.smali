.class public Lmiuix/device/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/device/DeviceUtils$CpuStats;,
        Lmiuix/device/DeviceUtils$CpuInfo;
    }
.end annotation


# static fields
.field public static DEV_STANDARD_VERSION:I

.field private static HIGH:I

.field private static LOW:I

.field private static MIDDLE:I

.field static MIUI_LITE_ROM:Ljava/lang/Boolean;

.field static MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean;

.field static MIUI_LITE_VERSION:I

.field static MIUI_MIDDLE_VERSION:I

.field static final MT_PATTERN:Ljava/util/regex/Pattern;

.field static final SM_PATTERN:Ljava/util/regex/Pattern;

.field private static final STOCK_DEVICE:[Ljava/lang/String;

.field public static TYPE_CPU:I

.field public static TYPE_GPU:I

.field public static TYPE_RAM:I

.field private static UNKNOWN:I

.field private static application:Landroid/app/Application;

.field private static applicationContext:Landroid/content/Context;

.field private static initDeviceLevelInfo:Z

.field private static mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field static mCpuLevel:I

.field private static mGetDeviceLevel:Ljava/lang/reflect/Method;

.field private static mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

.field private static mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

.field private static mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;

.field static mGpuLevel:I

.field private static mIsSupportPrune:Ljava/lang/reflect/Method;

.field private static mLastVersion:I

.field static mLevel:I

.field private static mPerf:Ljava/lang/Object;

.field static mRamLevel:I

.field static mTotalRam:I

.field private static sIsPrimaryScreenOled:Ljava/lang/Boolean;

.field private static sIsSecondaryScreenOled:Ljava/lang/Boolean;

.field private static sIsTablet:Ljava/lang/Boolean;

.field private static sMultiDisplayType:I

.field private static sPerfClass:Ljava/lang/Class;

.field private static sPerfClassLoader:Ldalvik/system/PathClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 42

    const-string v1, "DeviceUtils"

    const-string v0, "Inc ([A-Z]+)([\\d]+)"

    .line 58
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->SM_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "MT([\\d]{2})([\\d]+)"

    .line 59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->MT_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 63
    sput-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;

    const/4 v2, -0x2

    .line 66
    sput v2, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    .line 68
    sput v2, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    .line 70
    sput-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean;

    const/4 v2, -0x1

    .line 77
    sput v2, Lmiuix/device/DeviceUtils;->sMultiDisplayType:I

    .line 78
    sput-object v0, Lmiuix/device/DeviceUtils;->sIsTablet:Ljava/lang/Boolean;

    .line 80
    sput-object v0, Lmiuix/device/DeviceUtils;->sIsPrimaryScreenOled:Ljava/lang/Boolean;

    .line 81
    sput-object v0, Lmiuix/device/DeviceUtils;->sIsSecondaryScreenOled:Ljava/lang/Boolean;

    .line 124
    sput v2, Lmiuix/device/DeviceUtils;->mLevel:I

    .line 125
    sput v2, Lmiuix/device/DeviceUtils;->mCpuLevel:I

    .line 126
    sput v2, Lmiuix/device/DeviceUtils;->mGpuLevel:I

    .line 127
    sput v2, Lmiuix/device/DeviceUtils;->mRamLevel:I

    const v2, 0x7fffffff

    .line 129
    sput v2, Lmiuix/device/DeviceUtils;->mTotalRam:I

    const-string v3, "cactus"

    const-string v4, "cereus"

    const-string v5, "pine"

    const-string v6, "olive"

    const-string v7, "ginkgo"

    const-string v8, "olivelite"

    const-string v9, "olivewood"

    const-string v10, "willow"

    const-string v11, "wayne"

    const-string v12, "dandelion"

    const-string v13, "angelica"

    const-string v14, "angelicain"

    const-string v15, "whyred"

    const-string v16, "tulip"

    const-string v17, "onc"

    const-string v18, "onclite"

    const-string v19, "lavender"

    const-string v20, "lotus"

    const-string v21, "laurus"

    const-string v22, "merlinnfc"

    const-string v23, "merlin"

    const-string v24, "lancelot"

    const-string v25, "citrus"

    const-string v26, "pomelo"

    const-string v27, "lemon"

    const-string v28, "shiva"

    const-string v29, "lime"

    const-string v30, "cannon"

    const-string v31, "curtana"

    const-string v32, "durandal"

    const-string v33, "excalibur"

    const-string v34, "joyeuse"

    const-string v35, "gram"

    const-string v36, "sunny"

    const-string v37, "mojito"

    const-string v38, "rainbow"

    const-string v39, "cattail"

    const-string v40, "angelican"

    const-string v41, "camellia"

    .line 289
    filled-new-array/range {v3 .. v41}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmiuix/device/DeviceUtils;->STOCK_DEVICE:[Ljava/lang/String;

    .line 779
    sput-object v0, Lmiuix/device/DeviceUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 780
    sput-object v0, Lmiuix/device/DeviceUtils;->mPerf:Ljava/lang/Object;

    .line 782
    sput-object v0, Lmiuix/device/DeviceUtils;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    .line 783
    sput-object v0, Lmiuix/device/DeviceUtils;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    .line 784
    sput-object v0, Lmiuix/device/DeviceUtils;->mIsSupportPrune:Ljava/lang/reflect/Method;

    .line 785
    sput-object v0, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

    .line 786
    sput-object v0, Lmiuix/device/DeviceUtils;->mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    .line 791
    sput v0, Lmiuix/device/DeviceUtils;->DEV_STANDARD_VERSION:I

    .line 792
    sput v0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    const/4 v2, 0x0

    .line 794
    sput-boolean v2, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo:Z

    .line 796
    sput v0, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    const/4 v3, 0x2

    .line 797
    sput v3, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    const/4 v3, 0x3

    .line 798
    sput v3, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    .line 808
    :try_start_0
    new-instance v3, Ldalvik/system/PathClassLoader;

    const-string v4, "/system_ext/framework/MiuiBooster.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v3, Lmiuix/device/DeviceUtils;->sPerfClassLoader:Ldalvik/system/PathClassLoader;

    const-string v4, "com.miui.performance.DeviceLevelUtils"

    .line 809
    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Class;

    .line 814
    const-class v4, Landroid/content/Context;

    aput-object v4, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 815
    sget-object v0, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    const-string v3, "getMiuiLiteVersion"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 817
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "static init(): Load Class Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :goto_0
    :try_start_1
    sget-object v0, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    const-string v3, "getMiuiMiddleVersion"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "static init(): Load MiuiMiddle Class Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :goto_1
    sget-object v0, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "static init(): MiuiBooster is not in this rom"

    .line 827
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static createCpuInfo(Ljava/lang/String;)Lmiuix/device/DeviceUtils$CpuInfo;
    .locals 3

    .line 672
    new-instance v0, Lmiuix/device/DeviceUtils$CpuInfo;

    invoke-direct {v0}, Lmiuix/device/DeviceUtils$CpuInfo;-><init>()V

    .line 673
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lmiuix/device/DeviceUtils$CpuInfo;->id:I

    .line 674
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "/sys/devices/system/cpu/cpu%d/cpufreq/cpuinfo_max_freq"

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 675
    invoke-static {p0}, Lmiuix/device/DeviceUtils;->getContentFromFileInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 677
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lmiuix/device/DeviceUtils$CpuInfo;->maxFreq:I

    :cond_0
    return-object v0
.end method

.method private static decideLevel(Lmiuix/device/DeviceUtils$CpuStats;)V
    .locals 5

    .line 625
    iget v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 628
    :cond_0
    iget v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->bigCoreCount:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x231860

    if-lt v0, v1, :cond_3

    .line 629
    iget v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->maxFreq:I

    const v1, 0x2932e0

    if-le v0, v1, :cond_1

    const/4 v0, 0x2

    .line 630
    iput v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    goto :goto_0

    :cond_1
    if-le v0, v4, :cond_2

    .line 632
    iput v2, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    goto :goto_0

    .line 634
    :cond_2
    iput v3, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    goto :goto_0

    .line 636
    :cond_3
    iget v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->maxFreq:I

    if-le v0, v4, :cond_4

    .line 637
    iput v2, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    goto :goto_0

    .line 639
    :cond_4
    iput v3, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    :goto_0
    return-void
.end method

.method private static doCpuStats(Lmiuix/device/DeviceUtils$CpuStats;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/device/DeviceUtils$CpuStats;",
            "Ljava/util/List<",
            "Lmiuix/device/DeviceUtils$CpuInfo;",
            ">;)V"
        }
    .end annotation

    .line 608
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/device/DeviceUtils$CpuInfo;

    .line 609
    iget v1, v0, Lmiuix/device/DeviceUtils$CpuInfo;->architecture:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    .line 610
    iput v1, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    .line 612
    :cond_0
    iget v0, v0, Lmiuix/device/DeviceUtils$CpuInfo;->maxFreq:I

    iget v1, p0, Lmiuix/device/DeviceUtils$CpuStats;->maxFreq:I

    if-le v0, v1, :cond_1

    .line 613
    iput v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->maxFreq:I

    :cond_1
    const v1, 0x1e8480

    if-lt v0, v1, :cond_2

    .line 616
    iget v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->bigCoreCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->bigCoreCount:I

    goto :goto_0

    .line 618
    :cond_2
    iget v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->smallCoreCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->smallCoreCount:I

    goto :goto_0

    .line 621
    :cond_3
    invoke-static {p0}, Lmiuix/device/DeviceUtils;->decideLevel(Lmiuix/device/DeviceUtils$CpuStats;)V

    return-void
.end method

.method private static getAppContext()Landroid/content/Context;
    .locals 6

    .line 912
    sget-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "DeviceUtils"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 914
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "currentApplication"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lmiuix/device/DeviceUtils;->application:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 919
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.app.ActivityThread Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_0
    :goto_0
    sget-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_1

    :try_start_1
    const-string v0, "android.app.AppGlobals"

    .line 925
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getInitialApplication"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lmiuix/device/DeviceUtils;->application:Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 927
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.app.AppGlobals Exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_1
    :goto_1
    sget-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getContentFromFileInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 704
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 705
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 706
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 707
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 719
    :catch_1
    :cond_0
    throw p0

    :catch_2
    move-object v1, v0

    :catch_3
    if-eqz v1, :cond_1

    .line 714
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_1
    return-object v0
.end method

.method private static getCpuInfo(Ljava/lang/String;Ljava/lang/String;Lmiuix/device/DeviceUtils$CpuInfo;)V
    .locals 1

    const-string v0, "CPU implementer"

    .line 683
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    invoke-static {p1}, Lmiuix/device/DeviceUtils;->toInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p2, Lmiuix/device/DeviceUtils$CpuInfo;->implementor:I

    goto :goto_0

    :cond_0
    const-string v0, "CPU architecture"

    .line 685
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    invoke-static {p1}, Lmiuix/device/DeviceUtils;->toInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p2, Lmiuix/device/DeviceUtils$CpuInfo;->architecture:I

    goto :goto_0

    :cond_1
    const-string v0, "CPU part"

    .line 687
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 688
    invoke-static {p1}, Lmiuix/device/DeviceUtils;->toInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p2, Lmiuix/device/DeviceUtils$CpuInfo;->part:I

    :cond_2
    :goto_0
    return-void
.end method

.method public static getCpuInfoList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiuix/device/DeviceUtils$CpuInfo;",
            ">;"
        }
    .end annotation

    .line 644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 646
    :try_start_0
    new-instance v1, Ljava/util/Scanner;

    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/cpuinfo"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 648
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 649
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 650
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 651
    invoke-static {v3, v0, v2}, Lmiuix/device/DeviceUtils;->parseLine([Ljava/lang/String;Ljava/util/List;Lmiuix/device/DeviceUtils$CpuInfo;)Lmiuix/device/DeviceUtils$CpuInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DeviceUtils"

    const-string v3, "getChipSetFromCpuInfo failed"

    .line 655
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v0
.end method

.method private static getCpuLevel()I
    .locals 3

    .line 509
    invoke-static {}, Lmiuix/device/DeviceUtils;->getHardwareInfo()Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-lez v1, :cond_1

    const-string v1, "Qualcomm"

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    invoke-static {v0}, Lmiuix/device/DeviceUtils;->getQualcommCpuLevel(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 515
    :cond_0
    invoke-static {v0}, Lmiuix/device/DeviceUtils;->getMtkCpuLevel(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-ne v0, v2, :cond_2

    .line 519
    invoke-static {}, Lmiuix/device/DeviceUtils;->getCpuStats()Lmiuix/device/DeviceUtils$CpuStats;

    move-result-object v0

    iget v0, v0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    :cond_2
    return v0
.end method

.method public static getCpuStats()Lmiuix/device/DeviceUtils$CpuStats;
    .locals 4

    .line 598
    invoke-static {}, Lmiuix/device/DeviceUtils;->getCpuInfoList()Ljava/util/List;

    move-result-object v0

    .line 599
    new-instance v1, Lmiuix/device/DeviceUtils$CpuStats;

    invoke-direct {v1}, Lmiuix/device/DeviceUtils$CpuStats;-><init>()V

    .line 600
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    .line 601
    iput v2, v1, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    .line 603
    :cond_0
    invoke-static {v1, v0}, Lmiuix/device/DeviceUtils;->doCpuStats(Lmiuix/device/DeviceUtils$CpuStats;Ljava/util/List;)V

    return-object v1
.end method

.method public static getDeviceLevel()I
    .locals 1

    .line 233
    sget v0, Lmiuix/device/DeviceUtils;->DEV_STANDARD_VERSION:I

    invoke-static {v0}, Lmiuix/device/DeviceUtils;->getDeviceLevel(I)I

    move-result v0

    return v0
.end method

.method public static getDeviceLevel(I)I
    .locals 2

    .line 237
    sget v0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    const/4 v1, -0x1

    if-ne v0, p0, :cond_0

    sget v0, Lmiuix/device/DeviceUtils;->mLevel:I

    if-eq v0, v1, :cond_0

    return v0

    .line 240
    :cond_0
    sput p0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    .line 241
    invoke-static {p0}, Lmiuix/device/DeviceUtils;->getDeviceLevel2(I)I

    move-result p0

    sput p0, Lmiuix/device/DeviceUtils;->mLevel:I

    if-eq p0, v1, :cond_1

    return p0

    .line 245
    :cond_1
    invoke-static {}, Lmiuix/device/DeviceUtils;->getDeviceLevel1()I

    move-result p0

    return p0
.end method

.method public static getDeviceLevel(II)I
    .locals 2

    .line 249
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    .line 250
    sget v0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    if-ne v0, p0, :cond_2

    sget v0, Lmiuix/device/DeviceUtils;->mCpuLevel:I

    if-eq v0, v1, :cond_2

    return v0

    .line 253
    :cond_0
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    if-ne p1, v0, :cond_1

    .line 254
    sget v0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    if-ne v0, p0, :cond_2

    sget v0, Lmiuix/device/DeviceUtils;->mGpuLevel:I

    if-eq v0, v1, :cond_2

    return v0

    .line 257
    :cond_1
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    if-ne p1, v0, :cond_2

    .line 258
    sget v0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    if-ne v0, p0, :cond_2

    sget v0, Lmiuix/device/DeviceUtils;->mRamLevel:I

    if-eq v0, v1, :cond_2

    return v0

    .line 262
    :cond_2
    invoke-static {p0, p1}, Lmiuix/device/DeviceUtils;->getDeviceLevel2(II)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 264
    invoke-static {p0, v0, p1}, Lmiuix/device/DeviceUtils;->setDeviceLevel(III)I

    move-result p0

    return p0

    .line 266
    :cond_3
    invoke-static {p1}, Lmiuix/device/DeviceUtils;->getDeviceLevel1(I)I

    move-result v0

    .line 267
    invoke-static {p0, v0, p1}, Lmiuix/device/DeviceUtils;->setDeviceLevel(III)I

    move-result p0

    return p0
.end method

.method private static getDeviceLevel1()I
    .locals 4

    .line 481
    sget v0, Lmiuix/device/DeviceUtils;->mLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 484
    :cond_0
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 485
    sput v0, Lmiuix/device/DeviceUtils;->mLevel:I

    goto :goto_0

    .line 487
    :cond_1
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    invoke-static {v0}, Lmiuix/device/DeviceUtils;->getDeviceLevel1(I)I

    move-result v0

    .line 488
    sget v1, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    invoke-static {v1}, Lmiuix/device/DeviceUtils;->getDeviceLevel1(I)I

    move-result v1

    .line 489
    sget v2, Lmiuix/device/DeviceUtils;->DEV_STANDARD_VERSION:I

    sget v3, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    invoke-static {v2, v3}, Lmiuix/device/DeviceUtils;->getDeviceLevel(II)I

    move-result v2

    .line 490
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, Lmiuix/device/DeviceUtils;->getMinLevel([I)I

    move-result v0

    sput v0, Lmiuix/device/DeviceUtils;->mLevel:I

    .line 492
    :goto_0
    sget v0, Lmiuix/device/DeviceUtils;->mLevel:I

    return v0
.end method

.method private static getDeviceLevel1(I)I
    .locals 1

    .line 460
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    if-ne p0, v0, :cond_2

    .line 461
    invoke-static {}, Lmiuix/device/DeviceUtils;->getTotalRam()I

    move-result p0

    const/4 v0, 0x6

    if-le p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 v0, 0x4

    if-le p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-lez p0, :cond_3

    const/4 p0, 0x0

    return p0

    .line 469
    :cond_2
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    if-ne p0, v0, :cond_3

    .line 470
    invoke-static {}, Lmiuix/device/DeviceUtils;->getCpuLevel()I

    move-result p0

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static getDeviceLevel2(I)I
    .locals 5

    .line 731
    invoke-static {}, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 735
    :cond_0
    :try_start_0
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerf()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 737
    sget-object v2, Lmiuix/device/DeviceUtils;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 738
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 740
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "perf is null!"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceLevel failed , e:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :goto_0
    invoke-static {v1}, Lmiuix/device/DeviceUtils;->transDeviceLevel(I)I

    move-result p0

    return p0
.end method

.method private static getDeviceLevel2(II)I
    .locals 5

    .line 756
    invoke-static {}, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 760
    :cond_0
    :try_start_0
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerf()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 762
    sget-object v2, Lmiuix/device/DeviceUtils;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v3, p1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 763
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 765
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "perf is null!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 768
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDeviceLevel failed , e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :goto_0
    invoke-static {v1}, Lmiuix/device/DeviceUtils;->transDeviceLevel(I)I

    move-result p0

    return p0
.end method

.method private static getHardwareInfo()Ljava/lang/String;
    .locals 4

    .line 526
    :try_start_0
    new-instance v0, Ljava/util/Scanner;

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 527
    :cond_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ": "

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 531
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 532
    aget-object v0, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "DeviceUtils"

    const-string v2, "getChipSetFromCpuInfo failed"

    .line 537
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private static varargs getMinLevel([I)I
    .locals 5

    .line 496
    array-length v0, p0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 499
    aget v2, p0, v0

    .line 500
    array-length v3, p0

    :goto_0
    if-ge v0, v3, :cond_2

    aget v4, p0, v0

    if-le v4, v1, :cond_1

    if-ge v4, v2, :cond_1

    move v2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static getMiuiLiteVersion()I
    .locals 3

    .line 179
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 180
    sput v1, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    return v1

    .line 183
    :cond_0
    sget v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_3

    .line 186
    :try_start_0
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerf()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    invoke-static {}, Lmiuix/device/DeviceUtils;->getMiuiLiteVersionMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 189
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "perf is null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMiuiLiteVersion failed , e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 198
    sput v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 200
    sput v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    .line 202
    :goto_1
    sget v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    :cond_3
    return v0
.end method

.method private static getMiuiLiteVersionMethod()Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 870
    sget-object v0, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 872
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerfClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "getMiuiLiteVersion"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

    .line 874
    :cond_0
    sget-object v0, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static getMiuiMiddleVersion()I
    .locals 4

    .line 216
    sget v0, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    .line 218
    :try_start_0
    sget-object v1, Lmiuix/device/DeviceUtils;->mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;

    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerf()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    goto :goto_0

    .line 222
    :cond_0
    sput v0, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 225
    sput v0, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMiuiMiddleVersion failed , e:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1
    :goto_0
    sget v0, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    return v0
.end method

.method private static getMtkCpuLevel(Ljava/lang/String;)I
    .locals 3

    .line 584
    sget-object v0, Lmiuix/device/DeviceUtils;->MT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 586
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 587
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 588
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 v2, 0x44

    if-ne v1, v2, :cond_0

    const/16 v1, 0x49

    if-lt p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static getPerf()Ljava/lang/Object;
    .locals 3

    .line 853
    sget-object v0, Lmiuix/device/DeviceUtils;->mPerf:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 855
    :try_start_0
    invoke-static {}, Lmiuix/device/DeviceUtils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 856
    sget-object v1, Lmiuix/device/DeviceUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    .line 857
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->mPerf:Ljava/lang/Object;

    goto :goto_0

    .line 859
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "getAppContext fail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPerf DeviceUtils(): newInstance Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 866
    :cond_1
    :goto_0
    sget-object v0, Lmiuix/device/DeviceUtils;->mPerf:Ljava/lang/Object;

    return-object v0
.end method

.method private static getPerfClass()Ljava/lang/Class;
    .locals 1

    .line 832
    sget-object v0, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getQualcommCpuLevel(Ljava/lang/String;)I
    .locals 6

    .line 555
    sget-object v0, Lmiuix/device/DeviceUtils;->SM_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 557
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    .line 558
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 559
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sm"

    .line 560
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x7

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 561
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 v1, 0x8

    if-lt p0, v1, :cond_0

    return v2

    :cond_0
    if-lt p0, v4, :cond_1

    return v0

    :cond_1
    return v5

    :cond_2
    const-string v2, "sdm"

    .line 569
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 570
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lt p0, v4, :cond_3

    return v0

    :cond_3
    return v5

    :cond_4
    const-string p0, "msm"

    .line 576
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v5

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method private static getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 952
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 953
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 p1, 0x0

    .line 954
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getTotalRam()I
    .locals 5

    .line 132
    sget v0, Lmiuix/device/DeviceUtils;->mTotalRam:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.util.HardwareInfo"

    .line 134
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getTotalPhysicalMemory"

    new-array v3, v0, [Ljava/lang/Class;

    .line 135
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 136
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    .line 137
    div-long/2addr v1, v3

    div-long/2addr v1, v3

    div-long/2addr v1, v3

    long-to-int v1, v1

    sput v1, Lmiuix/device/DeviceUtils;->mTotalRam:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "DeviceUtils"

    .line 139
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sput v0, Lmiuix/device/DeviceUtils;->mTotalRam:I

    .line 143
    :cond_0
    :goto_0
    sget v0, Lmiuix/device/DeviceUtils;->mTotalRam:I

    return v0
.end method

.method private static initDeviceLevelInfo()Z
    .locals 6

    const-string v0, "getDeviceLevel"

    .line 878
    sget-boolean v1, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo:Z

    if-eqz v1, :cond_0

    return v1

    .line 882
    :cond_0
    :try_start_0
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerfClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    .line 884
    sget-boolean v0, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo:Z

    return v0

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    .line 887
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 888
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lmiuix/device/DeviceUtils;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    new-array v2, v5, [Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 891
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    const-string v0, "DEVICE_LEVEL_FOR_RAM"

    .line 895
    invoke-static {v1, v0, v3}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    const-string v0, "DEVICE_LEVEL_FOR_CPU"

    .line 896
    invoke-static {v1, v0, v3}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    const-string v0, "DEVICE_LEVEL_FOR_GPU"

    .line 897
    invoke-static {v1, v0, v3}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    const-string v0, "LOW_DEVICE"

    .line 900
    invoke-static {v1, v0, v3}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiuix/device/DeviceUtils;->LOW:I

    const-string v0, "MIDDLE_DEVICE"

    .line 901
    invoke-static {v1, v0, v3}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiuix/device/DeviceUtils;->MIDDLE:I

    const-string v0, "HIGH_DEVICE"

    .line 902
    invoke-static {v1, v0, v3}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiuix/device/DeviceUtils;->HIGH:I

    const-string v0, "DEVICE_LEVEL_UNKNOWN"

    .line 903
    invoke-static {v1, v0, v3}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiuix/device/DeviceUtils;->UNKNOWN:I

    .line 904
    sput-boolean v5, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDeviceLevelInfo Fail: Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :goto_0
    sget-boolean v0, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo:Z

    return v0
.end method

.method public static isLiteV1StockPlus()Z
    .locals 2

    .line 297
    sget-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "ro.config.low_ram.support_miuilite_plus"

    const-string v1, "false"

    .line 300
    invoke-static {v0, v1}, Lmiuix/device/LiteSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 299
    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean;

    .line 302
    :cond_0
    sget-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isMiuiLiteRom()Z
    .locals 4

    .line 147
    sget-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.os.Build"

    .line 149
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IS_MIUI_LITE_VERSION"

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "DeviceUtils"

    const-string v3, "isMiuiLiteRom failed"

    .line 153
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    sput-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;

    .line 157
    :cond_0
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMiuiLiteV2()Z
    .locals 3

    .line 168
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 171
    :cond_0
    invoke-static {}, Lmiuix/device/DeviceUtils;->getMiuiLiteVersion()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isMiuiMiddle()Z
    .locals 2

    .line 208
    invoke-static {}, Lmiuix/device/DeviceUtils;->getMiuiMiddleVersion()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static parseLine([Ljava/lang/String;Ljava/util/List;Lmiuix/device/DeviceUtils$CpuInfo;)Lmiuix/device/DeviceUtils$CpuInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmiuix/device/DeviceUtils$CpuInfo;",
            ">;",
            "Lmiuix/device/DeviceUtils$CpuInfo;",
            ")",
            "Lmiuix/device/DeviceUtils$CpuInfo;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 661
    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 662
    aget-object v2, p0, v1

    const-string v3, "processor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 663
    invoke-static {v0}, Lmiuix/device/DeviceUtils;->createCpuInfo(Ljava/lang/String;)Lmiuix/device/DeviceUtils$CpuInfo;

    move-result-object p2

    .line 664
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 666
    aget-object p0, p0, v1

    invoke-static {p0, v0, p2}, Lmiuix/device/DeviceUtils;->getCpuInfo(Ljava/lang/String;Ljava/lang/String;Lmiuix/device/DeviceUtils$CpuInfo;)V

    :cond_1
    :goto_0
    return-object p2
.end method

.method private static setDeviceLevel(III)I
    .locals 0

    .line 439
    sput p0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    .line 440
    sget p0, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    if-ne p2, p0, :cond_0

    .line 441
    sput p1, Lmiuix/device/DeviceUtils;->mCpuLevel:I

    return p1

    .line 443
    :cond_0
    sget p0, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    if-ne p2, p0, :cond_1

    .line 444
    sput p1, Lmiuix/device/DeviceUtils;->mGpuLevel:I

    return p1

    .line 446
    :cond_1
    sget p0, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    if-ne p2, p0, :cond_2

    .line 447
    sput p1, Lmiuix/device/DeviceUtils;->mRamLevel:I

    return p1

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static toInt(Ljava/lang/String;)I
    .locals 1

    const-string v0, "0x"

    .line 693
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 694
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 696
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static transDeviceLevel(I)I
    .locals 1

    .line 937
    sget v0, Lmiuix/device/DeviceUtils;->LOW:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 939
    :cond_0
    sget v0, Lmiuix/device/DeviceUtils;->MIDDLE:I

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 941
    :cond_1
    sget v0, Lmiuix/device/DeviceUtils;->HIGH:I

    if-ne p0, v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method
