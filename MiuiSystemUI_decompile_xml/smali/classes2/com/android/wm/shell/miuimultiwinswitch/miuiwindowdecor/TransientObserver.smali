.class public Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private volatile mTransientShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;->mTransientShowing:Z

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public isTransientShowing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;->mTransientShowing:Z

    .line 2
    return p0
    .line 4
.end method

.method public setTransientShowing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;->mTransientShowing:Z

    .line 2
    return-void
    .line 4
.end method