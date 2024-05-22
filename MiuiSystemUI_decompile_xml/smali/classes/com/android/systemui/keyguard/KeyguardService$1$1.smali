.class public final Lcom/android/systemui/keyguard/KeyguardService$1$1;
.super Landroid/view/IRemoteAnimationFinishedCallback$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardService$1;

.field public final synthetic val$transition:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardService$1;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService$1;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardService$1$1;->val$transition:Landroid/os/IBinder;

    .line 4
    invoke-direct {p0}, Landroid/view/IRemoteAnimationFinishedCallback$Stub;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationFinished()V
    .locals 2

    .line 1
    const-string v0, "KeyguardService"

    .line 2
    const-string v1, "Finish IRemoteAnimationRunner."

    .line 4
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService$1;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1$1;->val$transition:Landroid/os/IBinder;

    .line 11
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/KeyguardService$1;->finish(Landroid/os/IBinder;)V

    .line 13
    return-void
    .line 16
.end method
