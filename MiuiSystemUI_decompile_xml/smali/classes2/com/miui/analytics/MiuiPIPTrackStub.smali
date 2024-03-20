.class public Lcom/miui/analytics/MiuiPIPTrackStub;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ACTION_CLICK_FUNCTION:Ljava/lang/String; = "action_click_function"

.field public static final ACTION_ENTER_PIP:Ljava/lang/String; = "action_enter_pip"

.field private static mStub:Lcom/miui/analytics/MiuiPIPTrackStub;


# direct methods
.method public static getInstance()Lcom/miui/analytics/MiuiPIPTrackStub;
    .locals 1

    .line 1
    invoke-static {}, Lstubs/src/com/miui/analytics/MiuiTrackUtils;->isCanOneTrack()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const-class v0, Lcom/miui/analytics/MiuiPIPTrackStub;

    .line 8
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Lcom/miui/analytics/MiuiPIPTrackStub;

    .line 14
    return-object v0

    .line 16
    :cond_0
    sget-object v0, Lcom/miui/analytics/MiuiPIPTrackStub;->mStub:Lcom/miui/analytics/MiuiPIPTrackStub;

    .line 17
    if-nez v0, :cond_1

    .line 19
    new-instance v0, Lcom/miui/analytics/MiuiPIPTrackStub;

    .line 21
    invoke-direct {v0}, Lcom/miui/analytics/MiuiPIPTrackStub;-><init>()V

    .line 23
    sput-object v0, Lcom/miui/analytics/MiuiPIPTrackStub;->mStub:Lcom/miui/analytics/MiuiPIPTrackStub;

    .line 26
    :cond_1
    sget-object v0, Lcom/miui/analytics/MiuiPIPTrackStub;->mStub:Lcom/miui/analytics/MiuiPIPTrackStub;

    .line 28
    return-object v0
    .line 30
.end method


# virtual methods
.method public trackEvent(Ljava/lang/String;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
