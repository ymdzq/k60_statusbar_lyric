.class public final Lcom/android/keyguard/clock/ClockManager$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/clock/ClockManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/ClockManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$2;->this$0:Lcom/android/keyguard/clock/ClockManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$2;->this$0:Lcom/android/keyguard/clock/ClockManager;

    .line 2
    invoke-static {p0}, Lcom/android/keyguard/clock/ClockManager;->-$$Nest$mreload(Lcom/android/keyguard/clock/ClockManager;)V

    .line 4
    return-void
    .line 7
.end method