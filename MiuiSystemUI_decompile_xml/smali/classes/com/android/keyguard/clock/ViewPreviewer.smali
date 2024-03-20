.class public final Lcom/android/keyguard/clock/ViewPreviewer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    iput-object v0, p0, Lcom/android/keyguard/clock/ViewPreviewer;->mMainHandler:Landroid/os/Handler;

    .line 14
    return-void
    .line 16
.end method

.method public static dispatchVisibilityAggregated(Landroid/view/View;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    if-nez p1, :cond_2

    .line 15
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 17
    :cond_2
    instance-of v3, p0, Landroid/view/ViewGroup;

    .line 20
    if-eqz v3, :cond_4

    .line 22
    if-eqz v0, :cond_3

    .line 24
    if-eqz p1, :cond_3

    .line 26
    goto :goto_1

    .line 28
    :cond_3
    move v1, v2

    .line 29
    :goto_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 32
    move-result p1

    .line 35
    :goto_2
    if-ge v2, p1, :cond_4

    .line 36
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 41
    invoke-static {v0, v1}, Lcom/android/keyguard/clock/ViewPreviewer;->dispatchVisibilityAggregated(Landroid/view/View;Z)V

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_2

    .line 47
    :cond_4
    return-void
    .line 48
.end method
