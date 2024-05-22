.class public final Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final bitMask:I

.field public final flagIsSetSymbol:C

.field public final flagNotSetSymbol:C


# direct methods
.method public constructor <init>(ICC)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->bitMask:I

    .line 5
    iput-char p2, p0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->flagIsSetSymbol:C

    .line 7
    iput-char p3, p0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->flagNotSetSymbol:C

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final getFlagStatus$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(I)C
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->bitMask:I

    .line 2
    and-int/2addr p1, v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    iget-char p0, p0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->flagIsSetSymbol:C

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget-char p0, p0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->flagNotSetSymbol:C

    .line 10
    :goto_0
    return p0
    .line 12
.end method
