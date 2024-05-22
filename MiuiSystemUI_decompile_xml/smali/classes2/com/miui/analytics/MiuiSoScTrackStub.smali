.class public Lcom/miui/analytics/MiuiSoScTrackStub;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ACTION_ENTER_BOTH:Ljava/lang/String; = "action_enter_both"

.field public static final ACTION_ENTER_SINGLE:Ljava/lang/String; = "action_enter_single"

.field public static final ACTION_EXIT_APPPAIR:Ljava/lang/String; = "action_exit_apppair"

.field public static final ACTION_EXIT_BOTH:Ljava/lang/String; = "action_exit_both"

.field public static final ACTION_EXIT_SINGLE:Ljava/lang/String; = "action_exit_single"

.field private static mStub:Lcom/miui/analytics/MiuiSoScTrackStub;

.field private static sInstance:Lcom/miui/analytics/MiuiSoScTrackStub;


# instance fields
.field protected mBgExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 2
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 8
    sput-object v0, Lcom/miui/analytics/MiuiSoScTrackStub;->sInstance:Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 10
    return-void
    .line 12
.end method

.method public static getInstance()Lcom/miui/analytics/MiuiSoScTrackStub;
    .locals 1

    .line 1
    invoke-static {}, Lstubs/src/com/miui/analytics/MiuiTrackUtils;->isCN()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/miui/analytics/MiuiSoScTrackStub;->sInstance:Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 8
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/miui/analytics/MiuiSoScTrackStub;->mStub:Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 11
    if-nez v0, :cond_1

    .line 13
    new-instance v0, Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 15
    invoke-direct {v0}, Lcom/miui/analytics/MiuiSoScTrackStub;-><init>()V

    .line 17
    sput-object v0, Lcom/miui/analytics/MiuiSoScTrackStub;->mStub:Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 20
    :cond_1
    sget-object v0, Lcom/miui/analytics/MiuiSoScTrackStub;->mStub:Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 22
    return-object v0
    .line 24
.end method


# virtual methods
.method public init(Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/analytics/MiuiSoScTrackStub;->mBgExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    iput-object p2, p0, Lcom/miui/analytics/MiuiSoScTrackStub;->mContext:Landroid/content/Context;

    .line 4
    return-void
    .line 6
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 2
    return-void
.end method
