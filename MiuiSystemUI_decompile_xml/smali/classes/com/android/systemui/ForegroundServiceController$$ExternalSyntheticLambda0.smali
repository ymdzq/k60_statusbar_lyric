.class public final synthetic Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/appops/AppOpsController$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ForegroundServiceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ForegroundServiceController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ForegroundServiceController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onActiveStateChanged(Ljava/lang/String;ZII)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ForegroundServiceController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v6, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;

    .line 7
    move-object v0, v6

    .line 9
    move-object v1, p0

    .line 10
    move v2, p3

    .line 11
    move v3, p4

    .line 12
    move-object v4, p1

    .line 13
    move v5, p2

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ForegroundServiceController;IILjava/lang/String;Z)V

    .line 15
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceController;->mMainHandler:Landroid/os/Handler;

    .line 18
    invoke-virtual {p0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    return-void
    .line 23
.end method
