.class public abstract Lmiuix/pickerwidget/R$styleable;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DatePicker:[I

.field public static final DateTimePicker:[I

.field public static final NumberPicker:[I

.field public static final ProperPaddingViewGroup:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 2
    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_0

    .line 6
    sput-object v1, Lmiuix/pickerwidget/R$styleable;->DatePicker:[I

    .line 9
    const v1, 0x7f0404a6    # @attr/lunarCalendar

    .line 11
    filled-new-array {v1}, [I

    .line 14
    move-result-object v1

    .line 17
    sput-object v1, Lmiuix/pickerwidget/R$styleable;->DateTimePicker:[I

    .line 18
    new-array v0, v0, [I

    .line 20
    fill-array-data v0, :array_1

    .line 22
    sput-object v0, Lmiuix/pickerwidget/R$styleable;->NumberPicker:[I

    .line 25
    const/4 v0, 0x6

    .line 27
    new-array v0, v0, [I

    .line 28
    fill-array-data v0, :array_2

    .line 30
    sput-object v0, Lmiuix/pickerwidget/R$styleable;->ProperPaddingViewGroup:[I

    .line 33
    return-void

    .line 35
    :array_0
    .array-data 4
        0x7f04011d
        0x7f0402a6
        0x7f0404a6    # @attr/lunarCalendar
        0x7f0404dd
        0x7f0404ff
        0x7f0406ab    # @attr/showDay
        0x7f0406af    # @attr/showMonth
        0x7f0406b6    # @attr/showYear
        0x7f0406df
        0x7f0406fb
    .end array-data

    .line 36
    :array_1
    .array-data 4
        0x1010099    # @android:attr/textColorHighlight
        0x101009a    # @android:attr/textColorHint
        0x10100d4    # @android:attr/background
        0x101014f    # @android:attr/text
        0x1010235    # @android:attr/labelTextSize
        0x7f040412    # @attr/labelPadding
        0x7f040414    # @attr/labelTextColor
        0x7f0405bb    # @attr/pickerBackgroundColor
        0x7f04082f    # @attr/textSizeHighlight
        0x7f040830    # @attr/textSizeHint
    .end array-data

    .line 60
    :array_2
    .array-data 4
        0x7f04039f
        0x7f0403a0
        0x7f0403a1
        0x7f0406cf
        0x7f0406d0
        0x7f0406d1
    .end array-data
    .line 84
.end method
