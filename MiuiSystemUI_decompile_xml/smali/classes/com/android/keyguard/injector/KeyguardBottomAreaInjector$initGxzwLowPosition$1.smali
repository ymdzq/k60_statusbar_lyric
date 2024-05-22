.class public final Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$initGxzwLowPosition$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/keyguard/biometrics/fod/MiuiGxzwCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$initGxzwLowPosition$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onGxzwTouchDown()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$initGxzwLowPosition$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 38
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 43
    :cond_1
    return-void
    .line 46
.end method
