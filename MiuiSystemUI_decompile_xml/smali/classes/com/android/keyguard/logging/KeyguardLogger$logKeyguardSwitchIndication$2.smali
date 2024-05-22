.class final Lcom/android/keyguard/logging/KeyguardLogger$logKeyguardSwitchIndication$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/logging/KeyguardLogger;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/logging/KeyguardLogger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/logging/KeyguardLogger$logKeyguardSwitchIndication$2;->this$0:Lcom/android/keyguard/logging/KeyguardLogger;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardLogger$logKeyguardSwitchIndication$2;->this$0:Lcom/android/keyguard/logging/KeyguardLogger;

    .line 4
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt1()I

    .line 6
    move-result v0

    .line 9
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr1()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const/4 p0, 0x3

    .line 17
    const-string/jumbo v1, "type="

    .line 18
    if-ne v0, p0, :cond_0

    .line 21
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->indicationTypeToString(I)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    const-string v0, " message="

    .line 27
    invoke-static {v1, p0, v0, p1}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->indicationTypeToString(I)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    invoke-static {v1, p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 41
    :goto_0
    const-string p1, "keyguardSwitchIndication "

    .line 42
    invoke-static {p1, p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    return-object p0
    .line 48
.end method
