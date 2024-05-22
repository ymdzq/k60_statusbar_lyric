.class public final Lcom/android/systemui/settings/brightness/BrightnessController$Factory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBackgroundHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mBackgroundHandler:Landroid/os/Handler;

    .line 13
    return-void
    .line 15
.end method
