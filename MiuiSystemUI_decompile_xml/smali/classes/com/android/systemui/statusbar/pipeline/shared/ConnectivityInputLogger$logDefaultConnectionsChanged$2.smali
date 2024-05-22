.class final synthetic Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger$logDefaultConnectionsChanged$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v1, 0x1

    .line 2
    const-class v3, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;

    .line 3
    const-string v4, "messagePrinter"

    .line 5
    const-string v5, "messagePrinter(Lcom/android/systemui/log/LogMessage;)Ljava/lang/String;"

    .line 7
    const/4 v6, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p1

    .line 11
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 4
    check-cast p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool1()Z

    .line 11
    move-result p0

    .line 14
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool2()Z

    .line 15
    move-result v0

    .line 18
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool3()Z

    .line 19
    move-result v1

    .line 22
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool4()Z

    .line 23
    move-result v2

    .line 26
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt1()I

    .line 27
    move-result p1

    .line 30
    const/4 v3, 0x1

    .line 31
    if-ne p1, v3, :cond_0

    .line 32
    const-string/jumbo p1, "true"

    .line 34
    goto :goto_0

    .line 37
    :cond_0
    const-string p1, "false"

    .line 38
    :goto_0
    const-string v3, "DefaultConnectionModel(wifi.isDefault="

    .line 40
    const-string v4, ", mobile.isDefault="

    .line 42
    const-string v5, ", carrierMerged.isDefault="

    .line 44
    invoke-static {v3, p0, v4, v0, v5}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object p0

    .line 49
    const-string v0, ", ethernet.isDefault="

    .line 50
    const-string v3, ", isValidated="

    .line 52
    invoke-static {p0, v1, v0, v2, v3}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 54
    const-string v0, ")"

    .line 57
    invoke-static {p0, p1, v0}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    return-object p0
.end method
