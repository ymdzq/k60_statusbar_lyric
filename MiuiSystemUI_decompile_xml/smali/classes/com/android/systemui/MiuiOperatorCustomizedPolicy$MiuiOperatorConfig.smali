.class public final Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final CTSim:Z

.field public final defaultOperator:Z

.field public final hideNationalRoaming:Z

.field public final hideVolte:Z

.field public final hideVowifi:Z

.field public final mobileTypeName:[Ljava/lang/String;

.field public final separateDataAndVoice:Z

.field public final showDataTypeDataDisconnected:Z

.field public final showMobileDataTypeInMMS:Z

.field public final showMobileDataTypeSingle:Z

.field public final showSpnWhenAirplaneOn:Z

.field public final volteResId:I

.field public final vonrResId:I

.field public final vowifiResId:I


# direct methods
.method public constructor <init>(ZZZZIIIZZZZZZ[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->defaultOperator:Z

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->CTSim:Z

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->hideVolte:Z

    .line 9
    iput-boolean p4, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->hideVowifi:Z

    .line 11
    iput p5, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->volteResId:I

    .line 13
    iput p6, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->vowifiResId:I

    .line 15
    iput p7, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->vonrResId:I

    .line 17
    iput-boolean p8, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->separateDataAndVoice:Z

    .line 19
    iput-boolean p9, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->showDataTypeDataDisconnected:Z

    .line 21
    iput-boolean p10, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->showMobileDataTypeInMMS:Z

    .line 23
    iput-boolean p11, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->showMobileDataTypeSingle:Z

    .line 25
    iput-boolean p12, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->showSpnWhenAirplaneOn:Z

    .line 27
    iput-boolean p13, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->hideNationalRoaming:Z

    .line 29
    iput-object p14, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->mobileTypeName:[Ljava/lang/String;

    .line 31
    return-void
    .line 33
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "MiuiOperatorConfig  defaultOperator: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->defaultOperator:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " CTSim: "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-boolean v1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->CTSim:Z

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "  hideVolte: "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-boolean v1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->hideVolte:Z

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "  hideVowifi: "

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-boolean v1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->hideVowifi:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, "  volteResId: "

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->volteResId:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, " vowifiResId: "

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->vowifiResId:I

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, " vonrResId: "

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->vonrResId:I

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, " separateDataAndVoice: "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-boolean v1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->separateDataAndVoice:Z

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, " showDataTypeDataDisconnected: "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-boolean v1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->showDataTypeDataDisconnected:Z

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, " showMobileDataTypeInMMS: "

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-boolean v1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->showMobileDataTypeInMMS:Z

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, " showMobileDataTypeSingle "

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-boolean v1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->showMobileDataTypeSingle:Z

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, " showSpnWhenAirplaneOn "

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-boolean v1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->showSpnWhenAirplaneOn:Z

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, " hideNationalRoaming "

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-boolean p0, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->hideNationalRoaming:Z

    .line 129
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p0

    .line 137
    return-object p0
    .line 138
.end method
