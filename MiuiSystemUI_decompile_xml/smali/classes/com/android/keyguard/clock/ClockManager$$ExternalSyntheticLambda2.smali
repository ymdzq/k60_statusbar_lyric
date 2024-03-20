.class public final synthetic Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$1:Lcom/android/systemui/plugins/ClockPlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/plugins/ClockPlugin;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/plugins/ClockPlugin;

    .line 2
    instance-of p0, p0, Lcom/android/keyguard/clock/DefaultClockController;

    .line 4
    const/4 p0, 0x0

    .line 6
    throw p0
    .line 7
.end method
