.class public final Landroidx/compose/ui/text/intl/AndroidLocale;
.super Ljava/lang/Object;
.source "AndroidLocaleDelegate.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/intl/PlatformLocale;


# instance fields
.field private final javaLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    const-string v0, "javaLocale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/intl/AndroidLocale;->javaLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final getJavaLocale()Ljava/util/Locale;
    .locals 0

    .line 27
    iget-object p0, p0, Landroidx/compose/ui/text/intl/AndroidLocale;->javaLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public toLanguageTag()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object p0, p0, Landroidx/compose/ui/text/intl/AndroidLocale;->javaLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "javaLocale.toLanguageTag()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
