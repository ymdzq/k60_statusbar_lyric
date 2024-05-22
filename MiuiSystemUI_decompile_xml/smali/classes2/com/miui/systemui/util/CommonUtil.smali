.class public abstract Lcom/miui/systemui/util/CommonUtil;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final OWNER_USER_PROCESS:Z

.field public static volatile sKeyguardWallpaperType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 2
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    sput-boolean v0, Lcom/miui/systemui/util/CommonUtil;->OWNER_USER_PROCESS:Z

    .line 13
    const-string v0, "default"

    .line 15
    sput-object v0, Lcom/miui/systemui/util/CommonUtil;->sKeyguardWallpaperType:Ljava/lang/String;

    .line 17
    return-void
    .line 19
.end method

.method public static getNotificationManagerIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    const-string v1, "android.intent.action.MAIN"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v1, "com.android.settings"

    .line 9
    const-string v2, "com.android.settings.SubSettings"

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const-string v1, "android.intent.category.LAUNCHER"

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    const-string v1, ":settings:show_fragment"

    .line 21
    const-string v2, "com.android.settings.NotificationStatusBarSettings"

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    const v1, 0x7f13089b    # @string/notification_status_bar 'Notifications & status bar'

    .line 28
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 34
    const-string v2, ":settings:show_fragment_title"

    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const/high16 v1, 0x10000000

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->isPadOrFoldLargeScreen(Landroid/content/Context;)Z

    .line 45
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    invoke-static {p0, v0}, Lcom/miui/utils/IntentUtils;->transformToSplitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    .line 51
    move-result-object v0

    .line 54
    :cond_0
    return-object v0
    .line 55
.end method

.method public static getTopActivityPkg(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const-string p1, "keyguard"

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/KeyguardManager;

    .line 10
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 12
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    const-string p0, "lockscreen"

    .line 18
    return-object p0

    .line 20
    :cond_0
    const-class p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 21
    invoke-static {p0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    check-cast p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 27
    iget-object p0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mTopActivity:Landroid/content/ComponentName;

    .line 29
    if-nez p0, :cond_1

    .line 31
    const-string p0, ""

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    :goto_0
    return-object p0
    .line 40
.end method

.method public static isDefaultLockScreenTheme()Z
    .locals 2

    .line 1
    const-string v0, "maml"

    .line 2
    sget-object v1, Lcom/miui/systemui/util/CommonUtil;->sKeyguardWallpaperType:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    return v0
    .line 12
.end method

.method public static isTopActivityLauncher(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/miui/utils/MiuiConstants$PackageName;->GENERALIZED_HOMES:Ljava/util/ArrayList;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1}, Lcom/miui/systemui/util/CommonUtil;->getTopActivityPkg(Landroid/content/Context;Z)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v0, v1, :cond_1

    .line 11
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 14
    move-result v2

    .line 17
    const/16 v3, 0x22

    .line 18
    if-ne v2, v3, :cond_1

    .line 20
    sub-int/2addr v0, v1

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 23
    move-result v2

    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    :cond_1
    return-object p0
    .line 33
.end method

.method public static resolveIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object p0

    .line 9
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 10
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, p1, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 15
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "resolveIntent exception"

    .line 23
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v1, "CommonUtil"

    .line 28
    invoke-static {p0, p1, v1}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 30
    :goto_0
    return-object v0
    .line 33
.end method

.method public static startCalendarApp(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    const-string v1, "android.intent.action.MAIN"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 9
    move-result v1

    .line 12
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 13
    const-string v3, "com.android.calendar"

    .line 15
    if-eqz v2, :cond_2

    .line 17
    const-string v2, "com.xiaomi.calendar"

    .line 19
    invoke-static {p0, v2, v1}, Lcom/miui/utils/PackageUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 21
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    move-object v3, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p0, v3, v1}, Lcom/miui/utils/PackageUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 29
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    const-string v3, "com.google.android.calendar"

    .line 36
    :cond_2
    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string p0, "android.intent.category.LAUNCHER"

    .line 41
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const/high16 p0, 0x10000000

    .line 46
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    const-class p0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 51
    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 56
    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 57
    const/4 v1, 0x1

    .line 59
    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 60
    return-void
    .line 63
.end method

.method public static startClockApp()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    const-string v1, "android.intent.action.MAIN"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v1, "com.android.deskclock"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    const-string v1, "android.intent.category.LAUNCHER"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const/high16 v1, 0x10000000

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 24
    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 30
    const/4 v2, 0x1

    .line 32
    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 33
    return-void
    .line 36
.end method

.method public static toggleTorch()V
    .locals 2

    .line 1
    const-class v0, Lmiui/stub/MiuiStub$5;

    .line 2
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lmiui/stub/MiuiStub$5;

    .line 8
    iget-object v1, v0, Lmiui/stub/MiuiStub$5;->this$0:Lmiui/stub/MiuiStub;

    .line 10
    iget-object v1, v1, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 12
    iget-object v1, v1, Lmiui/stub/MiuiStub$SysUIProvider;->mFlashlightController:Ldagger/Lazy;

    .line 14
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 20
    check-cast v1, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 22
    invoke-virtual {v1}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->isEnabled()Z

    .line 24
    move-result v1

    .line 27
    xor-int/lit8 v1, v1, 0x1

    .line 28
    iget-object v0, v0, Lmiui/stub/MiuiStub$5;->this$0:Lmiui/stub/MiuiStub;

    .line 30
    iget-object v0, v0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 32
    iget-object v0, v0, Lmiui/stub/MiuiStub$SysUIProvider;->mFlashlightController:Ldagger/Lazy;

    .line 34
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 40
    check-cast v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 42
    invoke-virtual {v0, v1}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->setFlashlight(Z)V

    .line 44
    return-void
    .line 47
.end method
