.class final Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewAddedToWindowManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewAddedToWindowManager$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewAddedToWindowManager$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewAddedToWindowManager$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewAddedToWindowManager$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewAddedToWindowManager$2;

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
    .locals 5

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr1()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr2()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr3()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 15
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt1()I

    .line 16
    move-result p1

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    const-string v2, "Adding view to window manager. id="

    .line 24
    const-string v3, " window="

    .line 26
    const-string v4, " view="

    .line 28
    invoke-static {v2, p0, v3, v0, v4}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object p0

    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v0, "(id="

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string p1, ")"

    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 53
    return-object p0
    .line 54
.end method
