.class public final Landroidx/compose/ui/text/android/LayoutIntrinsics;
.super Ljava/lang/Object;
.source "LayoutIntrinsics.kt"


# instance fields
.field private final boringMetrics$delegate:Lkotlin/Lazy;

.field private final maxIntrinsicWidth$delegate:Lkotlin/Lazy;

.field private final minIntrinsicWidth$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 2

    const-string v0, "charSequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "textPaint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Landroidx/compose/ui/text/android/LayoutIntrinsics$boringMetrics$2;

    invoke-direct {v1, p3, p1, p2}, Landroidx/compose/ui/text/android/LayoutIntrinsics$boringMetrics$2;-><init>(ILjava/lang/CharSequence;Landroid/text/TextPaint;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->boringMetrics$delegate:Lkotlin/Lazy;

    .line 54
    new-instance p3, Landroidx/compose/ui/text/android/LayoutIntrinsics$minIntrinsicWidth$2;

    invoke-direct {p3, p1, p2}, Landroidx/compose/ui/text/android/LayoutIntrinsics$minIntrinsicWidth$2;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    invoke-static {v0, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->minIntrinsicWidth$delegate:Lkotlin/Lazy;

    .line 62
    new-instance p3, Landroidx/compose/ui/text/android/LayoutIntrinsics$maxIntrinsicWidth$2;

    invoke-direct {p3, p0, p1, p2}, Landroidx/compose/ui/text/android/LayoutIntrinsics$maxIntrinsicWidth$2;-><init>(Landroidx/compose/ui/text/android/LayoutIntrinsics;Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    invoke-static {v0, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->maxIntrinsicWidth$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getBoringMetrics()Landroid/text/BoringLayout$Metrics;
    .locals 0

    .line 44
    iget-object p0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->boringMetrics$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/BoringLayout$Metrics;

    return-object p0
.end method

.method public final getMaxIntrinsicWidth()F
    .locals 0

    .line 62
    iget-object p0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->maxIntrinsicWidth$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getMinIntrinsicWidth()F
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->minIntrinsicWidth$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method
