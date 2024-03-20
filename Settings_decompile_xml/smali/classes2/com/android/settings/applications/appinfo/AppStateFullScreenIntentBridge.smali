.class public Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge;
.super Lcom/android/settings/applications/AppStateAppOpsBridge;
.source "AppStateFullScreenIntentBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;
    }
.end annotation


# static fields
.field public static final FILTER_USE_FULL_SCREEN_INTENT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private static final PM_PERMISSION:[Ljava/lang/String;


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.permission.USE_FULL_SCREEN_INTENT"

    .line 22
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge;->PM_PERMISSION:[Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge;->FILTER_USE_FULL_SCREEN_INTENT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 6

    const/16 v4, 0x85

    .line 29
    sget-object v5, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge;->PM_PERMISSION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;)V

    .line 30
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method


# virtual methods
.method public getFullScreenIntentInfo(Ljava/lang/String;I)Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;
    .locals 2

    .line 39
    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/AppStateAppOpsBridge;->getPermissionInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v0

    .line 40
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v1, "android:use_full_screen_intent"

    invoke-virtual {p0, v1, p2, p1}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    .line 42
    new-instance p0, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    return-object p0
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 0

    .line 35
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge;->getFullScreenIntentInfo(Ljava/lang/String;I)Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
