.class final Landroidx/compose/ui/text/android/LayoutIntrinsics$minIntrinsicWidth$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LayoutIntrinsics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/android/LayoutIntrinsics;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $charSequence:Ljava/lang/CharSequence;

.field final synthetic $textPaint:Landroid/text/TextPaint;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics$minIntrinsicWidth$2;->$charSequence:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics$minIntrinsicWidth$2;->$textPaint:Landroid/text/TextPaint;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics$minIntrinsicWidth$2;->$charSequence:Ljava/lang/CharSequence;

    iget-object p0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics$minIntrinsicWidth$2;->$textPaint:Landroid/text/TextPaint;

    invoke-static {v0, p0}, Landroidx/compose/ui/text/android/LayoutIntrinsicsKt;->minIntrinsicWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics$minIntrinsicWidth$2;->invoke()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
