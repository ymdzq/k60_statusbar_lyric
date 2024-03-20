.class public Lcom/android/settings/utils/FastDoubleClickHelper;
.super Ljava/lang/Object;
.source "FastDoubleClickHelper.java"


# instance fields
.field private mLastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFastDoubleClick()Z
    .locals 6

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lcom/android/settings/utils/FastDoubleClickHelper;->mLastClickTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 14
    :cond_0
    iput-wide v0, p0, Lcom/android/settings/utils/FastDoubleClickHelper;->mLastClickTime:J

    const/4 p0, 0x0

    return p0
.end method
