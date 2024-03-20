.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public backgroundRestrictionExemptionReason:I

.field public final packageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

.field public uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

.field public uiControlInitialized:Z

.field public final uid$delegate:Lkotlin/Lazy;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->packageName:Ljava/lang/String;

    .line 9
    new-instance p2, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage$uid$2;

    .line 11
    invoke-direct {p2, p1, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage$uid$2;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;)V

    .line 13
    invoke-static {p2}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 16
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uid$delegate:Lkotlin/Lazy;

    .line 20
    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->backgroundRestrictionExemptionReason:I

    .line 23
    sget-object p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;->NORMAL:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    .line 25
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    .line 27
    return-void
    .line 29
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "UserPackage: ["

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    move-object v0, p1

    .line 7
    check-cast v0, Landroid/util/IndentingPrintWriter;

    .line 8
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v1, "userId="

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    .line 21
    const-string v2, "packageName="

    .line 23
    invoke-static {v0, v1, p1, v2}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->packageName:Ljava/lang/String;

    .line 29
    invoke-static {v0, v1, p1}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 31
    iget-boolean v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uiControlInitialized:Z

    .line 34
    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->updateUiControl()V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    .line 41
    iget p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->backgroundRestrictionExemptionReason:I

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v2, "uiControl="

    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    const-string v0, " (reason="

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string p0, ")"

    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 72
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    move-object p0, p1

    .line 76
    check-cast p0, Landroid/util/IndentingPrintWriter;

    .line 77
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 79
    const-string p0, "]"

    .line 82
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    return-void
    .line 87
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    .line 8
    iget-object v0, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->packageName:Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->packageName:Ljava/lang/String;

    .line 12
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    iget p1, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    .line 20
    iget p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    .line 22
    if-ne p1, p0, :cond_1

    .line 24
    const/4 v1, 0x1

    .line 26
    :cond_1
    return v1
    .line 27
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->packageName:Ljava/lang/String;

    .line 8
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 14
    move-result p0

    .line 17
    return p0
    .line 18
.end method

.method public final updateUiControl()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->activityManager:Landroid/app/IActivityManager;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uid$delegate:Lkotlin/Lazy;

    .line 6
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Number;

    .line 12
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 14
    move-result v2

    .line 17
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getBackgroundRestrictionExemptionReason(I)I

    .line 18
    move-result v1

    .line 21
    iput v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->backgroundRestrictionExemptionReason:I

    .line 22
    const/16 v2, 0xa

    .line 24
    sget-object v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;->HIDE_BUTTON:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    .line 26
    if-eq v1, v2, :cond_2

    .line 28
    const/16 v2, 0xb

    .line 30
    if-eq v1, v2, :cond_2

    .line 32
    const/16 v2, 0x33

    .line 34
    if-eq v1, v2, :cond_1

    .line 36
    const/16 v2, 0x3f

    .line 38
    if-eq v1, v2, :cond_1

    .line 40
    const/16 v2, 0x41

    .line 42
    sget-object v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;->NORMAL:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    .line 44
    if-eq v1, v2, :cond_0

    .line 46
    const/16 v0, 0x12c

    .line 48
    if-eq v1, v0, :cond_2

    .line 50
    const/16 v0, 0x13e

    .line 52
    if-eq v1, v0, :cond_2

    .line 54
    const/16 v0, 0x140

    .line 56
    if-eq v1, v0, :cond_2

    .line 58
    const/16 v0, 0x147

    .line 60
    if-eq v1, v0, :cond_2

    .line 62
    const/16 v0, 0x37

    .line 64
    if-eq v1, v0, :cond_2

    .line 66
    const/16 v0, 0x38

    .line 68
    if-eq v1, v0, :cond_2

    .line 70
    packed-switch v1, :pswitch_data_0

    .line 72
    :goto_0
    move-object v3, v4

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    iget-boolean v0, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->showStopBtnForUserAllowlistedApps:Z

    .line 77
    if-eqz v0, :cond_2

    .line 79
    goto :goto_0

    .line 81
    :cond_1
    sget-object v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;->HIDE_ENTRY:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    .line 82
    :cond_2
    :goto_1
    :pswitch_0
    iput-object v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    .line 84
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uiControlInitialized:Z

    .line 87
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0x142
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 90
.end method
