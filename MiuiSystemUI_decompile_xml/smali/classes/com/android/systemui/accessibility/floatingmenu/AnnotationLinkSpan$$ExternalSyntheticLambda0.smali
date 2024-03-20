.class public final synthetic Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/text/SpannableStringBuilder;

.field public final synthetic f$2:Landroid/text/SpannableString;


# direct methods
.method public synthetic constructor <init>(Landroid/text/SpannableStringBuilder;Landroid/text/SpannableString;Landroid/text/Annotation;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;->f$1:Landroid/text/SpannableStringBuilder;

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;->f$2:Landroid/text/SpannableString;

    iput-object p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$LinkInfo;Landroid/text/SpannableStringBuilder;Landroid/text/SpannableString;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;->f$1:Landroid/text/SpannableStringBuilder;

    iput-object p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;->f$2:Landroid/text/SpannableString;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, [Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$LinkInfo;

    .line 10
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;->f$1:Landroid/text/SpannableStringBuilder;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;->f$2:Landroid/text/SpannableString;

    .line 14
    check-cast p1, Landroid/text/Annotation;

    .line 16
    invoke-virtual {p1}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 21
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 26
    move-result-object v0

    .line 29
    new-instance v3, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda1;

    .line 30
    invoke-direct {v3, v2}, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 35
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 39
    move-result-object v0

    .line 42
    new-instance v2, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda2;

    .line 43
    invoke-direct {v2}, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda2;-><init>()V

    .line 45
    invoke-virtual {v0, v2}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 48
    move-result-object v0

    .line 51
    new-instance v2, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;

    .line 52
    invoke-direct {v2, v1, p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;-><init>(Landroid/text/SpannableStringBuilder;Landroid/text/SpannableString;Landroid/text/Annotation;)V

    .line 54
    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 57
    return-void

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;->f$1:Landroid/text/SpannableStringBuilder;

    .line 61
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;->f$2:Landroid/text/SpannableString;

    .line 63
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 65
    check-cast p0, Landroid/text/Annotation;

    .line 67
    check-cast p1, Landroid/view/View$OnClickListener;

    .line 69
    new-instance v2, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan;

    .line 71
    invoke-direct {v2, p1}, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan;-><init>(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {v1, p0}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    .line 76
    move-result p1

    .line 79
    invoke-virtual {v1, p0}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    .line 80
    move-result p0

    .line 83
    invoke-virtual {v1, v2}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    .line 84
    move-result v1

    .line 87
    invoke-virtual {v0, v2, p1, p0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 88
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 92
.end method
