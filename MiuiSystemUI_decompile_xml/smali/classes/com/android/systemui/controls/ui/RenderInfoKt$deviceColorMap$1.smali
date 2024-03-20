.class final Lcom/android/systemui/controls/ui/RenderInfoKt$deviceColorMap$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/RenderInfoKt$deviceColorMap$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/controls/ui/RenderInfoKt$deviceColorMap$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/controls/ui/RenderInfoKt$deviceColorMap$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/controls/ui/RenderInfoKt$deviceColorMap$1;->INSTANCE:Lcom/android/systemui/controls/ui/RenderInfoKt$deviceColorMap$1;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    new-instance p0, Lkotlin/Pair;

    .line 7
    const p1, 0x7f0600cc    # @color/control_foreground 'res/color/control_foreground.xml'

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p1

    .line 15
    const v0, 0x7f0600c6    # @color/control_enabled_default_background '#3c3d40'

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v0

    .line 22
    invoke-direct {p0, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    return-object p0
    .line 26
.end method
