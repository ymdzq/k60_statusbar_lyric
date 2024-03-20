.class final Lcom/miui/systemui/util/MiBlurCompat$setMiViewBlurModeMethod$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/miui/systemui/util/MiBlurCompat$setMiViewBlurModeMethod$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/systemui/util/MiBlurCompat$setMiViewBlurModeMethod$2;

    .line 2
    invoke-direct {v0}, Lcom/miui/systemui/util/MiBlurCompat$setMiViewBlurModeMethod$2;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/systemui/util/MiBlurCompat$setMiViewBlurModeMethod$2;->INSTANCE:Lcom/miui/systemui/util/MiBlurCompat$setMiViewBlurModeMethod$2;

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
    const-string/jumbo v0, "setMiViewBlurMode"

    .line 8
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [Ljava/lang/Class;

    .line 12
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 14
    const/4 v3, 0x0

    .line 16
    aput-object v2, v1, v3

    .line 17
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return-object p0
    .line 25
.end method
