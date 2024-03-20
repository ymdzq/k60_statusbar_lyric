.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field public final mAlertManager:Ldagger/Lazy;

.field public mBindEventManagerImpl:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG:Z

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Ldagger/Lazy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator;->mAlertManager:Ldagger/Lazy;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator;->mBindEventManagerImpl:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator$$ExternalSyntheticLambda0;

    .line 4
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator;)V

    .line 6
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;->listeners:Lcom/android/systemui/util/ListenerSet;

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    .line 11
    return-void
    .line 14
.end method
