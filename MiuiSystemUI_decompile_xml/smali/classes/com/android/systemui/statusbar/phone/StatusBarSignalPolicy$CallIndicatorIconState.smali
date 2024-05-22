.class public final Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final callStrengthResId:I

.field public final subId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->subId:I

    .line 5
    sget-object p1, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->MOBILE_CALL_STRENGTH_ICONS:[I

    .line 7
    const/4 v0, 0x0

    .line 9
    aget p1, p1, v0

    .line 10
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->callStrengthResId:I

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 7
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;

    .line 8
    if-eq v1, v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;

    .line 13
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->callStrengthResId:I

    .line 15
    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->callStrengthResId:I

    .line 17
    if-ne v0, v1, :cond_1

    .line 19
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->subId:I

    .line 21
    iget p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->subId:I

    .line 23
    if-ne p0, p1, :cond_1

    .line 25
    const/4 p0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 29
    :goto_1
    return p0
    .line 30
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    const v1, 0x7f0811a2    # @drawable/ic_shade_no_calling_sms 'res/drawable/ic_shade_no_calling_sms.xml'

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 10
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->callStrengthResId:I

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v2

    .line 16
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->subId:I

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v3

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 29
    move-result p0

    .line 32
    return p0
    .line 33
.end method
