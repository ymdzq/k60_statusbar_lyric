.class public final Lcom/android/keyguard/KeyguardUnfoldTransition;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final context:Landroid/content/Context;

.field public statusViewCentered:Z

.field public final translateAnimator$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->context:Landroid/content/Context;

    .line 5
    new-instance p1, Lcom/android/keyguard/KeyguardUnfoldTransition$filterKeyguardAndSplitShadeOnly$1;

    .line 7
    new-instance p1, Lcom/android/keyguard/KeyguardUnfoldTransition$filterKeyguard$1;

    .line 9
    new-instance p1, Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2;

    .line 11
    invoke-direct {p1, p2}, Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2;-><init>(Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V

    .line 13
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 16
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->translateAnimator$delegate:Lkotlin/Lazy;

    .line 20
    return-void
    .line 22
.end method
