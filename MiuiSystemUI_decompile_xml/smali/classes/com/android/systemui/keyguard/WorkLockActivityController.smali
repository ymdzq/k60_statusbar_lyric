.class public final Lcom/android/systemui/keyguard/WorkLockActivityController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIatm:Landroid/app/IActivityTaskManager;

.field public final mLockListener:Lcom/android/systemui/keyguard/WorkLockActivityController$1;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/shared/system/TaskStackChangeListeners;Landroid/app/IActivityTaskManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/keyguard/WorkLockActivityController$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/WorkLockActivityController$1;-><init>(Lcom/android/systemui/keyguard/WorkLockActivityController;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mLockListener:Lcom/android/systemui/keyguard/WorkLockActivityController$1;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mContext:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 14
    iput-object p4, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mIatm:Landroid/app/IActivityTaskManager;

    .line 16
    invoke-virtual {p3, v0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 18
    return-void
    .line 21
.end method
