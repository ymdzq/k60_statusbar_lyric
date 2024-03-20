.class public final Landroidx/compose/ui/text/platform/extensions/UrlAnnotationExtensions_androidKt;
.super Ljava/lang/Object;
.source "UrlAnnotationExtensions.android.kt"


# direct methods
.method public static final toSpan(Landroidx/compose/ui/text/UrlAnnotation;)Landroid/text/style/URLSpan;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-virtual {p0}, Landroidx/compose/ui/text/UrlAnnotation;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
