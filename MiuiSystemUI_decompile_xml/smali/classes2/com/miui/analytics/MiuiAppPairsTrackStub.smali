.class public Lcom/miui/analytics/MiuiAppPairsTrackStub;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ACTION_EXIT_APPPAIRS:Ljava/lang/String; = "action_exit_apppairs"

.field public static final ACTION_EXIT_SPLIT:Ljava/lang/String; = "action_exit_split"

.field public static final ACTION_THREE_GESTURE:Ljava/lang/String; = "action_three_gesture"

.field private static mStub:Lcom/miui/analytics/MiuiAppPairsTrackStub;


# direct methods
.method public static getInstance()Lcom/miui/analytics/MiuiAppPairsTrackStub;
    .locals 1

    .line 1
    invoke-static {}, Lstubs/src/com/miui/analytics/MiuiTrackUtils;->isCanOneTrack()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const-class v0, Lcom/miui/analytics/MiuiAppPairsTrackStub;

    .line 8
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Lcom/miui/analytics/MiuiAppPairsTrackStub;

    .line 14
    return-object v0

    .line 16
    :cond_0
    sget-object v0, Lcom/miui/analytics/MiuiAppPairsTrackStub;->mStub:Lcom/miui/analytics/MiuiAppPairsTrackStub;

    .line 17
    if-nez v0, :cond_1

    .line 19
    new-instance v0, Lcom/miui/analytics/MiuiAppPairsTrackStub;

    .line 21
    invoke-direct {v0}, Lcom/miui/analytics/MiuiAppPairsTrackStub;-><init>()V

    .line 23
    sput-object v0, Lcom/miui/analytics/MiuiAppPairsTrackStub;->mStub:Lcom/miui/analytics/MiuiAppPairsTrackStub;

    .line 26
    :cond_1
    sget-object v0, Lcom/miui/analytics/MiuiAppPairsTrackStub;->mStub:Lcom/miui/analytics/MiuiAppPairsTrackStub;

    .line 28
    return-object v0
    .line 30
.end method


# virtual methods
.method public trackEvent(Ljava/lang/String;Landroid/content/Context;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
