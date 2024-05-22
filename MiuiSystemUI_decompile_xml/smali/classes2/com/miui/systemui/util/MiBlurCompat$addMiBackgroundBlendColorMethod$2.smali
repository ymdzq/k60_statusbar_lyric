.class final Lcom/miui/systemui/util/MiBlurCompat$addMiBackgroundBlendColorMethod$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/miui/systemui/util/MiBlurCompat$addMiBackgroundBlendColorMethod$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/systemui/util/MiBlurCompat$addMiBackgroundBlendColorMethod$2;

    .line 2
    invoke-direct {v0}, Lcom/miui/systemui/util/MiBlurCompat$addMiBackgroundBlendColorMethod$2;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/systemui/util/MiBlurCompat$addMiBackgroundBlendColorMethod$2;->INSTANCE:Lcom/miui/systemui/util/MiBlurCompat$addMiBackgroundBlendColorMethod$2;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    const-string p0, "android.view.View"

    .line 2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object p0

    .line 7
    const-string v0, "addMiBackgroundBlendColor"

    .line 8
    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [Ljava/lang/Class;

    .line 11
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 13
    const/4 v3, 0x0

    .line 15
    aput-object v2, v1, v3

    .line 16
    const/4 v3, 0x1

    .line 18
    aput-object v2, v1, v3

    .line 19
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return-object p0
    .line 27
.end method
