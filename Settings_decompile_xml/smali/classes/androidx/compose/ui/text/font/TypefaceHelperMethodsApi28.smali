.class public final Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;
.super Ljava/lang/Object;
.source "AndroidFontUtils.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;->INSTANCE:Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .locals 0

    const-string/jumbo p0, "typeface"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {p1, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    const-string p1, "create(typeface, finalFontWeight, finalFontStyle)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method