.class public final synthetic Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda6;->f$0:I

    .line 5
    iput p2, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda6;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda6;->f$0:I

    .line 2
    iget p0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda6;->f$1:I

    .line 4
    check-cast p1, Landroid/graphics/Region;

    .line 6
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Region;->contains(II)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method
