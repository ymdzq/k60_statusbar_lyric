.class public abstract Lcom/miui/maml/MamlDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public abstract onVsync(J)V
.end method

.method public onVsync(JII)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/MamlDisplayEventReceiver;->onVsync(J)V

    return-void
.end method

.method public onVsync(JJI)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/MamlDisplayEventReceiver;->onVsync(J)V

    return-void
.end method

.method public onVsync(JJILandroid/view/DisplayEventReceiver$VsyncEventData;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/MamlDisplayEventReceiver;->onVsync(J)V

    return-void
.end method
