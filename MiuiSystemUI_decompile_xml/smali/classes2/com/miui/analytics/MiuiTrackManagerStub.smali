.class public abstract Lcom/miui/analytics/MiuiTrackManagerStub;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static mStub:Lcom/miui/analytics/MiuiTrackManagerStub;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/miui/analytics/MiuiTrackManagerStub;

    .line 2
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/analytics/MiuiTrackManagerStub;

    .line 8
    sput-object v0, Lcom/miui/analytics/MiuiTrackManagerStub;->mStub:Lcom/miui/analytics/MiuiTrackManagerStub;

    .line 10
    return-void
    .line 12
.end method

.method public static getInstance()Lcom/miui/analytics/MiuiTrackManagerStub;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/analytics/MiuiTrackManagerStub;->mStub:Lcom/miui/analytics/MiuiTrackManagerStub;

    .line 2
    return-object v0
    .line 4
.end method


# virtual methods
.method public abstract init(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V
.end method

.method public abstract trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
