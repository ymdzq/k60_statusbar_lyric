.class public Lmiuix/autodensity/AutoDensityConfig;
.super Lmiuix/autodensity/DensityProcessor;
.source "AutoDensityConfig.java"


# static fields
.field private static final TAG_CONFIG_CHANGE_FRAGMENT:Ljava/lang/String; = "ConfigurationChangeFragment"

.field private static sInstance:Lmiuix/autodensity/AutoDensityConfig; = null

.field private static sUpdateSystemResources:Z = true


# instance fields
.field private sCanAccessHiddenAPI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Lmiuix/autodensity/DensityProcessor;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lmiuix/autodensity/AutoDensityConfig;->sCanAccessHiddenAPI:Z

    .line 59
    invoke-virtual {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->prepareInApplication(Landroid/app/Application;)V

    .line 60
    instance-of v0, p1, Lmiuix/app/Application;

    if-eqz v0, :cond_0

    .line 61
    move-object v0, p1

    check-cast v0, Lmiuix/app/Application;

    new-instance v1, Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;

    invoke-direct {v1, p0}, Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;-><init>(Lmiuix/autodensity/DensityProcessor;)V

    invoke-virtual {v0, v1}, Lmiuix/app/Application;->registerActivityLifecycleSubCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 62
    new-instance v1, Lmiuix/autodensity/AutoDensityConfig$1;

    invoke-direct {v1, p0, p1}, Lmiuix/autodensity/AutoDensityConfig$1;-><init>(Lmiuix/autodensity/AutoDensityConfig;Landroid/app/Application;)V

    invoke-virtual {v0, v1}, Lmiuix/app/Application;->registerComponentSubCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;

    invoke-direct {v0, p0}, Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;-><init>(Lmiuix/autodensity/DensityProcessor;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 75
    new-instance v0, Lmiuix/autodensity/AutoDensityConfig$2;

    invoke-direct {v0, p0, p1}, Lmiuix/autodensity/AutoDensityConfig$2;-><init>(Lmiuix/autodensity/AutoDensityConfig;Landroid/app/Application;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :goto_0
    return-void
.end method

.method private addForOnConfigurationChange(Landroid/app/Activity;)V
    .locals 1

    .line 264
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->getConfigurationChangeFragment(Landroid/app/Activity;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lmiuix/autodensity/ConfigurationChangeFragment;

    invoke-direct {v0}, Lmiuix/autodensity/ConfigurationChangeFragment;-><init>()V

    .line 267
    invoke-virtual {v0, p0}, Lmiuix/autodensity/ConfigurationChangeFragment;->setDensityProcessor(Lmiuix/autodensity/AutoDensityConfig;)V

    .line 268
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const-string p1, "ConfigurationChangeFragment"

    .line 269
    invoke-virtual {p0, v0, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 270
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 272
    :cond_0
    check-cast v0, Lmiuix/autodensity/ConfigurationChangeFragment;

    invoke-virtual {v0, p0}, Lmiuix/autodensity/ConfigurationChangeFragment;->setDensityProcessor(Lmiuix/autodensity/AutoDensityConfig;)V

    const-string p0, "AutoDensity"

    const-string p1, "ConfigurationChangeFragment has already added"

    .line 273
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private changeCurrentConfig(Landroid/app/Activity;)V
    .locals 3

    .line 287
    const-class v0, Landroid/app/Activity;

    :try_start_0
    const-string v1, "mCurrentConfig"

    invoke-static {v0, p1, v1}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 288
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object v2

    .line 289
    iget v2, v2, Lmiuix/view/DisplayConfig;->densityDpi:I

    iput v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    const-string v1, "mActivityInfo"

    .line 290
    invoke-static {v0, p1, v1}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 291
    iget v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v2, v1, 0x1000

    if-nez v2, :cond_0

    or-int/lit16 v1, v1, 0x1000

    .line 292
    iput v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 293
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->getConfigurationChangeFragment(Landroid/app/Activity;)Landroid/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 295
    check-cast p0, Lmiuix/autodensity/ConfigurationChangeFragment;

    invoke-virtual {p0}, Lmiuix/autodensity/ConfigurationChangeFragment;->removeDensityChangeFlag()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 299
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static forceUpdateDensity(Landroid/content/Context;)V
    .locals 1

    .line 344
    sget-object v0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    if-eqz v0, :cond_0

    .line 345
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private getConfigurationChangeFragment(Landroid/app/Activity;)Landroid/app/Fragment;
    .locals 0

    .line 304
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p1, "ConfigurationChangeFragment"

    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/app/Application;)Lmiuix/autodensity/AutoDensityConfig;
    .locals 1

    .line 32
    sget-object v0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 33
    invoke-static {p0, v0}, Lmiuix/autodensity/AutoDensityConfig;->init(Landroid/app/Application;Z)Lmiuix/autodensity/AutoDensityConfig;

    move-result-object p0

    sput-object p0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    .line 35
    :cond_0
    sget-object p0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    return-object p0
.end method

.method public static init(Landroid/app/Application;Z)Lmiuix/autodensity/AutoDensityConfig;
    .locals 1

    .line 39
    sget-object v0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    if-nez v0, :cond_0

    .line 40
    sput-boolean p1, Lmiuix/autodensity/AutoDensityConfig;->sUpdateSystemResources:Z

    .line 41
    new-instance p1, Lmiuix/autodensity/AutoDensityConfig;

    invoke-direct {p1, p0}, Lmiuix/autodensity/AutoDensityConfig;-><init>(Landroid/app/Application;)V

    sput-object p1, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    .line 43
    :cond_0
    sget-object p0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    return-object p0
.end method

.method private isShouldAdaptAutoDensity(Landroid/app/Application;)Z
    .locals 0

    .line 318
    instance-of p0, p1, Lmiuix/autodensity/IDensity;

    if-eqz p0, :cond_0

    .line 319
    check-cast p1, Lmiuix/autodensity/IDensity;

    invoke-interface {p1}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private removeCurrentConfig(Landroid/app/Activity;)V
    .locals 2

    .line 279
    :try_start_0
    const-class p0, Landroid/app/Activity;

    const-string v0, "mCurrentConfig"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lmiuix/reflect/ReflectionHelper;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 281
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setUpdateSystemRes(Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 52
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->setSystemResources(Lmiuix/view/DisplayConfig;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/autodensity/DensityConfigManager;->getOriginConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->setSystemResources(Lmiuix/view/DisplayConfig;)V

    :goto_0
    return-void
.end method

.method public static shouldUpdateSystemResource()Z
    .locals 1

    .line 47
    sget-boolean v0, Lmiuix/autodensity/AutoDensityConfig;->sUpdateSystemResources:Z

    return v0
.end method

.method private tryToAddActivityConfigCallback(Landroid/app/Activity;)V
    .locals 2

    .line 198
    iget-boolean v0, p0, Lmiuix/autodensity/AutoDensityConfig;->sCanAccessHiddenAPI:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 201
    new-instance v1, Lmiuix/autodensity/AutoDensityConfig$3;

    invoke-direct {v1, p0, p1}, Lmiuix/autodensity/AutoDensityConfig$3;-><init>(Lmiuix/autodensity/AutoDensityConfig;Landroid/app/Activity;)V

    .line 258
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 259
    iget-object p0, p0, Lmiuix/autodensity/DensityProcessor;->mModifier:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;

    invoke-virtual {p0, v1}, Lmiuix/autodensity/DensityProcessor$DensityCallback;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    return-void
.end method

.method public static updateDensity(Landroid/content/Context;)V
    .locals 1

    .line 325
    sget-object v0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lmiuix/autodensity/IDensity;

    if-eqz v0, :cond_1

    .line 330
    move-object v0, p0

    check-cast v0, Lmiuix/autodensity/IDensity;

    invoke-interface {v0}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result v0

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lmiuix/autodensity/IDensity;

    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lmiuix/autodensity/IDensity;

    invoke-interface {v0}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 339
    invoke-static {p0}, Lmiuix/autodensity/AutoDensityConfig;->forceUpdateDensity(Landroid/content/Context;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public isEnableProcessInActivity(Landroid/app/Activity;)Z
    .locals 1

    const/4 p0, 0x0

    .line 93
    :try_start_0
    instance-of v0, p1, Lmiuix/autodensity/IDensity;

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Lmiuix/autodensity/IDensity;

    invoke-interface {p1}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result p0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lmiuix/autodensity/IDensity;

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lmiuix/autodensity/IDensity;

    invoke-interface {p1}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return p0
.end method

.method protected onDensityChangedOnActivityCreated(Landroid/app/Activity;)V
    .locals 0

    .line 187
    invoke-super {p0, p1}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedOnActivityCreated(Landroid/app/Activity;)V

    .line 188
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->addForOnConfigurationChange(Landroid/app/Activity;)V

    return-void
.end method

.method protected onRegisterDensityCallback(Ljava/lang/Object;)V
    .locals 1

    .line 351
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerCallback obj: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    return-void
.end method

.method public prepareInApplication(Landroid/app/Application;)V
    .locals 5

    .line 106
    :try_start_0
    const-class v0, Landroid/content/pm/ApplicationInfo;

    .line 108
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v2, "isAllowedToUseHiddenApis"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    .line 106
    invoke-static {v0, v1, v2, v4, v3}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/autodensity/AutoDensityConfig;->sCanAccessHiddenAPI:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :catch_0
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->initAutoDensityDebugEnable()V

    .line 115
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/autodensity/DensityConfigManager;->init(Landroid/content/Context;)V

    .line 116
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 117
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected processBeforeActivityConfigChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 1

    .line 151
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 156
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    .line 157
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedBeforeActivityConfigChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)V

    .line 158
    iget p2, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    invoke-static {p2}, Lmiuix/core/util/ScreenModeHelper;->isInSplitScreenMode(I)Z

    move-result p2

    if-nez p2, :cond_0

    iget p2, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 159
    invoke-static {p2}, Lmiuix/core/util/ScreenModeHelper;->isInFreeFormMode(I)Z

    move-result p2

    .line 164
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->changeCurrentConfig(Landroid/app/Activity;)V

    .line 167
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->getConfigurationChangeFragment(Landroid/app/Activity;)Landroid/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 169
    check-cast p1, Lmiuix/autodensity/ConfigurationChangeFragment;

    invoke-virtual {p1, p0}, Lmiuix/autodensity/ConfigurationChangeFragment;->setDensityProcessor(Lmiuix/autodensity/AutoDensityConfig;)V

    :cond_1
    return-void
.end method

.method public processOnActivityCreated(Landroid/app/Activity;)V
    .locals 2

    .line 137
    instance-of v0, p1, Lmiuix/autodensity/IDensity;

    if-eqz v0, :cond_0

    .line 138
    move-object v0, p1

    check-cast v0, Lmiuix/autodensity/IDensity;

    invoke-interface {v0}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result v0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result v0

    .line 142
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiuix/autodensity/AutoDensityConfig;->updateApplicationDensity(Landroid/app/Application;)V

    if-eqz v0, :cond_1

    .line 144
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 145
    invoke-virtual {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->onDensityChangedOnActivityCreated(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public processOnActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 175
    invoke-virtual {p0, p1}, Lmiuix/autodensity/DensityProcessor;->unregisterCallback(Landroid/app/Activity;)V

    return-void
.end method

.method public processOnActivityDisplayChanged(ILandroid/app/Activity;)V
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisplayChanged activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 181
    invoke-static {p2}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 182
    invoke-virtual {p0, p1, p2}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedOnActivityDisplayChanged(ILandroid/app/Activity;)V

    return-void
.end method

.method public processOnAppConfigChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V
    .locals 1

    .line 123
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiuix/autodensity/DensityConfigManager;->updateConfig(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 124
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 126
    invoke-virtual {p0, p1}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedOnAppConfigChanged(Landroid/app/Application;)V

    .line 128
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object p0

    .line 129
    iget p0, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    iput p0, p2, Landroid/content/res/Configuration;->densityDpi:I

    :cond_0
    return-void
.end method

.method protected registerCallback(Landroid/app/Activity;)V
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lmiuix/autodensity/DensityProcessor;->registerCallback(Landroid/app/Activity;)V

    .line 194
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->tryToAddActivityConfigCallback(Landroid/app/Activity;)V

    return-void
.end method

.method updateApplicationDensity(Landroid/app/Application;)V
    .locals 0

    .line 0
    return-void
.end method
