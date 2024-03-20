.class final Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewRemovedFromWindowManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewRemovedFromWindowManager$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewRemovedFromWindowManager$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewRemovedFromWindowManager$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewRemovedFromWindowManager$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewRemovedFromWindowManager$2;

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
    .locals 6

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool1()Z

    .line 4
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    const-string p0, " due to reinflation"

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, ""

    .line 13
    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr1()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr2()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 22
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr3()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 26
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt1()I

    .line 27
    move-result p1

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 34
    const-string v3, "Removing view from window manager"

    .line 35
    const-string v4, ". id="

    .line 37
    const-string v5, " window="

    .line 39
    invoke-static {v3, p0, v4, v0, v5}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object p0

    .line 44
    const-string v0, " view="

    .line 45
    const-string v3, "(id="

    .line 47
    invoke-static {p0, v1, v0, v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, ")"

    .line 52
    invoke-static {p0, p1, v0}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 57
    return-object p0
    .line 58
.end method
