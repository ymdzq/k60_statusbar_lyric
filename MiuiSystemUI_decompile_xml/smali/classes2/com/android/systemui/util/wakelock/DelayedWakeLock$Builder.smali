.class public final Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public final mLogger:Lcom/android/systemui/util/wakelock/WakeLockLogger;

.field public mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->mLogger:Lcom/android/systemui/util/wakelock/WakeLockLogger;

    .line 7
    return-void
    .line 9
.end method
