.class public final Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final halfFoldedTimeoutMillis$delegate:Lkotlin/Lazy;

.field public final isEnabled$delegate:Lkotlin/Lazy;

.field public final isHingeAngleEnabled$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isEnabled$2;->INSTANCE:Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isEnabled$2;

    .line 5
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 7
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;->isEnabled$delegate:Lkotlin/Lazy;

    .line 11
    sget-object v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isHingeAngleEnabled$2;->INSTANCE:Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isHingeAngleEnabled$2;

    .line 13
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;->isHingeAngleEnabled$delegate:Lkotlin/Lazy;

    .line 19
    sget-object v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$halfFoldedTimeoutMillis$2;->INSTANCE:Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$halfFoldedTimeoutMillis$2;

    .line 21
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;->halfFoldedTimeoutMillis$delegate:Lkotlin/Lazy;

    .line 27
    return-void
    .line 29
.end method
