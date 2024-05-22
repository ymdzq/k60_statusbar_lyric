.class public final Lcom/android/systemui/statusbar/policy/DelayedOnClickListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final mActualListener:Landroid/view/View$OnClickListener;

.field public final mInitDelayMs:J

.field public final mInitTimeMs:J


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DelayedOnClickListener;->mActualListener:Landroid/view/View$OnClickListener;

    .line 5
    iput-wide p2, p0, Lcom/android/systemui/statusbar/policy/DelayedOnClickListener;->mInitDelayMs:J

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide p1

    .line 12
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/DelayedOnClickListener;->mInitTimeMs:J

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/DelayedOnClickListener;->mInitTimeMs:J

    .line 6
    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/DelayedOnClickListener;->mInitDelayMs:J

    .line 8
    add-long/2addr v2, v4

    .line 10
    cmp-long v0, v0, v2

    .line 11
    if-ltz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DelayedOnClickListener;->mActualListener:Landroid/view/View$OnClickListener;

    .line 20
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 22
    goto :goto_1

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    const-string p1, "Accidental Smart Suggestion click registered, delay: "

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    const-string p1, "SmartReplyViewInflater"

    .line 40
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_1
    return-void
    .line 45
.end method
