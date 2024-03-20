.class final Lcom/android/systemui/shade/ShadeLogger$logSplitShadeChanged$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logSplitShadeChanged$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/shade/ShadeLogger$logSplitShadeChanged$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/shade/ShadeLogger$logSplitShadeChanged$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/shade/ShadeLogger$logSplitShadeChanged$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logSplitShadeChanged$2;

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
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool1()Z

    .line 4
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    const-string p0, "enabled"

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "disabled"

    .line 13
    :goto_0
    const-string p1, "Split shade state changed: split shade "

    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    return-object p0
    .line 21
.end method
