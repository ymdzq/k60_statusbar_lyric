.class public Lcom/android/settings/applications/AppStateTurnScreenOnBridge;
.super Lcom/android/settings/applications/AppStateAppOpsBridge;
.source "AppStateTurnScreenOnBridge.java"


# static fields
.field public static final FILTER_TURN_SCREEN_ON_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private static final PERMISSIONS:[Ljava/lang/String;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.permission.TURN_SCREEN_ON"

    .line 36
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppStateTurnScreenOnBridge;->PERMISSIONS:[Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/android/settings/applications/AppStateTurnScreenOnBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateTurnScreenOnBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateTurnScreenOnBridge;->FILTER_TURN_SCREEN_ON_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 7

    const-string v0, "android:turn_screen_on"

    .line 44
    invoke-static {v0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Lcom/android/settings/applications/AppStateTurnScreenOnBridge;->PERMISSIONS:[Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;)V

    .line 45
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/AppStateTurnScreenOnBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method


# virtual methods
.method public getPermissionInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;
    .locals 2

    .line 67
    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/AppStateAppOpsBridge;->getPermissionInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v0

    .line 68
    iget-object p0, p0, Lcom/android/settings/applications/AppStateTurnScreenOnBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v1, "android:turn_screen_on"

    invoke-virtual {p0, v1, p2, p1}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    return-object v0
.end method

.method protected loadAllExtraInfo()V
    .locals 6

    .line 55
    invoke-super {p0}, Lcom/android/settings/applications/AppStateAppOpsBridge;->loadAllExtraInfo()V

    .line 56
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 58
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v3, v2, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v3, :cond_0

    .line 59
    check-cast v2, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    iget-object v3, p0, Lcom/android/settings/applications/AppStateTurnScreenOnBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "android:turn_screen_on"

    invoke-virtual {v3, v5, v4, v1}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 0

    .line 50
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/applications/AppStateTurnScreenOnBridge;->getPermissionInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
