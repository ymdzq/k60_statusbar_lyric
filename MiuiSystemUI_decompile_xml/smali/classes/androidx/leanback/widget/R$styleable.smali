.class public abstract Landroidx/leanback/widget/R$styleable;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final lbBaseGridView:[I

.field public static final lbHorizontalGridView:[I

.field public static final lbVerticalGridView:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    .line 6
    sput-object v0, Landroidx/leanback/widget/R$styleable;->lbBaseGridView:[I

    .line 9
    const v0, 0x7f04057e

    .line 11
    const v1, 0x7f04065c

    .line 14
    filled-new-array {v0, v1}, [I

    .line 17
    move-result-object v0

    .line 20
    sput-object v0, Landroidx/leanback/widget/R$styleable;->lbHorizontalGridView:[I

    .line 21
    const v0, 0x7f0401cd

    .line 23
    const v1, 0x7f04057d

    .line 26
    filled-new-array {v0, v1}, [I

    .line 29
    move-result-object v0

    .line 32
    sput-object v0, Landroidx/leanback/widget/R$styleable;->lbVerticalGridView:[I

    .line 33
    return-void

    .line 35
    :array_0
    .array-data 4
        0x10100af    # @android:attr/gravity
        0x1010114    # @android:attr/horizontalSpacing
        0x1010115    # @android:attr/verticalSpacing
        0x7f040317    # @attr/focusOutEnd
        0x7f040318    # @attr/focusOutFront
        0x7f040319    # @attr/focusOutSideEnd
        0x7f04031a    # @attr/focusOutSideStart
        0x7f04039c
        0x7f0408a2
    .end array-data
    .line 36
.end method
