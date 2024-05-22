.class public final Lcom/android/keyguard/clock/ClockManager$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
