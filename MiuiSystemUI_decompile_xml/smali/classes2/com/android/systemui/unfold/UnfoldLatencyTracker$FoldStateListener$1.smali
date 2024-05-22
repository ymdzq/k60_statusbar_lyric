.class public final Lcom/android/systemui/unfold/UnfoldLatencyTracker$FoldStateListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/UnfoldLatencyTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldLatencyTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker$FoldStateListener$1;->this$0:Lcom/android/systemui/unfold/UnfoldLatencyTracker;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker$FoldStateListener$1;->this$0:Lcom/android/systemui/unfold/UnfoldLatencyTracker;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->folded:Ljava/lang/Boolean;

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 19
    if-nez v1, :cond_3

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    move-result-object v1

    .line 25
    iput-object v1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->folded:Ljava/lang/Boolean;

    .line 26
    if-eqz v0, :cond_3

    .line 28
    if-nez p1, :cond_3

    .line 30
    iget-object p1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 32
    const/16 v0, 0xd

    .line 34
    invoke-virtual {p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 36
    iget-object p1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->transitionProgressProvider:Ljava/util/Optional;

    .line 39
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    .line 41
    move-result p1

    .line 44
    const/4 v0, 0x0

    .line 45
    if-eqz p1, :cond_2

    .line 46
    const-string p1, "animator_duration_scale"

    .line 48
    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->contentResolver:Landroid/content/ContentResolver;

    .line 50
    invoke-static {v1, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-static {p1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    .line 58
    move-result-object p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 64
    move-result p1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 69
    :goto_0
    const/4 v1, 0x0

    .line 71
    cmpg-float p1, p1, v1

    .line 72
    const/4 v1, 0x1

    .line 74
    if-nez p1, :cond_1

    .line 75
    move p1, v1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move p1, v0

    .line 79
    :goto_1
    xor-int/2addr p1, v1

    .line 80
    if-eqz p1, :cond_2

    .line 81
    move v0, v1

    .line 83
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    move-result-object p1

    .line 87
    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->isTransitionEnabled:Ljava/lang/Boolean;

    .line 88
    :cond_3
    return-void
    .line 90
.end method
