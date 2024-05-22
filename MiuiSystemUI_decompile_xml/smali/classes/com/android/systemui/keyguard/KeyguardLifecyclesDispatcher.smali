.class public final Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mHandler:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;

.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;-><init>(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mHandler:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 12
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 14
    return-void
    .line 16
.end method
